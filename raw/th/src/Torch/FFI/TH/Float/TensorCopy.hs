{-# LANGUAGE ForeignFunctionInterface #-}
module Torch.FFI.TH.Float.TensorCopy where

import Foreign
import Foreign.C.Types
import Torch.Types.TH
import Data.Word
import Data.Int

-- | c_copy :  tensor src -> void
foreign import ccall "THTensorCopy.h THFloatTensor_copy"
  c_copy :: Ptr CTHFloatTensor -> Ptr CTHFloatTensor -> IO ()

-- | c_copyByte :  tensor src -> void
foreign import ccall "THTensorCopy.h THFloatTensor_copyByte"
  c_copyByte :: Ptr CTHFloatTensor -> Ptr CTHByteTensor -> IO ()

-- | c_copyChar :  tensor src -> void
foreign import ccall "THTensorCopy.h THFloatTensor_copyChar"
  c_copyChar :: Ptr CTHFloatTensor -> Ptr CTHCharTensor -> IO ()

-- | c_copyShort :  tensor src -> void
foreign import ccall "THTensorCopy.h THFloatTensor_copyShort"
  c_copyShort :: Ptr CTHFloatTensor -> Ptr CTHShortTensor -> IO ()

-- | c_copyInt :  tensor src -> void
foreign import ccall "THTensorCopy.h THFloatTensor_copyInt"
  c_copyInt :: Ptr CTHFloatTensor -> Ptr CTHIntTensor -> IO ()

-- | c_copyLong :  tensor src -> void
foreign import ccall "THTensorCopy.h THFloatTensor_copyLong"
  c_copyLong :: Ptr CTHFloatTensor -> Ptr CTHLongTensor -> IO ()

-- | c_copyFloat :  tensor src -> void
foreign import ccall "THTensorCopy.h THFloatTensor_copyFloat"
  c_copyFloat :: Ptr CTHFloatTensor -> Ptr CTHFloatTensor -> IO ()

-- | c_copyDouble :  tensor src -> void
foreign import ccall "THTensorCopy.h THFloatTensor_copyDouble"
  c_copyDouble :: Ptr CTHFloatTensor -> Ptr CTHDoubleTensor -> IO ()

-- | c_copyHalf :  tensor src -> void
foreign import ccall "THTensorCopy.h THFloatTensor_copyHalf"
  c_copyHalf :: Ptr CTHFloatTensor -> Ptr CTHHalfTensor -> IO ()

-- | p_copy : Pointer to function : tensor src -> void
foreign import ccall "THTensorCopy.h &THFloatTensor_copy"
  p_copy :: FunPtr (Ptr CTHFloatTensor -> Ptr CTHFloatTensor -> IO ())

-- | p_copyByte : Pointer to function : tensor src -> void
foreign import ccall "THTensorCopy.h &THFloatTensor_copyByte"
  p_copyByte :: FunPtr (Ptr CTHFloatTensor -> Ptr CTHByteTensor -> IO ())

-- | p_copyChar : Pointer to function : tensor src -> void
foreign import ccall "THTensorCopy.h &THFloatTensor_copyChar"
  p_copyChar :: FunPtr (Ptr CTHFloatTensor -> Ptr CTHCharTensor -> IO ())

-- | p_copyShort : Pointer to function : tensor src -> void
foreign import ccall "THTensorCopy.h &THFloatTensor_copyShort"
  p_copyShort :: FunPtr (Ptr CTHFloatTensor -> Ptr CTHShortTensor -> IO ())

-- | p_copyInt : Pointer to function : tensor src -> void
foreign import ccall "THTensorCopy.h &THFloatTensor_copyInt"
  p_copyInt :: FunPtr (Ptr CTHFloatTensor -> Ptr CTHIntTensor -> IO ())

-- | p_copyLong : Pointer to function : tensor src -> void
foreign import ccall "THTensorCopy.h &THFloatTensor_copyLong"
  p_copyLong :: FunPtr (Ptr CTHFloatTensor -> Ptr CTHLongTensor -> IO ())

-- | p_copyFloat : Pointer to function : tensor src -> void
foreign import ccall "THTensorCopy.h &THFloatTensor_copyFloat"
  p_copyFloat :: FunPtr (Ptr CTHFloatTensor -> Ptr CTHFloatTensor -> IO ())

-- | p_copyDouble : Pointer to function : tensor src -> void
foreign import ccall "THTensorCopy.h &THFloatTensor_copyDouble"
  p_copyDouble :: FunPtr (Ptr CTHFloatTensor -> Ptr CTHDoubleTensor -> IO ())

-- | p_copyHalf : Pointer to function : tensor src -> void
foreign import ccall "THTensorCopy.h &THFloatTensor_copyHalf"
  p_copyHalf :: FunPtr (Ptr CTHFloatTensor -> Ptr CTHHalfTensor -> IO ())