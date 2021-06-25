{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE ConstraintKinds #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE QuantifiedConstraints #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# OPTIONS_GHC -Wno-typed-holes #-}
{-# OPTIONS_GHC -fdefer-typed-holes #-}

module Torch.GraduallyTyped.NN.Initialization where

import Control.Monad.State.Strict (MonadState (state), runState)
import Data.Singletons (SingKind (fromSing))
import Torch.GraduallyTyped.DType (SDataType (SDataType))
import Torch.GraduallyTyped.Device (SDevice (SDevice))
import Torch.GraduallyTyped.Layout (SLayout (SLayout))
import Torch.GraduallyTyped.Prelude (forgetIsChecked)
import Torch.GraduallyTyped.Random (Generator)
import Torch.GraduallyTyped.RequiresGradient (SRequiresGradient)
import Torch.GraduallyTyped.Scalar (Scalar)
import Torch.GraduallyTyped.Shape (Dim (..), dimSize)
import Torch.GraduallyTyped.Shape.Type (SShape (SShape))
import Torch.GraduallyTyped.Tensor.Creation (WithCreateC (..), randn, sRandn)
import Torch.GraduallyTyped.Tensor.MathOperations.Pointwise (mulScalar, subScalar)
import Torch.GraduallyTyped.Tensor.Type (Tensor)

-- | Note: Identity = linear w/o activation
data ForNonLinearity = ForIdentity | ForSigmoid | ForTanh | ForRelu | ForLeakyRelu Float

data FanMode = FanIn | FanOut

errorPrefix :: String
errorPrefix = "Error during tensor initialization. "

-- | Gain scaling value for He initialization
calculateGain :: ForNonLinearity -> Float
calculateGain ForIdentity = 1
calculateGain ForSigmoid = 1
calculateGain ForTanh = 5 / 3
calculateGain ForRelu = sqrt 2
calculateGain (ForLeakyRelu param) = sqrt (2 / (1 + param ^^ 2))

-- | Fan-in / Fan-out scaling calculation
calculateFan ::
  [Dim String Integer] ->
  (Integer, Integer)
calculateFan shape
  | dimT < 2 = error $ errorPrefix <> "Fan in and fan out can not be computed for tensor with fewer than 2 dimensions"
  | dimT == 2 =
    ( numInputFmaps,
      numOutputFmaps
    )
  | otherwise =
    ( numInputFmaps * receptiveFieldSize,
      numOutputFmaps * receptiveFieldSize
    )
  where
    dimT = length shape
    numOutputFmaps : numInputFmaps : _ = dimSize <$> shape
    receptiveFieldSize = product $ dimSize <$> tail shape

-- | Xavier uniform initialization
xavierUniform ::
  forall requiresGradient layout device dataType shape gain device'.
  ( WithCreateC (gain -> Generator device' -> (Tensor requiresGradient layout device dataType shape, Generator device')) requiresGradient layout device dataType shape,
    WithCreateC (Generator device' -> (Tensor requiresGradient layout device dataType shape, Generator device')) requiresGradient layout device dataType shape,
    Num gain,
    Floating gain,
    Scalar gain
  ) =>
  WithCreateF (gain -> Generator device' -> (Tensor requiresGradient layout device dataType shape, Generator device')) requiresGradient layout device dataType shape
