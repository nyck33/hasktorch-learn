
-- generated by using spec/Declarations.yaml

{-# LANGUAGE DataKinds #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE OverloadedStrings #-}

module Torch.Internal.Managed.TensorFactories where


import Foreign.C.String
import Foreign.C.Types
import Foreign
import Torch.Internal.Type
import Torch.Internal.Class
import Torch.Internal.Cast
import Torch.Internal.Objects
import qualified Torch.Internal.Unmanaged.TensorFactories as Unmanaged


_cudnn_init_dropout_state_dblo
  :: CDouble
  -> CBool
  -> Int64
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
_cudnn_init_dropout_state_dblo = _cast4 Unmanaged._cudnn_init_dropout_state_dblo

arange_so
  :: ForeignPtr Scalar
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
arange_so = _cast2 Unmanaged.arange_so

arange_s
  :: ForeignPtr Scalar
  -> IO (ForeignPtr Tensor)
arange_s = _cast1 Unmanaged.arange_s

arange_sso
  :: ForeignPtr Scalar
  -> ForeignPtr Scalar
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
arange_sso = _cast3 Unmanaged.arange_sso

arange_ss
  :: ForeignPtr Scalar
  -> ForeignPtr Scalar
  -> IO (ForeignPtr Tensor)
arange_ss = _cast2 Unmanaged.arange_ss

arange_ssso
  :: ForeignPtr Scalar
  -> ForeignPtr Scalar
  -> ForeignPtr Scalar
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
arange_ssso = _cast4 Unmanaged.arange_ssso

arange_sss
  :: ForeignPtr Scalar
  -> ForeignPtr Scalar
  -> ForeignPtr Scalar
  -> IO (ForeignPtr Tensor)
arange_sss = _cast3 Unmanaged.arange_sss

bartlett_window_lo
  :: Int64
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
bartlett_window_lo = _cast2 Unmanaged.bartlett_window_lo

bartlett_window_l
  :: Int64
  -> IO (ForeignPtr Tensor)
bartlett_window_l = _cast1 Unmanaged.bartlett_window_l

bartlett_window_lbo
  :: Int64
  -> CBool
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
bartlett_window_lbo = _cast3 Unmanaged.bartlett_window_lbo

bartlett_window_lb
  :: Int64
  -> CBool
  -> IO (ForeignPtr Tensor)
bartlett_window_lb = _cast2 Unmanaged.bartlett_window_lb

blackman_window_lo
  :: Int64
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
blackman_window_lo = _cast2 Unmanaged.blackman_window_lo

blackman_window_l
  :: Int64
  -> IO (ForeignPtr Tensor)
blackman_window_l = _cast1 Unmanaged.blackman_window_l

blackman_window_lbo
  :: Int64
  -> CBool
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
blackman_window_lbo = _cast3 Unmanaged.blackman_window_lbo

blackman_window_lb
  :: Int64
  -> CBool
  -> IO (ForeignPtr Tensor)
blackman_window_lb = _cast2 Unmanaged.blackman_window_lb

empty_lNoM
  :: ForeignPtr IntArray
  -> ForeignPtr DimnameList
  -> ForeignPtr TensorOptions
  -> MemoryFormat
  -> IO (ForeignPtr Tensor)
empty_lNoM = _cast4 Unmanaged.empty_lNoM

empty_lNo
  :: ForeignPtr IntArray
  -> ForeignPtr DimnameList
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
empty_lNo = _cast3 Unmanaged.empty_lNo

empty_lN
  :: ForeignPtr IntArray
  -> ForeignPtr DimnameList
  -> IO (ForeignPtr Tensor)
empty_lN = _cast2 Unmanaged.empty_lN

empty_loM
  :: ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> MemoryFormat
  -> IO (ForeignPtr Tensor)
empty_loM = _cast3 Unmanaged.empty_loM

empty_lo
  :: ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
empty_lo = _cast2 Unmanaged.empty_lo

empty_l
  :: ForeignPtr IntArray
  -> IO (ForeignPtr Tensor)
empty_l = _cast1 Unmanaged.empty_l

_empty_affine_quantized_lodlM
  :: ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> CDouble
  -> Int64
  -> MemoryFormat
  -> IO (ForeignPtr Tensor)
_empty_affine_quantized_lodlM = _cast5 Unmanaged._empty_affine_quantized_lodlM

_empty_affine_quantized_lodl
  :: ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> CDouble
  -> Int64
  -> IO (ForeignPtr Tensor)
_empty_affine_quantized_lodl = _cast4 Unmanaged._empty_affine_quantized_lodl

_empty_affine_quantized_lod
  :: ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> CDouble
  -> IO (ForeignPtr Tensor)
_empty_affine_quantized_lod = _cast3 Unmanaged._empty_affine_quantized_lod

_empty_affine_quantized_lo
  :: ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
_empty_affine_quantized_lo = _cast2 Unmanaged._empty_affine_quantized_lo

_empty_affine_quantized_l
  :: ForeignPtr IntArray
  -> IO (ForeignPtr Tensor)
_empty_affine_quantized_l = _cast1 Unmanaged._empty_affine_quantized_l

_empty_per_channel_affine_quantized_lttloM
  :: ForeignPtr IntArray
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> Int64
  -> ForeignPtr TensorOptions
  -> MemoryFormat
  -> IO (ForeignPtr Tensor)
_empty_per_channel_affine_quantized_lttloM = _cast6 Unmanaged._empty_per_channel_affine_quantized_lttloM

_empty_per_channel_affine_quantized_lttlo
  :: ForeignPtr IntArray
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> Int64
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
_empty_per_channel_affine_quantized_lttlo = _cast5 Unmanaged._empty_per_channel_affine_quantized_lttlo

_empty_per_channel_affine_quantized_lttl
  :: ForeignPtr IntArray
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> Int64
  -> IO (ForeignPtr Tensor)
_empty_per_channel_affine_quantized_lttl = _cast4 Unmanaged._empty_per_channel_affine_quantized_lttl

empty_quantized_ltoM
  :: ForeignPtr IntArray
  -> ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> MemoryFormat
  -> IO (ForeignPtr Tensor)
empty_quantized_ltoM = _cast4 Unmanaged.empty_quantized_ltoM

empty_quantized_lto
  :: ForeignPtr IntArray
  -> ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
empty_quantized_lto = _cast3 Unmanaged.empty_quantized_lto

empty_quantized_lt
  :: ForeignPtr IntArray
  -> ForeignPtr Tensor
  -> IO (ForeignPtr Tensor)
empty_quantized_lt = _cast2 Unmanaged.empty_quantized_lt

empty_like_toM
  :: ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> MemoryFormat
  -> IO (ForeignPtr Tensor)
empty_like_toM = _cast3 Unmanaged.empty_like_toM

empty_like_to
  :: ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
empty_like_to = _cast2 Unmanaged.empty_like_to

empty_like_t
  :: ForeignPtr Tensor
  -> IO (ForeignPtr Tensor)
empty_like_t = _cast1 Unmanaged.empty_like_t

empty_strided_llo
  :: ForeignPtr IntArray
  -> ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
empty_strided_llo = _cast3 Unmanaged.empty_strided_llo

empty_strided_ll
  :: ForeignPtr IntArray
  -> ForeignPtr IntArray
  -> IO (ForeignPtr Tensor)
empty_strided_ll = _cast2 Unmanaged.empty_strided_ll

eye_lo
  :: Int64
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
eye_lo = _cast2 Unmanaged.eye_lo

eye_l
  :: Int64
  -> IO (ForeignPtr Tensor)
eye_l = _cast1 Unmanaged.eye_l

eye_llo
  :: Int64
  -> Int64
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
eye_llo = _cast3 Unmanaged.eye_llo

eye_ll
  :: Int64
  -> Int64
  -> IO (ForeignPtr Tensor)
eye_ll = _cast2 Unmanaged.eye_ll

full_lsNo
  :: ForeignPtr IntArray
  -> ForeignPtr Scalar
  -> ForeignPtr DimnameList
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
full_lsNo = _cast4 Unmanaged.full_lsNo

full_lsN
  :: ForeignPtr IntArray
  -> ForeignPtr Scalar
  -> ForeignPtr DimnameList
  -> IO (ForeignPtr Tensor)
full_lsN = _cast3 Unmanaged.full_lsN

full_lso
  :: ForeignPtr IntArray
  -> ForeignPtr Scalar
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
full_lso = _cast3 Unmanaged.full_lso

full_ls
  :: ForeignPtr IntArray
  -> ForeignPtr Scalar
  -> IO (ForeignPtr Tensor)
full_ls = _cast2 Unmanaged.full_ls

full_like_tsoM
  :: ForeignPtr Tensor
  -> ForeignPtr Scalar
  -> ForeignPtr TensorOptions
  -> MemoryFormat
  -> IO (ForeignPtr Tensor)
full_like_tsoM = _cast4 Unmanaged.full_like_tsoM

full_like_tso
  :: ForeignPtr Tensor
  -> ForeignPtr Scalar
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
full_like_tso = _cast3 Unmanaged.full_like_tso

full_like_ts
  :: ForeignPtr Tensor
  -> ForeignPtr Scalar
  -> IO (ForeignPtr Tensor)
full_like_ts = _cast2 Unmanaged.full_like_ts

from_file_sblo
  :: ForeignPtr StdString
  -> CBool
  -> Int64
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
from_file_sblo = _cast4 Unmanaged.from_file_sblo

from_file_sbl
  :: ForeignPtr StdString
  -> CBool
  -> Int64
  -> IO (ForeignPtr Tensor)
from_file_sbl = _cast3 Unmanaged.from_file_sbl

from_file_sb
  :: ForeignPtr StdString
  -> CBool
  -> IO (ForeignPtr Tensor)
from_file_sb = _cast2 Unmanaged.from_file_sb

from_file_s
  :: ForeignPtr StdString
  -> IO (ForeignPtr Tensor)
from_file_s = _cast1 Unmanaged.from_file_s

hann_window_lo
  :: Int64
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
hann_window_lo = _cast2 Unmanaged.hann_window_lo

hann_window_l
  :: Int64
  -> IO (ForeignPtr Tensor)
hann_window_l = _cast1 Unmanaged.hann_window_l

hann_window_lbo
  :: Int64
  -> CBool
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
hann_window_lbo = _cast3 Unmanaged.hann_window_lbo

hann_window_lb
  :: Int64
  -> CBool
  -> IO (ForeignPtr Tensor)
hann_window_lb = _cast2 Unmanaged.hann_window_lb

hamming_window_lo
  :: Int64
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
hamming_window_lo = _cast2 Unmanaged.hamming_window_lo

hamming_window_l
  :: Int64
  -> IO (ForeignPtr Tensor)
hamming_window_l = _cast1 Unmanaged.hamming_window_l

hamming_window_lbo
  :: Int64
  -> CBool
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
hamming_window_lbo = _cast3 Unmanaged.hamming_window_lbo

hamming_window_lb
  :: Int64
  -> CBool
  -> IO (ForeignPtr Tensor)
hamming_window_lb = _cast2 Unmanaged.hamming_window_lb

hamming_window_lbdo
  :: Int64
  -> CBool
  -> CDouble
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
hamming_window_lbdo = _cast4 Unmanaged.hamming_window_lbdo

hamming_window_lbd
  :: Int64
  -> CBool
  -> CDouble
  -> IO (ForeignPtr Tensor)
hamming_window_lbd = _cast3 Unmanaged.hamming_window_lbd

hamming_window_lbddo
  :: Int64
  -> CBool
  -> CDouble
  -> CDouble
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
hamming_window_lbddo = _cast5 Unmanaged.hamming_window_lbddo

hamming_window_lbdd
  :: Int64
  -> CBool
  -> CDouble
  -> CDouble
  -> IO (ForeignPtr Tensor)
hamming_window_lbdd = _cast4 Unmanaged.hamming_window_lbdd

kaiser_window_lo
  :: Int64
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
kaiser_window_lo = _cast2 Unmanaged.kaiser_window_lo

kaiser_window_l
  :: Int64
  -> IO (ForeignPtr Tensor)
kaiser_window_l = _cast1 Unmanaged.kaiser_window_l

kaiser_window_lbo
  :: Int64
  -> CBool
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
kaiser_window_lbo = _cast3 Unmanaged.kaiser_window_lbo

kaiser_window_lb
  :: Int64
  -> CBool
  -> IO (ForeignPtr Tensor)
kaiser_window_lb = _cast2 Unmanaged.kaiser_window_lb

kaiser_window_lbdo
  :: Int64
  -> CBool
  -> CDouble
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
kaiser_window_lbdo = _cast4 Unmanaged.kaiser_window_lbdo

kaiser_window_lbd
  :: Int64
  -> CBool
  -> CDouble
  -> IO (ForeignPtr Tensor)
kaiser_window_lbd = _cast3 Unmanaged.kaiser_window_lbd

linspace_sslo
  :: ForeignPtr Scalar
  -> ForeignPtr Scalar
  -> Int64
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
linspace_sslo = _cast4 Unmanaged.linspace_sslo

linspace_ssl
  :: ForeignPtr Scalar
  -> ForeignPtr Scalar
  -> Int64
  -> IO (ForeignPtr Tensor)
linspace_ssl = _cast3 Unmanaged.linspace_ssl

logspace_ssldo
  :: ForeignPtr Scalar
  -> ForeignPtr Scalar
  -> Int64
  -> CDouble
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
logspace_ssldo = _cast5 Unmanaged.logspace_ssldo

logspace_ssld
  :: ForeignPtr Scalar
  -> ForeignPtr Scalar
  -> Int64
  -> CDouble
  -> IO (ForeignPtr Tensor)
logspace_ssld = _cast4 Unmanaged.logspace_ssld

logspace_ssl
  :: ForeignPtr Scalar
  -> ForeignPtr Scalar
  -> Int64
  -> IO (ForeignPtr Tensor)
logspace_ssl = _cast3 Unmanaged.logspace_ssl

ones_lNo
  :: ForeignPtr IntArray
  -> ForeignPtr DimnameList
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
ones_lNo = _cast3 Unmanaged.ones_lNo

ones_lN
  :: ForeignPtr IntArray
  -> ForeignPtr DimnameList
  -> IO (ForeignPtr Tensor)
ones_lN = _cast2 Unmanaged.ones_lN

ones_lo
  :: ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
ones_lo = _cast2 Unmanaged.ones_lo

ones_l
  :: ForeignPtr IntArray
  -> IO (ForeignPtr Tensor)
ones_l = _cast1 Unmanaged.ones_l

ones_like_toM
  :: ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> MemoryFormat
  -> IO (ForeignPtr Tensor)
ones_like_toM = _cast3 Unmanaged.ones_like_toM

ones_like_to
  :: ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
ones_like_to = _cast2 Unmanaged.ones_like_to

ones_like_t
  :: ForeignPtr Tensor
  -> IO (ForeignPtr Tensor)
ones_like_t = _cast1 Unmanaged.ones_like_t

scalar_tensor_so
  :: ForeignPtr Scalar
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
scalar_tensor_so = _cast2 Unmanaged.scalar_tensor_so

scalar_tensor_s
  :: ForeignPtr Scalar
  -> IO (ForeignPtr Tensor)
scalar_tensor_s = _cast1 Unmanaged.scalar_tensor_s

rand_lNo
  :: ForeignPtr IntArray
  -> ForeignPtr DimnameList
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
rand_lNo = _cast3 Unmanaged.rand_lNo

rand_lN
  :: ForeignPtr IntArray
  -> ForeignPtr DimnameList
  -> IO (ForeignPtr Tensor)
rand_lN = _cast2 Unmanaged.rand_lN

rand_lGNo
  :: ForeignPtr IntArray
  -> ForeignPtr Generator
  -> ForeignPtr DimnameList
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
rand_lGNo = _cast4 Unmanaged.rand_lGNo

rand_lGN
  :: ForeignPtr IntArray
  -> ForeignPtr Generator
  -> ForeignPtr DimnameList
  -> IO (ForeignPtr Tensor)
rand_lGN = _cast3 Unmanaged.rand_lGN

rand_lo
  :: ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
rand_lo = _cast2 Unmanaged.rand_lo

rand_l
  :: ForeignPtr IntArray
  -> IO (ForeignPtr Tensor)
rand_l = _cast1 Unmanaged.rand_l

rand_lGo
  :: ForeignPtr IntArray
  -> ForeignPtr Generator
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
rand_lGo = _cast3 Unmanaged.rand_lGo

rand_lG
  :: ForeignPtr IntArray
  -> ForeignPtr Generator
  -> IO (ForeignPtr Tensor)
rand_lG = _cast2 Unmanaged.rand_lG

rand_like_toM
  :: ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> MemoryFormat
  -> IO (ForeignPtr Tensor)
rand_like_toM = _cast3 Unmanaged.rand_like_toM

rand_like_to
  :: ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
rand_like_to = _cast2 Unmanaged.rand_like_to

rand_like_t
  :: ForeignPtr Tensor
  -> IO (ForeignPtr Tensor)
rand_like_t = _cast1 Unmanaged.rand_like_t

randint_llo
  :: Int64
  -> ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
randint_llo = _cast3 Unmanaged.randint_llo

randint_ll
  :: Int64
  -> ForeignPtr IntArray
  -> IO (ForeignPtr Tensor)
randint_ll = _cast2 Unmanaged.randint_ll

randint_llGo
  :: Int64
  -> ForeignPtr IntArray
  -> ForeignPtr Generator
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
randint_llGo = _cast4 Unmanaged.randint_llGo

randint_llG
  :: Int64
  -> ForeignPtr IntArray
  -> ForeignPtr Generator
  -> IO (ForeignPtr Tensor)
randint_llG = _cast3 Unmanaged.randint_llG

randint_lllo
  :: Int64
  -> Int64
  -> ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
randint_lllo = _cast4 Unmanaged.randint_lllo

randint_lll
  :: Int64
  -> Int64
  -> ForeignPtr IntArray
  -> IO (ForeignPtr Tensor)
randint_lll = _cast3 Unmanaged.randint_lll

randint_lllGo
  :: Int64
  -> Int64
  -> ForeignPtr IntArray
  -> ForeignPtr Generator
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
randint_lllGo = _cast5 Unmanaged.randint_lllGo

randint_lllG
  :: Int64
  -> Int64
  -> ForeignPtr IntArray
  -> ForeignPtr Generator
  -> IO (ForeignPtr Tensor)
randint_lllG = _cast4 Unmanaged.randint_lllG

randint_like_tloM
  :: ForeignPtr Tensor
  -> Int64
  -> ForeignPtr TensorOptions
  -> MemoryFormat
  -> IO (ForeignPtr Tensor)
randint_like_tloM = _cast4 Unmanaged.randint_like_tloM

randint_like_tlo
  :: ForeignPtr Tensor
  -> Int64
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
randint_like_tlo = _cast3 Unmanaged.randint_like_tlo

randint_like_tl
  :: ForeignPtr Tensor
  -> Int64
  -> IO (ForeignPtr Tensor)
randint_like_tl = _cast2 Unmanaged.randint_like_tl

randint_like_tlloM
  :: ForeignPtr Tensor
  -> Int64
  -> Int64
  -> ForeignPtr TensorOptions
  -> MemoryFormat
  -> IO (ForeignPtr Tensor)
randint_like_tlloM = _cast5 Unmanaged.randint_like_tlloM

randint_like_tllo
  :: ForeignPtr Tensor
  -> Int64
  -> Int64
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
randint_like_tllo = _cast4 Unmanaged.randint_like_tllo

randint_like_tll
  :: ForeignPtr Tensor
  -> Int64
  -> Int64
  -> IO (ForeignPtr Tensor)
randint_like_tll = _cast3 Unmanaged.randint_like_tll

randn_lo
  :: ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
randn_lo = _cast2 Unmanaged.randn_lo

randn_l
  :: ForeignPtr IntArray
  -> IO (ForeignPtr Tensor)
randn_l = _cast1 Unmanaged.randn_l

randn_lGo
  :: ForeignPtr IntArray
  -> ForeignPtr Generator
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
randn_lGo = _cast3 Unmanaged.randn_lGo

randn_lG
  :: ForeignPtr IntArray
  -> ForeignPtr Generator
  -> IO (ForeignPtr Tensor)
randn_lG = _cast2 Unmanaged.randn_lG

randn_lNo
  :: ForeignPtr IntArray
  -> ForeignPtr DimnameList
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
randn_lNo = _cast3 Unmanaged.randn_lNo

randn_lN
  :: ForeignPtr IntArray
  -> ForeignPtr DimnameList
  -> IO (ForeignPtr Tensor)
randn_lN = _cast2 Unmanaged.randn_lN

randn_lGNo
  :: ForeignPtr IntArray
  -> ForeignPtr Generator
  -> ForeignPtr DimnameList
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
randn_lGNo = _cast4 Unmanaged.randn_lGNo

randn_lGN
  :: ForeignPtr IntArray
  -> ForeignPtr Generator
  -> ForeignPtr DimnameList
  -> IO (ForeignPtr Tensor)
randn_lGN = _cast3 Unmanaged.randn_lGN

randn_like_toM
  :: ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> MemoryFormat
  -> IO (ForeignPtr Tensor)
randn_like_toM = _cast3 Unmanaged.randn_like_toM

randn_like_to
  :: ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
randn_like_to = _cast2 Unmanaged.randn_like_to

randn_like_t
  :: ForeignPtr Tensor
  -> IO (ForeignPtr Tensor)
randn_like_t = _cast1 Unmanaged.randn_like_t

randperm_lo
  :: Int64
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
randperm_lo = _cast2 Unmanaged.randperm_lo

randperm_l
  :: Int64
  -> IO (ForeignPtr Tensor)
randperm_l = _cast1 Unmanaged.randperm_l

randperm_lGo
  :: Int64
  -> ForeignPtr Generator
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
randperm_lGo = _cast3 Unmanaged.randperm_lGo

randperm_lG
  :: Int64
  -> ForeignPtr Generator
  -> IO (ForeignPtr Tensor)
randperm_lG = _cast2 Unmanaged.randperm_lG

range_ssso
  :: ForeignPtr Scalar
  -> ForeignPtr Scalar
  -> ForeignPtr Scalar
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
range_ssso = _cast4 Unmanaged.range_ssso

range_sss
  :: ForeignPtr Scalar
  -> ForeignPtr Scalar
  -> ForeignPtr Scalar
  -> IO (ForeignPtr Tensor)
range_sss = _cast3 Unmanaged.range_sss

zeros_lNo
  :: ForeignPtr IntArray
  -> ForeignPtr DimnameList
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
zeros_lNo = _cast3 Unmanaged.zeros_lNo

zeros_lN
  :: ForeignPtr IntArray
  -> ForeignPtr DimnameList
  -> IO (ForeignPtr Tensor)
zeros_lN = _cast2 Unmanaged.zeros_lN

_efficientzerotensor_lo
  :: ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
_efficientzerotensor_lo = _cast2 Unmanaged._efficientzerotensor_lo

_efficientzerotensor_l
  :: ForeignPtr IntArray
  -> IO (ForeignPtr Tensor)
_efficientzerotensor_l = _cast1 Unmanaged._efficientzerotensor_l

zeros_lo
  :: ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
zeros_lo = _cast2 Unmanaged.zeros_lo

zeros_l
  :: ForeignPtr IntArray
  -> IO (ForeignPtr Tensor)
zeros_l = _cast1 Unmanaged.zeros_l

zeros_like_toM
  :: ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> MemoryFormat
  -> IO (ForeignPtr Tensor)
zeros_like_toM = _cast3 Unmanaged.zeros_like_toM

zeros_like_to
  :: ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
zeros_like_to = _cast2 Unmanaged.zeros_like_to

zeros_like_t
  :: ForeignPtr Tensor
  -> IO (ForeignPtr Tensor)
zeros_like_t = _cast1 Unmanaged.zeros_like_t

sparse_compressed_tensor_tttlo
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
sparse_compressed_tensor_tttlo = _cast5 Unmanaged.sparse_compressed_tensor_tttlo

sparse_csr_tensor_tttlo
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
sparse_csr_tensor_tttlo = _cast5 Unmanaged.sparse_csr_tensor_tttlo

sparse_csc_tensor_tttlo
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
sparse_csc_tensor_tttlo = _cast5 Unmanaged.sparse_csc_tensor_tttlo

sparse_bsr_tensor_tttlo
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
sparse_bsr_tensor_tttlo = _cast5 Unmanaged.sparse_bsr_tensor_tttlo

sparse_bsc_tensor_tttlo
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
sparse_bsc_tensor_tttlo = _cast5 Unmanaged.sparse_bsc_tensor_tttlo

sparse_compressed_tensor_ttto
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
sparse_compressed_tensor_ttto = _cast4 Unmanaged.sparse_compressed_tensor_ttto

sparse_csr_tensor_ttto
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
sparse_csr_tensor_ttto = _cast4 Unmanaged.sparse_csr_tensor_ttto

sparse_csc_tensor_ttto
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
sparse_csc_tensor_ttto = _cast4 Unmanaged.sparse_csc_tensor_ttto

sparse_bsr_tensor_ttto
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
sparse_bsr_tensor_ttto = _cast4 Unmanaged.sparse_bsr_tensor_ttto

sparse_bsc_tensor_ttto
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
sparse_bsc_tensor_ttto = _cast4 Unmanaged.sparse_bsc_tensor_ttto

_sparse_compressed_tensor_unsafe_tttlo
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
_sparse_compressed_tensor_unsafe_tttlo = _cast5 Unmanaged._sparse_compressed_tensor_unsafe_tttlo

_sparse_compressed_tensor_unsafe_tttl
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr IntArray
  -> IO (ForeignPtr Tensor)
_sparse_compressed_tensor_unsafe_tttl = _cast4 Unmanaged._sparse_compressed_tensor_unsafe_tttl

_sparse_csr_tensor_unsafe_tttlo
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
_sparse_csr_tensor_unsafe_tttlo = _cast5 Unmanaged._sparse_csr_tensor_unsafe_tttlo

_sparse_csr_tensor_unsafe_tttl
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr IntArray
  -> IO (ForeignPtr Tensor)
_sparse_csr_tensor_unsafe_tttl = _cast4 Unmanaged._sparse_csr_tensor_unsafe_tttl

_sparse_csc_tensor_unsafe_tttlo
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
_sparse_csc_tensor_unsafe_tttlo = _cast5 Unmanaged._sparse_csc_tensor_unsafe_tttlo

_sparse_csc_tensor_unsafe_tttl
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr IntArray
  -> IO (ForeignPtr Tensor)
_sparse_csc_tensor_unsafe_tttl = _cast4 Unmanaged._sparse_csc_tensor_unsafe_tttl

_sparse_bsr_tensor_unsafe_tttlo
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
_sparse_bsr_tensor_unsafe_tttlo = _cast5 Unmanaged._sparse_bsr_tensor_unsafe_tttlo

_sparse_bsr_tensor_unsafe_tttl
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr IntArray
  -> IO (ForeignPtr Tensor)
_sparse_bsr_tensor_unsafe_tttl = _cast4 Unmanaged._sparse_bsr_tensor_unsafe_tttl

_sparse_bsc_tensor_unsafe_tttlo
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
_sparse_bsc_tensor_unsafe_tttlo = _cast5 Unmanaged._sparse_bsc_tensor_unsafe_tttlo

_sparse_bsc_tensor_unsafe_tttl
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr IntArray
  -> IO (ForeignPtr Tensor)
_sparse_bsc_tensor_unsafe_tttl = _cast4 Unmanaged._sparse_bsc_tensor_unsafe_tttl

sparse_coo_tensor_lo
  :: ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
sparse_coo_tensor_lo = _cast2 Unmanaged.sparse_coo_tensor_lo

sparse_coo_tensor_tto
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
sparse_coo_tensor_tto = _cast3 Unmanaged.sparse_coo_tensor_tto

sparse_coo_tensor_tt
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> IO (ForeignPtr Tensor)
sparse_coo_tensor_tt = _cast2 Unmanaged.sparse_coo_tensor_tt

sparse_coo_tensor_ttlo
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
sparse_coo_tensor_ttlo = _cast4 Unmanaged.sparse_coo_tensor_ttlo

sparse_coo_tensor_ttl
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr IntArray
  -> IO (ForeignPtr Tensor)
sparse_coo_tensor_ttl = _cast3 Unmanaged.sparse_coo_tensor_ttl

_sparse_coo_tensor_unsafe_ttlo
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
_sparse_coo_tensor_unsafe_ttlo = _cast4 Unmanaged._sparse_coo_tensor_unsafe_ttlo

_sparse_coo_tensor_unsafe_ttl
  :: ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr IntArray
  -> IO (ForeignPtr Tensor)
_sparse_coo_tensor_unsafe_ttl = _cast3 Unmanaged._sparse_coo_tensor_unsafe_ttl

_sparse_coo_tensor_with_dims_lllo
  :: Int64
  -> Int64
  -> ForeignPtr IntArray
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
_sparse_coo_tensor_with_dims_lllo = _cast4 Unmanaged._sparse_coo_tensor_with_dims_lllo

_sparse_coo_tensor_with_dims_and_tensors_llltto
  :: Int64
  -> Int64
  -> ForeignPtr IntArray
  -> ForeignPtr Tensor
  -> ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
_sparse_coo_tensor_with_dims_and_tensors_llltto = _cast6 Unmanaged._sparse_coo_tensor_with_dims_and_tensors_llltto

_to_copy_tobM
  :: ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> CBool
  -> MemoryFormat
  -> IO (ForeignPtr Tensor)
_to_copy_tobM = _cast4 Unmanaged._to_copy_tobM

_to_copy_tob
  :: ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> CBool
  -> IO (ForeignPtr Tensor)
_to_copy_tob = _cast3 Unmanaged._to_copy_tob

_to_copy_to
  :: ForeignPtr Tensor
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
_to_copy_to = _cast2 Unmanaged._to_copy_to

_to_copy_t
  :: ForeignPtr Tensor
  -> IO (ForeignPtr Tensor)
_to_copy_t = _cast1 Unmanaged._to_copy_t

tril_indices_lllo
  :: Int64
  -> Int64
  -> Int64
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
tril_indices_lllo = _cast4 Unmanaged.tril_indices_lllo

tril_indices_lll
  :: Int64
  -> Int64
  -> Int64
  -> IO (ForeignPtr Tensor)
tril_indices_lll = _cast3 Unmanaged.tril_indices_lll

tril_indices_ll
  :: Int64
  -> Int64
  -> IO (ForeignPtr Tensor)
tril_indices_ll = _cast2 Unmanaged.tril_indices_ll

triu_indices_lllo
  :: Int64
  -> Int64
  -> Int64
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
triu_indices_lllo = _cast4 Unmanaged.triu_indices_lllo

triu_indices_lll
  :: Int64
  -> Int64
  -> Int64
  -> IO (ForeignPtr Tensor)
triu_indices_lll = _cast3 Unmanaged.triu_indices_lll

triu_indices_ll
  :: Int64
  -> Int64
  -> IO (ForeignPtr Tensor)
triu_indices_ll = _cast2 Unmanaged.triu_indices_ll

normal_ddlGo
  :: CDouble
  -> CDouble
  -> ForeignPtr IntArray
  -> ForeignPtr Generator
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
normal_ddlGo = _cast5 Unmanaged.normal_ddlGo

normal_ddlG
  :: CDouble
  -> CDouble
  -> ForeignPtr IntArray
  -> ForeignPtr Generator
  -> IO (ForeignPtr Tensor)
normal_ddlG = _cast4 Unmanaged.normal_ddlG

normal_ddl
  :: CDouble
  -> CDouble
  -> ForeignPtr IntArray
  -> IO (ForeignPtr Tensor)
normal_ddl = _cast3 Unmanaged.normal_ddl

fft_fftfreq_ldo
  :: Int64
  -> CDouble
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
fft_fftfreq_ldo = _cast3 Unmanaged.fft_fftfreq_ldo

fft_fftfreq_ld
  :: Int64
  -> CDouble
  -> IO (ForeignPtr Tensor)
fft_fftfreq_ld = _cast2 Unmanaged.fft_fftfreq_ld

fft_fftfreq_l
  :: Int64
  -> IO (ForeignPtr Tensor)
fft_fftfreq_l = _cast1 Unmanaged.fft_fftfreq_l

fft_rfftfreq_ldo
  :: Int64
  -> CDouble
  -> ForeignPtr TensorOptions
  -> IO (ForeignPtr Tensor)
fft_rfftfreq_ldo = _cast3 Unmanaged.fft_rfftfreq_ldo

fft_rfftfreq_ld
  :: Int64
  -> CDouble
  -> IO (ForeignPtr Tensor)
fft_rfftfreq_ld = _cast2 Unmanaged.fft_rfftfreq_ld

fft_rfftfreq_l
  :: Int64
  -> IO (ForeignPtr Tensor)
fft_rfftfreq_l = _cast1 Unmanaged.fft_rfftfreq_l