xavierUniform =
  withCreate
    @(gain -> Generator device' -> (Tensor requiresGradient layout device dataType shape, Generator device'))
    @requiresGradient
    @layout
    @device
    @dataType
    @shape
    go
  where
    go requiresGradient layoutType deviceType dType shape gain =
      let (fanIn, fanOut) = calculateFan shape
          std = gain * sqrt (2 / (fromIntegral fanIn + fromIntegral fanOut))
          bound = sqrt 3 * std
       in runState $ do
            init <-
              state $
                withoutCreate @_ @requiresGradient @layout @device @dataType @shape
                  (randn @requiresGradient @layout @device @dataType @shape @device')
                  requiresGradient
                  layoutType
                  deviceType
                  dType
                  shape
            pure $ (init `mulScalar` (bound * 2)) `subScalar` bound

-- | Xavier uniform initialization
sXavierUniform ::
  forall requiresGradient layout device dataType shape gain device'.
  ( Num gain,
    Floating gain,
    Scalar gain
  ) =>
  SRequiresGradient requiresGradient ->
  SLayout layout ->
  SDevice device ->
  SDataType dataType ->
  SShape shape ->
  gain ->
  Generator device' ->
  (Tensor requiresGradient layout device dataType shape, Generator device')
sXavierUniform reqGradient layout device dataType shape gain =
  let dims =
        fmap (\(Dim name size) -> Dim (forgetIsChecked name) (forgetIsChecked size))
          . forgetIsChecked
          . fromSing
          $ shape
      (fanIn, fanOut) = calculateFan dims
      std = gain * sqrt (2 / (fromIntegral fanIn + fromIntegral fanOut))
      bound = sqrt 3 * std
   in runState $ do
        init <- state $ sRandn reqGradient layout device dataType shape
        pure $ (init `mulScalar` (bound * 2)) `subScalar` bound

-- | Xavier normal initialization
xavierNormal ::
  forall requiresGradient layout device dataType shape gain device'.
  ( WithCreateC (gain -> Generator device' -> (Tensor requiresGradient layout device dataType shape, Generator device')) requiresGradient layout device dataType shape,
    WithCreateC (Generator device' -> (Tensor requiresGradient layout device dataType shape, Generator device')) requiresGradient layout device dataType shape,
    Num gain,
    Floating gain,
    Scalar gain
  ) =>
  WithCreateF (gain -> Generator device' -> (Tensor requiresGradient layout device dataType shape, Generator device')) requiresGradient layout device dataType shape
xavierNormal =
  withCreate
    @(gain -> Generator device' -> (Tensor requiresGradient layout device dataType shape, Generator device'))
    @requiresGradient
    @layout
    @device
    @dataType
    @shape
    go
  where
    go requiresGradient layoutType deviceType dType shape gain =
      let (fanIn, fanOut) = calculateFan shape
          std = gain * sqrt (2 / (fromIntegral fanIn + fromIntegral fanOut))
       in runState $ do
            init <-
              state $
                withoutCreate @_ @requiresGradient @layout @device @dataType @shape
                  (randn @requiresGradient @layout @device @dataType @shape @device')
                  requiresGradient
                  layoutType
                  deviceType
                  dType
                  shape
            pure $ init `mulScalar` std

-- | Xavier normal initialization
sXavierNormal ::
  forall requiresGradient layout device dataType shape gain device'.
  ( Num gain,
    Floating gain,
    Scalar gain
  ) =>
  SRequiresGradient requiresGradient ->
  SLayout layout ->
  SDevice device ->
  SDataType dataType ->
  SShape shape ->
  gain ->
  Generator device' ->
  (Tensor requiresGradient layout device dataType shape, Generator device')
sXavierNormal reqGradient layout device dataType shape gain =
  let dims =
        fmap (\(Dim name size) -> Dim (forgetIsChecked name) (forgetIsChecked size))
          . forgetIsChecked
          . fromSing
          $ shape
      (fanIn, fanOut) = calculateFan dims
      std = gain * sqrt (2 / (fromIntegral fanIn + fromIntegral fanOut))
   in runState $ do
        init <- state $ sRandn reqGradient layout device dataType shape
        pure $ init `mulScalar` std

-- | Get fan in or fan out value depending on selected fan mode, used by Kaiming
getter :: forall a. FanMode -> ((a, a) -> a)
getter FanIn = fst
getter FanOut = snd

-- | Kaiming uniform initialization
kaimingUniform ::
  forall requiresGradient layout device dataType shape device'.
  ( WithCreateC (FanMode -> ForNonLinearity -> Generator device' -> (Tensor requiresGradient layout device dataType shape, Generator device')) requiresGradient layout device dataType shape,
    WithCreateC (Generator device' -> (Tensor requiresGradient layout device dataType shape, Generator device')) requiresGradient layout device dataType shape
  ) =>
  WithCreateF (FanMode -> ForNonLinearity -> Generator device' -> (Tensor requiresGradient layout device dataType shape, Generator device')) requiresGradient layout device dataType shape
kaimingUniform =
  withCreate
    @(FanMode -> ForNonLinearity -> Generator device' -> (Tensor requiresGradient layout device dataType shape, Generator device'))
    @requiresGradient
    @layout
    @device
    @dataType
    @shape
    go
  where
    go requiresGradient layoutType deviceType dType shape fanMode nonLinearity =
      let gain = calculateGain nonLinearity
          fanValue = fromIntegral $ getter fanMode (calculateFan shape)
          std = gain / sqrt fanValue
          bound = sqrt 3 * std
       in runState $ do
            init <-
              state $
                withoutCreate @_ @requiresGradient @layout @device @dataType @shape
                  (randn @requiresGradient @layout @device @dataType @shape @device')
                  requiresGradient
                  layoutType
                  deviceType
                  dType
                  shape
            pure $ (init `mulScalar` (bound * 2)) `subScalar` bound

-- | Kaiming uniform initialization
sKaimingUniform ::
  forall requiresGradient layout device dataType shape device'.
  SRequiresGradient requiresGradient ->
  SLayout layout ->
  SDevice device ->
  SDataType dataType ->
  SShape shape ->
  FanMode ->
  ForNonLinearity ->
  Generator device' ->
  (Tensor requiresGradient layout device dataType shape, Generator device')
sKaimingUniform reqGradient layout device dataType shape fanMode nonLinearity =
  let dims =
        fmap (\(Dim name size) -> Dim (forgetIsChecked name) (forgetIsChecked size))
          . forgetIsChecked
          . fromSing
          $ shape
      gain = calculateGain nonLinearity
      fanValue = fromIntegral $ getter fanMode (calculateFan dims)
      std = gain / sqrt fanValue
      bound = sqrt 3 * std
   in runState $ do
        init <- state $ sRandn reqGradient layout device dataType shape
        pure $ (init `mulScalar` (bound * 2)) `subScalar` bound

-- | Kaiming normal initialization
kaimingNormal ::
  forall requiresGradient layout device dataType shape device'.
  ( WithCreateC (FanMode -> ForNonLinearity -> Generator device' -> (Tensor requiresGradient layout device dataType shape, Generator device')) requiresGradient layout device dataType shape,
    WithCreateC (Generator device' -> (Tensor requiresGradient layout device dataType shape, Generator device')) requiresGradient layout device dataType shape
  ) =>
  WithCreateF (FanMode -> ForNonLinearity -> Generator device' -> (Tensor requiresGradient layout device dataType shape, Generator device')) requiresGradient layout device dataType shape
kaimingNormal =
  withCreate
    @(FanMode -> ForNonLinearity -> Generator device' -> (Tensor requiresGradient layout device dataType shape, Generator device'))
    @requiresGradient
    @layout
    @device
    @dataType
    @shape
    go
  where
    go requiresGradient layoutType deviceType dType shape fanMode nonLinearity =
      let gain = calculateGain nonLinearity
          fanValue = fromIntegral $ getter fanMode (calculateFan shape)
          std = gain / sqrt fanValue
       in runState $ do
            init <-
              state $
                withoutCreate @_ @requiresGradient @layout @device @dataType @shape
                  (randn @requiresGradient @layout @device @dataType @shape @device')
                  requiresGradient
                  layoutType
                  deviceType
                  dType
                  shape
            pure $ init `mulScalar` std

-- | Kaiming normal initialization
sKaimingNormal ::
  forall requiresGradient layout device dataType shape device'.
  SRequiresGradient requiresGradient ->
  SLayout layout ->
  SDevice device ->
  SDataType dataType ->
  SShape shape ->
  FanMode ->
  ForNonLinearity ->
  Generator device' ->
  (Tensor requiresGradient layout device dataType shape, Generator device')
sKaimingNormal reqGradient layout device dataType shape fanMode nonLinearity =
  let dims =
        fmap (\(Dim name size) -> Dim (forgetIsChecked name) (forgetIsChecked size))
          . forgetIsChecked
          . fromSing
          $ shape
      gain = calculateGain nonLinearity
      fanValue = fromIntegral $ getter fanMode (calculateFan dims)
      std = gain / sqrt fanValue
   in runState $ do
        init <- state $ sRandn reqGradient layout device dataType shape
        pure $ init `mulScalar` std