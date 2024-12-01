
{.warning[UnusedImport]: off.}
{.hint[XDeclaredButNotUsed]: off.}
from macros import hint, warning, newLit, getSize

from os import parentDir

when not declared(ownSizeOf):
  macro ownSizeof(x: typed): untyped =
    newLit(x.getSize)

type
  enum_ggml_status_520094144* {.size: sizeof(cint).} = enum
    GGML_STATUS_ALLOC_FAILED = -2, GGML_STATUS_FAILED = -1,
    GGML_STATUS_SUCCESS = 0, GGML_STATUS_ABORTED = 1
type
  enum_ggml_type_520094152* {.size: sizeof(cuint).} = enum
    GGML_TYPE_F32 = 0, GGML_TYPE_F16 = 1, GGML_TYPE_Q4_0 = 2,
    GGML_TYPE_Q4_1 = 3, GGML_TYPE_Q5_0 = 6, GGML_TYPE_Q5_1 = 7,
    GGML_TYPE_Q8_0 = 8, GGML_TYPE_Q8_1 = 9, GGML_TYPE_Q2_K = 10,
    GGML_TYPE_Q3_K = 11, GGML_TYPE_Q4_K = 12, GGML_TYPE_Q5_K = 13,
    GGML_TYPE_Q6_K = 14, GGML_TYPE_Q8_K = 15, GGML_TYPE_IQ2_XXS = 16,
    GGML_TYPE_IQ2_XS = 17, GGML_TYPE_IQ3_XXS = 18, GGML_TYPE_IQ1_S = 19,
    GGML_TYPE_IQ4_NL = 20, GGML_TYPE_IQ3_S = 21, GGML_TYPE_IQ2_S = 22,
    GGML_TYPE_IQ4_XS = 23, GGML_TYPE_I8 = 24, GGML_TYPE_I16 = 25,
    GGML_TYPE_I32 = 26, GGML_TYPE_I64 = 27, GGML_TYPE_F64 = 28,
    GGML_TYPE_IQ1_M = 29, GGML_TYPE_BF16 = 30, GGML_TYPE_Q4_0_4_4 = 31,
    GGML_TYPE_Q4_0_4_8 = 32, GGML_TYPE_Q4_0_8_8 = 33, GGML_TYPE_TQ1_0 = 34,
    GGML_TYPE_TQ2_0 = 35, GGML_TYPE_COUNT = 36
type
  enum_ggml_prec_520094154* {.size: sizeof(cuint).} = enum
    GGML_PREC_DEFAULT = 0, GGML_PREC_F32 = 1
type
  enum_ggml_backend_type_520094156* {.size: sizeof(cuint).} = enum
    GGML_BACKEND_TYPE_CPU = 0, GGML_BACKEND_TYPE_GPU = 10,
    GGML_BACKEND_TYPE_GPU_SPLIT = 20
type
  enum_ggml_ftype_520094158* {.size: sizeof(cint).} = enum
    GGML_FTYPE_UNKNOWN = -1, GGML_FTYPE_ALL_F32 = 0, GGML_FTYPE_MOSTLY_F16 = 1,
    GGML_FTYPE_MOSTLY_Q4_0 = 2, GGML_FTYPE_MOSTLY_Q4_1 = 3,
    GGML_FTYPE_MOSTLY_Q4_1_SOME_F16 = 4, GGML_FTYPE_MOSTLY_Q8_0 = 7,
    GGML_FTYPE_MOSTLY_Q5_0 = 8, GGML_FTYPE_MOSTLY_Q5_1 = 9,
    GGML_FTYPE_MOSTLY_Q2_K = 10, GGML_FTYPE_MOSTLY_Q3_K = 11,
    GGML_FTYPE_MOSTLY_Q4_K = 12, GGML_FTYPE_MOSTLY_Q5_K = 13,
    GGML_FTYPE_MOSTLY_Q6_K = 14, GGML_FTYPE_MOSTLY_IQ2_XXS = 15,
    GGML_FTYPE_MOSTLY_IQ2_XS = 16, GGML_FTYPE_MOSTLY_IQ3_XXS = 17,
    GGML_FTYPE_MOSTLY_IQ1_S = 18, GGML_FTYPE_MOSTLY_IQ4_NL = 19,
    GGML_FTYPE_MOSTLY_IQ3_S = 20, GGML_FTYPE_MOSTLY_IQ2_S = 21,
    GGML_FTYPE_MOSTLY_IQ4_XS = 22, GGML_FTYPE_MOSTLY_IQ1_M = 23,
    GGML_FTYPE_MOSTLY_BF16 = 24, GGML_FTYPE_MOSTLY_Q4_0_4_4 = 25,
    GGML_FTYPE_MOSTLY_Q4_0_4_8 = 26, GGML_FTYPE_MOSTLY_Q4_0_8_8 = 27
type
  enum_ggml_op_520094160* {.size: sizeof(cuint).} = enum
    GGML_OP_NONE = 0, GGML_OP_DUP = 1, GGML_OP_ADD = 2, GGML_OP_ADD1 = 3,
    GGML_OP_ACC = 4, GGML_OP_SUB = 5, GGML_OP_MUL = 6, GGML_OP_DIV = 7,
    GGML_OP_SQR = 8, GGML_OP_SQRT = 9, GGML_OP_LOG = 10, GGML_OP_SIN = 11,
    GGML_OP_COS = 12, GGML_OP_SUM = 13, GGML_OP_SUM_ROWS = 14,
    GGML_OP_MEAN = 15, GGML_OP_ARGMAX = 16, GGML_OP_COUNT_EQUAL = 17,
    GGML_OP_REPEAT = 18, GGML_OP_REPEAT_BACK = 19, GGML_OP_CONCAT = 20,
    GGML_OP_SILU_BACK = 21, GGML_OP_NORM = 22, GGML_OP_RMS_NORM = 23,
    GGML_OP_RMS_NORM_BACK = 24, GGML_OP_GROUP_NORM = 25, GGML_OP_MUL_MAT = 26,
    GGML_OP_MUL_MAT_ID = 27, GGML_OP_OUT_PROD = 28, GGML_OP_SCALE = 29,
    GGML_OP_SET = 30, GGML_OP_CPY = 31, GGML_OP_CONT = 32, GGML_OP_RESHAPE = 33,
    GGML_OP_VIEW = 34, GGML_OP_PERMUTE = 35, GGML_OP_TRANSPOSE = 36,
    GGML_OP_GET_ROWS = 37, GGML_OP_GET_ROWS_BACK = 38, GGML_OP_DIAG = 39,
    GGML_OP_DIAG_MASK_INF = 40, GGML_OP_DIAG_MASK_ZERO = 41,
    GGML_OP_SOFT_MAX = 42, GGML_OP_SOFT_MAX_BACK = 43, GGML_OP_ROPE = 44,
    GGML_OP_ROPE_BACK = 45, GGML_OP_CLAMP = 46, GGML_OP_CONV_TRANSPOSE_1D = 47,
    GGML_OP_IM2COL = 48, GGML_OP_IM2COL_BACK = 49,
    GGML_OP_CONV_TRANSPOSE_2D = 50, GGML_OP_POOL_1D = 51, GGML_OP_POOL_2D = 52,
    GGML_OP_POOL_2D_BACK = 53, GGML_OP_UPSCALE = 54, GGML_OP_PAD = 55,
    GGML_OP_ARANGE = 56, GGML_OP_TIMESTEP_EMBEDDING = 57, GGML_OP_ARGSORT = 58,
    GGML_OP_LEAKY_RELU = 59, GGML_OP_FLASH_ATTN_EXT = 60,
    GGML_OP_FLASH_ATTN_BACK = 61, GGML_OP_SSM_CONV = 62, GGML_OP_SSM_SCAN = 63,
    GGML_OP_WIN_PART = 64, GGML_OP_WIN_UNPART = 65, GGML_OP_GET_REL_POS = 66,
    GGML_OP_ADD_REL_POS = 67, GGML_OP_RWKV_WKV6 = 68, GGML_OP_UNARY = 69,
    GGML_OP_MAP_UNARY = 70, GGML_OP_MAP_BINARY = 71,
    GGML_OP_MAP_CUSTOM1_F32 = 72, GGML_OP_MAP_CUSTOM2_F32 = 73,
    GGML_OP_MAP_CUSTOM3_F32 = 74, GGML_OP_MAP_CUSTOM1 = 75,
    GGML_OP_MAP_CUSTOM2 = 76, GGML_OP_MAP_CUSTOM3 = 77,
    GGML_OP_CROSS_ENTROPY_LOSS = 78, GGML_OP_CROSS_ENTROPY_LOSS_BACK = 79,
    GGML_OP_OPT_STEP_ADAMW = 80, GGML_OP_COUNT = 81
type
  enum_ggml_unary_op_520094162* {.size: sizeof(cuint).} = enum
    GGML_UNARY_OP_ABS = 0, GGML_UNARY_OP_SGN = 1, GGML_UNARY_OP_NEG = 2,
    GGML_UNARY_OP_STEP = 3, GGML_UNARY_OP_TANH = 4, GGML_UNARY_OP_ELU = 5,
    GGML_UNARY_OP_RELU = 6, GGML_UNARY_OP_SIGMOID = 7, GGML_UNARY_OP_GELU = 8,
    GGML_UNARY_OP_GELU_QUICK = 9, GGML_UNARY_OP_SILU = 10,
    GGML_UNARY_OP_HARDSWISH = 11, GGML_UNARY_OP_HARDSIGMOID = 12,
    GGML_UNARY_OP_EXP = 13, GGML_UNARY_OP_COUNT = 14
type
  enum_ggml_object_type_520094164* {.size: sizeof(cuint).} = enum
    GGML_OBJECT_TYPE_TENSOR = 0, GGML_OBJECT_TYPE_GRAPH = 1,
    GGML_OBJECT_TYPE_WORK_BUFFER = 2
type
  enum_ggml_log_level_520094166* {.size: sizeof(cuint).} = enum
    GGML_LOG_LEVEL_NONE = 0, GGML_LOG_LEVEL_DEBUG = 1, GGML_LOG_LEVEL_INFO = 2,
    GGML_LOG_LEVEL_WARN = 3, GGML_LOG_LEVEL_ERROR = 4, GGML_LOG_LEVEL_CONT = 5
type
  enum_ggml_tensor_flag_520094168* {.size: sizeof(cuint).} = enum
    GGML_TENSOR_FLAG_INPUT = 1, GGML_TENSOR_FLAG_OUTPUT = 2,
    GGML_TENSOR_FLAG_PARAM = 4, GGML_TENSOR_FLAG_LOSS = 8
type
  enum_ggml_op_pool_520094182* {.size: sizeof(cuint).} = enum
    GGML_OP_POOL_MAX = 0, GGML_OP_POOL_AVG = 1, GGML_OP_POOL_COUNT = 2
type
  enum_ggml_sort_order_520094184* {.size: sizeof(cuint).} = enum
    GGML_SORT_ORDER_ASC = 0, GGML_SORT_ORDER_DESC = 1
type
  enum_ggml_opt_type_520094202* {.size: sizeof(cuint).} = enum
    GGML_OPT_TYPE_ADAM = 0, GGML_OPT_TYPE_LBFGS = 1
type
  enum_ggml_linesearch_520094204* {.size: sizeof(cuint).} = enum
    GGML_LINESEARCH_BACKTRACKING_ARMIJO = 0, GGML_LINESEARCH_DEFAULT = 1,
    GGML_LINESEARCH_BACKTRACKING_STRONG_WOLFE = 2
when not declared(GGML_LINESEARCH_BACKTRACKING_WOLFE):
  const
    GGML_LINESEARCH_BACKTRACKING_WOLFE* = enum_ggml_linesearch_520094204.GGML_LINESEARCH_DEFAULT
else:
  static :
    hint("Declaration of " & "GGML_LINESEARCH_BACKTRACKING_WOLFE" &
        " already exists, not redeclaring")
type
  enum_ggml_opt_result_520094206* {.size: sizeof(cint).} = enum
    GGML_LINESEARCH_FAIL = -128, GGML_LINESEARCH_MINIMUM_STEP = -127,
    GGML_LINESEARCH_MAXIMUM_STEP = -126,
    GGML_LINESEARCH_MAXIMUM_ITERATIONS = -125,
    GGML_LINESEARCH_INVALID_PARAMETERS = -124, GGML_OPT_RESULT_OK = 0,
    GGML_OPT_RESULT_DID_NOT_CONVERGE = 1, GGML_OPT_RESULT_NO_CONTEXT = 2,
    GGML_OPT_RESULT_INVALID_WOLFE = 3, GGML_OPT_RESULT_FAIL = 4,
    GGML_OPT_RESULT_CANCEL = 5
type
  enum_gguf_type_520094216* {.size: sizeof(cuint).} = enum
    GGUF_TYPE_UINT8 = 0, GGUF_TYPE_INT8 = 1, GGUF_TYPE_UINT16 = 2,
    GGUF_TYPE_INT16 = 3, GGUF_TYPE_UINT32 = 4, GGUF_TYPE_INT32 = 5,
    GGUF_TYPE_FLOAT32 = 6, GGUF_TYPE_BOOL = 7, GGUF_TYPE_STRING = 8,
    GGUF_TYPE_ARRAY = 9, GGUF_TYPE_UINT64 = 10, GGUF_TYPE_INT64 = 11,
    GGUF_TYPE_FLOAT64 = 12, GGUF_TYPE_COUNT = 13
type
  enum_ggml_backend_buffer_usage_520094251* {.size: sizeof(cuint).} = enum
    GGML_BACKEND_BUFFER_USAGE_ANY = 0, GGML_BACKEND_BUFFER_USAGE_WEIGHTS = 1,
    GGML_BACKEND_BUFFER_USAGE_COMPUTE = 2
type
  enum_ggml_backend_dev_type_520094253* {.size: sizeof(cuint).} = enum
    GGML_BACKEND_DEVICE_TYPE_CPU = 0, GGML_BACKEND_DEVICE_TYPE_GPU = 1,
    GGML_BACKEND_DEVICE_TYPE_ACCEL = 2
type
  enum_ggml_sched_priority_520094273* {.size: sizeof(cuint).} = enum
    GGML_SCHED_PRIO_NORMAL = 0, GGML_SCHED_PRIO_MEDIUM = 1,
    GGML_SCHED_PRIO_HIGH = 2, GGML_SCHED_PRIO_REALTIME = 3
type
  enum_ggml_numa_strategy_520094281* {.size: sizeof(cuint).} = enum
    GGML_NUMA_STRATEGY_DISABLED = 0, GGML_NUMA_STRATEGY_DISTRIBUTE = 1,
    GGML_NUMA_STRATEGY_ISOLATE = 2, GGML_NUMA_STRATEGY_NUMACTL = 3,
    GGML_NUMA_STRATEGY_MIRROR = 4, GGML_NUMA_STRATEGY_COUNT = 5
type
  enum_whisper_alignment_heads_preset_520094299* {.size: sizeof(cuint).} = enum
    WHISPER_AHEADS_NONE = 0, WHISPER_AHEADS_N_TOP_MOST = 1,
    WHISPER_AHEADS_CUSTOM = 2, WHISPER_AHEADS_TINY_EN = 3,
    WHISPER_AHEADS_TINY = 4, WHISPER_AHEADS_BASE_EN = 5,
    WHISPER_AHEADS_BASE = 6, WHISPER_AHEADS_SMALL_EN = 7,
    WHISPER_AHEADS_SMALL = 8, WHISPER_AHEADS_MEDIUM_EN = 9,
    WHISPER_AHEADS_MEDIUM = 10, WHISPER_AHEADS_LARGE_V1 = 11,
    WHISPER_AHEADS_LARGE_V2 = 12, WHISPER_AHEADS_LARGE_V3 = 13,
    WHISPER_AHEADS_LARGE_V3_TURBO = 14
type
  enum_whisper_gretype_520094319* {.size: sizeof(cuint).} = enum
    WHISPER_GRETYPE_END = 0, WHISPER_GRETYPE_ALT = 1,
    WHISPER_GRETYPE_RULE_REF = 2, WHISPER_GRETYPE_CHAR = 3,
    WHISPER_GRETYPE_CHAR_NOT = 4, WHISPER_GRETYPE_CHAR_RNG_UPPER = 5,
    WHISPER_GRETYPE_CHAR_ALT = 6
type
  enum_whisper_sampling_strategy_520094329* {.size: sizeof(cuint).} = enum
    WHISPER_SAMPLING_GREEDY = 0, WHISPER_SAMPLING_BEAM_SEARCH = 1
when not declared(struct_ggml_backend):
  type
    struct_ggml_backend* = object
else:
  static :
    hint("Declaration of " & "struct_ggml_backend" &
        " already exists, not redeclaring")
when not declared(struct_ggml_backend_event):
  type
    struct_ggml_backend_event* = object
else:
  static :
    hint("Declaration of " & "struct_ggml_backend_event" &
        " already exists, not redeclaring")
when not declared(struct_IO_marker):
  type
    struct_IO_marker* = object
else:
  static :
    hint("Declaration of " & "struct_IO_marker" &
        " already exists, not redeclaring")
when not declared(struct_ggml_object):
  type
    struct_ggml_object* = object
else:
  static :
    hint("Declaration of " & "struct_ggml_object" &
        " already exists, not redeclaring")
when not declared(struct_whisper_state):
  type
    struct_whisper_state* = object
else:
  static :
    hint("Declaration of " & "struct_whisper_state" &
        " already exists, not redeclaring")
when not declared(struct_IO_wide_data):
  type
    struct_IO_wide_data* = object
else:
  static :
    hint("Declaration of " & "struct_IO_wide_data" &
        " already exists, not redeclaring")
when not declared(struct_ggml_backend_buffer_type):
  type
    struct_ggml_backend_buffer_type* = object
else:
  static :
    hint("Declaration of " & "struct_ggml_backend_buffer_type" &
        " already exists, not redeclaring")
when not declared(struct_ggml_backend_device):
  type
    struct_ggml_backend_device* = object
else:
  static :
    hint("Declaration of " & "struct_ggml_backend_device" &
        " already exists, not redeclaring")
when not declared(struct_ggml_context):
  type
    struct_ggml_context* = object
else:
  static :
    hint("Declaration of " & "struct_ggml_context" &
        " already exists, not redeclaring")
when not declared(struct_ggml_backend_sched):
  type
    struct_ggml_backend_sched* = object
else:
  static :
    hint("Declaration of " & "struct_ggml_backend_sched" &
        " already exists, not redeclaring")
when not declared(struct_ggml_cgraph):
  type
    struct_ggml_cgraph* = object
else:
  static :
    hint("Declaration of " & "struct_ggml_cgraph" &
        " already exists, not redeclaring")
when not declared(restrict):
  type
    restrict* = object
else:
  static :
    hint("Declaration of " & "restrict" & " already exists, not redeclaring")
when not declared(struct_whisper_context):
  type
    struct_whisper_context* = object
else:
  static :
    hint("Declaration of " & "struct_whisper_context" &
        " already exists, not redeclaring")
when not declared(struct_gguf_context):
  type
    struct_gguf_context* = object
else:
  static :
    hint("Declaration of " & "struct_gguf_context" &
        " already exists, not redeclaring")
when not declared(struct_ggml_backend_reg):
  type
    struct_ggml_backend_reg* = object
else:
  static :
    hint("Declaration of " & "struct_ggml_backend_reg" &
        " already exists, not redeclaring")
when not declared(internal_Noreturn):
  type
    internal_Noreturn* = object
else:
  static :
    hint("Declaration of " & "internal_Noreturn" &
        " already exists, not redeclaring")
when not declared(struct_ggml_backend_buffer):
  type
    struct_ggml_backend_buffer* = object
else:
  static :
    hint("Declaration of " & "struct_ggml_backend_buffer" &
        " already exists, not redeclaring")
when not declared(struct_ggml_threadpool):
  type
    struct_ggml_threadpool* = object
else:
  static :
    hint("Declaration of " & "struct_ggml_threadpool" &
        " already exists, not redeclaring")
when not declared(struct_IO_codecvt):
  type
    struct_IO_codecvt* = object
else:
  static :
    hint("Declaration of " & "struct_IO_codecvt" &
        " already exists, not redeclaring")
when not declared(struct_ggml_gallocr):
  type
    struct_ggml_gallocr* = object
else:
  static :
    hint("Declaration of " & "struct_ggml_gallocr" &
        " already exists, not redeclaring")
type
  ggml_fp16_t_520094146 = uint16 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:336:22
  struct_ggml_bf16_t_520094148 {.pure, inheritable, bycopy.} = object
    bits*: uint16            ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:343:13
  ggml_bf16_t_520094150 = struct_ggml_bf16_t_520094149 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:343:39
  struct_ggml_init_params_520094170 {.pure, inheritable, bycopy.} = object
    mem_size*: csize_t       ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:576:12
    mem_buffer*: pointer
    no_alloc*: bool
  struct_ggml_tensor_520094172 {.pure, inheritable, bycopy.} = object
    type_field*: enum_ggml_type_520094153 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:584:12
    backend*: enum_ggml_backend_type_520094157
    buffer*: ptr struct_ggml_backend_buffer
    ne*: array[4'i64, int64]
    nb*: array[4'i64, csize_t]
    op*: enum_ggml_op_520094161
    op_params*: array[16'i64, int32]
    flags*: int32
    grad*: ptr struct_ggml_tensor_520094173
    src*: array[10'i64, ptr struct_ggml_tensor_520094173]
    view_src*: ptr struct_ggml_tensor_520094173
    view_offs*: csize_t
    data*: pointer
    name*: array[64'i64, cschar]
    extra*: pointer
  ggml_abort_callback_520094174 = proc (a0: pointer): bool {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:626:20
  ggml_guid_520094176 = array[16'i64, uint8] ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:634:21
  ggml_guid_t_520094178 = ptr ggml_guid_520094177 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:635:25
  FILE_520094180 = struct_IO_FILE_520094340 ## Generated based on /usr/include/x86_64-linux-gnu/bits/types/FILE.h:7:25
  ggml_unary_op_f32_t_520094186 = proc (a0: cint; a1: ptr cfloat; a2: ptr cfloat): void {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:1836:20
  ggml_binary_op_f32_t_520094188 = proc (a0: cint; a1: ptr cfloat;
      a2: ptr cfloat; a3: ptr cfloat): void {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:1837:20
  ggml_custom1_op_f32_t_520094190 = proc (a0: ptr struct_ggml_tensor_520094173;
      a1: ptr struct_ggml_tensor_520094173): void {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:1839:20
  ggml_custom2_op_f32_t_520094192 = proc (a0: ptr struct_ggml_tensor_520094173;
      a1: ptr struct_ggml_tensor_520094173; a2: ptr struct_ggml_tensor_520094173): void {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:1840:20
  ggml_custom3_op_f32_t_520094194 = proc (a0: ptr struct_ggml_tensor_520094173;
      a1: ptr struct_ggml_tensor_520094173; a2: ptr struct_ggml_tensor_520094173;
      a3: ptr struct_ggml_tensor_520094173): void {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:1841:20
  ggml_custom1_op_t_520094196 = proc (a0: ptr struct_ggml_tensor_520094173;
                                      a1: ptr struct_ggml_tensor_520094173;
                                      a2: cint; a3: cint; a4: pointer): void {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:1913:20
  ggml_custom2_op_t_520094198 = proc (a0: ptr struct_ggml_tensor_520094173;
                                      a1: ptr struct_ggml_tensor_520094173;
                                      a2: ptr struct_ggml_tensor_520094173;
                                      a3: cint; a4: cint; a5: pointer): void {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:1914:20
  ggml_custom3_op_t_520094200 = proc (a0: ptr struct_ggml_tensor_520094173;
                                      a1: ptr struct_ggml_tensor_520094173;
                                      a2: ptr struct_ggml_tensor_520094173;
                                      a3: ptr struct_ggml_tensor_520094173;
                                      a4: cint; a5: cint; a6: pointer): void {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:1915:20
  ggml_opt_callback_520094208 = proc (a0: pointer; a1: cint; a2: ptr cfloat;
                                      a3: ptr bool): void {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:2085:20
  ggml_log_callback_520094210 = proc (a0: enum_ggml_log_level_520094167;
                                      a1: cstring; a2: pointer): void {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:2086:20
  struct_ggml_opt_params_adam_t {.pure, inheritable, bycopy.} = object
    n_iter*: cint
    sched*: cfloat
    decay*: cfloat
    decay_min_ndim*: cint
    alpha*: cfloat
    beta1*: cfloat
    beta2*: cfloat
    eps*: cfloat
    eps_f*: cfloat
    eps_g*: cfloat
    gclip*: cfloat
  struct_ggml_opt_params_lbfgs_t {.pure, inheritable, bycopy.} = object
    m*: cint
    n_iter*: cint
    max_linesearch*: cint
    eps*: cfloat
    ftol*: cfloat
    wolfe*: cfloat
    min_step*: cfloat
    max_step*: cfloat
    linesearch*: enum_ggml_linesearch_520094205
  struct_ggml_opt_params_520094212 {.pure, inheritable, bycopy.} = object
    type_field*: enum_ggml_opt_type_520094203 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:2096:12
    graph_size*: csize_t
    n_threads*: cint
    past*: cint
    delta*: cfloat
    max_no_improvement*: cint
    print_forward_graph*: bool
    print_backward_graph*: bool
    n_gradient_accumulation*: cint
    adam*: struct_ggml_opt_params_adam_t
    lbfgs*: struct_ggml_opt_params_lbfgs_t
  struct_ggml_opt_context_adam_t {.pure, inheritable, bycopy.} = object
    g*: ptr struct_ggml_tensor_520094173
    m*: ptr struct_ggml_tensor_520094173
    v*: ptr struct_ggml_tensor_520094173
    pf*: ptr struct_ggml_tensor_520094173
    fx_best*: cfloat
    fx_prev*: cfloat
    n_no_improvement*: cint
  struct_ggml_opt_context_lbfgs_t {.pure, inheritable, bycopy.} = object
    x*: ptr struct_ggml_tensor_520094173
    xp*: ptr struct_ggml_tensor_520094173
    g*: ptr struct_ggml_tensor_520094173
    gp*: ptr struct_ggml_tensor_520094173
    d*: ptr struct_ggml_tensor_520094173
    pf*: ptr struct_ggml_tensor_520094173
    lmal*: ptr struct_ggml_tensor_520094173
    lmys*: ptr struct_ggml_tensor_520094173
    lms*: ptr struct_ggml_tensor_520094173
    lmy*: ptr struct_ggml_tensor_520094173
    fx_best*: cfloat
    step*: cfloat
    j*: cint
    k*: cint
    end_field*: cint
    n_no_improvement*: cint
  struct_ggml_opt_context_520094214 {.pure, inheritable, bycopy.} = object
    ctx*: ptr struct_ggml_context ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:2157:12
    params*: struct_ggml_opt_params_520094213
    iter*: cint
    nx*: int64
    just_initialized*: bool
    loss_before*: cfloat
    loss_after*: cfloat
    adam*: struct_ggml_opt_context_adam_t
    lbfgs*: struct_ggml_opt_context_lbfgs_t
  struct_gguf_init_params_520094218 {.pure, inheritable, bycopy.} = object
    no_alloc*: bool          ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:2284:12
    ctx*: ptr ptr struct_ggml_context
  ggml_to_float_t_520094227 = proc (a0: pointer; a1: ptr cfloat; a2: int64): void {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:2425:20
  ggml_from_float_t_520094229 = proc (a0: ptr cfloat; a1: pointer; a2: int64): void {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:2426:20
  struct_ggml_type_traits_520094231 {.pure, inheritable, bycopy.} = object
    type_name*: cstring      ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:2428:12
    blck_size*: int64
    blck_size_interleave*: int64
    type_size*: csize_t
    is_quantized*: bool
    to_float*: ggml_to_float_t_520094228
    from_float*: ggml_from_float_t_520094230
    from_float_ref*: ggml_from_float_t_520094230
  ggml_backend_buffer_type_t_520094233 = ptr struct_ggml_backend_buffer_type ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-backend.h:10:47
  ggml_backend_buffer_t_520094235 = ptr struct_ggml_backend_buffer ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-backend.h:11:42
  ggml_backend_t_520094237 = ptr struct_ggml_backend ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-backend.h:13:35
  struct_ggml_tallocr_520094239 {.pure, inheritable, bycopy.} = object
    buffer*: ggml_backend_buffer_t_520094236 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-alloc.h:14:8
    base*: pointer
    alignment*: csize_t
    offset*: csize_t
  ggml_gallocr_t_520094241 = ptr struct_ggml_gallocr ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-alloc.h:46:31
  ggml_backend_event_t_520094243 = ptr struct_ggml_backend_event ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-backend.h:12:41
  ggml_backend_graph_plan_t_520094245 = pointer ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-backend.h:14:20
  ggml_backend_reg_t_520094247 = ptr struct_ggml_backend_reg ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-backend.h:15:39
  ggml_backend_dev_t_520094249 = ptr struct_ggml_backend_device ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-backend.h:16:42
  struct_ggml_backend_dev_caps_520094255 {.pure, inheritable, bycopy.} = object
    async*: bool             ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-backend.h:126:12
    host_buffer*: bool
    buffer_from_host_ptr*: bool
    events*: bool
  struct_ggml_backend_dev_props_520094257 {.pure, inheritable, bycopy.} = object
    name*: cstring           ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-backend.h:138:12
    description*: cstring
    memory_free*: csize_t
    memory_total*: csize_t
    type_field*: enum_ggml_backend_dev_type_520094254
    caps*: struct_ggml_backend_dev_caps_520094256
  ggml_backend_split_buffer_type_t_520094259 = proc (a0: cint; a1: ptr cfloat): ggml_backend_buffer_type_t_520094234 {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-backend.h:174:44
  ggml_backend_set_n_threads_t_520094261 = proc (a0: ggml_backend_t_520094238;
      a1: cint): void {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-backend.h:176:44
  ggml_backend_dev_get_extra_bufts_t_520094263 = proc (a0: ggml_backend_dev_t_520094250): ptr ggml_backend_buffer_type_t_520094234 {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-backend.h:178:44
  ggml_backend_sched_t_520094265 = ptr struct_ggml_backend_sched ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-backend.h:242:41
  ggml_backend_sched_eval_callback_520094267 = proc (a0: ptr struct_ggml_tensor_520094173;
      a1: bool; a2: pointer): bool {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-backend.h:251:20
  struct_ggml_backend_graph_copy_520094269 {.pure, inheritable, bycopy.} = object
    buffer*: ggml_backend_buffer_t_520094236 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-backend.h:288:12
    ctx_allocated*: ptr struct_ggml_context
    ctx_unallocated*: ptr struct_ggml_context
    graph*: ptr struct_ggml_cgraph
  ggml_backend_eval_callback_520094271 = proc (a0: cint;
      a1: ptr struct_ggml_tensor_520094173; a2: ptr struct_ggml_tensor_520094173;
      a3: pointer): bool {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-backend.h:299:20
  struct_ggml_threadpool_params_520094275 {.pure, inheritable, bycopy.} = object
    cpumask*: array[512'i64, bool] ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-cpu.h:20:12
    n_threads*: cint
    prio*: enum_ggml_sched_priority_520094274
    poll*: uint32
    strict_cpu*: bool
    paused*: bool
  ggml_threadpool_t_520094277 = ptr struct_ggml_threadpool ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-cpu.h:31:38
  struct_ggml_cplan_520094279 {.pure, inheritable, bycopy.} = object
    work_size*: csize_t      ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-cpu.h:35:12
    work_data*: ptr uint8
    n_threads*: cint
    threadpool*: ptr struct_ggml_threadpool
    abort_callback*: ggml_abort_callback_520094175
    abort_callback_data*: pointer
  ggml_from_float_to_mat_t_520094283 = proc (a0: ptr cfloat; a1: pointer;
      a2: int64; a3: int64; a4: int64): void {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-cpu.h:108:20
  ggml_vec_dot_t_520094285 = proc (a0: cint; a1: ptr cfloat; a2: csize_t;
                                   a3: pointer; a4: csize_t; a5: pointer;
                                   a6: csize_t; a7: cint): void {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-cpu.h:110:20
  ggml_gemv_t_520094287 = proc (a0: cint; a1: ptr cfloat; a2: csize_t;
                                a3: pointer; a4: pointer; a5: cint; a6: cint): void {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-cpu.h:112:20
  ggml_gemm_t_520094289 = proc (a0: cint; a1: ptr cfloat; a2: csize_t;
                                a3: pointer; a4: pointer; a5: cint; a6: cint): void {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-cpu.h:114:20
  struct_ggml_type_traits_cpu_520094291 {.pure, inheritable, bycopy.} = object
    from_float_to_mat*: ggml_from_float_to_mat_t_520094284 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml-cpu.h:117:12
    vec_dot*: ggml_vec_dot_t_520094286
    vec_dot_type*: enum_ggml_type_520094153
    nrows*: int64
    ncols*: int64
    gemv*: ggml_gemv_t_520094288
    gemm*: ggml_gemm_t_520094290
  whisper_pos_520094293 = int32 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:84:21
  whisper_token_520094295 = int32 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:85:21
  whisper_seq_id_520094297 = int32 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:86:21
  struct_whisper_ahead_520094301 {.pure, inheritable, bycopy.} = object
    n_text_layer*: cint      ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:106:20
    n_head*: cint
  whisper_ahead_520094303 = struct_whisper_ahead_520094302 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:109:7
  struct_whisper_aheads_520094305 {.pure, inheritable, bycopy.} = object
    n_heads*: csize_t        ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:111:20
    heads*: ptr whisper_ahead_520094304
  whisper_aheads_520094307 = struct_whisper_aheads_520094306 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:114:7
  struct_whisper_context_params_520094309 {.pure, inheritable, bycopy.} = object
    use_gpu*: bool           ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:116:12
    flash_attn*: bool
    gpu_device*: cint
    dtw_token_timestamps*: bool
    dtw_aheads_preset*: enum_whisper_alignment_heads_preset_520094300
    dtw_n_top*: cint
    dtw_aheads*: struct_whisper_aheads_520094306
    dtw_mem_size*: csize_t
  struct_whisper_token_data_520094311 {.pure, inheritable, bycopy.} = object
    id*: whisper_token_520094296 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:131:20
    tid*: whisper_token_520094296
    p*: cfloat
    plog*: cfloat
    pt*: cfloat
    ptsum*: cfloat
    t0*: int64
    t1*: int64
    t_dtw*: int64
    vlen*: cfloat
  whisper_token_data_520094313 = struct_whisper_token_data_520094312 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:151:7
  struct_whisper_model_loader_520094315 {.pure, inheritable, bycopy.} = object
    context*: pointer        ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:153:20
    read*: proc (a0: pointer; a1: pointer; a2: csize_t): csize_t {.cdecl.}
    eof*: proc (a0: pointer): bool {.cdecl.}
    close*: proc (a0: pointer): void {.cdecl.}
  whisper_model_loader_520094317 = struct_whisper_model_loader_520094316 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:159:7
  struct_whisper_grammar_element_520094321 {.pure, inheritable, bycopy.} = object
    type_field*: enum_whisper_gretype_520094320 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:187:20
    value*: uint32
  whisper_grammar_element_520094323 = struct_whisper_grammar_element_520094322 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:190:7
  struct_whisper_full_params_greedy_t {.pure, inheritable, bycopy.} = object
    best_of*: cint
  struct_whisper_full_params_beam_search_t {.pure, inheritable, bycopy.} = object
    beam_size*: cint
    patience*: cfloat
  struct_whisper_full_params_520094325 {.pure, inheritable, bycopy.} = object
    strategy*: enum_whisper_sampling_strategy_520094330 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:476:12
    n_threads*: cint
    n_max_text_ctx*: cint
    offset_ms*: cint
    duration_ms*: cint
    translate*: bool
    no_context*: bool
    no_timestamps*: bool
    single_segment*: bool
    print_special*: bool
    print_progress*: bool
    print_realtime*: bool
    print_timestamps*: bool
    token_timestamps*: bool
    thold_pt*: cfloat
    thold_ptsum*: cfloat
    max_len*: cint
    split_on_word*: bool
    max_tokens*: cint
    debug_mode*: bool
    audio_ctx*: cint
    tdrz_enable*: bool
    suppress_regex*: cstring
    initial_prompt*: cstring
    prompt_tokens*: ptr whisper_token_520094296
    prompt_n_tokens*: cint
    language*: cstring
    detect_language*: bool
    suppress_blank*: bool
    suppress_non_speech_tokens*: bool
    temperature*: cfloat
    max_initial_ts*: cfloat
    length_penalty*: cfloat
    temperature_inc*: cfloat
    entropy_thold*: cfloat
    logprob_thold*: cfloat
    no_speech_thold*: cfloat
    greedy*: struct_whisper_full_params_greedy_t
    beam_search*: struct_whisper_full_params_beam_search_t
    new_segment_callback*: whisper_new_segment_callback_520094332
    new_segment_callback_user_data*: pointer
    progress_callback*: whisper_progress_callback_520094334
    progress_callback_user_data*: pointer
    encoder_begin_callback*: whisper_encoder_begin_callback_520094336
    encoder_begin_callback_user_data*: pointer
    abort_callback*: ggml_abort_callback_520094175
    abort_callback_user_data*: pointer
    logits_filter_callback*: whisper_logits_filter_callback_520094338
    logits_filter_callback_user_data*: pointer
    grammar_rules*: ptr ptr whisper_grammar_element_520094324
    n_grammar_rules*: csize_t
    i_start_rule*: csize_t
    grammar_penalty*: cfloat
  struct_whisper_timings_520094327 {.pure, inheritable, bycopy.} = object
    sample_ms*: cfloat       ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:427:12
    encode_ms*: cfloat
    decode_ms*: cfloat
    batchd_ms*: cfloat
    prompt_ms*: cfloat
  whisper_new_segment_callback_520094331 = proc (a0: ptr struct_whisper_context;
      a1: ptr struct_whisper_state; a2: cint; a3: pointer): void {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:452:20
  whisper_progress_callback_520094333 = proc (a0: ptr struct_whisper_context;
      a1: ptr struct_whisper_state; a2: cint; a3: pointer): void {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:455:20
  whisper_encoder_begin_callback_520094335 = proc (
      a0: ptr struct_whisper_context; a1: ptr struct_whisper_state; a2: pointer): bool {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:460:20
  whisper_logits_filter_callback_520094337 = proc (
      a0: ptr struct_whisper_context; a1: ptr struct_whisper_state;
      a2: ptr whisper_token_data_520094314; a3: cint; a4: ptr cfloat;
      a5: pointer): void {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:465:20
  struct_IO_FILE_520094339 {.pure, inheritable, bycopy.} = object
    internal_flags*: cint    ## Generated based on /usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h:49:8
    internal_IO_read_ptr*: cstring
    internal_IO_read_end*: cstring
    internal_IO_read_base*: cstring
    internal_IO_write_base*: cstring
    internal_IO_write_ptr*: cstring
    internal_IO_write_end*: cstring
    internal_IO_buf_base*: cstring
    internal_IO_buf_end*: cstring
    internal_IO_save_base*: cstring
    internal_IO_backup_base*: cstring
    internal_IO_save_end*: cstring
    internal_markers*: ptr struct_IO_marker
    internal_chain*: ptr struct_IO_FILE_520094340
    internal_fileno*: cint
    internal_flags2*: cint
    internal_old_offset*: compiler_off_t_520094342
    internal_cur_column*: cushort
    internal_vtable_offset*: cschar
    internal_shortbuf*: array[1'i64, cschar]
    internal_lock*: pointer
    internal_offset*: compiler_off64_t_520094346
    internal_codecvt*: ptr struct_IO_codecvt
    internal_wide_data*: ptr struct_IO_wide_data
    internal_freeres_list*: ptr struct_IO_FILE_520094340
    internal_freeres_buf*: pointer
    compiler_pad5*: csize_t
    internal_mode*: cint
    internal_unused2*: array[20'i64, cschar]
  compiler_off_t_520094341 = clong ## Generated based on /usr/include/x86_64-linux-gnu/bits/types.h:152:25
  compiler_off64_t_520094345 = clong ## Generated based on /usr/include/x86_64-linux-gnu/bits/types.h:153:27
  ggml_fp16_t_520094147 = (when declared(ggml_fp16_t):
    when ownSizeof(ggml_fp16_t) != ownSizeof(ggml_fp16_t_520094146):
      static :
        warning("Declaration of " & "ggml_fp16_t" &
            " exists but with different size")
    ggml_fp16_t
   else:
    ggml_fp16_t_520094146)
  ggml_backend_dev_get_extra_bufts_t_520094264 = (when declared(
      ggml_backend_dev_get_extra_bufts_t):
    when ownSizeof(ggml_backend_dev_get_extra_bufts_t) !=
        ownSizeof(ggml_backend_dev_get_extra_bufts_t_520094263):
      static :
        warning("Declaration of " & "ggml_backend_dev_get_extra_bufts_t" &
            " exists but with different size")
    ggml_backend_dev_get_extra_bufts_t
   else:
    ggml_backend_dev_get_extra_bufts_t_520094263)
  enum_ggml_status_520094145 = (when declared(enum_ggml_status):
    when ownSizeof(enum_ggml_status) != ownSizeof(enum_ggml_status_520094144):
      static :
        warning("Declaration of " & "enum_ggml_status" &
            " exists but with different size")
    enum_ggml_status
   else:
    enum_ggml_status_520094144)
  ggml_custom3_op_f32_t_520094195 = (when declared(ggml_custom3_op_f32_t):
    when ownSizeof(ggml_custom3_op_f32_t) != ownSizeof(ggml_custom3_op_f32_t_520094194):
      static :
        warning("Declaration of " & "ggml_custom3_op_f32_t" &
            " exists but with different size")
    ggml_custom3_op_f32_t
   else:
    ggml_custom3_op_f32_t_520094194)
  enum_ggml_backend_dev_type_520094254 = (when declared(
      enum_ggml_backend_dev_type):
    when ownSizeof(enum_ggml_backend_dev_type) !=
        ownSizeof(enum_ggml_backend_dev_type_520094253):
      static :
        warning("Declaration of " & "enum_ggml_backend_dev_type" &
            " exists but with different size")
    enum_ggml_backend_dev_type
   else:
    enum_ggml_backend_dev_type_520094253)
  whisper_logits_filter_callback_520094338 = (when declared(
      whisper_logits_filter_callback):
    when ownSizeof(whisper_logits_filter_callback) !=
        ownSizeof(whisper_logits_filter_callback_520094337):
      static :
        warning("Declaration of " & "whisper_logits_filter_callback" &
            " exists but with different size")
    whisper_logits_filter_callback
   else:
    whisper_logits_filter_callback_520094337)
  enum_ggml_sort_order_520094185 = (when declared(enum_ggml_sort_order):
    when ownSizeof(enum_ggml_sort_order) != ownSizeof(enum_ggml_sort_order_520094184):
      static :
        warning("Declaration of " & "enum_ggml_sort_order" &
            " exists but with different size")
    enum_ggml_sort_order
   else:
    enum_ggml_sort_order_520094184)
  FILE_520094181 = (when declared(FILE):
    when ownSizeof(FILE) != ownSizeof(FILE_520094180):
      static :
        warning("Declaration of " & "FILE" & " exists but with different size")
    FILE
   else:
    FILE_520094180)
  struct_ggml_opt_params_520094213 = (when declared(struct_ggml_opt_params):
    when ownSizeof(struct_ggml_opt_params) != ownSizeof(struct_ggml_opt_params_520094212):
      static :
        warning("Declaration of " & "struct_ggml_opt_params" &
            " exists but with different size")
    struct_ggml_opt_params
   else:
    struct_ggml_opt_params_520094212)
  struct_whisper_full_params_520094326 = (when declared(
      struct_whisper_full_params):
    when ownSizeof(struct_whisper_full_params) !=
        ownSizeof(struct_whisper_full_params_520094325):
      static :
        warning("Declaration of " & "struct_whisper_full_params" &
            " exists but with different size")
    struct_whisper_full_params
   else:
    struct_whisper_full_params_520094325)
  ggml_log_callback_520094211 = (when declared(ggml_log_callback):
    when ownSizeof(ggml_log_callback) != ownSizeof(ggml_log_callback_520094210):
      static :
        warning("Declaration of " & "ggml_log_callback" &
            " exists but with different size")
    ggml_log_callback
   else:
    ggml_log_callback_520094210)
  whisper_token_data_520094314 = (when declared(whisper_token_data):
    when ownSizeof(whisper_token_data) != ownSizeof(whisper_token_data_520094313):
      static :
        warning("Declaration of " & "whisper_token_data" &
            " exists but with different size")
    whisper_token_data
   else:
    whisper_token_data_520094313)
  struct_ggml_type_traits_cpu_520094292 = (when declared(
      struct_ggml_type_traits_cpu):
    when ownSizeof(struct_ggml_type_traits_cpu) !=
        ownSizeof(struct_ggml_type_traits_cpu_520094291):
      static :
        warning("Declaration of " & "struct_ggml_type_traits_cpu" &
            " exists but with different size")
    struct_ggml_type_traits_cpu
   else:
    struct_ggml_type_traits_cpu_520094291)
  ggml_custom2_op_t_520094199 = (when declared(ggml_custom2_op_t):
    when ownSizeof(ggml_custom2_op_t) != ownSizeof(ggml_custom2_op_t_520094198):
      static :
        warning("Declaration of " & "ggml_custom2_op_t" &
            " exists but with different size")
    ggml_custom2_op_t
   else:
    ggml_custom2_op_t_520094198)
  ggml_custom3_op_t_520094201 = (when declared(ggml_custom3_op_t):
    when ownSizeof(ggml_custom3_op_t) != ownSizeof(ggml_custom3_op_t_520094200):
      static :
        warning("Declaration of " & "ggml_custom3_op_t" &
            " exists but with different size")
    ggml_custom3_op_t
   else:
    ggml_custom3_op_t_520094200)
  enum_ggml_tensor_flag_520094169 = (when declared(enum_ggml_tensor_flag):
    when ownSizeof(enum_ggml_tensor_flag) != ownSizeof(enum_ggml_tensor_flag_520094168):
      static :
        warning("Declaration of " & "enum_ggml_tensor_flag" &
            " exists but with different size")
    enum_ggml_tensor_flag
   else:
    enum_ggml_tensor_flag_520094168)
  struct_gguf_init_params_520094219 = (when declared(struct_gguf_init_params):
    when ownSizeof(struct_gguf_init_params) !=
        ownSizeof(struct_gguf_init_params_520094218):
      static :
        warning("Declaration of " & "struct_gguf_init_params" &
            " exists but with different size")
    struct_gguf_init_params
   else:
    struct_gguf_init_params_520094218)
  compiler_off64_t_520094346 = (when declared(compiler_off64_t):
    when ownSizeof(compiler_off64_t) != ownSizeof(compiler_off64_t_520094345):
      static :
        warning("Declaration of " & "compiler_off64_t" &
            " exists but with different size")
    compiler_off64_t
   else:
    compiler_off64_t_520094345)
  ggml_backend_eval_callback_520094272 = (when declared(
      ggml_backend_eval_callback):
    when ownSizeof(ggml_backend_eval_callback) !=
        ownSizeof(ggml_backend_eval_callback_520094271):
      static :
        warning("Declaration of " & "ggml_backend_eval_callback" &
            " exists but with different size")
    ggml_backend_eval_callback
   else:
    ggml_backend_eval_callback_520094271)
  struct_ggml_tallocr_520094240 = (when declared(struct_ggml_tallocr):
    when ownSizeof(struct_ggml_tallocr) != ownSizeof(struct_ggml_tallocr_520094239):
      static :
        warning("Declaration of " & "struct_ggml_tallocr" &
            " exists but with different size")
    struct_ggml_tallocr
   else:
    struct_ggml_tallocr_520094239)
  ggml_backend_t_520094238 = (when declared(ggml_backend_t):
    when ownSizeof(ggml_backend_t) != ownSizeof(ggml_backend_t_520094237):
      static :
        warning("Declaration of " & "ggml_backend_t" &
            " exists but with different size")
    ggml_backend_t
   else:
    ggml_backend_t_520094237)
  enum_ggml_op_520094161 = (when declared(enum_ggml_op):
    when ownSizeof(enum_ggml_op) != ownSizeof(enum_ggml_op_520094160):
      static :
        warning("Declaration of " & "enum_ggml_op" &
            " exists but with different size")
    enum_ggml_op
   else:
    enum_ggml_op_520094160)
  struct_whisper_ahead_520094302 = (when declared(struct_whisper_ahead):
    when ownSizeof(struct_whisper_ahead) != ownSizeof(struct_whisper_ahead_520094301):
      static :
        warning("Declaration of " & "struct_whisper_ahead" &
            " exists but with different size")
    struct_whisper_ahead
   else:
    struct_whisper_ahead_520094301)
  ggml_guid_520094177 = (when declared(ggml_guid):
    when ownSizeof(ggml_guid) != ownSizeof(ggml_guid_520094176):
      static :
        warning("Declaration of " & "ggml_guid" &
            " exists but with different size")
    ggml_guid
   else:
    ggml_guid_520094176)
  enum_ggml_linesearch_520094205 = (when declared(enum_ggml_linesearch):
    when ownSizeof(enum_ggml_linesearch) != ownSizeof(enum_ggml_linesearch_520094204):
      static :
        warning("Declaration of " & "enum_ggml_linesearch" &
            " exists but with different size")
    enum_ggml_linesearch
   else:
    enum_ggml_linesearch_520094204)
  ggml_backend_event_t_520094244 = (when declared(ggml_backend_event_t):
    when ownSizeof(ggml_backend_event_t) != ownSizeof(ggml_backend_event_t_520094243):
      static :
        warning("Declaration of " & "ggml_backend_event_t" &
            " exists but with different size")
    ggml_backend_event_t
   else:
    ggml_backend_event_t_520094243)
  enum_ggml_backend_buffer_usage_520094252 = (when declared(
      enum_ggml_backend_buffer_usage):
    when ownSizeof(enum_ggml_backend_buffer_usage) !=
        ownSizeof(enum_ggml_backend_buffer_usage_520094251):
      static :
        warning("Declaration of " & "enum_ggml_backend_buffer_usage" &
            " exists but with different size")
    enum_ggml_backend_buffer_usage
   else:
    enum_ggml_backend_buffer_usage_520094251)
  ggml_custom1_op_f32_t_520094191 = (when declared(ggml_custom1_op_f32_t):
    when ownSizeof(ggml_custom1_op_f32_t) != ownSizeof(ggml_custom1_op_f32_t_520094190):
      static :
        warning("Declaration of " & "ggml_custom1_op_f32_t" &
            " exists but with different size")
    ggml_custom1_op_f32_t
   else:
    ggml_custom1_op_f32_t_520094190)
  whisper_token_520094296 = (when declared(whisper_token):
    when ownSizeof(whisper_token) != ownSizeof(whisper_token_520094295):
      static :
        warning("Declaration of " & "whisper_token" &
            " exists but with different size")
    whisper_token
   else:
    whisper_token_520094295)
  whisper_progress_callback_520094334 = (when declared(whisper_progress_callback):
    when ownSizeof(whisper_progress_callback) !=
        ownSizeof(whisper_progress_callback_520094333):
      static :
        warning("Declaration of " & "whisper_progress_callback" &
            " exists but with different size")
    whisper_progress_callback
   else:
    whisper_progress_callback_520094333)
  struct_ggml_backend_dev_props_520094258 = (when declared(
      struct_ggml_backend_dev_props):
    when ownSizeof(struct_ggml_backend_dev_props) !=
        ownSizeof(struct_ggml_backend_dev_props_520094257):
      static :
        warning("Declaration of " & "struct_ggml_backend_dev_props" &
            " exists but with different size")
    struct_ggml_backend_dev_props
   else:
    struct_ggml_backend_dev_props_520094257)
  whisper_aheads_520094308 = (when declared(whisper_aheads):
    when ownSizeof(whisper_aheads) != ownSizeof(whisper_aheads_520094307):
      static :
        warning("Declaration of " & "whisper_aheads" &
            " exists but with different size")
    whisper_aheads
   else:
    whisper_aheads_520094307)
  whisper_pos_520094294 = (when declared(whisper_pos):
    when ownSizeof(whisper_pos) != ownSizeof(whisper_pos_520094293):
      static :
        warning("Declaration of " & "whisper_pos" &
            " exists but with different size")
    whisper_pos
   else:
    whisper_pos_520094293)
  whisper_seq_id_520094298 = (when declared(whisper_seq_id):
    when ownSizeof(whisper_seq_id) != ownSizeof(whisper_seq_id_520094297):
      static :
        warning("Declaration of " & "whisper_seq_id" &
            " exists but with different size")
    whisper_seq_id
   else:
    whisper_seq_id_520094297)
  enum_ggml_prec_520094155 = (when declared(enum_ggml_prec):
    when ownSizeof(enum_ggml_prec) != ownSizeof(enum_ggml_prec_520094154):
      static :
        warning("Declaration of " & "enum_ggml_prec" &
            " exists but with different size")
    enum_ggml_prec
   else:
    enum_ggml_prec_520094154)
  ggml_opt_callback_520094209 = (when declared(ggml_opt_callback):
    when ownSizeof(ggml_opt_callback) != ownSizeof(ggml_opt_callback_520094208):
      static :
        warning("Declaration of " & "ggml_opt_callback" &
            " exists but with different size")
    ggml_opt_callback
   else:
    ggml_opt_callback_520094208)
  enum_ggml_log_level_520094167 = (when declared(enum_ggml_log_level):
    when ownSizeof(enum_ggml_log_level) != ownSizeof(enum_ggml_log_level_520094166):
      static :
        warning("Declaration of " & "enum_ggml_log_level" &
            " exists but with different size")
    enum_ggml_log_level
   else:
    enum_ggml_log_level_520094166)
  struct_ggml_backend_dev_caps_520094256 = (when declared(
      struct_ggml_backend_dev_caps):
    when ownSizeof(struct_ggml_backend_dev_caps) !=
        ownSizeof(struct_ggml_backend_dev_caps_520094255):
      static :
        warning("Declaration of " & "struct_ggml_backend_dev_caps" &
            " exists but with different size")
    struct_ggml_backend_dev_caps
   else:
    struct_ggml_backend_dev_caps_520094255)
  whisper_model_loader_520094318 = (when declared(whisper_model_loader):
    when ownSizeof(whisper_model_loader) != ownSizeof(whisper_model_loader_520094317):
      static :
        warning("Declaration of " & "whisper_model_loader" &
            " exists but with different size")
    whisper_model_loader
   else:
    whisper_model_loader_520094317)
  struct_whisper_model_loader_520094316 = (when declared(
      struct_whisper_model_loader):
    when ownSizeof(struct_whisper_model_loader) !=
        ownSizeof(struct_whisper_model_loader_520094315):
      static :
        warning("Declaration of " & "struct_whisper_model_loader" &
            " exists but with different size")
    struct_whisper_model_loader
   else:
    struct_whisper_model_loader_520094315)
  struct_ggml_bf16_t_520094149 = (when declared(struct_ggml_bf16_t):
    when ownSizeof(struct_ggml_bf16_t) != ownSizeof(struct_ggml_bf16_t_520094148):
      static :
        warning("Declaration of " & "struct_ggml_bf16_t" &
            " exists but with different size")
    struct_ggml_bf16_t
   else:
    struct_ggml_bf16_t_520094148)
  enum_ggml_opt_type_520094203 = (when declared(enum_ggml_opt_type):
    when ownSizeof(enum_ggml_opt_type) != ownSizeof(enum_ggml_opt_type_520094202):
      static :
        warning("Declaration of " & "enum_ggml_opt_type" &
            " exists but with different size")
    enum_ggml_opt_type
   else:
    enum_ggml_opt_type_520094202)
  struct_ggml_threadpool_params_520094276 = (when declared(
      struct_ggml_threadpool_params):
    when ownSizeof(struct_ggml_threadpool_params) !=
        ownSizeof(struct_ggml_threadpool_params_520094275):
      static :
        warning("Declaration of " & "struct_ggml_threadpool_params" &
            " exists but with different size")
    struct_ggml_threadpool_params
   else:
    struct_ggml_threadpool_params_520094275)
  ggml_threadpool_t_520094278 = (when declared(ggml_threadpool_t):
    when ownSizeof(ggml_threadpool_t) != ownSizeof(ggml_threadpool_t_520094277):
      static :
        warning("Declaration of " & "ggml_threadpool_t" &
            " exists but with different size")
    ggml_threadpool_t
   else:
    ggml_threadpool_t_520094277)
  whisper_new_segment_callback_520094332 = (when declared(
      whisper_new_segment_callback):
    when ownSizeof(whisper_new_segment_callback) !=
        ownSizeof(whisper_new_segment_callback_520094331):
      static :
        warning("Declaration of " & "whisper_new_segment_callback" &
            " exists but with different size")
    whisper_new_segment_callback
   else:
    whisper_new_segment_callback_520094331)
  ggml_backend_buffer_type_t_520094234 = (when declared(
      ggml_backend_buffer_type_t):
    when ownSizeof(ggml_backend_buffer_type_t) !=
        ownSizeof(ggml_backend_buffer_type_t_520094233):
      static :
        warning("Declaration of " & "ggml_backend_buffer_type_t" &
            " exists but with different size")
    ggml_backend_buffer_type_t
   else:
    ggml_backend_buffer_type_t_520094233)
  ggml_backend_set_n_threads_t_520094262 = (when declared(
      ggml_backend_set_n_threads_t):
    when ownSizeof(ggml_backend_set_n_threads_t) !=
        ownSizeof(ggml_backend_set_n_threads_t_520094261):
      static :
        warning("Declaration of " & "ggml_backend_set_n_threads_t" &
            " exists but with different size")
    ggml_backend_set_n_threads_t
   else:
    ggml_backend_set_n_threads_t_520094261)
  ggml_binary_op_f32_t_520094189 = (when declared(ggml_binary_op_f32_t):
    when ownSizeof(ggml_binary_op_f32_t) != ownSizeof(ggml_binary_op_f32_t_520094188):
      static :
        warning("Declaration of " & "ggml_binary_op_f32_t" &
            " exists but with different size")
    ggml_binary_op_f32_t
   else:
    ggml_binary_op_f32_t_520094188)
  enum_whisper_sampling_strategy_520094330 = (when declared(
      enum_whisper_sampling_strategy):
    when ownSizeof(enum_whisper_sampling_strategy) !=
        ownSizeof(enum_whisper_sampling_strategy_520094329):
      static :
        warning("Declaration of " & "enum_whisper_sampling_strategy" &
            " exists but with different size")
    enum_whisper_sampling_strategy
   else:
    enum_whisper_sampling_strategy_520094329)
  ggml_abort_callback_520094175 = (when declared(ggml_abort_callback):
    when ownSizeof(ggml_abort_callback) != ownSizeof(ggml_abort_callback_520094174):
      static :
        warning("Declaration of " & "ggml_abort_callback" &
            " exists but with different size")
    ggml_abort_callback
   else:
    ggml_abort_callback_520094174)
  enum_ggml_numa_strategy_520094282 = (when declared(enum_ggml_numa_strategy):
    when ownSizeof(enum_ggml_numa_strategy) !=
        ownSizeof(enum_ggml_numa_strategy_520094281):
      static :
        warning("Declaration of " & "enum_ggml_numa_strategy" &
            " exists but with different size")
    enum_ggml_numa_strategy
   else:
    enum_ggml_numa_strategy_520094281)
  ggml_to_float_t_520094228 = (when declared(ggml_to_float_t):
    when ownSizeof(ggml_to_float_t) != ownSizeof(ggml_to_float_t_520094227):
      static :
        warning("Declaration of " & "ggml_to_float_t" &
            " exists but with different size")
    ggml_to_float_t
   else:
    ggml_to_float_t_520094227)
  ggml_backend_sched_t_520094266 = (when declared(ggml_backend_sched_t):
    when ownSizeof(ggml_backend_sched_t) != ownSizeof(ggml_backend_sched_t_520094265):
      static :
        warning("Declaration of " & "ggml_backend_sched_t" &
            " exists but with different size")
    ggml_backend_sched_t
   else:
    ggml_backend_sched_t_520094265)
  ggml_gemv_t_520094288 = (when declared(ggml_gemv_t):
    when ownSizeof(ggml_gemv_t) != ownSizeof(ggml_gemv_t_520094287):
      static :
        warning("Declaration of " & "ggml_gemv_t" &
            " exists but with different size")
    ggml_gemv_t
   else:
    ggml_gemv_t_520094287)
  struct_IO_FILE_520094340 = (when declared(struct_IO_FILE):
    when ownSizeof(struct_IO_FILE) != ownSizeof(struct_IO_FILE_520094339):
      static :
        warning("Declaration of " & "struct_IO_FILE" &
            " exists but with different size")
    struct_IO_FILE
   else:
    struct_IO_FILE_520094339)
  enum_ggml_unary_op_520094163 = (when declared(enum_ggml_unary_op):
    when ownSizeof(enum_ggml_unary_op) != ownSizeof(enum_ggml_unary_op_520094162):
      static :
        warning("Declaration of " & "enum_ggml_unary_op" &
            " exists but with different size")
    enum_ggml_unary_op
   else:
    enum_ggml_unary_op_520094162)
  enum_ggml_opt_result_520094207 = (when declared(enum_ggml_opt_result):
    when ownSizeof(enum_ggml_opt_result) != ownSizeof(enum_ggml_opt_result_520094206):
      static :
        warning("Declaration of " & "enum_ggml_opt_result" &
            " exists but with different size")
    enum_ggml_opt_result
   else:
    enum_ggml_opt_result_520094206)
  ggml_gemm_t_520094290 = (when declared(ggml_gemm_t):
    when ownSizeof(ggml_gemm_t) != ownSizeof(ggml_gemm_t_520094289):
      static :
        warning("Declaration of " & "ggml_gemm_t" &
            " exists but with different size")
    ggml_gemm_t
   else:
    ggml_gemm_t_520094289)
  ggml_guid_t_520094179 = (when declared(ggml_guid_t):
    when ownSizeof(ggml_guid_t) != ownSizeof(ggml_guid_t_520094178):
      static :
        warning("Declaration of " & "ggml_guid_t" &
            " exists but with different size")
    ggml_guid_t
   else:
    ggml_guid_t_520094178)
  enum_ggml_sched_priority_520094274 = (when declared(enum_ggml_sched_priority):
    when ownSizeof(enum_ggml_sched_priority) !=
        ownSizeof(enum_ggml_sched_priority_520094273):
      static :
        warning("Declaration of " & "enum_ggml_sched_priority" &
            " exists but with different size")
    enum_ggml_sched_priority
   else:
    enum_ggml_sched_priority_520094273)
  compiler_off_t_520094342 = (when declared(compiler_off_t):
    when ownSizeof(compiler_off_t) != ownSizeof(compiler_off_t_520094341):
      static :
        warning("Declaration of " & "compiler_off_t" &
            " exists but with different size")
    compiler_off_t
   else:
    compiler_off_t_520094341)
  ggml_backend_sched_eval_callback_520094268 = (when declared(
      ggml_backend_sched_eval_callback):
    when ownSizeof(ggml_backend_sched_eval_callback) !=
        ownSizeof(ggml_backend_sched_eval_callback_520094267):
      static :
        warning("Declaration of " & "ggml_backend_sched_eval_callback" &
            " exists but with different size")
    ggml_backend_sched_eval_callback
   else:
    ggml_backend_sched_eval_callback_520094267)
  ggml_backend_reg_t_520094248 = (when declared(ggml_backend_reg_t):
    when ownSizeof(ggml_backend_reg_t) != ownSizeof(ggml_backend_reg_t_520094247):
      static :
        warning("Declaration of " & "ggml_backend_reg_t" &
            " exists but with different size")
    ggml_backend_reg_t
   else:
    ggml_backend_reg_t_520094247)
  whisper_ahead_520094304 = (when declared(whisper_ahead):
    when ownSizeof(whisper_ahead) != ownSizeof(whisper_ahead_520094303):
      static :
        warning("Declaration of " & "whisper_ahead" &
            " exists but with different size")
    whisper_ahead
   else:
    whisper_ahead_520094303)
  ggml_from_float_to_mat_t_520094284 = (when declared(ggml_from_float_to_mat_t):
    when ownSizeof(ggml_from_float_to_mat_t) !=
        ownSizeof(ggml_from_float_to_mat_t_520094283):
      static :
        warning("Declaration of " & "ggml_from_float_to_mat_t" &
            " exists but with different size")
    ggml_from_float_to_mat_t
   else:
    ggml_from_float_to_mat_t_520094283)
  struct_whisper_grammar_element_520094322 = (when declared(
      struct_whisper_grammar_element):
    when ownSizeof(struct_whisper_grammar_element) !=
        ownSizeof(struct_whisper_grammar_element_520094321):
      static :
        warning("Declaration of " & "struct_whisper_grammar_element" &
            " exists but with different size")
    struct_whisper_grammar_element
   else:
    struct_whisper_grammar_element_520094321)
  ggml_gallocr_t_520094242 = (when declared(ggml_gallocr_t):
    when ownSizeof(ggml_gallocr_t) != ownSizeof(ggml_gallocr_t_520094241):
      static :
        warning("Declaration of " & "ggml_gallocr_t" &
            " exists but with different size")
    ggml_gallocr_t
   else:
    ggml_gallocr_t_520094241)
  ggml_custom1_op_t_520094197 = (when declared(ggml_custom1_op_t):
    when ownSizeof(ggml_custom1_op_t) != ownSizeof(ggml_custom1_op_t_520094196):
      static :
        warning("Declaration of " & "ggml_custom1_op_t" &
            " exists but with different size")
    ggml_custom1_op_t
   else:
    ggml_custom1_op_t_520094196)
  whisper_encoder_begin_callback_520094336 = (when declared(
      whisper_encoder_begin_callback):
    when ownSizeof(whisper_encoder_begin_callback) !=
        ownSizeof(whisper_encoder_begin_callback_520094335):
      static :
        warning("Declaration of " & "whisper_encoder_begin_callback" &
            " exists but with different size")
    whisper_encoder_begin_callback
   else:
    whisper_encoder_begin_callback_520094335)
  ggml_from_float_t_520094230 = (when declared(ggml_from_float_t):
    when ownSizeof(ggml_from_float_t) != ownSizeof(ggml_from_float_t_520094229):
      static :
        warning("Declaration of " & "ggml_from_float_t" &
            " exists but with different size")
    ggml_from_float_t
   else:
    ggml_from_float_t_520094229)
  struct_whisper_aheads_520094306 = (when declared(struct_whisper_aheads):
    when ownSizeof(struct_whisper_aheads) != ownSizeof(struct_whisper_aheads_520094305):
      static :
        warning("Declaration of " & "struct_whisper_aheads" &
            " exists but with different size")
    struct_whisper_aheads
   else:
    struct_whisper_aheads_520094305)
  struct_ggml_backend_graph_copy_520094270 = (when declared(
      struct_ggml_backend_graph_copy):
    when ownSizeof(struct_ggml_backend_graph_copy) !=
        ownSizeof(struct_ggml_backend_graph_copy_520094269):
      static :
        warning("Declaration of " & "struct_ggml_backend_graph_copy" &
            " exists but with different size")
    struct_ggml_backend_graph_copy
   else:
    struct_ggml_backend_graph_copy_520094269)
  enum_ggml_backend_type_520094157 = (when declared(enum_ggml_backend_type):
    when ownSizeof(enum_ggml_backend_type) != ownSizeof(enum_ggml_backend_type_520094156):
      static :
        warning("Declaration of " & "enum_ggml_backend_type" &
            " exists but with different size")
    enum_ggml_backend_type
   else:
    enum_ggml_backend_type_520094156)
  enum_ggml_op_pool_520094183 = (when declared(enum_ggml_op_pool):
    when ownSizeof(enum_ggml_op_pool) != ownSizeof(enum_ggml_op_pool_520094182):
      static :
        warning("Declaration of " & "enum_ggml_op_pool" &
            " exists but with different size")
    enum_ggml_op_pool
   else:
    enum_ggml_op_pool_520094182)
  struct_ggml_tensor_520094173 = (when declared(struct_ggml_tensor):
    when ownSizeof(struct_ggml_tensor) != ownSizeof(struct_ggml_tensor_520094172):
      static :
        warning("Declaration of " & "struct_ggml_tensor" &
            " exists but with different size")
    struct_ggml_tensor
   else:
    struct_ggml_tensor_520094172)
  enum_gguf_type_520094217 = (when declared(enum_gguf_type):
    when ownSizeof(enum_gguf_type) != ownSizeof(enum_gguf_type_520094216):
      static :
        warning("Declaration of " & "enum_gguf_type" &
            " exists but with different size")
    enum_gguf_type
   else:
    enum_gguf_type_520094216)
  struct_whisper_context_params_520094310 = (when declared(
      struct_whisper_context_params):
    when ownSizeof(struct_whisper_context_params) !=
        ownSizeof(struct_whisper_context_params_520094309):
      static :
        warning("Declaration of " & "struct_whisper_context_params" &
            " exists but with different size")
    struct_whisper_context_params
   else:
    struct_whisper_context_params_520094309)
  ggml_custom2_op_f32_t_520094193 = (when declared(ggml_custom2_op_f32_t):
    when ownSizeof(ggml_custom2_op_f32_t) != ownSizeof(ggml_custom2_op_f32_t_520094192):
      static :
        warning("Declaration of " & "ggml_custom2_op_f32_t" &
            " exists but with different size")
    ggml_custom2_op_f32_t
   else:
    ggml_custom2_op_f32_t_520094192)
  ggml_backend_split_buffer_type_t_520094260 = (when declared(
      ggml_backend_split_buffer_type_t):
    when ownSizeof(ggml_backend_split_buffer_type_t) !=
        ownSizeof(ggml_backend_split_buffer_type_t_520094259):
      static :
        warning("Declaration of " & "ggml_backend_split_buffer_type_t" &
            " exists but with different size")
    ggml_backend_split_buffer_type_t
   else:
    ggml_backend_split_buffer_type_t_520094259)
  struct_ggml_type_traits_520094232 = (when declared(struct_ggml_type_traits):
    when ownSizeof(struct_ggml_type_traits) !=
        ownSizeof(struct_ggml_type_traits_520094231):
      static :
        warning("Declaration of " & "struct_ggml_type_traits" &
            " exists but with different size")
    struct_ggml_type_traits
   else:
    struct_ggml_type_traits_520094231)
  enum_whisper_gretype_520094320 = (when declared(enum_whisper_gretype):
    when ownSizeof(enum_whisper_gretype) != ownSizeof(enum_whisper_gretype_520094319):
      static :
        warning("Declaration of " & "enum_whisper_gretype" &
            " exists but with different size")
    enum_whisper_gretype
   else:
    enum_whisper_gretype_520094319)
  struct_whisper_token_data_520094312 = (when declared(struct_whisper_token_data):
    when ownSizeof(struct_whisper_token_data) !=
        ownSizeof(struct_whisper_token_data_520094311):
      static :
        warning("Declaration of " & "struct_whisper_token_data" &
            " exists but with different size")
    struct_whisper_token_data
   else:
    struct_whisper_token_data_520094311)
  ggml_backend_graph_plan_t_520094246 = (when declared(ggml_backend_graph_plan_t):
    when ownSizeof(ggml_backend_graph_plan_t) !=
        ownSizeof(ggml_backend_graph_plan_t_520094245):
      static :
        warning("Declaration of " & "ggml_backend_graph_plan_t" &
            " exists but with different size")
    ggml_backend_graph_plan_t
   else:
    ggml_backend_graph_plan_t_520094245)
  enum_ggml_type_520094153 = (when declared(enum_ggml_type):
    when ownSizeof(enum_ggml_type) != ownSizeof(enum_ggml_type_520094152):
      static :
        warning("Declaration of " & "enum_ggml_type" &
            " exists but with different size")
    enum_ggml_type
   else:
    enum_ggml_type_520094152)
  ggml_backend_buffer_t_520094236 = (when declared(ggml_backend_buffer_t):
    when ownSizeof(ggml_backend_buffer_t) != ownSizeof(ggml_backend_buffer_t_520094235):
      static :
        warning("Declaration of " & "ggml_backend_buffer_t" &
            " exists but with different size")
    ggml_backend_buffer_t
   else:
    ggml_backend_buffer_t_520094235)
  ggml_bf16_t_520094151 = (when declared(ggml_bf16_t):
    when ownSizeof(ggml_bf16_t) != ownSizeof(ggml_bf16_t_520094150):
      static :
        warning("Declaration of " & "ggml_bf16_t" &
            " exists but with different size")
    ggml_bf16_t
   else:
    ggml_bf16_t_520094150)
  struct_ggml_opt_context_520094215 = (when declared(struct_ggml_opt_context):
    when ownSizeof(struct_ggml_opt_context) !=
        ownSizeof(struct_ggml_opt_context_520094214):
      static :
        warning("Declaration of " & "struct_ggml_opt_context" &
            " exists but with different size")
    struct_ggml_opt_context
   else:
    struct_ggml_opt_context_520094214)
  struct_ggml_init_params_520094171 = (when declared(struct_ggml_init_params):
    when ownSizeof(struct_ggml_init_params) !=
        ownSizeof(struct_ggml_init_params_520094170):
      static :
        warning("Declaration of " & "struct_ggml_init_params" &
            " exists but with different size")
    struct_ggml_init_params
   else:
    struct_ggml_init_params_520094170)
  ggml_backend_dev_t_520094250 = (when declared(ggml_backend_dev_t):
    when ownSizeof(ggml_backend_dev_t) != ownSizeof(ggml_backend_dev_t_520094249):
      static :
        warning("Declaration of " & "ggml_backend_dev_t" &
            " exists but with different size")
    ggml_backend_dev_t
   else:
    ggml_backend_dev_t_520094249)
  enum_ggml_ftype_520094159 = (when declared(enum_ggml_ftype):
    when ownSizeof(enum_ggml_ftype) != ownSizeof(enum_ggml_ftype_520094158):
      static :
        warning("Declaration of " & "enum_ggml_ftype" &
            " exists but with different size")
    enum_ggml_ftype
   else:
    enum_ggml_ftype_520094158)
  ggml_vec_dot_t_520094286 = (when declared(ggml_vec_dot_t):
    when ownSizeof(ggml_vec_dot_t) != ownSizeof(ggml_vec_dot_t_520094285):
      static :
        warning("Declaration of " & "ggml_vec_dot_t" &
            " exists but with different size")
    ggml_vec_dot_t
   else:
    ggml_vec_dot_t_520094285)
  enum_ggml_object_type_520094165 = (when declared(enum_ggml_object_type):
    when ownSizeof(enum_ggml_object_type) != ownSizeof(enum_ggml_object_type_520094164):
      static :
        warning("Declaration of " & "enum_ggml_object_type" &
            " exists but with different size")
    enum_ggml_object_type
   else:
    enum_ggml_object_type_520094164)
  struct_ggml_cplan_520094280 = (when declared(struct_ggml_cplan):
    when ownSizeof(struct_ggml_cplan) != ownSizeof(struct_ggml_cplan_520094279):
      static :
        warning("Declaration of " & "struct_ggml_cplan" &
            " exists but with different size")
    struct_ggml_cplan
   else:
    struct_ggml_cplan_520094279)
  enum_whisper_alignment_heads_preset_520094300 = (when declared(
      enum_whisper_alignment_heads_preset):
    when ownSizeof(enum_whisper_alignment_heads_preset) !=
        ownSizeof(enum_whisper_alignment_heads_preset_520094299):
      static :
        warning("Declaration of " & "enum_whisper_alignment_heads_preset" &
            " exists but with different size")
    enum_whisper_alignment_heads_preset
   else:
    enum_whisper_alignment_heads_preset_520094299)
  ggml_unary_op_f32_t_520094187 = (when declared(ggml_unary_op_f32_t):
    when ownSizeof(ggml_unary_op_f32_t) != ownSizeof(ggml_unary_op_f32_t_520094186):
      static :
        warning("Declaration of " & "ggml_unary_op_f32_t" &
            " exists but with different size")
    ggml_unary_op_f32_t
   else:
    ggml_unary_op_f32_t_520094186)
  whisper_grammar_element_520094324 = (when declared(whisper_grammar_element):
    when ownSizeof(whisper_grammar_element) !=
        ownSizeof(whisper_grammar_element_520094323):
      static :
        warning("Declaration of " & "whisper_grammar_element" &
            " exists but with different size")
    whisper_grammar_element
   else:
    whisper_grammar_element_520094323)
  struct_whisper_timings_520094328 = (when declared(struct_whisper_timings):
    when ownSizeof(struct_whisper_timings) != ownSizeof(struct_whisper_timings_520094327):
      static :
        warning("Declaration of " & "struct_whisper_timings" &
            " exists but with different size")
    struct_whisper_timings
   else:
    struct_whisper_timings_520094327)
when not declared(ggml_fp16_t):
  type
    ggml_fp16_t* = ggml_fp16_t_520094146
else:
  static :
    hint("Declaration of " & "ggml_fp16_t" & " already exists, not redeclaring")
when not declared(ggml_backend_dev_get_extra_bufts_t):
  type
    ggml_backend_dev_get_extra_bufts_t* = ggml_backend_dev_get_extra_bufts_t_520094263
else:
  static :
    hint("Declaration of " & "ggml_backend_dev_get_extra_bufts_t" &
        " already exists, not redeclaring")
when not declared(enum_ggml_status):
  type
    enum_ggml_status* = enum_ggml_status_520094144
else:
  static :
    hint("Declaration of " & "enum_ggml_status" &
        " already exists, not redeclaring")
when not declared(ggml_custom3_op_f32_t):
  type
    ggml_custom3_op_f32_t* = ggml_custom3_op_f32_t_520094194
else:
  static :
    hint("Declaration of " & "ggml_custom3_op_f32_t" &
        " already exists, not redeclaring")
when not declared(enum_ggml_backend_dev_type):
  type
    enum_ggml_backend_dev_type* = enum_ggml_backend_dev_type_520094253
else:
  static :
    hint("Declaration of " & "enum_ggml_backend_dev_type" &
        " already exists, not redeclaring")
when not declared(whisper_logits_filter_callback):
  type
    whisper_logits_filter_callback* = whisper_logits_filter_callback_520094337
else:
  static :
    hint("Declaration of " & "whisper_logits_filter_callback" &
        " already exists, not redeclaring")
when not declared(enum_ggml_sort_order):
  type
    enum_ggml_sort_order* = enum_ggml_sort_order_520094184
else:
  static :
    hint("Declaration of " & "enum_ggml_sort_order" &
        " already exists, not redeclaring")
when not declared(FILE):
  type
    FILE* = FILE_520094180
else:
  static :
    hint("Declaration of " & "FILE" & " already exists, not redeclaring")
when not declared(struct_ggml_opt_params):
  type
    struct_ggml_opt_params* = struct_ggml_opt_params_520094212
else:
  static :
    hint("Declaration of " & "struct_ggml_opt_params" &
        " already exists, not redeclaring")
when not declared(struct_whisper_full_params):
  type
    struct_whisper_full_params* = struct_whisper_full_params_520094325
else:
  static :
    hint("Declaration of " & "struct_whisper_full_params" &
        " already exists, not redeclaring")
when not declared(ggml_log_callback):
  type
    ggml_log_callback* = ggml_log_callback_520094210
else:
  static :
    hint("Declaration of " & "ggml_log_callback" &
        " already exists, not redeclaring")
when not declared(whisper_token_data):
  type
    whisper_token_data* = whisper_token_data_520094313
else:
  static :
    hint("Declaration of " & "whisper_token_data" &
        " already exists, not redeclaring")
when not declared(struct_ggml_type_traits_cpu):
  type
    struct_ggml_type_traits_cpu* = struct_ggml_type_traits_cpu_520094291
else:
  static :
    hint("Declaration of " & "struct_ggml_type_traits_cpu" &
        " already exists, not redeclaring")
when not declared(ggml_custom2_op_t):
  type
    ggml_custom2_op_t* = ggml_custom2_op_t_520094198
else:
  static :
    hint("Declaration of " & "ggml_custom2_op_t" &
        " already exists, not redeclaring")
when not declared(ggml_custom3_op_t):
  type
    ggml_custom3_op_t* = ggml_custom3_op_t_520094200
else:
  static :
    hint("Declaration of " & "ggml_custom3_op_t" &
        " already exists, not redeclaring")
when not declared(enum_ggml_tensor_flag):
  type
    enum_ggml_tensor_flag* = enum_ggml_tensor_flag_520094168
else:
  static :
    hint("Declaration of " & "enum_ggml_tensor_flag" &
        " already exists, not redeclaring")
when not declared(struct_gguf_init_params):
  type
    struct_gguf_init_params* = struct_gguf_init_params_520094218
else:
  static :
    hint("Declaration of " & "struct_gguf_init_params" &
        " already exists, not redeclaring")
when not declared(compiler_off64_t):
  type
    compiler_off64_t* = compiler_off64_t_520094345
else:
  static :
    hint("Declaration of " & "compiler_off64_t" &
        " already exists, not redeclaring")
when not declared(ggml_backend_eval_callback):
  type
    ggml_backend_eval_callback* = ggml_backend_eval_callback_520094271
else:
  static :
    hint("Declaration of " & "ggml_backend_eval_callback" &
        " already exists, not redeclaring")
when not declared(struct_ggml_tallocr):
  type
    struct_ggml_tallocr* = struct_ggml_tallocr_520094239
else:
  static :
    hint("Declaration of " & "struct_ggml_tallocr" &
        " already exists, not redeclaring")
when not declared(ggml_backend_t):
  type
    ggml_backend_t* = ggml_backend_t_520094237
else:
  static :
    hint("Declaration of " & "ggml_backend_t" &
        " already exists, not redeclaring")
when not declared(enum_ggml_op):
  type
    enum_ggml_op* = enum_ggml_op_520094160
else:
  static :
    hint("Declaration of " & "enum_ggml_op" & " already exists, not redeclaring")
when not declared(struct_whisper_ahead):
  type
    struct_whisper_ahead* = struct_whisper_ahead_520094301
else:
  static :
    hint("Declaration of " & "struct_whisper_ahead" &
        " already exists, not redeclaring")
when not declared(ggml_guid):
  type
    ggml_guid* = ggml_guid_520094176
else:
  static :
    hint("Declaration of " & "ggml_guid" & " already exists, not redeclaring")
when not declared(enum_ggml_linesearch):
  type
    enum_ggml_linesearch* = enum_ggml_linesearch_520094204
else:
  static :
    hint("Declaration of " & "enum_ggml_linesearch" &
        " already exists, not redeclaring")
when not declared(ggml_backend_event_t):
  type
    ggml_backend_event_t* = ggml_backend_event_t_520094243
else:
  static :
    hint("Declaration of " & "ggml_backend_event_t" &
        " already exists, not redeclaring")
when not declared(enum_ggml_backend_buffer_usage):
  type
    enum_ggml_backend_buffer_usage* = enum_ggml_backend_buffer_usage_520094251
else:
  static :
    hint("Declaration of " & "enum_ggml_backend_buffer_usage" &
        " already exists, not redeclaring")
when not declared(ggml_custom1_op_f32_t):
  type
    ggml_custom1_op_f32_t* = ggml_custom1_op_f32_t_520094190
else:
  static :
    hint("Declaration of " & "ggml_custom1_op_f32_t" &
        " already exists, not redeclaring")
when not declared(whisper_token):
  type
    whisper_token* = whisper_token_520094295
else:
  static :
    hint("Declaration of " & "whisper_token" &
        " already exists, not redeclaring")
when not declared(whisper_progress_callback):
  type
    whisper_progress_callback* = whisper_progress_callback_520094333
else:
  static :
    hint("Declaration of " & "whisper_progress_callback" &
        " already exists, not redeclaring")
when not declared(struct_ggml_backend_dev_props):
  type
    struct_ggml_backend_dev_props* = struct_ggml_backend_dev_props_520094257
else:
  static :
    hint("Declaration of " & "struct_ggml_backend_dev_props" &
        " already exists, not redeclaring")
when not declared(whisper_aheads):
  type
    whisper_aheads* = whisper_aheads_520094307
else:
  static :
    hint("Declaration of " & "whisper_aheads" &
        " already exists, not redeclaring")
when not declared(whisper_pos):
  type
    whisper_pos* = whisper_pos_520094293
else:
  static :
    hint("Declaration of " & "whisper_pos" & " already exists, not redeclaring")
when not declared(whisper_seq_id):
  type
    whisper_seq_id* = whisper_seq_id_520094297
else:
  static :
    hint("Declaration of " & "whisper_seq_id" &
        " already exists, not redeclaring")
when not declared(enum_ggml_prec):
  type
    enum_ggml_prec* = enum_ggml_prec_520094154
else:
  static :
    hint("Declaration of " & "enum_ggml_prec" &
        " already exists, not redeclaring")
when not declared(ggml_opt_callback):
  type
    ggml_opt_callback* = ggml_opt_callback_520094208
else:
  static :
    hint("Declaration of " & "ggml_opt_callback" &
        " already exists, not redeclaring")
when not declared(enum_ggml_log_level):
  type
    enum_ggml_log_level* = enum_ggml_log_level_520094166
else:
  static :
    hint("Declaration of " & "enum_ggml_log_level" &
        " already exists, not redeclaring")
when not declared(struct_ggml_backend_dev_caps):
  type
    struct_ggml_backend_dev_caps* = struct_ggml_backend_dev_caps_520094255
else:
  static :
    hint("Declaration of " & "struct_ggml_backend_dev_caps" &
        " already exists, not redeclaring")
when not declared(whisper_model_loader):
  type
    whisper_model_loader* = whisper_model_loader_520094317
else:
  static :
    hint("Declaration of " & "whisper_model_loader" &
        " already exists, not redeclaring")
when not declared(struct_whisper_model_loader):
  type
    struct_whisper_model_loader* = struct_whisper_model_loader_520094315
else:
  static :
    hint("Declaration of " & "struct_whisper_model_loader" &
        " already exists, not redeclaring")
when not declared(struct_ggml_bf16_t):
  type
    struct_ggml_bf16_t* = struct_ggml_bf16_t_520094148
else:
  static :
    hint("Declaration of " & "struct_ggml_bf16_t" &
        " already exists, not redeclaring")
when not declared(enum_ggml_opt_type):
  type
    enum_ggml_opt_type* = enum_ggml_opt_type_520094202
else:
  static :
    hint("Declaration of " & "enum_ggml_opt_type" &
        " already exists, not redeclaring")
when not declared(struct_ggml_threadpool_params):
  type
    struct_ggml_threadpool_params* = struct_ggml_threadpool_params_520094275
else:
  static :
    hint("Declaration of " & "struct_ggml_threadpool_params" &
        " already exists, not redeclaring")
when not declared(ggml_threadpool_t):
  type
    ggml_threadpool_t* = ggml_threadpool_t_520094277
else:
  static :
    hint("Declaration of " & "ggml_threadpool_t" &
        " already exists, not redeclaring")
when not declared(whisper_new_segment_callback):
  type
    whisper_new_segment_callback* = whisper_new_segment_callback_520094331
else:
  static :
    hint("Declaration of " & "whisper_new_segment_callback" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buffer_type_t):
  type
    ggml_backend_buffer_type_t* = ggml_backend_buffer_type_t_520094233
else:
  static :
    hint("Declaration of " & "ggml_backend_buffer_type_t" &
        " already exists, not redeclaring")
when not declared(ggml_backend_set_n_threads_t):
  type
    ggml_backend_set_n_threads_t* = ggml_backend_set_n_threads_t_520094261
else:
  static :
    hint("Declaration of " & "ggml_backend_set_n_threads_t" &
        " already exists, not redeclaring")
when not declared(ggml_binary_op_f32_t):
  type
    ggml_binary_op_f32_t* = ggml_binary_op_f32_t_520094188
else:
  static :
    hint("Declaration of " & "ggml_binary_op_f32_t" &
        " already exists, not redeclaring")
when not declared(enum_whisper_sampling_strategy):
  type
    enum_whisper_sampling_strategy* = enum_whisper_sampling_strategy_520094329
else:
  static :
    hint("Declaration of " & "enum_whisper_sampling_strategy" &
        " already exists, not redeclaring")
when not declared(ggml_abort_callback):
  type
    ggml_abort_callback* = ggml_abort_callback_520094174
else:
  static :
    hint("Declaration of " & "ggml_abort_callback" &
        " already exists, not redeclaring")
when not declared(enum_ggml_numa_strategy):
  type
    enum_ggml_numa_strategy* = enum_ggml_numa_strategy_520094281
else:
  static :
    hint("Declaration of " & "enum_ggml_numa_strategy" &
        " already exists, not redeclaring")
when not declared(ggml_to_float_t):
  type
    ggml_to_float_t* = ggml_to_float_t_520094227
else:
  static :
    hint("Declaration of " & "ggml_to_float_t" &
        " already exists, not redeclaring")
when not declared(ggml_backend_sched_t):
  type
    ggml_backend_sched_t* = ggml_backend_sched_t_520094265
else:
  static :
    hint("Declaration of " & "ggml_backend_sched_t" &
        " already exists, not redeclaring")
when not declared(ggml_gemv_t):
  type
    ggml_gemv_t* = ggml_gemv_t_520094287
else:
  static :
    hint("Declaration of " & "ggml_gemv_t" & " already exists, not redeclaring")
when not declared(struct_IO_FILE):
  type
    struct_IO_FILE* = struct_IO_FILE_520094339
else:
  static :
    hint("Declaration of " & "struct_IO_FILE" &
        " already exists, not redeclaring")
when not declared(enum_ggml_unary_op):
  type
    enum_ggml_unary_op* = enum_ggml_unary_op_520094162
else:
  static :
    hint("Declaration of " & "enum_ggml_unary_op" &
        " already exists, not redeclaring")
when not declared(enum_ggml_opt_result):
  type
    enum_ggml_opt_result* = enum_ggml_opt_result_520094206
else:
  static :
    hint("Declaration of " & "enum_ggml_opt_result" &
        " already exists, not redeclaring")
when not declared(ggml_gemm_t):
  type
    ggml_gemm_t* = ggml_gemm_t_520094289
else:
  static :
    hint("Declaration of " & "ggml_gemm_t" & " already exists, not redeclaring")
when not declared(ggml_guid_t):
  type
    ggml_guid_t* = ggml_guid_t_520094178
else:
  static :
    hint("Declaration of " & "ggml_guid_t" & " already exists, not redeclaring")
when not declared(enum_ggml_sched_priority):
  type
    enum_ggml_sched_priority* = enum_ggml_sched_priority_520094273
else:
  static :
    hint("Declaration of " & "enum_ggml_sched_priority" &
        " already exists, not redeclaring")
when not declared(compiler_off_t):
  type
    compiler_off_t* = compiler_off_t_520094341
else:
  static :
    hint("Declaration of " & "compiler_off_t" &
        " already exists, not redeclaring")
when not declared(ggml_backend_sched_eval_callback):
  type
    ggml_backend_sched_eval_callback* = ggml_backend_sched_eval_callback_520094267
else:
  static :
    hint("Declaration of " & "ggml_backend_sched_eval_callback" &
        " already exists, not redeclaring")
when not declared(ggml_backend_reg_t):
  type
    ggml_backend_reg_t* = ggml_backend_reg_t_520094247
else:
  static :
    hint("Declaration of " & "ggml_backend_reg_t" &
        " already exists, not redeclaring")
when not declared(whisper_ahead):
  type
    whisper_ahead* = whisper_ahead_520094303
else:
  static :
    hint("Declaration of " & "whisper_ahead" &
        " already exists, not redeclaring")
when not declared(ggml_from_float_to_mat_t):
  type
    ggml_from_float_to_mat_t* = ggml_from_float_to_mat_t_520094283
else:
  static :
    hint("Declaration of " & "ggml_from_float_to_mat_t" &
        " already exists, not redeclaring")
when not declared(struct_whisper_grammar_element):
  type
    struct_whisper_grammar_element* = struct_whisper_grammar_element_520094321
else:
  static :
    hint("Declaration of " & "struct_whisper_grammar_element" &
        " already exists, not redeclaring")
when not declared(ggml_gallocr_t):
  type
    ggml_gallocr_t* = ggml_gallocr_t_520094241
else:
  static :
    hint("Declaration of " & "ggml_gallocr_t" &
        " already exists, not redeclaring")
when not declared(ggml_custom1_op_t):
  type
    ggml_custom1_op_t* = ggml_custom1_op_t_520094196
else:
  static :
    hint("Declaration of " & "ggml_custom1_op_t" &
        " already exists, not redeclaring")
when not declared(whisper_encoder_begin_callback):
  type
    whisper_encoder_begin_callback* = whisper_encoder_begin_callback_520094335
else:
  static :
    hint("Declaration of " & "whisper_encoder_begin_callback" &
        " already exists, not redeclaring")
when not declared(ggml_from_float_t):
  type
    ggml_from_float_t* = ggml_from_float_t_520094229
else:
  static :
    hint("Declaration of " & "ggml_from_float_t" &
        " already exists, not redeclaring")
when not declared(struct_whisper_aheads):
  type
    struct_whisper_aheads* = struct_whisper_aheads_520094305
else:
  static :
    hint("Declaration of " & "struct_whisper_aheads" &
        " already exists, not redeclaring")
when not declared(struct_ggml_backend_graph_copy):
  type
    struct_ggml_backend_graph_copy* = struct_ggml_backend_graph_copy_520094269
else:
  static :
    hint("Declaration of " & "struct_ggml_backend_graph_copy" &
        " already exists, not redeclaring")
when not declared(enum_ggml_backend_type):
  type
    enum_ggml_backend_type* = enum_ggml_backend_type_520094156
else:
  static :
    hint("Declaration of " & "enum_ggml_backend_type" &
        " already exists, not redeclaring")
when not declared(enum_ggml_op_pool):
  type
    enum_ggml_op_pool* = enum_ggml_op_pool_520094182
else:
  static :
    hint("Declaration of " & "enum_ggml_op_pool" &
        " already exists, not redeclaring")
when not declared(struct_ggml_tensor):
  type
    struct_ggml_tensor* = struct_ggml_tensor_520094172
else:
  static :
    hint("Declaration of " & "struct_ggml_tensor" &
        " already exists, not redeclaring")
when not declared(enum_gguf_type):
  type
    enum_gguf_type* = enum_gguf_type_520094216
else:
  static :
    hint("Declaration of " & "enum_gguf_type" &
        " already exists, not redeclaring")
when not declared(struct_whisper_context_params):
  type
    struct_whisper_context_params* = struct_whisper_context_params_520094309
else:
  static :
    hint("Declaration of " & "struct_whisper_context_params" &
        " already exists, not redeclaring")
when not declared(ggml_custom2_op_f32_t):
  type
    ggml_custom2_op_f32_t* = ggml_custom2_op_f32_t_520094192
else:
  static :
    hint("Declaration of " & "ggml_custom2_op_f32_t" &
        " already exists, not redeclaring")
when not declared(ggml_backend_split_buffer_type_t):
  type
    ggml_backend_split_buffer_type_t* = ggml_backend_split_buffer_type_t_520094259
else:
  static :
    hint("Declaration of " & "ggml_backend_split_buffer_type_t" &
        " already exists, not redeclaring")
when not declared(struct_ggml_type_traits):
  type
    struct_ggml_type_traits* = struct_ggml_type_traits_520094231
else:
  static :
    hint("Declaration of " & "struct_ggml_type_traits" &
        " already exists, not redeclaring")
when not declared(enum_whisper_gretype):
  type
    enum_whisper_gretype* = enum_whisper_gretype_520094319
else:
  static :
    hint("Declaration of " & "enum_whisper_gretype" &
        " already exists, not redeclaring")
when not declared(struct_whisper_token_data):
  type
    struct_whisper_token_data* = struct_whisper_token_data_520094311
else:
  static :
    hint("Declaration of " & "struct_whisper_token_data" &
        " already exists, not redeclaring")
when not declared(ggml_backend_graph_plan_t):
  type
    ggml_backend_graph_plan_t* = ggml_backend_graph_plan_t_520094245
else:
  static :
    hint("Declaration of " & "ggml_backend_graph_plan_t" &
        " already exists, not redeclaring")
when not declared(enum_ggml_type):
  type
    enum_ggml_type* = enum_ggml_type_520094152
else:
  static :
    hint("Declaration of " & "enum_ggml_type" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buffer_t):
  type
    ggml_backend_buffer_t* = ggml_backend_buffer_t_520094235
else:
  static :
    hint("Declaration of " & "ggml_backend_buffer_t" &
        " already exists, not redeclaring")
when not declared(ggml_bf16_t):
  type
    ggml_bf16_t* = ggml_bf16_t_520094150
else:
  static :
    hint("Declaration of " & "ggml_bf16_t" & " already exists, not redeclaring")
when not declared(struct_ggml_opt_context):
  type
    struct_ggml_opt_context* = struct_ggml_opt_context_520094214
else:
  static :
    hint("Declaration of " & "struct_ggml_opt_context" &
        " already exists, not redeclaring")
when not declared(struct_ggml_init_params):
  type
    struct_ggml_init_params* = struct_ggml_init_params_520094170
else:
  static :
    hint("Declaration of " & "struct_ggml_init_params" &
        " already exists, not redeclaring")
when not declared(ggml_backend_dev_t):
  type
    ggml_backend_dev_t* = ggml_backend_dev_t_520094249
else:
  static :
    hint("Declaration of " & "ggml_backend_dev_t" &
        " already exists, not redeclaring")
when not declared(enum_ggml_ftype):
  type
    enum_ggml_ftype* = enum_ggml_ftype_520094158
else:
  static :
    hint("Declaration of " & "enum_ggml_ftype" &
        " already exists, not redeclaring")
when not declared(ggml_vec_dot_t):
  type
    ggml_vec_dot_t* = ggml_vec_dot_t_520094285
else:
  static :
    hint("Declaration of " & "ggml_vec_dot_t" &
        " already exists, not redeclaring")
when not declared(enum_ggml_object_type):
  type
    enum_ggml_object_type* = enum_ggml_object_type_520094164
else:
  static :
    hint("Declaration of " & "enum_ggml_object_type" &
        " already exists, not redeclaring")
when not declared(struct_ggml_cplan):
  type
    struct_ggml_cplan* = struct_ggml_cplan_520094279
else:
  static :
    hint("Declaration of " & "struct_ggml_cplan" &
        " already exists, not redeclaring")
when not declared(enum_whisper_alignment_heads_preset):
  type
    enum_whisper_alignment_heads_preset* = enum_whisper_alignment_heads_preset_520094299
else:
  static :
    hint("Declaration of " & "enum_whisper_alignment_heads_preset" &
        " already exists, not redeclaring")
when not declared(ggml_unary_op_f32_t):
  type
    ggml_unary_op_f32_t* = ggml_unary_op_f32_t_520094186
else:
  static :
    hint("Declaration of " & "ggml_unary_op_f32_t" &
        " already exists, not redeclaring")
when not declared(whisper_grammar_element):
  type
    whisper_grammar_element* = whisper_grammar_element_520094323
else:
  static :
    hint("Declaration of " & "whisper_grammar_element" &
        " already exists, not redeclaring")
when not declared(struct_whisper_timings):
  type
    struct_whisper_timings* = struct_whisper_timings_520094327
else:
  static :
    hint("Declaration of " & "struct_whisper_timings" &
        " already exists, not redeclaring")
when not declared(GGML_FILE_MAGIC):
  when 1734831468 is static:
    const
      GGML_FILE_MAGIC* = 1734831468 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:212:9
  else:
    let GGML_FILE_MAGIC* = 1734831468 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:212:9
else:
  static :
    hint("Declaration of " & "GGML_FILE_MAGIC" &
        " already exists, not redeclaring")
when not declared(GGML_FILE_VERSION):
  when 2 is static:
    const
      GGML_FILE_VERSION* = 2 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:213:9
  else:
    let GGML_FILE_VERSION* = 2 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:213:9
else:
  static :
    hint("Declaration of " & "GGML_FILE_VERSION" &
        " already exists, not redeclaring")
when not declared(GGML_QNT_VERSION):
  when 2 is static:
    const
      GGML_QNT_VERSION* = 2  ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:215:9
  else:
    let GGML_QNT_VERSION* = 2 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:215:9
else:
  static :
    hint("Declaration of " & "GGML_QNT_VERSION" &
        " already exists, not redeclaring")
when not declared(GGML_QNT_VERSION_FACTOR):
  when 1000 is static:
    const
      GGML_QNT_VERSION_FACTOR* = 1000 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:216:9
  else:
    let GGML_QNT_VERSION_FACTOR* = 1000 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:216:9
else:
  static :
    hint("Declaration of " & "GGML_QNT_VERSION_FACTOR" &
        " already exists, not redeclaring")
when not declared(GGML_MAX_DIMS):
  when 4 is static:
    const
      GGML_MAX_DIMS* = 4     ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:218:9
  else:
    let GGML_MAX_DIMS* = 4   ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:218:9
else:
  static :
    hint("Declaration of " & "GGML_MAX_DIMS" &
        " already exists, not redeclaring")
when not declared(GGML_MAX_PARAMS):
  when 2048 is static:
    const
      GGML_MAX_PARAMS* = 2048 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:219:9
  else:
    let GGML_MAX_PARAMS* = 2048 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:219:9
else:
  static :
    hint("Declaration of " & "GGML_MAX_PARAMS" &
        " already exists, not redeclaring")
when not declared(GGML_MAX_SRC):
  when 10 is static:
    const
      GGML_MAX_SRC* = 10     ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:220:9
  else:
    let GGML_MAX_SRC* = 10   ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:220:9
else:
  static :
    hint("Declaration of " & "GGML_MAX_SRC" & " already exists, not redeclaring")
when not declared(GGML_MAX_N_THREADS):
  when 512 is static:
    const
      GGML_MAX_N_THREADS* = 512 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:221:9
  else:
    let GGML_MAX_N_THREADS* = 512 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:221:9
else:
  static :
    hint("Declaration of " & "GGML_MAX_N_THREADS" &
        " already exists, not redeclaring")
when not declared(GGML_MAX_OP_PARAMS):
  when 64 is static:
    const
      GGML_MAX_OP_PARAMS* = 64 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:222:9
  else:
    let GGML_MAX_OP_PARAMS* = 64 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:222:9
else:
  static :
    hint("Declaration of " & "GGML_MAX_OP_PARAMS" &
        " already exists, not redeclaring")
when not declared(GGML_MAX_NAME):
  when 64 is static:
    const
      GGML_MAX_NAME* = 64    ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:225:12
  else:
    let GGML_MAX_NAME* = 64  ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:225:12
else:
  static :
    hint("Declaration of " & "GGML_MAX_NAME" &
        " already exists, not redeclaring")
when not declared(GGML_DEFAULT_N_THREADS):
  when 4 is static:
    const
      GGML_DEFAULT_N_THREADS* = 4 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:228:9
  else:
    let GGML_DEFAULT_N_THREADS* = 4 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:228:9
else:
  static :
    hint("Declaration of " & "GGML_DEFAULT_N_THREADS" &
        " already exists, not redeclaring")
when not declared(GGML_DEFAULT_GRAPH_SIZE):
  when 2048 is static:
    const
      GGML_DEFAULT_GRAPH_SIZE* = 2048 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:229:9
  else:
    let GGML_DEFAULT_GRAPH_SIZE* = 2048 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:229:9
else:
  static :
    hint("Declaration of " & "GGML_DEFAULT_GRAPH_SIZE" &
        " already exists, not redeclaring")
when not declared(GGML_MEM_ALIGN):
  when 16 is static:
    const
      GGML_MEM_ALIGN* = 16   ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:234:13
  else:
    let GGML_MEM_ALIGN* = 16 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:234:13
else:
  static :
    hint("Declaration of " & "GGML_MEM_ALIGN" &
        " already exists, not redeclaring")
when not declared(GGML_EXIT_SUCCESS):
  when 0 is static:
    const
      GGML_EXIT_SUCCESS* = 0 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:237:9
  else:
    let GGML_EXIT_SUCCESS* = 0 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:237:9
else:
  static :
    hint("Declaration of " & "GGML_EXIT_SUCCESS" &
        " already exists, not redeclaring")
when not declared(GGML_EXIT_ABORTED):
  when 1 is static:
    const
      GGML_EXIT_ABORTED* = 1 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:238:9
  else:
    let GGML_EXIT_ABORTED* = 1 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:238:9
else:
  static :
    hint("Declaration of " & "GGML_EXIT_ABORTED" &
        " already exists, not redeclaring")
when not declared(GGML_ROPE_TYPE_NEOX):
  when 2 is static:
    const
      GGML_ROPE_TYPE_NEOX* = 2 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:240:9
  else:
    let GGML_ROPE_TYPE_NEOX* = 2 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:240:9
else:
  static :
    hint("Declaration of " & "GGML_ROPE_TYPE_NEOX" &
        " already exists, not redeclaring")
when not declared(GGUF_MAGIC):
  when "GGUF" is static:
    const
      GGUF_MAGIC* = "GGUF"   ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:242:9
  else:
    let GGUF_MAGIC* = "GGUF" ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:242:9
else:
  static :
    hint("Declaration of " & "GGUF_MAGIC" & " already exists, not redeclaring")
when not declared(GGUF_VERSION):
  when 3 is static:
    const
      GGUF_VERSION* = 3      ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:244:9
  else:
    let GGUF_VERSION* = 3    ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:244:9
else:
  static :
    hint("Declaration of " & "GGUF_VERSION" & " already exists, not redeclaring")
when not declared(GGUF_DEFAULT_ALIGNMENT):
  when 32 is static:
    const
      GGUF_DEFAULT_ALIGNMENT* = 32 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:246:9
  else:
    let GGUF_DEFAULT_ALIGNMENT* = 32 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:246:9
else:
  static :
    hint("Declaration of " & "GGUF_DEFAULT_ALIGNMENT" &
        " already exists, not redeclaring")
when not declared(GGML_KQ_MASK_PAD):
  when 32 is static:
    const
      GGML_KQ_MASK_PAD* = 32 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:1728:9
  else:
    let GGML_KQ_MASK_PAD* = 32 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:1728:9
else:
  static :
    hint("Declaration of " & "GGML_KQ_MASK_PAD" &
        " already exists, not redeclaring")
when not declared(GGML_N_TASKS_MAX):
  when -1 is static:
    const
      GGML_N_TASKS_MAX* = -1 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:1917:9
  else:
    let GGML_N_TASKS_MAX* = -1 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:1917:9
else:
  static :
    hint("Declaration of " & "GGML_N_TASKS_MAX" &
        " already exists, not redeclaring")
when not declared(GGML_RESTRICT):
  when restrict is typedesc:
    type
      GGML_RESTRICT* = restrict ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:2423:9
  else:
    when restrict is static:
      const
        GGML_RESTRICT* = restrict ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:2423:9
    else:
      let GGML_RESTRICT* = restrict ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/ggml.h:2423:9
else:
  static :
    hint("Declaration of " & "GGML_RESTRICT" &
        " already exists, not redeclaring")
when not declared(WHISPER_SAMPLE_RATE):
  when 16000 is static:
    const
      WHISPER_SAMPLE_RATE* = 16000 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:33:9
  else:
    let WHISPER_SAMPLE_RATE* = 16000 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:33:9
else:
  static :
    hint("Declaration of " & "WHISPER_SAMPLE_RATE" &
        " already exists, not redeclaring")
when not declared(WHISPER_N_FFT):
  when 400 is static:
    const
      WHISPER_N_FFT* = 400   ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:34:9
  else:
    let WHISPER_N_FFT* = 400 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:34:9
else:
  static :
    hint("Declaration of " & "WHISPER_N_FFT" &
        " already exists, not redeclaring")
when not declared(WHISPER_HOP_LENGTH):
  when 160 is static:
    const
      WHISPER_HOP_LENGTH* = 160 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:35:9
  else:
    let WHISPER_HOP_LENGTH* = 160 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:35:9
else:
  static :
    hint("Declaration of " & "WHISPER_HOP_LENGTH" &
        " already exists, not redeclaring")
when not declared(WHISPER_CHUNK_SIZE):
  when 30 is static:
    const
      WHISPER_CHUNK_SIZE* = 30 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:36:9
  else:
    let WHISPER_CHUNK_SIZE* = 30 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/whisper/include/whisper.h:36:9
else:
  static :
    hint("Declaration of " & "WHISPER_CHUNK_SIZE" &
        " already exists, not redeclaring")
when not declared(ggml_abort):
  proc ggml_abort*(file: cstring; line: cint; fmt: cstring): void {.cdecl,
      varargs, importc: "ggml_abort".}
else:
  static :
    hint("Declaration of " & "ggml_abort" & " already exists, not redeclaring")
when not declared(ggml_status_to_string):
  proc ggml_status_to_string*(status: enum_ggml_status_520094145): cstring {.
      cdecl, importc: "ggml_status_to_string".}
else:
  static :
    hint("Declaration of " & "ggml_status_to_string" &
        " already exists, not redeclaring")
when not declared(ggml_fp16_to_fp32):
  proc ggml_fp16_to_fp32*(a0: ggml_fp16_t_520094147): cfloat {.cdecl,
      importc: "ggml_fp16_to_fp32".}
else:
  static :
    hint("Declaration of " & "ggml_fp16_to_fp32" &
        " already exists, not redeclaring")
when not declared(ggml_fp32_to_fp16):
  proc ggml_fp32_to_fp16*(a0: cfloat): ggml_fp16_t_520094147 {.cdecl,
      importc: "ggml_fp32_to_fp16".}
else:
  static :
    hint("Declaration of " & "ggml_fp32_to_fp16" &
        " already exists, not redeclaring")
when not declared(ggml_fp16_to_fp32_row):
  proc ggml_fp16_to_fp32_row*(a0: ptr ggml_fp16_t_520094147; a1: ptr cfloat;
                              a2: int64): void {.cdecl,
      importc: "ggml_fp16_to_fp32_row".}
else:
  static :
    hint("Declaration of " & "ggml_fp16_to_fp32_row" &
        " already exists, not redeclaring")
when not declared(ggml_fp32_to_fp16_row):
  proc ggml_fp32_to_fp16_row*(a0: ptr cfloat; a1: ptr ggml_fp16_t_520094147;
                              a2: int64): void {.cdecl,
      importc: "ggml_fp32_to_fp16_row".}
else:
  static :
    hint("Declaration of " & "ggml_fp32_to_fp16_row" &
        " already exists, not redeclaring")
when not declared(ggml_fp32_to_bf16):
  proc ggml_fp32_to_bf16*(a0: cfloat): ggml_bf16_t_520094151 {.cdecl,
      importc: "ggml_fp32_to_bf16".}
else:
  static :
    hint("Declaration of " & "ggml_fp32_to_bf16" &
        " already exists, not redeclaring")
when not declared(ggml_bf16_to_fp32):
  proc ggml_bf16_to_fp32*(a0: ggml_bf16_t_520094151): cfloat {.cdecl,
      importc: "ggml_bf16_to_fp32".}
else:
  static :
    hint("Declaration of " & "ggml_bf16_to_fp32" &
        " already exists, not redeclaring")
when not declared(ggml_bf16_to_fp32_row):
  proc ggml_bf16_to_fp32_row*(a0: ptr ggml_bf16_t_520094151; a1: ptr cfloat;
                              a2: int64): void {.cdecl,
      importc: "ggml_bf16_to_fp32_row".}
else:
  static :
    hint("Declaration of " & "ggml_bf16_to_fp32_row" &
        " already exists, not redeclaring")
when not declared(ggml_fp32_to_bf16_row_ref):
  proc ggml_fp32_to_bf16_row_ref*(a0: ptr cfloat; a1: ptr ggml_bf16_t_520094151;
                                  a2: int64): void {.cdecl,
      importc: "ggml_fp32_to_bf16_row_ref".}
else:
  static :
    hint("Declaration of " & "ggml_fp32_to_bf16_row_ref" &
        " already exists, not redeclaring")
when not declared(ggml_fp32_to_bf16_row):
  proc ggml_fp32_to_bf16_row*(a0: ptr cfloat; a1: ptr ggml_bf16_t_520094151;
                              a2: int64): void {.cdecl,
      importc: "ggml_fp32_to_bf16_row".}
else:
  static :
    hint("Declaration of " & "ggml_fp32_to_bf16_row" &
        " already exists, not redeclaring")
when not declared(GGML_TENSOR_SIZE):
  var GGML_TENSOR_SIZE*: csize_t
else:
  static :
    hint("Declaration of " & "GGML_TENSOR_SIZE" &
        " already exists, not redeclaring")
when not declared(ggml_guid_matches):
  proc ggml_guid_matches*(guid_a: ggml_guid_t_520094179; guid_b: ggml_guid_t_520094179): bool {.
      cdecl, importc: "ggml_guid_matches".}
else:
  static :
    hint("Declaration of " & "ggml_guid_matches" &
        " already exists, not redeclaring")
when not declared(ggml_time_init):
  proc ggml_time_init*(): void {.cdecl, importc: "ggml_time_init".}
else:
  static :
    hint("Declaration of " & "ggml_time_init" &
        " already exists, not redeclaring")
when not declared(ggml_time_ms):
  proc ggml_time_ms*(): int64 {.cdecl, importc: "ggml_time_ms".}
else:
  static :
    hint("Declaration of " & "ggml_time_ms" & " already exists, not redeclaring")
when not declared(ggml_time_us):
  proc ggml_time_us*(): int64 {.cdecl, importc: "ggml_time_us".}
else:
  static :
    hint("Declaration of " & "ggml_time_us" & " already exists, not redeclaring")
when not declared(ggml_cycles):
  proc ggml_cycles*(): int64 {.cdecl, importc: "ggml_cycles".}
else:
  static :
    hint("Declaration of " & "ggml_cycles" & " already exists, not redeclaring")
when not declared(ggml_cycles_per_ms):
  proc ggml_cycles_per_ms*(): int64 {.cdecl, importc: "ggml_cycles_per_ms".}
else:
  static :
    hint("Declaration of " & "ggml_cycles_per_ms" &
        " already exists, not redeclaring")
when not declared(ggml_fopen):
  proc ggml_fopen*(fname: cstring; mode: cstring): ptr FILE_520094181 {.cdecl,
      importc: "ggml_fopen".}
else:
  static :
    hint("Declaration of " & "ggml_fopen" & " already exists, not redeclaring")
when not declared(ggml_print_object):
  proc ggml_print_object*(obj: ptr struct_ggml_object): void {.cdecl,
      importc: "ggml_print_object".}
else:
  static :
    hint("Declaration of " & "ggml_print_object" &
        " already exists, not redeclaring")
when not declared(ggml_print_objects):
  proc ggml_print_objects*(ctx: ptr struct_ggml_context): void {.cdecl,
      importc: "ggml_print_objects".}
else:
  static :
    hint("Declaration of " & "ggml_print_objects" &
        " already exists, not redeclaring")
when not declared(ggml_nelements):
  proc ggml_nelements*(tensor: ptr struct_ggml_tensor_520094173): int64 {.cdecl,
      importc: "ggml_nelements".}
else:
  static :
    hint("Declaration of " & "ggml_nelements" &
        " already exists, not redeclaring")
when not declared(ggml_nrows):
  proc ggml_nrows*(tensor: ptr struct_ggml_tensor_520094173): int64 {.cdecl,
      importc: "ggml_nrows".}
else:
  static :
    hint("Declaration of " & "ggml_nrows" & " already exists, not redeclaring")
when not declared(ggml_nbytes):
  proc ggml_nbytes*(tensor: ptr struct_ggml_tensor_520094173): csize_t {.cdecl,
      importc: "ggml_nbytes".}
else:
  static :
    hint("Declaration of " & "ggml_nbytes" & " already exists, not redeclaring")
when not declared(ggml_nbytes_pad):
  proc ggml_nbytes_pad*(tensor: ptr struct_ggml_tensor_520094173): csize_t {.
      cdecl, importc: "ggml_nbytes_pad".}
else:
  static :
    hint("Declaration of " & "ggml_nbytes_pad" &
        " already exists, not redeclaring")
when not declared(ggml_blck_size):
  proc ggml_blck_size*(type_arg: enum_ggml_type_520094153): int64 {.cdecl,
      importc: "ggml_blck_size".}
else:
  static :
    hint("Declaration of " & "ggml_blck_size" &
        " already exists, not redeclaring")
when not declared(ggml_type_size):
  proc ggml_type_size*(type_arg: enum_ggml_type_520094153): csize_t {.cdecl,
      importc: "ggml_type_size".}
else:
  static :
    hint("Declaration of " & "ggml_type_size" &
        " already exists, not redeclaring")
when not declared(ggml_row_size):
  proc ggml_row_size*(type_arg: enum_ggml_type_520094153; ne: int64): csize_t {.
      cdecl, importc: "ggml_row_size".}
else:
  static :
    hint("Declaration of " & "ggml_row_size" &
        " already exists, not redeclaring")
when not declared(ggml_type_sizef):
  proc ggml_type_sizef*(type_arg: enum_ggml_type_520094153): cdouble {.cdecl,
      importc: "ggml_type_sizef".}
else:
  static :
    hint("Declaration of " & "ggml_type_sizef" &
        " already exists, not redeclaring")
when not declared(ggml_type_name):
  proc ggml_type_name*(type_arg: enum_ggml_type_520094153): cstring {.cdecl,
      importc: "ggml_type_name".}
else:
  static :
    hint("Declaration of " & "ggml_type_name" &
        " already exists, not redeclaring")
when not declared(ggml_op_name):
  proc ggml_op_name*(op: enum_ggml_op_520094161): cstring {.cdecl,
      importc: "ggml_op_name".}
else:
  static :
    hint("Declaration of " & "ggml_op_name" & " already exists, not redeclaring")
when not declared(ggml_op_symbol):
  proc ggml_op_symbol*(op: enum_ggml_op_520094161): cstring {.cdecl,
      importc: "ggml_op_symbol".}
else:
  static :
    hint("Declaration of " & "ggml_op_symbol" &
        " already exists, not redeclaring")
when not declared(ggml_unary_op_name):
  proc ggml_unary_op_name*(op: enum_ggml_unary_op_520094163): cstring {.cdecl,
      importc: "ggml_unary_op_name".}
else:
  static :
    hint("Declaration of " & "ggml_unary_op_name" &
        " already exists, not redeclaring")
when not declared(ggml_op_desc):
  proc ggml_op_desc*(t: ptr struct_ggml_tensor_520094173): cstring {.cdecl,
      importc: "ggml_op_desc".}
else:
  static :
    hint("Declaration of " & "ggml_op_desc" & " already exists, not redeclaring")
when not declared(ggml_element_size):
  proc ggml_element_size*(tensor: ptr struct_ggml_tensor_520094173): csize_t {.
      cdecl, importc: "ggml_element_size".}
else:
  static :
    hint("Declaration of " & "ggml_element_size" &
        " already exists, not redeclaring")
when not declared(ggml_is_quantized):
  proc ggml_is_quantized*(type_arg: enum_ggml_type_520094153): bool {.cdecl,
      importc: "ggml_is_quantized".}
else:
  static :
    hint("Declaration of " & "ggml_is_quantized" &
        " already exists, not redeclaring")
when not declared(ggml_ftype_to_ggml_type):
  proc ggml_ftype_to_ggml_type*(ftype: enum_ggml_ftype_520094159): enum_ggml_type_520094153 {.
      cdecl, importc: "ggml_ftype_to_ggml_type".}
else:
  static :
    hint("Declaration of " & "ggml_ftype_to_ggml_type" &
        " already exists, not redeclaring")
when not declared(ggml_is_transposed):
  proc ggml_is_transposed*(tensor: ptr struct_ggml_tensor_520094173): bool {.
      cdecl, importc: "ggml_is_transposed".}
else:
  static :
    hint("Declaration of " & "ggml_is_transposed" &
        " already exists, not redeclaring")
when not declared(ggml_is_permuted):
  proc ggml_is_permuted*(tensor: ptr struct_ggml_tensor_520094173): bool {.
      cdecl, importc: "ggml_is_permuted".}
else:
  static :
    hint("Declaration of " & "ggml_is_permuted" &
        " already exists, not redeclaring")
when not declared(ggml_is_empty):
  proc ggml_is_empty*(tensor: ptr struct_ggml_tensor_520094173): bool {.cdecl,
      importc: "ggml_is_empty".}
else:
  static :
    hint("Declaration of " & "ggml_is_empty" &
        " already exists, not redeclaring")
when not declared(ggml_is_scalar):
  proc ggml_is_scalar*(tensor: ptr struct_ggml_tensor_520094173): bool {.cdecl,
      importc: "ggml_is_scalar".}
else:
  static :
    hint("Declaration of " & "ggml_is_scalar" &
        " already exists, not redeclaring")
when not declared(ggml_is_vector):
  proc ggml_is_vector*(tensor: ptr struct_ggml_tensor_520094173): bool {.cdecl,
      importc: "ggml_is_vector".}
else:
  static :
    hint("Declaration of " & "ggml_is_vector" &
        " already exists, not redeclaring")
when not declared(ggml_is_matrix):
  proc ggml_is_matrix*(tensor: ptr struct_ggml_tensor_520094173): bool {.cdecl,
      importc: "ggml_is_matrix".}
else:
  static :
    hint("Declaration of " & "ggml_is_matrix" &
        " already exists, not redeclaring")
when not declared(ggml_is_3d):
  proc ggml_is_3d*(tensor: ptr struct_ggml_tensor_520094173): bool {.cdecl,
      importc: "ggml_is_3d".}
else:
  static :
    hint("Declaration of " & "ggml_is_3d" & " already exists, not redeclaring")
when not declared(ggml_n_dims):
  proc ggml_n_dims*(tensor: ptr struct_ggml_tensor_520094173): cint {.cdecl,
      importc: "ggml_n_dims".}
else:
  static :
    hint("Declaration of " & "ggml_n_dims" & " already exists, not redeclaring")
when not declared(ggml_is_contiguous):
  proc ggml_is_contiguous*(tensor: ptr struct_ggml_tensor_520094173): bool {.
      cdecl, importc: "ggml_is_contiguous".}
else:
  static :
    hint("Declaration of " & "ggml_is_contiguous" &
        " already exists, not redeclaring")
when not declared(ggml_is_contiguous_0):
  proc ggml_is_contiguous_0*(tensor: ptr struct_ggml_tensor_520094173): bool {.
      cdecl, importc: "ggml_is_contiguous_0".}
else:
  static :
    hint("Declaration of " & "ggml_is_contiguous_0" &
        " already exists, not redeclaring")
when not declared(ggml_is_contiguous_1):
  proc ggml_is_contiguous_1*(tensor: ptr struct_ggml_tensor_520094173): bool {.
      cdecl, importc: "ggml_is_contiguous_1".}
else:
  static :
    hint("Declaration of " & "ggml_is_contiguous_1" &
        " already exists, not redeclaring")
when not declared(ggml_is_contiguous_2):
  proc ggml_is_contiguous_2*(tensor: ptr struct_ggml_tensor_520094173): bool {.
      cdecl, importc: "ggml_is_contiguous_2".}
else:
  static :
    hint("Declaration of " & "ggml_is_contiguous_2" &
        " already exists, not redeclaring")
when not declared(ggml_are_same_shape):
  proc ggml_are_same_shape*(t0: ptr struct_ggml_tensor_520094173;
                            t1: ptr struct_ggml_tensor_520094173): bool {.cdecl,
      importc: "ggml_are_same_shape".}
else:
  static :
    hint("Declaration of " & "ggml_are_same_shape" &
        " already exists, not redeclaring")
when not declared(ggml_are_same_stride):
  proc ggml_are_same_stride*(t0: ptr struct_ggml_tensor_520094173;
                             t1: ptr struct_ggml_tensor_520094173): bool {.
      cdecl, importc: "ggml_are_same_stride".}
else:
  static :
    hint("Declaration of " & "ggml_are_same_stride" &
        " already exists, not redeclaring")
when not declared(ggml_can_repeat):
  proc ggml_can_repeat*(t0: ptr struct_ggml_tensor_520094173;
                        t1: ptr struct_ggml_tensor_520094173): bool {.cdecl,
      importc: "ggml_can_repeat".}
else:
  static :
    hint("Declaration of " & "ggml_can_repeat" &
        " already exists, not redeclaring")
when not declared(ggml_tensor_overhead):
  proc ggml_tensor_overhead*(): csize_t {.cdecl, importc: "ggml_tensor_overhead".}
else:
  static :
    hint("Declaration of " & "ggml_tensor_overhead" &
        " already exists, not redeclaring")
when not declared(ggml_validate_row_data):
  proc ggml_validate_row_data*(type_arg: enum_ggml_type_520094153;
                               data: pointer; nbytes: csize_t): bool {.cdecl,
      importc: "ggml_validate_row_data".}
else:
  static :
    hint("Declaration of " & "ggml_validate_row_data" &
        " already exists, not redeclaring")
when not declared(ggml_init):
  proc ggml_init*(params: struct_ggml_init_params_520094171): ptr struct_ggml_context {.
      cdecl, importc: "ggml_init".}
else:
  static :
    hint("Declaration of " & "ggml_init" & " already exists, not redeclaring")
when not declared(ggml_reset):
  proc ggml_reset*(ctx: ptr struct_ggml_context): void {.cdecl,
      importc: "ggml_reset".}
else:
  static :
    hint("Declaration of " & "ggml_reset" & " already exists, not redeclaring")
when not declared(ggml_free):
  proc ggml_free*(ctx: ptr struct_ggml_context): void {.cdecl,
      importc: "ggml_free".}
else:
  static :
    hint("Declaration of " & "ggml_free" & " already exists, not redeclaring")
when not declared(ggml_used_mem):
  proc ggml_used_mem*(ctx: ptr struct_ggml_context): csize_t {.cdecl,
      importc: "ggml_used_mem".}
else:
  static :
    hint("Declaration of " & "ggml_used_mem" &
        " already exists, not redeclaring")
when not declared(ggml_get_no_alloc):
  proc ggml_get_no_alloc*(ctx: ptr struct_ggml_context): bool {.cdecl,
      importc: "ggml_get_no_alloc".}
else:
  static :
    hint("Declaration of " & "ggml_get_no_alloc" &
        " already exists, not redeclaring")
when not declared(ggml_set_no_alloc):
  proc ggml_set_no_alloc*(ctx: ptr struct_ggml_context; no_alloc: bool): void {.
      cdecl, importc: "ggml_set_no_alloc".}
else:
  static :
    hint("Declaration of " & "ggml_set_no_alloc" &
        " already exists, not redeclaring")
when not declared(ggml_get_mem_buffer):
  proc ggml_get_mem_buffer*(ctx: ptr struct_ggml_context): pointer {.cdecl,
      importc: "ggml_get_mem_buffer".}
else:
  static :
    hint("Declaration of " & "ggml_get_mem_buffer" &
        " already exists, not redeclaring")
when not declared(ggml_get_mem_size):
  proc ggml_get_mem_size*(ctx: ptr struct_ggml_context): csize_t {.cdecl,
      importc: "ggml_get_mem_size".}
else:
  static :
    hint("Declaration of " & "ggml_get_mem_size" &
        " already exists, not redeclaring")
when not declared(ggml_get_max_tensor_size):
  proc ggml_get_max_tensor_size*(ctx: ptr struct_ggml_context): csize_t {.cdecl,
      importc: "ggml_get_max_tensor_size".}
else:
  static :
    hint("Declaration of " & "ggml_get_max_tensor_size" &
        " already exists, not redeclaring")
when not declared(ggml_new_tensor):
  proc ggml_new_tensor*(ctx: ptr struct_ggml_context; type_arg: enum_ggml_type_520094153;
                        n_dims: cint; ne: ptr int64): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_new_tensor".}
else:
  static :
    hint("Declaration of " & "ggml_new_tensor" &
        " already exists, not redeclaring")
when not declared(ggml_new_tensor_1d):
  proc ggml_new_tensor_1d*(ctx: ptr struct_ggml_context;
                           type_arg: enum_ggml_type_520094153; ne0: int64): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_new_tensor_1d".}
else:
  static :
    hint("Declaration of " & "ggml_new_tensor_1d" &
        " already exists, not redeclaring")
when not declared(ggml_new_tensor_2d):
  proc ggml_new_tensor_2d*(ctx: ptr struct_ggml_context;
                           type_arg: enum_ggml_type_520094153; ne0: int64;
                           ne1: int64): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_new_tensor_2d".}
else:
  static :
    hint("Declaration of " & "ggml_new_tensor_2d" &
        " already exists, not redeclaring")
when not declared(ggml_new_tensor_3d):
  proc ggml_new_tensor_3d*(ctx: ptr struct_ggml_context;
                           type_arg: enum_ggml_type_520094153; ne0: int64;
                           ne1: int64; ne2: int64): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_new_tensor_3d".}
else:
  static :
    hint("Declaration of " & "ggml_new_tensor_3d" &
        " already exists, not redeclaring")
when not declared(ggml_new_tensor_4d):
  proc ggml_new_tensor_4d*(ctx: ptr struct_ggml_context;
                           type_arg: enum_ggml_type_520094153; ne0: int64;
                           ne1: int64; ne2: int64; ne3: int64): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_new_tensor_4d".}
else:
  static :
    hint("Declaration of " & "ggml_new_tensor_4d" &
        " already exists, not redeclaring")
when not declared(ggml_new_buffer):
  proc ggml_new_buffer*(ctx: ptr struct_ggml_context; nbytes: csize_t): pointer {.
      cdecl, importc: "ggml_new_buffer".}
else:
  static :
    hint("Declaration of " & "ggml_new_buffer" &
        " already exists, not redeclaring")
when not declared(ggml_dup_tensor):
  proc ggml_dup_tensor*(ctx: ptr struct_ggml_context;
                        src: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_dup_tensor".}
else:
  static :
    hint("Declaration of " & "ggml_dup_tensor" &
        " already exists, not redeclaring")
when not declared(ggml_view_tensor):
  proc ggml_view_tensor*(ctx: ptr struct_ggml_context;
                         src: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_view_tensor".}
else:
  static :
    hint("Declaration of " & "ggml_view_tensor" &
        " already exists, not redeclaring")
when not declared(ggml_get_first_tensor):
  proc ggml_get_first_tensor*(ctx: ptr struct_ggml_context): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_get_first_tensor".}
else:
  static :
    hint("Declaration of " & "ggml_get_first_tensor" &
        " already exists, not redeclaring")
when not declared(ggml_get_next_tensor):
  proc ggml_get_next_tensor*(ctx: ptr struct_ggml_context;
                             tensor: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_get_next_tensor".}
else:
  static :
    hint("Declaration of " & "ggml_get_next_tensor" &
        " already exists, not redeclaring")
when not declared(ggml_get_tensor):
  proc ggml_get_tensor*(ctx: ptr struct_ggml_context; name: cstring): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_get_tensor".}
else:
  static :
    hint("Declaration of " & "ggml_get_tensor" &
        " already exists, not redeclaring")
when not declared(ggml_unravel_index):
  proc ggml_unravel_index*(tensor: ptr struct_ggml_tensor_520094173; i: int64;
                           i0: ptr int64; i1: ptr int64; i2: ptr int64;
                           i3: ptr int64): void {.cdecl,
      importc: "ggml_unravel_index".}
else:
  static :
    hint("Declaration of " & "ggml_unravel_index" &
        " already exists, not redeclaring")
when not declared(ggml_get_unary_op):
  proc ggml_get_unary_op*(tensor: ptr struct_ggml_tensor_520094173): enum_ggml_unary_op_520094163 {.
      cdecl, importc: "ggml_get_unary_op".}
else:
  static :
    hint("Declaration of " & "ggml_get_unary_op" &
        " already exists, not redeclaring")
when not declared(ggml_get_data):
  proc ggml_get_data*(tensor: ptr struct_ggml_tensor_520094173): pointer {.
      cdecl, importc: "ggml_get_data".}
else:
  static :
    hint("Declaration of " & "ggml_get_data" &
        " already exists, not redeclaring")
when not declared(ggml_get_data_f32):
  proc ggml_get_data_f32*(tensor: ptr struct_ggml_tensor_520094173): ptr cfloat {.
      cdecl, importc: "ggml_get_data_f32".}
else:
  static :
    hint("Declaration of " & "ggml_get_data_f32" &
        " already exists, not redeclaring")
when not declared(ggml_get_name):
  proc ggml_get_name*(tensor: ptr struct_ggml_tensor_520094173): cstring {.
      cdecl, importc: "ggml_get_name".}
else:
  static :
    hint("Declaration of " & "ggml_get_name" &
        " already exists, not redeclaring")
when not declared(ggml_set_name):
  proc ggml_set_name*(tensor: ptr struct_ggml_tensor_520094173; name: cstring): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_set_name".}
else:
  static :
    hint("Declaration of " & "ggml_set_name" &
        " already exists, not redeclaring")
when not declared(ggml_format_name):
  proc ggml_format_name*(tensor: ptr struct_ggml_tensor_520094173; fmt: cstring): ptr struct_ggml_tensor_520094173 {.
      cdecl, varargs, importc: "ggml_format_name".}
else:
  static :
    hint("Declaration of " & "ggml_format_name" &
        " already exists, not redeclaring")
when not declared(ggml_set_input):
  proc ggml_set_input*(tensor: ptr struct_ggml_tensor_520094173): void {.cdecl,
      importc: "ggml_set_input".}
else:
  static :
    hint("Declaration of " & "ggml_set_input" &
        " already exists, not redeclaring")
when not declared(ggml_set_output):
  proc ggml_set_output*(tensor: ptr struct_ggml_tensor_520094173): void {.cdecl,
      importc: "ggml_set_output".}
else:
  static :
    hint("Declaration of " & "ggml_set_output" &
        " already exists, not redeclaring")
when not declared(ggml_set_param):
  proc ggml_set_param*(ctx: ptr struct_ggml_context;
                       tensor: ptr struct_ggml_tensor_520094173): void {.cdecl,
      importc: "ggml_set_param".}
else:
  static :
    hint("Declaration of " & "ggml_set_param" &
        " already exists, not redeclaring")
when not declared(ggml_set_loss):
  proc ggml_set_loss*(tensor: ptr struct_ggml_tensor_520094173): void {.cdecl,
      importc: "ggml_set_loss".}
else:
  static :
    hint("Declaration of " & "ggml_set_loss" &
        " already exists, not redeclaring")
when not declared(ggml_dup):
  proc ggml_dup*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_dup".}
else:
  static :
    hint("Declaration of " & "ggml_dup" & " already exists, not redeclaring")
when not declared(ggml_dup_inplace):
  proc ggml_dup_inplace*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_dup_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_dup_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_add):
  proc ggml_add*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                 b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_add".}
else:
  static :
    hint("Declaration of " & "ggml_add" & " already exists, not redeclaring")
when not declared(ggml_add_inplace):
  proc ggml_add_inplace*(ctx: ptr struct_ggml_context;
                         a: ptr struct_ggml_tensor_520094173;
                         b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_add_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_add_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_add_cast):
  proc ggml_add_cast*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                      b: ptr struct_ggml_tensor_520094173;
                      type_arg: enum_ggml_type_520094153): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_add_cast".}
else:
  static :
    hint("Declaration of " & "ggml_add_cast" &
        " already exists, not redeclaring")
when not declared(ggml_add1):
  proc ggml_add1*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                  b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_add1".}
else:
  static :
    hint("Declaration of " & "ggml_add1" & " already exists, not redeclaring")
when not declared(ggml_add1_inplace):
  proc ggml_add1_inplace*(ctx: ptr struct_ggml_context;
                          a: ptr struct_ggml_tensor_520094173;
                          b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_add1_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_add1_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_acc):
  proc ggml_acc*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                 b: ptr struct_ggml_tensor_520094173; nb1: csize_t;
                 nb2: csize_t; nb3: csize_t; offset: csize_t): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_acc".}
else:
  static :
    hint("Declaration of " & "ggml_acc" & " already exists, not redeclaring")
when not declared(ggml_acc_inplace):
  proc ggml_acc_inplace*(ctx: ptr struct_ggml_context;
                         a: ptr struct_ggml_tensor_520094173;
                         b: ptr struct_ggml_tensor_520094173; nb1: csize_t;
                         nb2: csize_t; nb3: csize_t; offset: csize_t): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_acc_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_acc_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_sub):
  proc ggml_sub*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                 b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_sub".}
else:
  static :
    hint("Declaration of " & "ggml_sub" & " already exists, not redeclaring")
when not declared(ggml_sub_inplace):
  proc ggml_sub_inplace*(ctx: ptr struct_ggml_context;
                         a: ptr struct_ggml_tensor_520094173;
                         b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_sub_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_sub_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_mul):
  proc ggml_mul*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                 b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_mul".}
else:
  static :
    hint("Declaration of " & "ggml_mul" & " already exists, not redeclaring")
when not declared(ggml_mul_inplace):
  proc ggml_mul_inplace*(ctx: ptr struct_ggml_context;
                         a: ptr struct_ggml_tensor_520094173;
                         b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_mul_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_mul_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_div):
  proc ggml_div*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                 b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_div".}
else:
  static :
    hint("Declaration of " & "ggml_div" & " already exists, not redeclaring")
when not declared(ggml_div_inplace):
  proc ggml_div_inplace*(ctx: ptr struct_ggml_context;
                         a: ptr struct_ggml_tensor_520094173;
                         b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_div_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_div_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_sqr):
  proc ggml_sqr*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_sqr".}
else:
  static :
    hint("Declaration of " & "ggml_sqr" & " already exists, not redeclaring")
when not declared(ggml_sqr_inplace):
  proc ggml_sqr_inplace*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_sqr_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_sqr_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_sqrt):
  proc ggml_sqrt*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_sqrt".}
else:
  static :
    hint("Declaration of " & "ggml_sqrt" & " already exists, not redeclaring")
when not declared(ggml_sqrt_inplace):
  proc ggml_sqrt_inplace*(ctx: ptr struct_ggml_context;
                          a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_sqrt_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_sqrt_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_log):
  proc ggml_log*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_log".}
else:
  static :
    hint("Declaration of " & "ggml_log" & " already exists, not redeclaring")
when not declared(ggml_log_inplace):
  proc ggml_log_inplace*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_log_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_log_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_sin):
  proc ggml_sin*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_sin".}
else:
  static :
    hint("Declaration of " & "ggml_sin" & " already exists, not redeclaring")
when not declared(ggml_sin_inplace):
  proc ggml_sin_inplace*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_sin_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_sin_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_cos):
  proc ggml_cos*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_cos".}
else:
  static :
    hint("Declaration of " & "ggml_cos" & " already exists, not redeclaring")
when not declared(ggml_cos_inplace):
  proc ggml_cos_inplace*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_cos_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_cos_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_sum):
  proc ggml_sum*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_sum".}
else:
  static :
    hint("Declaration of " & "ggml_sum" & " already exists, not redeclaring")
when not declared(ggml_sum_rows):
  proc ggml_sum_rows*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_sum_rows".}
else:
  static :
    hint("Declaration of " & "ggml_sum_rows" &
        " already exists, not redeclaring")
when not declared(ggml_mean):
  proc ggml_mean*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_mean".}
else:
  static :
    hint("Declaration of " & "ggml_mean" & " already exists, not redeclaring")
when not declared(ggml_argmax):
  proc ggml_argmax*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_argmax".}
else:
  static :
    hint("Declaration of " & "ggml_argmax" & " already exists, not redeclaring")
when not declared(ggml_count_equal):
  proc ggml_count_equal*(ctx: ptr struct_ggml_context;
                         a: ptr struct_ggml_tensor_520094173;
                         b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_count_equal".}
else:
  static :
    hint("Declaration of " & "ggml_count_equal" &
        " already exists, not redeclaring")
when not declared(ggml_repeat):
  proc ggml_repeat*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                    b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_repeat".}
else:
  static :
    hint("Declaration of " & "ggml_repeat" & " already exists, not redeclaring")
when not declared(ggml_repeat_back):
  proc ggml_repeat_back*(ctx: ptr struct_ggml_context;
                         a: ptr struct_ggml_tensor_520094173;
                         b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_repeat_back".}
else:
  static :
    hint("Declaration of " & "ggml_repeat_back" &
        " already exists, not redeclaring")
when not declared(ggml_concat):
  proc ggml_concat*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                    b: ptr struct_ggml_tensor_520094173; dim: cint): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_concat".}
else:
  static :
    hint("Declaration of " & "ggml_concat" & " already exists, not redeclaring")
when not declared(ggml_abs):
  proc ggml_abs*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_abs".}
else:
  static :
    hint("Declaration of " & "ggml_abs" & " already exists, not redeclaring")
when not declared(ggml_abs_inplace):
  proc ggml_abs_inplace*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_abs_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_abs_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_sgn):
  proc ggml_sgn*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_sgn".}
else:
  static :
    hint("Declaration of " & "ggml_sgn" & " already exists, not redeclaring")
when not declared(ggml_sgn_inplace):
  proc ggml_sgn_inplace*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_sgn_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_sgn_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_neg):
  proc ggml_neg*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_neg".}
else:
  static :
    hint("Declaration of " & "ggml_neg" & " already exists, not redeclaring")
when not declared(ggml_neg_inplace):
  proc ggml_neg_inplace*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_neg_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_neg_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_step):
  proc ggml_step*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_step".}
else:
  static :
    hint("Declaration of " & "ggml_step" & " already exists, not redeclaring")
when not declared(ggml_step_inplace):
  proc ggml_step_inplace*(ctx: ptr struct_ggml_context;
                          a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_step_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_step_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_tanh):
  proc ggml_tanh*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_tanh".}
else:
  static :
    hint("Declaration of " & "ggml_tanh" & " already exists, not redeclaring")
when not declared(ggml_tanh_inplace):
  proc ggml_tanh_inplace*(ctx: ptr struct_ggml_context;
                          a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_tanh_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_tanh_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_elu):
  proc ggml_elu*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_elu".}
else:
  static :
    hint("Declaration of " & "ggml_elu" & " already exists, not redeclaring")
when not declared(ggml_elu_inplace):
  proc ggml_elu_inplace*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_elu_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_elu_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_relu):
  proc ggml_relu*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_relu".}
else:
  static :
    hint("Declaration of " & "ggml_relu" & " already exists, not redeclaring")
when not declared(ggml_leaky_relu):
  proc ggml_leaky_relu*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                        negative_slope: cfloat; inplace: bool): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_leaky_relu".}
else:
  static :
    hint("Declaration of " & "ggml_leaky_relu" &
        " already exists, not redeclaring")
when not declared(ggml_relu_inplace):
  proc ggml_relu_inplace*(ctx: ptr struct_ggml_context;
                          a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_relu_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_relu_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_sigmoid):
  proc ggml_sigmoid*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_sigmoid".}
else:
  static :
    hint("Declaration of " & "ggml_sigmoid" & " already exists, not redeclaring")
when not declared(ggml_sigmoid_inplace):
  proc ggml_sigmoid_inplace*(ctx: ptr struct_ggml_context;
                             a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_sigmoid_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_sigmoid_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_gelu):
  proc ggml_gelu*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_gelu".}
else:
  static :
    hint("Declaration of " & "ggml_gelu" & " already exists, not redeclaring")
when not declared(ggml_gelu_inplace):
  proc ggml_gelu_inplace*(ctx: ptr struct_ggml_context;
                          a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_gelu_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_gelu_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_gelu_quick):
  proc ggml_gelu_quick*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_gelu_quick".}
else:
  static :
    hint("Declaration of " & "ggml_gelu_quick" &
        " already exists, not redeclaring")
when not declared(ggml_gelu_quick_inplace):
  proc ggml_gelu_quick_inplace*(ctx: ptr struct_ggml_context;
                                a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_gelu_quick_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_gelu_quick_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_silu):
  proc ggml_silu*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_silu".}
else:
  static :
    hint("Declaration of " & "ggml_silu" & " already exists, not redeclaring")
when not declared(ggml_silu_inplace):
  proc ggml_silu_inplace*(ctx: ptr struct_ggml_context;
                          a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_silu_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_silu_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_silu_back):
  proc ggml_silu_back*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                       b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_silu_back".}
else:
  static :
    hint("Declaration of " & "ggml_silu_back" &
        " already exists, not redeclaring")
when not declared(ggml_hardswish):
  proc ggml_hardswish*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_hardswish".}
else:
  static :
    hint("Declaration of " & "ggml_hardswish" &
        " already exists, not redeclaring")
when not declared(ggml_hardsigmoid):
  proc ggml_hardsigmoid*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_hardsigmoid".}
else:
  static :
    hint("Declaration of " & "ggml_hardsigmoid" &
        " already exists, not redeclaring")
when not declared(ggml_exp):
  proc ggml_exp*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_exp".}
else:
  static :
    hint("Declaration of " & "ggml_exp" & " already exists, not redeclaring")
when not declared(ggml_exp_inplace):
  proc ggml_exp_inplace*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_exp_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_exp_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_norm):
  proc ggml_norm*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                  eps: cfloat): ptr struct_ggml_tensor_520094173 {.cdecl,
      importc: "ggml_norm".}
else:
  static :
    hint("Declaration of " & "ggml_norm" & " already exists, not redeclaring")
when not declared(ggml_norm_inplace):
  proc ggml_norm_inplace*(ctx: ptr struct_ggml_context;
                          a: ptr struct_ggml_tensor_520094173; eps: cfloat): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_norm_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_norm_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_rms_norm):
  proc ggml_rms_norm*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                      eps: cfloat): ptr struct_ggml_tensor_520094173 {.cdecl,
      importc: "ggml_rms_norm".}
else:
  static :
    hint("Declaration of " & "ggml_rms_norm" &
        " already exists, not redeclaring")
when not declared(ggml_rms_norm_inplace):
  proc ggml_rms_norm_inplace*(ctx: ptr struct_ggml_context;
                              a: ptr struct_ggml_tensor_520094173; eps: cfloat): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_rms_norm_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_rms_norm_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_group_norm):
  proc ggml_group_norm*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                        n_groups: cint; eps: cfloat): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_group_norm".}
else:
  static :
    hint("Declaration of " & "ggml_group_norm" &
        " already exists, not redeclaring")
when not declared(ggml_group_norm_inplace):
  proc ggml_group_norm_inplace*(ctx: ptr struct_ggml_context;
                                a: ptr struct_ggml_tensor_520094173;
                                n_groups: cint; eps: cfloat): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_group_norm_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_group_norm_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_rms_norm_back):
  proc ggml_rms_norm_back*(ctx: ptr struct_ggml_context;
                           a: ptr struct_ggml_tensor_520094173;
                           b: ptr struct_ggml_tensor_520094173; eps: cfloat): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_rms_norm_back".}
else:
  static :
    hint("Declaration of " & "ggml_rms_norm_back" &
        " already exists, not redeclaring")
when not declared(ggml_mul_mat):
  proc ggml_mul_mat*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                     b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_mul_mat".}
else:
  static :
    hint("Declaration of " & "ggml_mul_mat" & " already exists, not redeclaring")
when not declared(ggml_mul_mat_set_prec):
  proc ggml_mul_mat_set_prec*(a: ptr struct_ggml_tensor_520094173;
                              prec: enum_ggml_prec_520094155): void {.cdecl,
      importc: "ggml_mul_mat_set_prec".}
else:
  static :
    hint("Declaration of " & "ggml_mul_mat_set_prec" &
        " already exists, not redeclaring")
when not declared(ggml_mul_mat_id):
  proc ggml_mul_mat_id*(ctx: ptr struct_ggml_context;
                        as_arg: ptr struct_ggml_tensor_520094173;
                        b: ptr struct_ggml_tensor_520094173;
                        ids: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_mul_mat_id".}
else:
  static :
    hint("Declaration of " & "ggml_mul_mat_id" &
        " already exists, not redeclaring")
when not declared(ggml_out_prod):
  proc ggml_out_prod*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                      b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_out_prod".}
else:
  static :
    hint("Declaration of " & "ggml_out_prod" &
        " already exists, not redeclaring")
when not declared(ggml_scale):
  proc ggml_scale*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                   s: cfloat): ptr struct_ggml_tensor_520094173 {.cdecl,
      importc: "ggml_scale".}
else:
  static :
    hint("Declaration of " & "ggml_scale" & " already exists, not redeclaring")
when not declared(ggml_scale_inplace):
  proc ggml_scale_inplace*(ctx: ptr struct_ggml_context;
                           a: ptr struct_ggml_tensor_520094173; s: cfloat): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_scale_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_scale_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_set):
  proc ggml_set*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                 b: ptr struct_ggml_tensor_520094173; nb1: csize_t;
                 nb2: csize_t; nb3: csize_t; offset: csize_t): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_set".}
else:
  static :
    hint("Declaration of " & "ggml_set" & " already exists, not redeclaring")
when not declared(ggml_set_inplace):
  proc ggml_set_inplace*(ctx: ptr struct_ggml_context;
                         a: ptr struct_ggml_tensor_520094173;
                         b: ptr struct_ggml_tensor_520094173; nb1: csize_t;
                         nb2: csize_t; nb3: csize_t; offset: csize_t): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_set_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_set_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_set_1d):
  proc ggml_set_1d*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                    b: ptr struct_ggml_tensor_520094173; offset: csize_t): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_set_1d".}
else:
  static :
    hint("Declaration of " & "ggml_set_1d" & " already exists, not redeclaring")
when not declared(ggml_set_1d_inplace):
  proc ggml_set_1d_inplace*(ctx: ptr struct_ggml_context;
                            a: ptr struct_ggml_tensor_520094173;
                            b: ptr struct_ggml_tensor_520094173; offset: csize_t): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_set_1d_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_set_1d_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_set_2d):
  proc ggml_set_2d*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                    b: ptr struct_ggml_tensor_520094173; nb1: csize_t;
                    offset: csize_t): ptr struct_ggml_tensor_520094173 {.cdecl,
      importc: "ggml_set_2d".}
else:
  static :
    hint("Declaration of " & "ggml_set_2d" & " already exists, not redeclaring")
when not declared(ggml_set_2d_inplace):
  proc ggml_set_2d_inplace*(ctx: ptr struct_ggml_context;
                            a: ptr struct_ggml_tensor_520094173;
                            b: ptr struct_ggml_tensor_520094173; nb1: csize_t;
                            offset: csize_t): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_set_2d_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_set_2d_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_cpy):
  proc ggml_cpy*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                 b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_cpy".}
else:
  static :
    hint("Declaration of " & "ggml_cpy" & " already exists, not redeclaring")
when not declared(ggml_cast):
  proc ggml_cast*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                  type_arg: enum_ggml_type_520094153): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_cast".}
else:
  static :
    hint("Declaration of " & "ggml_cast" & " already exists, not redeclaring")
when not declared(ggml_cont):
  proc ggml_cont*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_cont".}
else:
  static :
    hint("Declaration of " & "ggml_cont" & " already exists, not redeclaring")
when not declared(ggml_cont_1d):
  proc ggml_cont_1d*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                     ne0: int64): ptr struct_ggml_tensor_520094173 {.cdecl,
      importc: "ggml_cont_1d".}
else:
  static :
    hint("Declaration of " & "ggml_cont_1d" & " already exists, not redeclaring")
when not declared(ggml_cont_2d):
  proc ggml_cont_2d*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                     ne0: int64; ne1: int64): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_cont_2d".}
else:
  static :
    hint("Declaration of " & "ggml_cont_2d" & " already exists, not redeclaring")
when not declared(ggml_cont_3d):
  proc ggml_cont_3d*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                     ne0: int64; ne1: int64; ne2: int64): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_cont_3d".}
else:
  static :
    hint("Declaration of " & "ggml_cont_3d" & " already exists, not redeclaring")
when not declared(ggml_cont_4d):
  proc ggml_cont_4d*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                     ne0: int64; ne1: int64; ne2: int64; ne3: int64): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_cont_4d".}
else:
  static :
    hint("Declaration of " & "ggml_cont_4d" & " already exists, not redeclaring")
when not declared(ggml_reshape):
  proc ggml_reshape*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                     b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_reshape".}
else:
  static :
    hint("Declaration of " & "ggml_reshape" & " already exists, not redeclaring")
when not declared(ggml_reshape_1d):
  proc ggml_reshape_1d*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                        ne0: int64): ptr struct_ggml_tensor_520094173 {.cdecl,
      importc: "ggml_reshape_1d".}
else:
  static :
    hint("Declaration of " & "ggml_reshape_1d" &
        " already exists, not redeclaring")
when not declared(ggml_reshape_2d):
  proc ggml_reshape_2d*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                        ne0: int64; ne1: int64): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_reshape_2d".}
else:
  static :
    hint("Declaration of " & "ggml_reshape_2d" &
        " already exists, not redeclaring")
when not declared(ggml_reshape_3d):
  proc ggml_reshape_3d*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                        ne0: int64; ne1: int64; ne2: int64): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_reshape_3d".}
else:
  static :
    hint("Declaration of " & "ggml_reshape_3d" &
        " already exists, not redeclaring")
when not declared(ggml_reshape_4d):
  proc ggml_reshape_4d*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                        ne0: int64; ne1: int64; ne2: int64; ne3: int64): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_reshape_4d".}
else:
  static :
    hint("Declaration of " & "ggml_reshape_4d" &
        " already exists, not redeclaring")
when not declared(ggml_view_1d):
  proc ggml_view_1d*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                     ne0: int64; offset: csize_t): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_view_1d".}
else:
  static :
    hint("Declaration of " & "ggml_view_1d" & " already exists, not redeclaring")
when not declared(ggml_view_2d):
  proc ggml_view_2d*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                     ne0: int64; ne1: int64; nb1: csize_t; offset: csize_t): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_view_2d".}
else:
  static :
    hint("Declaration of " & "ggml_view_2d" & " already exists, not redeclaring")
when not declared(ggml_view_3d):
  proc ggml_view_3d*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                     ne0: int64; ne1: int64; ne2: int64; nb1: csize_t;
                     nb2: csize_t; offset: csize_t): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_view_3d".}
else:
  static :
    hint("Declaration of " & "ggml_view_3d" & " already exists, not redeclaring")
when not declared(ggml_view_4d):
  proc ggml_view_4d*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                     ne0: int64; ne1: int64; ne2: int64; ne3: int64;
                     nb1: csize_t; nb2: csize_t; nb3: csize_t; offset: csize_t): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_view_4d".}
else:
  static :
    hint("Declaration of " & "ggml_view_4d" & " already exists, not redeclaring")
when not declared(ggml_permute):
  proc ggml_permute*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                     axis0: cint; axis1: cint; axis2: cint; axis3: cint): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_permute".}
else:
  static :
    hint("Declaration of " & "ggml_permute" & " already exists, not redeclaring")
when not declared(ggml_transpose):
  proc ggml_transpose*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_transpose".}
else:
  static :
    hint("Declaration of " & "ggml_transpose" &
        " already exists, not redeclaring")
when not declared(ggml_get_rows):
  proc ggml_get_rows*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                      b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_get_rows".}
else:
  static :
    hint("Declaration of " & "ggml_get_rows" &
        " already exists, not redeclaring")
when not declared(ggml_get_rows_back):
  proc ggml_get_rows_back*(ctx: ptr struct_ggml_context;
                           a: ptr struct_ggml_tensor_520094173;
                           b: ptr struct_ggml_tensor_520094173;
                           c: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_get_rows_back".}
else:
  static :
    hint("Declaration of " & "ggml_get_rows_back" &
        " already exists, not redeclaring")
when not declared(ggml_diag):
  proc ggml_diag*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_diag".}
else:
  static :
    hint("Declaration of " & "ggml_diag" & " already exists, not redeclaring")
when not declared(ggml_diag_mask_inf):
  proc ggml_diag_mask_inf*(ctx: ptr struct_ggml_context;
                           a: ptr struct_ggml_tensor_520094173; n_past: cint): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_diag_mask_inf".}
else:
  static :
    hint("Declaration of " & "ggml_diag_mask_inf" &
        " already exists, not redeclaring")
when not declared(ggml_diag_mask_inf_inplace):
  proc ggml_diag_mask_inf_inplace*(ctx: ptr struct_ggml_context;
                                   a: ptr struct_ggml_tensor_520094173;
                                   n_past: cint): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_diag_mask_inf_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_diag_mask_inf_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_diag_mask_zero):
  proc ggml_diag_mask_zero*(ctx: ptr struct_ggml_context;
                            a: ptr struct_ggml_tensor_520094173; n_past: cint): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_diag_mask_zero".}
else:
  static :
    hint("Declaration of " & "ggml_diag_mask_zero" &
        " already exists, not redeclaring")
when not declared(ggml_diag_mask_zero_inplace):
  proc ggml_diag_mask_zero_inplace*(ctx: ptr struct_ggml_context;
                                    a: ptr struct_ggml_tensor_520094173;
                                    n_past: cint): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_diag_mask_zero_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_diag_mask_zero_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_soft_max):
  proc ggml_soft_max*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_soft_max".}
else:
  static :
    hint("Declaration of " & "ggml_soft_max" &
        " already exists, not redeclaring")
when not declared(ggml_soft_max_inplace):
  proc ggml_soft_max_inplace*(ctx: ptr struct_ggml_context;
                              a: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_soft_max_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_soft_max_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_soft_max_ext):
  proc ggml_soft_max_ext*(ctx: ptr struct_ggml_context;
                          a: ptr struct_ggml_tensor_520094173;
                          mask: ptr struct_ggml_tensor_520094173; scale: cfloat;
                          max_bias: cfloat): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_soft_max_ext".}
else:
  static :
    hint("Declaration of " & "ggml_soft_max_ext" &
        " already exists, not redeclaring")
when not declared(ggml_soft_max_back):
  proc ggml_soft_max_back*(ctx: ptr struct_ggml_context;
                           a: ptr struct_ggml_tensor_520094173;
                           b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_soft_max_back".}
else:
  static :
    hint("Declaration of " & "ggml_soft_max_back" &
        " already exists, not redeclaring")
when not declared(ggml_soft_max_back_inplace):
  proc ggml_soft_max_back_inplace*(ctx: ptr struct_ggml_context;
                                   a: ptr struct_ggml_tensor_520094173;
                                   b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_soft_max_back_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_soft_max_back_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_rope):
  proc ggml_rope*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                  b: ptr struct_ggml_tensor_520094173; n_dims: cint; mode: cint): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_rope".}
else:
  static :
    hint("Declaration of " & "ggml_rope" & " already exists, not redeclaring")
when not declared(ggml_rope_inplace):
  proc ggml_rope_inplace*(ctx: ptr struct_ggml_context;
                          a: ptr struct_ggml_tensor_520094173;
                          b: ptr struct_ggml_tensor_520094173; n_dims: cint;
                          mode: cint): ptr struct_ggml_tensor_520094173 {.cdecl,
      importc: "ggml_rope_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_rope_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_rope_ext):
  proc ggml_rope_ext*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                      b: ptr struct_ggml_tensor_520094173;
                      c: ptr struct_ggml_tensor_520094173; n_dims: cint;
                      mode: cint; n_ctx_orig: cint; freq_base: cfloat;
                      freq_scale: cfloat; ext_factor: cfloat;
                      attn_factor: cfloat; beta_fast: cfloat; beta_slow: cfloat): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_rope_ext".}
else:
  static :
    hint("Declaration of " & "ggml_rope_ext" &
        " already exists, not redeclaring")
when not declared(ggml_rope_ext_inplace):
  proc ggml_rope_ext_inplace*(ctx: ptr struct_ggml_context;
                              a: ptr struct_ggml_tensor_520094173;
                              b: ptr struct_ggml_tensor_520094173;
                              c: ptr struct_ggml_tensor_520094173; n_dims: cint;
                              mode: cint; n_ctx_orig: cint; freq_base: cfloat;
                              freq_scale: cfloat; ext_factor: cfloat;
                              attn_factor: cfloat; beta_fast: cfloat;
                              beta_slow: cfloat): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_rope_ext_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_rope_ext_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_rope_custom):
  proc ggml_rope_custom*(ctx: ptr struct_ggml_context;
                         a: ptr struct_ggml_tensor_520094173;
                         b: ptr struct_ggml_tensor_520094173; n_dims: cint;
                         mode: cint; n_ctx_orig: cint; freq_base: cfloat;
                         freq_scale: cfloat; ext_factor: cfloat;
                         attn_factor: cfloat; beta_fast: cfloat;
                         beta_slow: cfloat): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_rope_custom".}
else:
  static :
    hint("Declaration of " & "ggml_rope_custom" &
        " already exists, not redeclaring")
when not declared(ggml_rope_custom_inplace):
  proc ggml_rope_custom_inplace*(ctx: ptr struct_ggml_context;
                                 a: ptr struct_ggml_tensor_520094173;
                                 b: ptr struct_ggml_tensor_520094173;
                                 n_dims: cint; mode: cint; n_ctx_orig: cint;
                                 freq_base: cfloat; freq_scale: cfloat;
                                 ext_factor: cfloat; attn_factor: cfloat;
                                 beta_fast: cfloat; beta_slow: cfloat): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_rope_custom_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_rope_custom_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_rope_yarn_corr_dims):
  proc ggml_rope_yarn_corr_dims*(n_dims: cint; n_ctx_orig: cint;
                                 freq_base: cfloat; beta_fast: cfloat;
                                 beta_slow: cfloat; dims: array[2'i64, cfloat]): void {.
      cdecl, importc: "ggml_rope_yarn_corr_dims".}
else:
  static :
    hint("Declaration of " & "ggml_rope_yarn_corr_dims" &
        " already exists, not redeclaring")
when not declared(ggml_rope_back):
  proc ggml_rope_back*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                       b: ptr struct_ggml_tensor_520094173;
                       c: ptr struct_ggml_tensor_520094173; n_dims: cint;
                       mode: cint; n_ctx_orig: cint; freq_base: cfloat;
                       freq_scale: cfloat; ext_factor: cfloat;
                       attn_factor: cfloat; beta_fast: cfloat; beta_slow: cfloat): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_rope_back".}
else:
  static :
    hint("Declaration of " & "ggml_rope_back" &
        " already exists, not redeclaring")
when not declared(ggml_clamp):
  proc ggml_clamp*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                   min: cfloat; max: cfloat): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_clamp".}
else:
  static :
    hint("Declaration of " & "ggml_clamp" & " already exists, not redeclaring")
when not declared(ggml_im2col):
  proc ggml_im2col*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                    b: ptr struct_ggml_tensor_520094173; s0: cint; s1: cint;
                    p0: cint; p1: cint; d0: cint; d1: cint; is_2D: bool;
                    dst_type: enum_ggml_type_520094153): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_im2col".}
else:
  static :
    hint("Declaration of " & "ggml_im2col" & " already exists, not redeclaring")
when not declared(ggml_im2col_back):
  proc ggml_im2col_back*(ctx: ptr struct_ggml_context;
                         a: ptr struct_ggml_tensor_520094173;
                         b: ptr struct_ggml_tensor_520094173; ne: ptr int64;
                         s0: cint; s1: cint; p0: cint; p1: cint; d0: cint;
                         d1: cint; is_2D: bool): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_im2col_back".}
else:
  static :
    hint("Declaration of " & "ggml_im2col_back" &
        " already exists, not redeclaring")
when not declared(ggml_conv_depthwise_2d):
  proc ggml_conv_depthwise_2d*(ctx: ptr struct_ggml_context;
                               a: ptr struct_ggml_tensor_520094173;
                               b: ptr struct_ggml_tensor_520094173; s0: cint;
                               s1: cint; p0: cint; p1: cint; d0: cint; d1: cint): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_conv_depthwise_2d".}
else:
  static :
    hint("Declaration of " & "ggml_conv_depthwise_2d" &
        " already exists, not redeclaring")
when not declared(ggml_conv_1d):
  proc ggml_conv_1d*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                     b: ptr struct_ggml_tensor_520094173; s0: cint; p0: cint;
                     d0: cint): ptr struct_ggml_tensor_520094173 {.cdecl,
      importc: "ggml_conv_1d".}
else:
  static :
    hint("Declaration of " & "ggml_conv_1d" & " already exists, not redeclaring")
when not declared(ggml_conv_1d_ph):
  proc ggml_conv_1d_ph*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                        b: ptr struct_ggml_tensor_520094173; s: cint; d: cint): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_conv_1d_ph".}
else:
  static :
    hint("Declaration of " & "ggml_conv_1d_ph" &
        " already exists, not redeclaring")
when not declared(ggml_conv_transpose_1d):
  proc ggml_conv_transpose_1d*(ctx: ptr struct_ggml_context;
                               a: ptr struct_ggml_tensor_520094173;
                               b: ptr struct_ggml_tensor_520094173; s0: cint;
                               p0: cint; d0: cint): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_conv_transpose_1d".}
else:
  static :
    hint("Declaration of " & "ggml_conv_transpose_1d" &
        " already exists, not redeclaring")
when not declared(ggml_conv_2d):
  proc ggml_conv_2d*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                     b: ptr struct_ggml_tensor_520094173; s0: cint; s1: cint;
                     p0: cint; p1: cint; d0: cint; d1: cint): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_conv_2d".}
else:
  static :
    hint("Declaration of " & "ggml_conv_2d" & " already exists, not redeclaring")
when not declared(ggml_conv_2d_sk_p0):
  proc ggml_conv_2d_sk_p0*(ctx: ptr struct_ggml_context;
                           a: ptr struct_ggml_tensor_520094173;
                           b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_conv_2d_sk_p0".}
else:
  static :
    hint("Declaration of " & "ggml_conv_2d_sk_p0" &
        " already exists, not redeclaring")
when not declared(ggml_conv_2d_s1_ph):
  proc ggml_conv_2d_s1_ph*(ctx: ptr struct_ggml_context;
                           a: ptr struct_ggml_tensor_520094173;
                           b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_conv_2d_s1_ph".}
else:
  static :
    hint("Declaration of " & "ggml_conv_2d_s1_ph" &
        " already exists, not redeclaring")
when not declared(ggml_conv_transpose_2d_p0):
  proc ggml_conv_transpose_2d_p0*(ctx: ptr struct_ggml_context;
                                  a: ptr struct_ggml_tensor_520094173;
                                  b: ptr struct_ggml_tensor_520094173;
                                  stride: cint): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_conv_transpose_2d_p0".}
else:
  static :
    hint("Declaration of " & "ggml_conv_transpose_2d_p0" &
        " already exists, not redeclaring")
when not declared(ggml_pool_1d):
  proc ggml_pool_1d*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                     op: enum_ggml_op_pool_520094183; k0: cint; s0: cint;
                     p0: cint): ptr struct_ggml_tensor_520094173 {.cdecl,
      importc: "ggml_pool_1d".}
else:
  static :
    hint("Declaration of " & "ggml_pool_1d" & " already exists, not redeclaring")
when not declared(ggml_pool_2d):
  proc ggml_pool_2d*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                     op: enum_ggml_op_pool_520094183; k0: cint; k1: cint;
                     s0: cint; s1: cint; p0: cfloat; p1: cfloat): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_pool_2d".}
else:
  static :
    hint("Declaration of " & "ggml_pool_2d" & " already exists, not redeclaring")
when not declared(ggml_pool_2d_back):
  proc ggml_pool_2d_back*(ctx: ptr struct_ggml_context;
                          a: ptr struct_ggml_tensor_520094173;
                          af: ptr struct_ggml_tensor_520094173;
                          op: enum_ggml_op_pool_520094183; k0: cint; k1: cint;
                          s0: cint; s1: cint; p0: cfloat; p1: cfloat): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_pool_2d_back".}
else:
  static :
    hint("Declaration of " & "ggml_pool_2d_back" &
        " already exists, not redeclaring")
when not declared(ggml_upscale):
  proc ggml_upscale*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                     scale_factor: cint): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_upscale".}
else:
  static :
    hint("Declaration of " & "ggml_upscale" & " already exists, not redeclaring")
when not declared(ggml_upscale_ext):
  proc ggml_upscale_ext*(ctx: ptr struct_ggml_context;
                         a: ptr struct_ggml_tensor_520094173; ne0: cint;
                         ne1: cint; ne2: cint; ne3: cint): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_upscale_ext".}
else:
  static :
    hint("Declaration of " & "ggml_upscale_ext" &
        " already exists, not redeclaring")
when not declared(ggml_pad):
  proc ggml_pad*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                 p0: cint; p1: cint; p2: cint; p3: cint): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_pad".}
else:
  static :
    hint("Declaration of " & "ggml_pad" & " already exists, not redeclaring")
when not declared(ggml_timestep_embedding):
  proc ggml_timestep_embedding*(ctx: ptr struct_ggml_context;
                                timesteps: ptr struct_ggml_tensor_520094173;
                                dim: cint; max_period: cint): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_timestep_embedding".}
else:
  static :
    hint("Declaration of " & "ggml_timestep_embedding" &
        " already exists, not redeclaring")
when not declared(ggml_argsort):
  proc ggml_argsort*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                     order: enum_ggml_sort_order_520094185): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_argsort".}
else:
  static :
    hint("Declaration of " & "ggml_argsort" & " already exists, not redeclaring")
when not declared(ggml_arange):
  proc ggml_arange*(ctx: ptr struct_ggml_context; start: cfloat; stop: cfloat;
                    step: cfloat): ptr struct_ggml_tensor_520094173 {.cdecl,
      importc: "ggml_arange".}
else:
  static :
    hint("Declaration of " & "ggml_arange" & " already exists, not redeclaring")
when not declared(ggml_top_k):
  proc ggml_top_k*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                   k: cint): ptr struct_ggml_tensor_520094173 {.cdecl,
      importc: "ggml_top_k".}
else:
  static :
    hint("Declaration of " & "ggml_top_k" & " already exists, not redeclaring")
when not declared(ggml_flash_attn_ext):
  proc ggml_flash_attn_ext*(ctx: ptr struct_ggml_context;
                            q: ptr struct_ggml_tensor_520094173;
                            k: ptr struct_ggml_tensor_520094173;
                            v: ptr struct_ggml_tensor_520094173;
                            mask: ptr struct_ggml_tensor_520094173;
                            scale: cfloat; max_bias: cfloat;
                            logit_softcap: cfloat): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_flash_attn_ext".}
else:
  static :
    hint("Declaration of " & "ggml_flash_attn_ext" &
        " already exists, not redeclaring")
when not declared(ggml_flash_attn_ext_set_prec):
  proc ggml_flash_attn_ext_set_prec*(a: ptr struct_ggml_tensor_520094173;
                                     prec: enum_ggml_prec_520094155): void {.
      cdecl, importc: "ggml_flash_attn_ext_set_prec".}
else:
  static :
    hint("Declaration of " & "ggml_flash_attn_ext_set_prec" &
        " already exists, not redeclaring")
when not declared(ggml_flash_attn_ext_get_prec):
  proc ggml_flash_attn_ext_get_prec*(a: ptr struct_ggml_tensor_520094173): enum_ggml_prec_520094155 {.
      cdecl, importc: "ggml_flash_attn_ext_get_prec".}
else:
  static :
    hint("Declaration of " & "ggml_flash_attn_ext_get_prec" &
        " already exists, not redeclaring")
when not declared(ggml_flash_attn_back):
  proc ggml_flash_attn_back*(ctx: ptr struct_ggml_context;
                             q: ptr struct_ggml_tensor_520094173;
                             k: ptr struct_ggml_tensor_520094173;
                             v: ptr struct_ggml_tensor_520094173;
                             d: ptr struct_ggml_tensor_520094173; masked: bool): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_flash_attn_back".}
else:
  static :
    hint("Declaration of " & "ggml_flash_attn_back" &
        " already exists, not redeclaring")
when not declared(ggml_ssm_conv):
  proc ggml_ssm_conv*(ctx: ptr struct_ggml_context; sx: ptr struct_ggml_tensor_520094173;
                      c: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_ssm_conv".}
else:
  static :
    hint("Declaration of " & "ggml_ssm_conv" &
        " already exists, not redeclaring")
when not declared(ggml_ssm_scan):
  proc ggml_ssm_scan*(ctx: ptr struct_ggml_context; s: ptr struct_ggml_tensor_520094173;
                      x: ptr struct_ggml_tensor_520094173;
                      dt: ptr struct_ggml_tensor_520094173;
                      A: ptr struct_ggml_tensor_520094173;
                      B: ptr struct_ggml_tensor_520094173;
                      C: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_ssm_scan".}
else:
  static :
    hint("Declaration of " & "ggml_ssm_scan" &
        " already exists, not redeclaring")
when not declared(ggml_win_part):
  proc ggml_win_part*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                      w: cint): ptr struct_ggml_tensor_520094173 {.cdecl,
      importc: "ggml_win_part".}
else:
  static :
    hint("Declaration of " & "ggml_win_part" &
        " already exists, not redeclaring")
when not declared(ggml_win_unpart):
  proc ggml_win_unpart*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                        w0: cint; h0: cint; w: cint): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_win_unpart".}
else:
  static :
    hint("Declaration of " & "ggml_win_unpart" &
        " already exists, not redeclaring")
when not declared(ggml_unary):
  proc ggml_unary*(ctx: ptr struct_ggml_context; a: ptr struct_ggml_tensor_520094173;
                   op: enum_ggml_unary_op_520094163): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_unary".}
else:
  static :
    hint("Declaration of " & "ggml_unary" & " already exists, not redeclaring")
when not declared(ggml_unary_inplace):
  proc ggml_unary_inplace*(ctx: ptr struct_ggml_context;
                           a: ptr struct_ggml_tensor_520094173;
                           op: enum_ggml_unary_op_520094163): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_unary_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_unary_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_get_rel_pos):
  proc ggml_get_rel_pos*(ctx: ptr struct_ggml_context;
                         a: ptr struct_ggml_tensor_520094173; qh: cint; kh: cint): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_get_rel_pos".}
else:
  static :
    hint("Declaration of " & "ggml_get_rel_pos" &
        " already exists, not redeclaring")
when not declared(ggml_add_rel_pos):
  proc ggml_add_rel_pos*(ctx: ptr struct_ggml_context;
                         a: ptr struct_ggml_tensor_520094173;
                         pw: ptr struct_ggml_tensor_520094173;
                         ph: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_add_rel_pos".}
else:
  static :
    hint("Declaration of " & "ggml_add_rel_pos" &
        " already exists, not redeclaring")
when not declared(ggml_add_rel_pos_inplace):
  proc ggml_add_rel_pos_inplace*(ctx: ptr struct_ggml_context;
                                 a: ptr struct_ggml_tensor_520094173;
                                 pw: ptr struct_ggml_tensor_520094173;
                                 ph: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_add_rel_pos_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_add_rel_pos_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_rwkv_wkv6):
  proc ggml_rwkv_wkv6*(ctx: ptr struct_ggml_context; k: ptr struct_ggml_tensor_520094173;
                       v: ptr struct_ggml_tensor_520094173;
                       r: ptr struct_ggml_tensor_520094173;
                       tf: ptr struct_ggml_tensor_520094173;
                       td: ptr struct_ggml_tensor_520094173;
                       state: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_rwkv_wkv6".}
else:
  static :
    hint("Declaration of " & "ggml_rwkv_wkv6" &
        " already exists, not redeclaring")
when not declared(ggml_map_unary_f32):
  proc ggml_map_unary_f32*(ctx: ptr struct_ggml_context;
                           a: ptr struct_ggml_tensor_520094173;
                           fun: ggml_unary_op_f32_t_520094187): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_map_unary_f32".}
else:
  static :
    hint("Declaration of " & "ggml_map_unary_f32" &
        " already exists, not redeclaring")
when not declared(ggml_map_unary_inplace_f32):
  proc ggml_map_unary_inplace_f32*(ctx: ptr struct_ggml_context;
                                   a: ptr struct_ggml_tensor_520094173;
                                   fun: ggml_unary_op_f32_t_520094187): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_map_unary_inplace_f32".}
else:
  static :
    hint("Declaration of " & "ggml_map_unary_inplace_f32" &
        " already exists, not redeclaring")
when not declared(ggml_map_binary_f32):
  proc ggml_map_binary_f32*(ctx: ptr struct_ggml_context;
                            a: ptr struct_ggml_tensor_520094173;
                            b: ptr struct_ggml_tensor_520094173;
                            fun: ggml_binary_op_f32_t_520094189): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_map_binary_f32".}
else:
  static :
    hint("Declaration of " & "ggml_map_binary_f32" &
        " already exists, not redeclaring")
when not declared(ggml_map_binary_inplace_f32):
  proc ggml_map_binary_inplace_f32*(ctx: ptr struct_ggml_context;
                                    a: ptr struct_ggml_tensor_520094173;
                                    b: ptr struct_ggml_tensor_520094173;
                                    fun: ggml_binary_op_f32_t_520094189): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_map_binary_inplace_f32".}
else:
  static :
    hint("Declaration of " & "ggml_map_binary_inplace_f32" &
        " already exists, not redeclaring")
when not declared(ggml_map_custom1_f32):
  proc ggml_map_custom1_f32*(ctx: ptr struct_ggml_context;
                             a: ptr struct_ggml_tensor_520094173;
                             fun: ggml_custom1_op_f32_t_520094191): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_map_custom1_f32".}
else:
  static :
    hint("Declaration of " & "ggml_map_custom1_f32" &
        " already exists, not redeclaring")
when not declared(ggml_map_custom1_inplace_f32):
  proc ggml_map_custom1_inplace_f32*(ctx: ptr struct_ggml_context;
                                     a: ptr struct_ggml_tensor_520094173;
                                     fun: ggml_custom1_op_f32_t_520094191): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_map_custom1_inplace_f32".}
else:
  static :
    hint("Declaration of " & "ggml_map_custom1_inplace_f32" &
        " already exists, not redeclaring")
when not declared(ggml_map_custom2_f32):
  proc ggml_map_custom2_f32*(ctx: ptr struct_ggml_context;
                             a: ptr struct_ggml_tensor_520094173;
                             b: ptr struct_ggml_tensor_520094173;
                             fun: ggml_custom2_op_f32_t_520094193): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_map_custom2_f32".}
else:
  static :
    hint("Declaration of " & "ggml_map_custom2_f32" &
        " already exists, not redeclaring")
when not declared(ggml_map_custom2_inplace_f32):
  proc ggml_map_custom2_inplace_f32*(ctx: ptr struct_ggml_context;
                                     a: ptr struct_ggml_tensor_520094173;
                                     b: ptr struct_ggml_tensor_520094173;
                                     fun: ggml_custom2_op_f32_t_520094193): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_map_custom2_inplace_f32".}
else:
  static :
    hint("Declaration of " & "ggml_map_custom2_inplace_f32" &
        " already exists, not redeclaring")
when not declared(ggml_map_custom3_f32):
  proc ggml_map_custom3_f32*(ctx: ptr struct_ggml_context;
                             a: ptr struct_ggml_tensor_520094173;
                             b: ptr struct_ggml_tensor_520094173;
                             c: ptr struct_ggml_tensor_520094173;
                             fun: ggml_custom3_op_f32_t_520094195): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_map_custom3_f32".}
else:
  static :
    hint("Declaration of " & "ggml_map_custom3_f32" &
        " already exists, not redeclaring")
when not declared(ggml_map_custom3_inplace_f32):
  proc ggml_map_custom3_inplace_f32*(ctx: ptr struct_ggml_context;
                                     a: ptr struct_ggml_tensor_520094173;
                                     b: ptr struct_ggml_tensor_520094173;
                                     c: ptr struct_ggml_tensor_520094173;
                                     fun: ggml_custom3_op_f32_t_520094195): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_map_custom3_inplace_f32".}
else:
  static :
    hint("Declaration of " & "ggml_map_custom3_inplace_f32" &
        " already exists, not redeclaring")
when not declared(ggml_map_custom1):
  proc ggml_map_custom1*(ctx: ptr struct_ggml_context;
                         a: ptr struct_ggml_tensor_520094173;
                         fun: ggml_custom1_op_t_520094197; n_tasks: cint;
                         userdata: pointer): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_map_custom1".}
else:
  static :
    hint("Declaration of " & "ggml_map_custom1" &
        " already exists, not redeclaring")
when not declared(ggml_map_custom1_inplace):
  proc ggml_map_custom1_inplace*(ctx: ptr struct_ggml_context;
                                 a: ptr struct_ggml_tensor_520094173;
                                 fun: ggml_custom1_op_t_520094197;
                                 n_tasks: cint; userdata: pointer): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_map_custom1_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_map_custom1_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_map_custom2):
  proc ggml_map_custom2*(ctx: ptr struct_ggml_context;
                         a: ptr struct_ggml_tensor_520094173;
                         b: ptr struct_ggml_tensor_520094173;
                         fun: ggml_custom2_op_t_520094199; n_tasks: cint;
                         userdata: pointer): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_map_custom2".}
else:
  static :
    hint("Declaration of " & "ggml_map_custom2" &
        " already exists, not redeclaring")
when not declared(ggml_map_custom2_inplace):
  proc ggml_map_custom2_inplace*(ctx: ptr struct_ggml_context;
                                 a: ptr struct_ggml_tensor_520094173;
                                 b: ptr struct_ggml_tensor_520094173;
                                 fun: ggml_custom2_op_t_520094199;
                                 n_tasks: cint; userdata: pointer): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_map_custom2_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_map_custom2_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_map_custom3):
  proc ggml_map_custom3*(ctx: ptr struct_ggml_context;
                         a: ptr struct_ggml_tensor_520094173;
                         b: ptr struct_ggml_tensor_520094173;
                         c: ptr struct_ggml_tensor_520094173;
                         fun: ggml_custom3_op_t_520094201; n_tasks: cint;
                         userdata: pointer): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_map_custom3".}
else:
  static :
    hint("Declaration of " & "ggml_map_custom3" &
        " already exists, not redeclaring")
when not declared(ggml_map_custom3_inplace):
  proc ggml_map_custom3_inplace*(ctx: ptr struct_ggml_context;
                                 a: ptr struct_ggml_tensor_520094173;
                                 b: ptr struct_ggml_tensor_520094173;
                                 c: ptr struct_ggml_tensor_520094173;
                                 fun: ggml_custom3_op_t_520094201;
                                 n_tasks: cint; userdata: pointer): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_map_custom3_inplace".}
else:
  static :
    hint("Declaration of " & "ggml_map_custom3_inplace" &
        " already exists, not redeclaring")
when not declared(ggml_cross_entropy_loss):
  proc ggml_cross_entropy_loss*(ctx: ptr struct_ggml_context;
                                a: ptr struct_ggml_tensor_520094173;
                                b: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_cross_entropy_loss".}
else:
  static :
    hint("Declaration of " & "ggml_cross_entropy_loss" &
        " already exists, not redeclaring")
when not declared(ggml_cross_entropy_loss_back):
  proc ggml_cross_entropy_loss_back*(ctx: ptr struct_ggml_context;
                                     a: ptr struct_ggml_tensor_520094173;
                                     b: ptr struct_ggml_tensor_520094173;
                                     c: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_cross_entropy_loss_back".}
else:
  static :
    hint("Declaration of " & "ggml_cross_entropy_loss_back" &
        " already exists, not redeclaring")
when not declared(ggml_opt_step_adamw):
  proc ggml_opt_step_adamw*(ctx: ptr struct_ggml_context;
                            a: ptr struct_ggml_tensor_520094173;
                            grad: ptr struct_ggml_tensor_520094173;
                            alpha: cfloat; beta1: cfloat; beta2: cfloat;
                            eps: cfloat; wd: cfloat): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_opt_step_adamw".}
else:
  static :
    hint("Declaration of " & "ggml_opt_step_adamw" &
        " already exists, not redeclaring")
when not declared(ggml_build_forward_expand):
  proc ggml_build_forward_expand*(cgraph: ptr struct_ggml_cgraph;
                                  tensor: ptr struct_ggml_tensor_520094173): void {.
      cdecl, importc: "ggml_build_forward_expand".}
else:
  static :
    hint("Declaration of " & "ggml_build_forward_expand" &
        " already exists, not redeclaring")
when not declared(ggml_build_backward_expand):
  proc ggml_build_backward_expand*(ctx: ptr struct_ggml_context;
                                   gf: ptr struct_ggml_cgraph;
                                   gb: ptr struct_ggml_cgraph; accumulate: bool): void {.
      cdecl, importc: "ggml_build_backward_expand".}
else:
  static :
    hint("Declaration of " & "ggml_build_backward_expand" &
        " already exists, not redeclaring")
when not declared(ggml_build_opt_adamw):
  proc ggml_build_opt_adamw*(ctx: ptr struct_ggml_context;
                             gf: ptr struct_ggml_cgraph;
                             gb: ptr struct_ggml_cgraph; alpha: cfloat;
                             beta1: cfloat; beta2: cfloat; eps: cfloat;
                             wd: cfloat): void {.cdecl,
      importc: "ggml_build_opt_adamw".}
else:
  static :
    hint("Declaration of " & "ggml_build_opt_adamw" &
        " already exists, not redeclaring")
when not declared(ggml_new_graph):
  proc ggml_new_graph*(ctx: ptr struct_ggml_context): ptr struct_ggml_cgraph {.
      cdecl, importc: "ggml_new_graph".}
else:
  static :
    hint("Declaration of " & "ggml_new_graph" &
        " already exists, not redeclaring")
when not declared(ggml_new_graph_custom):
  proc ggml_new_graph_custom*(ctx: ptr struct_ggml_context; size: csize_t;
                              grads: bool): ptr struct_ggml_cgraph {.cdecl,
      importc: "ggml_new_graph_custom".}
else:
  static :
    hint("Declaration of " & "ggml_new_graph_custom" &
        " already exists, not redeclaring")
when not declared(ggml_graph_dup):
  proc ggml_graph_dup*(ctx: ptr struct_ggml_context;
                       cgraph: ptr struct_ggml_cgraph): ptr struct_ggml_cgraph {.
      cdecl, importc: "ggml_graph_dup".}
else:
  static :
    hint("Declaration of " & "ggml_graph_dup" &
        " already exists, not redeclaring")
when not declared(ggml_graph_cpy):
  proc ggml_graph_cpy*(src: ptr struct_ggml_cgraph; dst: ptr struct_ggml_cgraph): void {.
      cdecl, importc: "ggml_graph_cpy".}
else:
  static :
    hint("Declaration of " & "ggml_graph_cpy" &
        " already exists, not redeclaring")
when not declared(ggml_graph_reset):
  proc ggml_graph_reset*(cgraph: ptr struct_ggml_cgraph): void {.cdecl,
      importc: "ggml_graph_reset".}
else:
  static :
    hint("Declaration of " & "ggml_graph_reset" &
        " already exists, not redeclaring")
when not declared(ggml_graph_clear):
  proc ggml_graph_clear*(cgraph: ptr struct_ggml_cgraph): void {.cdecl,
      importc: "ggml_graph_clear".}
else:
  static :
    hint("Declaration of " & "ggml_graph_clear" &
        " already exists, not redeclaring")
when not declared(ggml_graph_size):
  proc ggml_graph_size*(cgraph: ptr struct_ggml_cgraph): cint {.cdecl,
      importc: "ggml_graph_size".}
else:
  static :
    hint("Declaration of " & "ggml_graph_size" &
        " already exists, not redeclaring")
when not declared(ggml_graph_node):
  proc ggml_graph_node*(cgraph: ptr struct_ggml_cgraph; i: cint): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_graph_node".}
else:
  static :
    hint("Declaration of " & "ggml_graph_node" &
        " already exists, not redeclaring")
when not declared(ggml_graph_nodes):
  proc ggml_graph_nodes*(cgraph: ptr struct_ggml_cgraph): ptr ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_graph_nodes".}
else:
  static :
    hint("Declaration of " & "ggml_graph_nodes" &
        " already exists, not redeclaring")
when not declared(ggml_graph_n_nodes):
  proc ggml_graph_n_nodes*(cgraph: ptr struct_ggml_cgraph): cint {.cdecl,
      importc: "ggml_graph_n_nodes".}
else:
  static :
    hint("Declaration of " & "ggml_graph_n_nodes" &
        " already exists, not redeclaring")
when not declared(ggml_graph_add_node):
  proc ggml_graph_add_node*(cgraph: ptr struct_ggml_cgraph;
                            tensor: ptr struct_ggml_tensor_520094173): void {.
      cdecl, importc: "ggml_graph_add_node".}
else:
  static :
    hint("Declaration of " & "ggml_graph_add_node" &
        " already exists, not redeclaring")
when not declared(ggml_graph_overhead):
  proc ggml_graph_overhead*(): csize_t {.cdecl, importc: "ggml_graph_overhead".}
else:
  static :
    hint("Declaration of " & "ggml_graph_overhead" &
        " already exists, not redeclaring")
when not declared(ggml_graph_overhead_custom):
  proc ggml_graph_overhead_custom*(size: csize_t; grads: bool): csize_t {.cdecl,
      importc: "ggml_graph_overhead_custom".}
else:
  static :
    hint("Declaration of " & "ggml_graph_overhead_custom" &
        " already exists, not redeclaring")
when not declared(ggml_graph_get_tensor):
  proc ggml_graph_get_tensor*(cgraph: ptr struct_ggml_cgraph; name: cstring): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_graph_get_tensor".}
else:
  static :
    hint("Declaration of " & "ggml_graph_get_tensor" &
        " already exists, not redeclaring")
when not declared(ggml_graph_export):
  proc ggml_graph_export*(cgraph: ptr struct_ggml_cgraph; fname: cstring): void {.
      cdecl, importc: "ggml_graph_export".}
else:
  static :
    hint("Declaration of " & "ggml_graph_export" &
        " already exists, not redeclaring")
when not declared(ggml_graph_import):
  proc ggml_graph_import*(fname: cstring; ctx_data: ptr ptr struct_ggml_context;
                          ctx_eval: ptr ptr struct_ggml_context): ptr struct_ggml_cgraph {.
      cdecl, importc: "ggml_graph_import".}
else:
  static :
    hint("Declaration of " & "ggml_graph_import" &
        " already exists, not redeclaring")
when not declared(ggml_graph_print):
  proc ggml_graph_print*(cgraph: ptr struct_ggml_cgraph): void {.cdecl,
      importc: "ggml_graph_print".}
else:
  static :
    hint("Declaration of " & "ggml_graph_print" &
        " already exists, not redeclaring")
when not declared(ggml_graph_dump_dot):
  proc ggml_graph_dump_dot*(gb: ptr struct_ggml_cgraph;
                            gf: ptr struct_ggml_cgraph; filename: cstring): void {.
      cdecl, importc: "ggml_graph_dump_dot".}
else:
  static :
    hint("Declaration of " & "ggml_graph_dump_dot" &
        " already exists, not redeclaring")
when not declared(ggml_build_backward_gradient_checkpointing):
  proc ggml_build_backward_gradient_checkpointing*(ctx: ptr struct_ggml_context;
      gf: ptr struct_ggml_cgraph; gb: ptr struct_ggml_cgraph;
      gb_tmp: ptr struct_ggml_cgraph; checkpoints: ptr ptr struct_ggml_tensor_520094173;
      n_checkpoints: cint): void {.cdecl, importc: "ggml_build_backward_gradient_checkpointing".}
else:
  static :
    hint("Declaration of " & "ggml_build_backward_gradient_checkpointing" &
        " already exists, not redeclaring")
when not declared(ggml_log_set):
  proc ggml_log_set*(log_callback: ggml_log_callback_520094211;
                     user_data: pointer): void {.cdecl, importc: "ggml_log_set".}
else:
  static :
    hint("Declaration of " & "ggml_log_set" & " already exists, not redeclaring")
when not declared(ggml_set_zero):
  proc ggml_set_zero*(tensor: ptr struct_ggml_tensor_520094173): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_set_zero".}
else:
  static :
    hint("Declaration of " & "ggml_set_zero" &
        " already exists, not redeclaring")
when not declared(ggml_opt_default_params):
  proc ggml_opt_default_params*(type_arg: enum_ggml_opt_type_520094203): struct_ggml_opt_params_520094213 {.
      cdecl, importc: "ggml_opt_default_params".}
else:
  static :
    hint("Declaration of " & "ggml_opt_default_params" &
        " already exists, not redeclaring")
when not declared(ggml_opt):
  proc ggml_opt*(ctx: ptr struct_ggml_context; params: struct_ggml_opt_params_520094213;
                 f: ptr struct_ggml_tensor_520094173): enum_ggml_opt_result_520094207 {.
      cdecl, importc: "ggml_opt".}
else:
  static :
    hint("Declaration of " & "ggml_opt" & " already exists, not redeclaring")
when not declared(ggml_opt_init):
  proc ggml_opt_init*(ctx: ptr struct_ggml_context;
                      opt: ptr struct_ggml_opt_context_520094215;
                      params: struct_ggml_opt_params_520094213; nx: int64): void {.
      cdecl, importc: "ggml_opt_init".}
else:
  static :
    hint("Declaration of " & "ggml_opt_init" &
        " already exists, not redeclaring")
when not declared(ggml_opt_resume):
  proc ggml_opt_resume*(ctx: ptr struct_ggml_context;
                        opt: ptr struct_ggml_opt_context_520094215;
                        f: ptr struct_ggml_tensor_520094173): enum_ggml_opt_result_520094207 {.
      cdecl, importc: "ggml_opt_resume".}
else:
  static :
    hint("Declaration of " & "ggml_opt_resume" &
        " already exists, not redeclaring")
when not declared(ggml_opt_resume_g):
  proc ggml_opt_resume_g*(ctx: ptr struct_ggml_context;
                          opt: ptr struct_ggml_opt_context_520094215;
                          f: ptr struct_ggml_tensor_520094173;
                          gf: ptr struct_ggml_cgraph;
                          gb: ptr struct_ggml_cgraph;
                          callback: ggml_opt_callback_520094209;
                          callback_data: pointer): enum_ggml_opt_result_520094207 {.
      cdecl, importc: "ggml_opt_resume_g".}
else:
  static :
    hint("Declaration of " & "ggml_opt_resume_g" &
        " already exists, not redeclaring")
when not declared(ggml_quantize_init):
  proc ggml_quantize_init*(type_arg: enum_ggml_type_520094153): void {.cdecl,
      importc: "ggml_quantize_init".}
else:
  static :
    hint("Declaration of " & "ggml_quantize_init" &
        " already exists, not redeclaring")
when not declared(ggml_quantize_free):
  proc ggml_quantize_free*(): void {.cdecl, importc: "ggml_quantize_free".}
else:
  static :
    hint("Declaration of " & "ggml_quantize_free" &
        " already exists, not redeclaring")
when not declared(ggml_quantize_requires_imatrix):
  proc ggml_quantize_requires_imatrix*(type_arg: enum_ggml_type_520094153): bool {.
      cdecl, importc: "ggml_quantize_requires_imatrix".}
else:
  static :
    hint("Declaration of " & "ggml_quantize_requires_imatrix" &
        " already exists, not redeclaring")
when not declared(ggml_quantize_chunk):
  proc ggml_quantize_chunk*(type_arg: enum_ggml_type_520094153; src: ptr cfloat;
                            dst: pointer; start: int64; nrows: int64;
                            n_per_row: int64; imatrix: ptr cfloat): csize_t {.
      cdecl, importc: "ggml_quantize_chunk".}
else:
  static :
    hint("Declaration of " & "ggml_quantize_chunk" &
        " already exists, not redeclaring")
when not declared(gguf_init_empty):
  proc gguf_init_empty*(): ptr struct_gguf_context {.cdecl,
      importc: "gguf_init_empty".}
else:
  static :
    hint("Declaration of " & "gguf_init_empty" &
        " already exists, not redeclaring")
when not declared(gguf_init_from_file):
  proc gguf_init_from_file*(fname: cstring; params: struct_gguf_init_params_520094219): ptr struct_gguf_context {.
      cdecl, importc: "gguf_init_from_file".}
else:
  static :
    hint("Declaration of " & "gguf_init_from_file" &
        " already exists, not redeclaring")
when not declared(gguf_free):
  proc gguf_free*(ctx: ptr struct_gguf_context): void {.cdecl,
      importc: "gguf_free".}
else:
  static :
    hint("Declaration of " & "gguf_free" & " already exists, not redeclaring")
when not declared(gguf_type_name):
  proc gguf_type_name*(type_arg: enum_gguf_type_520094217): cstring {.cdecl,
      importc: "gguf_type_name".}
else:
  static :
    hint("Declaration of " & "gguf_type_name" &
        " already exists, not redeclaring")
when not declared(gguf_get_version):
  proc gguf_get_version*(ctx: ptr struct_gguf_context): cint {.cdecl,
      importc: "gguf_get_version".}
else:
  static :
    hint("Declaration of " & "gguf_get_version" &
        " already exists, not redeclaring")
when not declared(gguf_get_alignment):
  proc gguf_get_alignment*(ctx: ptr struct_gguf_context): csize_t {.cdecl,
      importc: "gguf_get_alignment".}
else:
  static :
    hint("Declaration of " & "gguf_get_alignment" &
        " already exists, not redeclaring")
when not declared(gguf_get_data_offset):
  proc gguf_get_data_offset*(ctx: ptr struct_gguf_context): csize_t {.cdecl,
      importc: "gguf_get_data_offset".}
else:
  static :
    hint("Declaration of " & "gguf_get_data_offset" &
        " already exists, not redeclaring")
when not declared(gguf_get_data):
  proc gguf_get_data*(ctx: ptr struct_gguf_context): pointer {.cdecl,
      importc: "gguf_get_data".}
else:
  static :
    hint("Declaration of " & "gguf_get_data" &
        " already exists, not redeclaring")
when not declared(gguf_get_n_kv):
  proc gguf_get_n_kv*(ctx: ptr struct_gguf_context): cint {.cdecl,
      importc: "gguf_get_n_kv".}
else:
  static :
    hint("Declaration of " & "gguf_get_n_kv" &
        " already exists, not redeclaring")
when not declared(gguf_find_key):
  proc gguf_find_key*(ctx: ptr struct_gguf_context; key: cstring): cint {.cdecl,
      importc: "gguf_find_key".}
else:
  static :
    hint("Declaration of " & "gguf_find_key" &
        " already exists, not redeclaring")
when not declared(gguf_get_key):
  proc gguf_get_key*(ctx: ptr struct_gguf_context; key_id: cint): cstring {.
      cdecl, importc: "gguf_get_key".}
else:
  static :
    hint("Declaration of " & "gguf_get_key" & " already exists, not redeclaring")
when not declared(gguf_get_kv_type):
  proc gguf_get_kv_type*(ctx: ptr struct_gguf_context; key_id: cint): enum_gguf_type_520094217 {.
      cdecl, importc: "gguf_get_kv_type".}
else:
  static :
    hint("Declaration of " & "gguf_get_kv_type" &
        " already exists, not redeclaring")
when not declared(gguf_get_arr_type):
  proc gguf_get_arr_type*(ctx: ptr struct_gguf_context; key_id: cint): enum_gguf_type_520094217 {.
      cdecl, importc: "gguf_get_arr_type".}
else:
  static :
    hint("Declaration of " & "gguf_get_arr_type" &
        " already exists, not redeclaring")
when not declared(gguf_get_val_u8):
  proc gguf_get_val_u8*(ctx: ptr struct_gguf_context; key_id: cint): uint8 {.
      cdecl, importc: "gguf_get_val_u8".}
else:
  static :
    hint("Declaration of " & "gguf_get_val_u8" &
        " already exists, not redeclaring")
when not declared(gguf_get_val_i8):
  proc gguf_get_val_i8*(ctx: ptr struct_gguf_context; key_id: cint): int8 {.
      cdecl, importc: "gguf_get_val_i8".}
else:
  static :
    hint("Declaration of " & "gguf_get_val_i8" &
        " already exists, not redeclaring")
when not declared(gguf_get_val_u16):
  proc gguf_get_val_u16*(ctx: ptr struct_gguf_context; key_id: cint): uint16 {.
      cdecl, importc: "gguf_get_val_u16".}
else:
  static :
    hint("Declaration of " & "gguf_get_val_u16" &
        " already exists, not redeclaring")
when not declared(gguf_get_val_i16):
  proc gguf_get_val_i16*(ctx: ptr struct_gguf_context; key_id: cint): int16 {.
      cdecl, importc: "gguf_get_val_i16".}
else:
  static :
    hint("Declaration of " & "gguf_get_val_i16" &
        " already exists, not redeclaring")
when not declared(gguf_get_val_u32):
  proc gguf_get_val_u32*(ctx: ptr struct_gguf_context; key_id: cint): uint32 {.
      cdecl, importc: "gguf_get_val_u32".}
else:
  static :
    hint("Declaration of " & "gguf_get_val_u32" &
        " already exists, not redeclaring")
when not declared(gguf_get_val_i32):
  proc gguf_get_val_i32*(ctx: ptr struct_gguf_context; key_id: cint): int32 {.
      cdecl, importc: "gguf_get_val_i32".}
else:
  static :
    hint("Declaration of " & "gguf_get_val_i32" &
        " already exists, not redeclaring")
when not declared(gguf_get_val_f32):
  proc gguf_get_val_f32*(ctx: ptr struct_gguf_context; key_id: cint): cfloat {.
      cdecl, importc: "gguf_get_val_f32".}
else:
  static :
    hint("Declaration of " & "gguf_get_val_f32" &
        " already exists, not redeclaring")
when not declared(gguf_get_val_u64):
  proc gguf_get_val_u64*(ctx: ptr struct_gguf_context; key_id: cint): uint64 {.
      cdecl, importc: "gguf_get_val_u64".}
else:
  static :
    hint("Declaration of " & "gguf_get_val_u64" &
        " already exists, not redeclaring")
when not declared(gguf_get_val_i64):
  proc gguf_get_val_i64*(ctx: ptr struct_gguf_context; key_id: cint): int64 {.
      cdecl, importc: "gguf_get_val_i64".}
else:
  static :
    hint("Declaration of " & "gguf_get_val_i64" &
        " already exists, not redeclaring")
when not declared(gguf_get_val_f64):
  proc gguf_get_val_f64*(ctx: ptr struct_gguf_context; key_id: cint): cdouble {.
      cdecl, importc: "gguf_get_val_f64".}
else:
  static :
    hint("Declaration of " & "gguf_get_val_f64" &
        " already exists, not redeclaring")
when not declared(gguf_get_val_bool):
  proc gguf_get_val_bool*(ctx: ptr struct_gguf_context; key_id: cint): bool {.
      cdecl, importc: "gguf_get_val_bool".}
else:
  static :
    hint("Declaration of " & "gguf_get_val_bool" &
        " already exists, not redeclaring")
when not declared(gguf_get_val_str):
  proc gguf_get_val_str*(ctx: ptr struct_gguf_context; key_id: cint): cstring {.
      cdecl, importc: "gguf_get_val_str".}
else:
  static :
    hint("Declaration of " & "gguf_get_val_str" &
        " already exists, not redeclaring")
when not declared(gguf_get_val_data):
  proc gguf_get_val_data*(ctx: ptr struct_gguf_context; key_id: cint): pointer {.
      cdecl, importc: "gguf_get_val_data".}
else:
  static :
    hint("Declaration of " & "gguf_get_val_data" &
        " already exists, not redeclaring")
when not declared(gguf_get_arr_n):
  proc gguf_get_arr_n*(ctx: ptr struct_gguf_context; key_id: cint): cint {.
      cdecl, importc: "gguf_get_arr_n".}
else:
  static :
    hint("Declaration of " & "gguf_get_arr_n" &
        " already exists, not redeclaring")
when not declared(gguf_get_arr_data):
  proc gguf_get_arr_data*(ctx: ptr struct_gguf_context; key_id: cint): pointer {.
      cdecl, importc: "gguf_get_arr_data".}
else:
  static :
    hint("Declaration of " & "gguf_get_arr_data" &
        " already exists, not redeclaring")
when not declared(gguf_get_arr_str):
  proc gguf_get_arr_str*(ctx: ptr struct_gguf_context; key_id: cint; i: cint): cstring {.
      cdecl, importc: "gguf_get_arr_str".}
else:
  static :
    hint("Declaration of " & "gguf_get_arr_str" &
        " already exists, not redeclaring")
when not declared(gguf_get_n_tensors):
  proc gguf_get_n_tensors*(ctx: ptr struct_gguf_context): cint {.cdecl,
      importc: "gguf_get_n_tensors".}
else:
  static :
    hint("Declaration of " & "gguf_get_n_tensors" &
        " already exists, not redeclaring")
when not declared(gguf_find_tensor):
  proc gguf_find_tensor*(ctx: ptr struct_gguf_context; name: cstring): cint {.
      cdecl, importc: "gguf_find_tensor".}
else:
  static :
    hint("Declaration of " & "gguf_find_tensor" &
        " already exists, not redeclaring")
when not declared(gguf_get_tensor_offset):
  proc gguf_get_tensor_offset*(ctx: ptr struct_gguf_context; i: cint): csize_t {.
      cdecl, importc: "gguf_get_tensor_offset".}
else:
  static :
    hint("Declaration of " & "gguf_get_tensor_offset" &
        " already exists, not redeclaring")
when not declared(gguf_get_tensor_name):
  proc gguf_get_tensor_name*(ctx: ptr struct_gguf_context; i: cint): cstring {.
      cdecl, importc: "gguf_get_tensor_name".}
else:
  static :
    hint("Declaration of " & "gguf_get_tensor_name" &
        " already exists, not redeclaring")
when not declared(gguf_get_tensor_type):
  proc gguf_get_tensor_type*(ctx: ptr struct_gguf_context; i: cint): enum_ggml_type_520094153 {.
      cdecl, importc: "gguf_get_tensor_type".}
else:
  static :
    hint("Declaration of " & "gguf_get_tensor_type" &
        " already exists, not redeclaring")
when not declared(gguf_remove_key):
  proc gguf_remove_key*(ctx: ptr struct_gguf_context; key: cstring): void {.
      cdecl, importc: "gguf_remove_key".}
else:
  static :
    hint("Declaration of " & "gguf_remove_key" &
        " already exists, not redeclaring")
when not declared(gguf_set_val_u8):
  proc gguf_set_val_u8*(ctx: ptr struct_gguf_context; key: cstring; val: uint8): void {.
      cdecl, importc: "gguf_set_val_u8".}
else:
  static :
    hint("Declaration of " & "gguf_set_val_u8" &
        " already exists, not redeclaring")
when not declared(gguf_set_val_i8):
  proc gguf_set_val_i8*(ctx: ptr struct_gguf_context; key: cstring; val: int8): void {.
      cdecl, importc: "gguf_set_val_i8".}
else:
  static :
    hint("Declaration of " & "gguf_set_val_i8" &
        " already exists, not redeclaring")
when not declared(gguf_set_val_u16):
  proc gguf_set_val_u16*(ctx: ptr struct_gguf_context; key: cstring; val: uint16): void {.
      cdecl, importc: "gguf_set_val_u16".}
else:
  static :
    hint("Declaration of " & "gguf_set_val_u16" &
        " already exists, not redeclaring")
when not declared(gguf_set_val_i16):
  proc gguf_set_val_i16*(ctx: ptr struct_gguf_context; key: cstring; val: int16): void {.
      cdecl, importc: "gguf_set_val_i16".}
else:
  static :
    hint("Declaration of " & "gguf_set_val_i16" &
        " already exists, not redeclaring")
when not declared(gguf_set_val_u32):
  proc gguf_set_val_u32*(ctx: ptr struct_gguf_context; key: cstring; val: uint32): void {.
      cdecl, importc: "gguf_set_val_u32".}
else:
  static :
    hint("Declaration of " & "gguf_set_val_u32" &
        " already exists, not redeclaring")
when not declared(gguf_set_val_i32):
  proc gguf_set_val_i32*(ctx: ptr struct_gguf_context; key: cstring; val: int32): void {.
      cdecl, importc: "gguf_set_val_i32".}
else:
  static :
    hint("Declaration of " & "gguf_set_val_i32" &
        " already exists, not redeclaring")
when not declared(gguf_set_val_f32):
  proc gguf_set_val_f32*(ctx: ptr struct_gguf_context; key: cstring; val: cfloat): void {.
      cdecl, importc: "gguf_set_val_f32".}
else:
  static :
    hint("Declaration of " & "gguf_set_val_f32" &
        " already exists, not redeclaring")
when not declared(gguf_set_val_u64):
  proc gguf_set_val_u64*(ctx: ptr struct_gguf_context; key: cstring; val: uint64): void {.
      cdecl, importc: "gguf_set_val_u64".}
else:
  static :
    hint("Declaration of " & "gguf_set_val_u64" &
        " already exists, not redeclaring")
when not declared(gguf_set_val_i64):
  proc gguf_set_val_i64*(ctx: ptr struct_gguf_context; key: cstring; val: int64): void {.
      cdecl, importc: "gguf_set_val_i64".}
else:
  static :
    hint("Declaration of " & "gguf_set_val_i64" &
        " already exists, not redeclaring")
when not declared(gguf_set_val_f64):
  proc gguf_set_val_f64*(ctx: ptr struct_gguf_context; key: cstring;
                         val: cdouble): void {.cdecl,
      importc: "gguf_set_val_f64".}
else:
  static :
    hint("Declaration of " & "gguf_set_val_f64" &
        " already exists, not redeclaring")
when not declared(gguf_set_val_bool):
  proc gguf_set_val_bool*(ctx: ptr struct_gguf_context; key: cstring; val: bool): void {.
      cdecl, importc: "gguf_set_val_bool".}
else:
  static :
    hint("Declaration of " & "gguf_set_val_bool" &
        " already exists, not redeclaring")
when not declared(gguf_set_val_str):
  proc gguf_set_val_str*(ctx: ptr struct_gguf_context; key: cstring;
                         val: cstring): void {.cdecl,
      importc: "gguf_set_val_str".}
else:
  static :
    hint("Declaration of " & "gguf_set_val_str" &
        " already exists, not redeclaring")
when not declared(gguf_set_arr_data):
  proc gguf_set_arr_data*(ctx: ptr struct_gguf_context; key: cstring;
                          type_arg: enum_gguf_type_520094217; data: pointer;
                          n: cint): void {.cdecl, importc: "gguf_set_arr_data".}
else:
  static :
    hint("Declaration of " & "gguf_set_arr_data" &
        " already exists, not redeclaring")
when not declared(gguf_set_arr_str):
  proc gguf_set_arr_str*(ctx: ptr struct_gguf_context; key: cstring;
                         data: ptr cstring; n: cint): void {.cdecl,
      importc: "gguf_set_arr_str".}
else:
  static :
    hint("Declaration of " & "gguf_set_arr_str" &
        " already exists, not redeclaring")
when not declared(gguf_set_kv):
  proc gguf_set_kv*(ctx: ptr struct_gguf_context; src: ptr struct_gguf_context): void {.
      cdecl, importc: "gguf_set_kv".}
else:
  static :
    hint("Declaration of " & "gguf_set_kv" & " already exists, not redeclaring")
when not declared(gguf_add_tensor):
  proc gguf_add_tensor*(ctx: ptr struct_gguf_context;
                        tensor: ptr struct_ggml_tensor_520094173): void {.cdecl,
      importc: "gguf_add_tensor".}
else:
  static :
    hint("Declaration of " & "gguf_add_tensor" &
        " already exists, not redeclaring")
when not declared(gguf_set_tensor_type):
  proc gguf_set_tensor_type*(ctx: ptr struct_gguf_context; name: cstring;
                             type_arg: enum_ggml_type_520094153): void {.cdecl,
      importc: "gguf_set_tensor_type".}
else:
  static :
    hint("Declaration of " & "gguf_set_tensor_type" &
        " already exists, not redeclaring")
when not declared(gguf_set_tensor_data):
  proc gguf_set_tensor_data*(ctx: ptr struct_gguf_context; name: cstring;
                             data: pointer; size: csize_t): void {.cdecl,
      importc: "gguf_set_tensor_data".}
else:
  static :
    hint("Declaration of " & "gguf_set_tensor_data" &
        " already exists, not redeclaring")
when not declared(gguf_write_to_file):
  proc gguf_write_to_file*(ctx: ptr struct_gguf_context; fname: cstring;
                           only_meta: bool): void {.cdecl,
      importc: "gguf_write_to_file".}
else:
  static :
    hint("Declaration of " & "gguf_write_to_file" &
        " already exists, not redeclaring")
when not declared(gguf_get_meta_size):
  proc gguf_get_meta_size*(ctx: ptr struct_gguf_context): csize_t {.cdecl,
      importc: "gguf_get_meta_size".}
else:
  static :
    hint("Declaration of " & "gguf_get_meta_size" &
        " already exists, not redeclaring")
when not declared(gguf_get_meta_data):
  proc gguf_get_meta_data*(ctx: ptr struct_gguf_context; data: pointer): void {.
      cdecl, importc: "gguf_get_meta_data".}
else:
  static :
    hint("Declaration of " & "gguf_get_meta_data" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_avx):
  proc ggml_cpu_has_avx*(): cint {.cdecl, importc: "ggml_cpu_has_avx".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_avx" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_avx_vnni):
  proc ggml_cpu_has_avx_vnni*(): cint {.cdecl, importc: "ggml_cpu_has_avx_vnni".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_avx_vnni" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_avx2):
  proc ggml_cpu_has_avx2*(): cint {.cdecl, importc: "ggml_cpu_has_avx2".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_avx2" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_avx512):
  proc ggml_cpu_has_avx512*(): cint {.cdecl, importc: "ggml_cpu_has_avx512".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_avx512" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_avx512_vbmi):
  proc ggml_cpu_has_avx512_vbmi*(): cint {.cdecl,
      importc: "ggml_cpu_has_avx512_vbmi".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_avx512_vbmi" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_avx512_vnni):
  proc ggml_cpu_has_avx512_vnni*(): cint {.cdecl,
      importc: "ggml_cpu_has_avx512_vnni".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_avx512_vnni" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_avx512_bf16):
  proc ggml_cpu_has_avx512_bf16*(): cint {.cdecl,
      importc: "ggml_cpu_has_avx512_bf16".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_avx512_bf16" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_amx_int8):
  proc ggml_cpu_has_amx_int8*(): cint {.cdecl, importc: "ggml_cpu_has_amx_int8".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_amx_int8" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_fma):
  proc ggml_cpu_has_fma*(): cint {.cdecl, importc: "ggml_cpu_has_fma".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_fma" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_arm_fma):
  proc ggml_cpu_has_arm_fma*(): cint {.cdecl, importc: "ggml_cpu_has_arm_fma".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_arm_fma" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_metal):
  proc ggml_cpu_has_metal*(): cint {.cdecl, importc: "ggml_cpu_has_metal".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_metal" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_f16c):
  proc ggml_cpu_has_f16c*(): cint {.cdecl, importc: "ggml_cpu_has_f16c".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_f16c" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_fp16_va):
  proc ggml_cpu_has_fp16_va*(): cint {.cdecl, importc: "ggml_cpu_has_fp16_va".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_fp16_va" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_wasm_simd):
  proc ggml_cpu_has_wasm_simd*(): cint {.cdecl,
      importc: "ggml_cpu_has_wasm_simd".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_wasm_simd" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_blas):
  proc ggml_cpu_has_blas*(): cint {.cdecl, importc: "ggml_cpu_has_blas".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_blas" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_cuda):
  proc ggml_cpu_has_cuda*(): cint {.cdecl, importc: "ggml_cpu_has_cuda".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_cuda" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_vulkan):
  proc ggml_cpu_has_vulkan*(): cint {.cdecl, importc: "ggml_cpu_has_vulkan".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_vulkan" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_kompute):
  proc ggml_cpu_has_kompute*(): cint {.cdecl, importc: "ggml_cpu_has_kompute".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_kompute" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_gpublas):
  proc ggml_cpu_has_gpublas*(): cint {.cdecl, importc: "ggml_cpu_has_gpublas".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_gpublas" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_sse3):
  proc ggml_cpu_has_sse3*(): cint {.cdecl, importc: "ggml_cpu_has_sse3".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_sse3" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_ssse3):
  proc ggml_cpu_has_ssse3*(): cint {.cdecl, importc: "ggml_cpu_has_ssse3".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_ssse3" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_riscv_v):
  proc ggml_cpu_has_riscv_v*(): cint {.cdecl, importc: "ggml_cpu_has_riscv_v".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_riscv_v" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_sycl):
  proc ggml_cpu_has_sycl*(): cint {.cdecl, importc: "ggml_cpu_has_sycl".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_sycl" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_rpc):
  proc ggml_cpu_has_rpc*(): cint {.cdecl, importc: "ggml_cpu_has_rpc".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_rpc" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_vsx):
  proc ggml_cpu_has_vsx*(): cint {.cdecl, importc: "ggml_cpu_has_vsx".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_vsx" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_cann):
  proc ggml_cpu_has_cann*(): cint {.cdecl, importc: "ggml_cpu_has_cann".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_cann" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_llamafile):
  proc ggml_cpu_has_llamafile*(): cint {.cdecl,
      importc: "ggml_cpu_has_llamafile".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_llamafile" &
        " already exists, not redeclaring")
when not declared(ggml_get_type_traits):
  proc ggml_get_type_traits*(type_arg: enum_ggml_type_520094153): ptr struct_ggml_type_traits_520094232 {.
      cdecl, importc: "ggml_get_type_traits".}
else:
  static :
    hint("Declaration of " & "ggml_get_type_traits" &
        " already exists, not redeclaring")
when not declared(ggml_tallocr_new):
  proc ggml_tallocr_new*(buffer: ggml_backend_buffer_t_520094236): struct_ggml_tallocr_520094240 {.
      cdecl, importc: "ggml_tallocr_new".}
else:
  static :
    hint("Declaration of " & "ggml_tallocr_new" &
        " already exists, not redeclaring")
when not declared(ggml_tallocr_alloc):
  proc ggml_tallocr_alloc*(talloc: ptr struct_ggml_tallocr_520094240;
                           tensor: ptr struct_ggml_tensor_520094173): void {.
      cdecl, importc: "ggml_tallocr_alloc".}
else:
  static :
    hint("Declaration of " & "ggml_tallocr_alloc" &
        " already exists, not redeclaring")
when not declared(ggml_gallocr_new):
  proc ggml_gallocr_new*(buft: ggml_backend_buffer_type_t_520094234): ggml_gallocr_t_520094242 {.
      cdecl, importc: "ggml_gallocr_new".}
else:
  static :
    hint("Declaration of " & "ggml_gallocr_new" &
        " already exists, not redeclaring")
when not declared(ggml_gallocr_new_n):
  proc ggml_gallocr_new_n*(bufts: ptr ggml_backend_buffer_type_t_520094234;
                           n_bufs: cint): ggml_gallocr_t_520094242 {.cdecl,
      importc: "ggml_gallocr_new_n".}
else:
  static :
    hint("Declaration of " & "ggml_gallocr_new_n" &
        " already exists, not redeclaring")
when not declared(ggml_gallocr_free):
  proc ggml_gallocr_free*(galloc: ggml_gallocr_t_520094242): void {.cdecl,
      importc: "ggml_gallocr_free".}
else:
  static :
    hint("Declaration of " & "ggml_gallocr_free" &
        " already exists, not redeclaring")
when not declared(ggml_gallocr_reserve):
  proc ggml_gallocr_reserve*(galloc: ggml_gallocr_t_520094242;
                             graph: ptr struct_ggml_cgraph): bool {.cdecl,
      importc: "ggml_gallocr_reserve".}
else:
  static :
    hint("Declaration of " & "ggml_gallocr_reserve" &
        " already exists, not redeclaring")
when not declared(ggml_gallocr_reserve_n):
  proc ggml_gallocr_reserve_n*(galloc: ggml_gallocr_t_520094242;
                               graph: ptr struct_ggml_cgraph;
                               node_buffer_ids: ptr cint;
                               leaf_buffer_ids: ptr cint): bool {.cdecl,
      importc: "ggml_gallocr_reserve_n".}
else:
  static :
    hint("Declaration of " & "ggml_gallocr_reserve_n" &
        " already exists, not redeclaring")
when not declared(ggml_gallocr_alloc_graph):
  proc ggml_gallocr_alloc_graph*(galloc: ggml_gallocr_t_520094242;
                                 graph: ptr struct_ggml_cgraph): bool {.cdecl,
      importc: "ggml_gallocr_alloc_graph".}
else:
  static :
    hint("Declaration of " & "ggml_gallocr_alloc_graph" &
        " already exists, not redeclaring")
when not declared(ggml_gallocr_get_buffer_size):
  proc ggml_gallocr_get_buffer_size*(galloc: ggml_gallocr_t_520094242;
                                     buffer_id: cint): csize_t {.cdecl,
      importc: "ggml_gallocr_get_buffer_size".}
else:
  static :
    hint("Declaration of " & "ggml_gallocr_get_buffer_size" &
        " already exists, not redeclaring")
when not declared(ggml_backend_alloc_ctx_tensors_from_buft):
  proc ggml_backend_alloc_ctx_tensors_from_buft*(ctx: ptr struct_ggml_context;
      buft: ggml_backend_buffer_type_t_520094234): ptr struct_ggml_backend_buffer {.
      cdecl, importc: "ggml_backend_alloc_ctx_tensors_from_buft".}
else:
  static :
    hint("Declaration of " & "ggml_backend_alloc_ctx_tensors_from_buft" &
        " already exists, not redeclaring")
when not declared(ggml_backend_alloc_ctx_tensors):
  proc ggml_backend_alloc_ctx_tensors*(ctx: ptr struct_ggml_context;
                                       backend: ggml_backend_t_520094238): ptr struct_ggml_backend_buffer {.
      cdecl, importc: "ggml_backend_alloc_ctx_tensors".}
else:
  static :
    hint("Declaration of " & "ggml_backend_alloc_ctx_tensors" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buft_name):
  proc ggml_backend_buft_name*(buft: ggml_backend_buffer_type_t_520094234): cstring {.
      cdecl, importc: "ggml_backend_buft_name".}
else:
  static :
    hint("Declaration of " & "ggml_backend_buft_name" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buft_alloc_buffer):
  proc ggml_backend_buft_alloc_buffer*(buft: ggml_backend_buffer_type_t_520094234;
                                       size: csize_t): ggml_backend_buffer_t_520094236 {.
      cdecl, importc: "ggml_backend_buft_alloc_buffer".}
else:
  static :
    hint("Declaration of " & "ggml_backend_buft_alloc_buffer" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buft_get_alignment):
  proc ggml_backend_buft_get_alignment*(buft: ggml_backend_buffer_type_t_520094234): csize_t {.
      cdecl, importc: "ggml_backend_buft_get_alignment".}
else:
  static :
    hint("Declaration of " & "ggml_backend_buft_get_alignment" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buft_get_max_size):
  proc ggml_backend_buft_get_max_size*(buft: ggml_backend_buffer_type_t_520094234): csize_t {.
      cdecl, importc: "ggml_backend_buft_get_max_size".}
else:
  static :
    hint("Declaration of " & "ggml_backend_buft_get_max_size" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buft_get_alloc_size):
  proc ggml_backend_buft_get_alloc_size*(buft: ggml_backend_buffer_type_t_520094234;
      tensor: ptr struct_ggml_tensor_520094173): csize_t {.cdecl,
      importc: "ggml_backend_buft_get_alloc_size".}
else:
  static :
    hint("Declaration of " & "ggml_backend_buft_get_alloc_size" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buft_is_host):
  proc ggml_backend_buft_is_host*(buft: ggml_backend_buffer_type_t_520094234): bool {.
      cdecl, importc: "ggml_backend_buft_is_host".}
else:
  static :
    hint("Declaration of " & "ggml_backend_buft_is_host" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buft_get_device):
  proc ggml_backend_buft_get_device*(buft: ggml_backend_buffer_type_t_520094234): ggml_backend_dev_t_520094250 {.
      cdecl, importc: "ggml_backend_buft_get_device".}
else:
  static :
    hint("Declaration of " & "ggml_backend_buft_get_device" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buffer_name):
  proc ggml_backend_buffer_name*(buffer: ggml_backend_buffer_t_520094236): cstring {.
      cdecl, importc: "ggml_backend_buffer_name".}
else:
  static :
    hint("Declaration of " & "ggml_backend_buffer_name" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buffer_free):
  proc ggml_backend_buffer_free*(buffer: ggml_backend_buffer_t_520094236): void {.
      cdecl, importc: "ggml_backend_buffer_free".}
else:
  static :
    hint("Declaration of " & "ggml_backend_buffer_free" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buffer_get_base):
  proc ggml_backend_buffer_get_base*(buffer: ggml_backend_buffer_t_520094236): pointer {.
      cdecl, importc: "ggml_backend_buffer_get_base".}
else:
  static :
    hint("Declaration of " & "ggml_backend_buffer_get_base" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buffer_get_size):
  proc ggml_backend_buffer_get_size*(buffer: ggml_backend_buffer_t_520094236): csize_t {.
      cdecl, importc: "ggml_backend_buffer_get_size".}
else:
  static :
    hint("Declaration of " & "ggml_backend_buffer_get_size" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buffer_init_tensor):
  proc ggml_backend_buffer_init_tensor*(buffer: ggml_backend_buffer_t_520094236;
                                        tensor: ptr struct_ggml_tensor_520094173): void {.
      cdecl, importc: "ggml_backend_buffer_init_tensor".}
else:
  static :
    hint("Declaration of " & "ggml_backend_buffer_init_tensor" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buffer_get_alignment):
  proc ggml_backend_buffer_get_alignment*(buffer: ggml_backend_buffer_t_520094236): csize_t {.
      cdecl, importc: "ggml_backend_buffer_get_alignment".}
else:
  static :
    hint("Declaration of " & "ggml_backend_buffer_get_alignment" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buffer_get_max_size):
  proc ggml_backend_buffer_get_max_size*(buffer: ggml_backend_buffer_t_520094236): csize_t {.
      cdecl, importc: "ggml_backend_buffer_get_max_size".}
else:
  static :
    hint("Declaration of " & "ggml_backend_buffer_get_max_size" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buffer_get_alloc_size):
  proc ggml_backend_buffer_get_alloc_size*(buffer: ggml_backend_buffer_t_520094236;
      tensor: ptr struct_ggml_tensor_520094173): csize_t {.cdecl,
      importc: "ggml_backend_buffer_get_alloc_size".}
else:
  static :
    hint("Declaration of " & "ggml_backend_buffer_get_alloc_size" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buffer_clear):
  proc ggml_backend_buffer_clear*(buffer: ggml_backend_buffer_t_520094236;
                                  value: uint8): void {.cdecl,
      importc: "ggml_backend_buffer_clear".}
else:
  static :
    hint("Declaration of " & "ggml_backend_buffer_clear" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buffer_is_host):
  proc ggml_backend_buffer_is_host*(buffer: ggml_backend_buffer_t_520094236): bool {.
      cdecl, importc: "ggml_backend_buffer_is_host".}
else:
  static :
    hint("Declaration of " & "ggml_backend_buffer_is_host" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buffer_set_usage):
  proc ggml_backend_buffer_set_usage*(buffer: ggml_backend_buffer_t_520094236;
                                      usage: enum_ggml_backend_buffer_usage_520094252): void {.
      cdecl, importc: "ggml_backend_buffer_set_usage".}
else:
  static :
    hint("Declaration of " & "ggml_backend_buffer_set_usage" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buffer_get_usage):
  proc ggml_backend_buffer_get_usage*(buffer: ggml_backend_buffer_t_520094236): enum_ggml_backend_buffer_usage_520094252 {.
      cdecl, importc: "ggml_backend_buffer_get_usage".}
else:
  static :
    hint("Declaration of " & "ggml_backend_buffer_get_usage" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buffer_get_type):
  proc ggml_backend_buffer_get_type*(buffer: ggml_backend_buffer_t_520094236): ggml_backend_buffer_type_t_520094234 {.
      cdecl, importc: "ggml_backend_buffer_get_type".}
else:
  static :
    hint("Declaration of " & "ggml_backend_buffer_get_type" &
        " already exists, not redeclaring")
when not declared(ggml_backend_buffer_reset):
  proc ggml_backend_buffer_reset*(buffer: ggml_backend_buffer_t_520094236): void {.
      cdecl, importc: "ggml_backend_buffer_reset".}
else:
  static :
    hint("Declaration of " & "ggml_backend_buffer_reset" &
        " already exists, not redeclaring")
when not declared(ggml_backend_tensor_copy):
  proc ggml_backend_tensor_copy*(src: ptr struct_ggml_tensor_520094173;
                                 dst: ptr struct_ggml_tensor_520094173): void {.
      cdecl, importc: "ggml_backend_tensor_copy".}
else:
  static :
    hint("Declaration of " & "ggml_backend_tensor_copy" &
        " already exists, not redeclaring")
when not declared(ggml_backend_guid):
  proc ggml_backend_guid*(backend: ggml_backend_t_520094238): ggml_guid_t_520094179 {.
      cdecl, importc: "ggml_backend_guid".}
else:
  static :
    hint("Declaration of " & "ggml_backend_guid" &
        " already exists, not redeclaring")
when not declared(ggml_backend_name):
  proc ggml_backend_name*(backend: ggml_backend_t_520094238): cstring {.cdecl,
      importc: "ggml_backend_name".}
else:
  static :
    hint("Declaration of " & "ggml_backend_name" &
        " already exists, not redeclaring")
when not declared(ggml_backend_free):
  proc ggml_backend_free*(backend: ggml_backend_t_520094238): void {.cdecl,
      importc: "ggml_backend_free".}
else:
  static :
    hint("Declaration of " & "ggml_backend_free" &
        " already exists, not redeclaring")
when not declared(ggml_backend_get_default_buffer_type):
  proc ggml_backend_get_default_buffer_type*(backend: ggml_backend_t_520094238): ggml_backend_buffer_type_t_520094234 {.
      cdecl, importc: "ggml_backend_get_default_buffer_type".}
else:
  static :
    hint("Declaration of " & "ggml_backend_get_default_buffer_type" &
        " already exists, not redeclaring")
when not declared(ggml_backend_alloc_buffer):
  proc ggml_backend_alloc_buffer*(backend: ggml_backend_t_520094238;
                                  size: csize_t): ggml_backend_buffer_t_520094236 {.
      cdecl, importc: "ggml_backend_alloc_buffer".}
else:
  static :
    hint("Declaration of " & "ggml_backend_alloc_buffer" &
        " already exists, not redeclaring")
when not declared(ggml_backend_get_alignment):
  proc ggml_backend_get_alignment*(backend: ggml_backend_t_520094238): csize_t {.
      cdecl, importc: "ggml_backend_get_alignment".}
else:
  static :
    hint("Declaration of " & "ggml_backend_get_alignment" &
        " already exists, not redeclaring")
when not declared(ggml_backend_get_max_size):
  proc ggml_backend_get_max_size*(backend: ggml_backend_t_520094238): csize_t {.
      cdecl, importc: "ggml_backend_get_max_size".}
else:
  static :
    hint("Declaration of " & "ggml_backend_get_max_size" &
        " already exists, not redeclaring")
when not declared(ggml_backend_tensor_set_async):
  proc ggml_backend_tensor_set_async*(backend: ggml_backend_t_520094238;
                                      tensor: ptr struct_ggml_tensor_520094173;
                                      data: pointer; offset: csize_t;
                                      size: csize_t): void {.cdecl,
      importc: "ggml_backend_tensor_set_async".}
else:
  static :
    hint("Declaration of " & "ggml_backend_tensor_set_async" &
        " already exists, not redeclaring")
when not declared(ggml_backend_tensor_get_async):
  proc ggml_backend_tensor_get_async*(backend: ggml_backend_t_520094238;
                                      tensor: ptr struct_ggml_tensor_520094173;
                                      data: pointer; offset: csize_t;
                                      size: csize_t): void {.cdecl,
      importc: "ggml_backend_tensor_get_async".}
else:
  static :
    hint("Declaration of " & "ggml_backend_tensor_get_async" &
        " already exists, not redeclaring")
when not declared(ggml_backend_tensor_set):
  proc ggml_backend_tensor_set*(tensor: ptr struct_ggml_tensor_520094173;
                                data: pointer; offset: csize_t; size: csize_t): void {.
      cdecl, importc: "ggml_backend_tensor_set".}
else:
  static :
    hint("Declaration of " & "ggml_backend_tensor_set" &
        " already exists, not redeclaring")
when not declared(ggml_backend_tensor_get):
  proc ggml_backend_tensor_get*(tensor: ptr struct_ggml_tensor_520094173;
                                data: pointer; offset: csize_t; size: csize_t): void {.
      cdecl, importc: "ggml_backend_tensor_get".}
else:
  static :
    hint("Declaration of " & "ggml_backend_tensor_get" &
        " already exists, not redeclaring")
when not declared(ggml_backend_tensor_memset):
  proc ggml_backend_tensor_memset*(tensor: ptr struct_ggml_tensor_520094173;
                                   value: uint8; offset: csize_t; size: csize_t): void {.
      cdecl, importc: "ggml_backend_tensor_memset".}
else:
  static :
    hint("Declaration of " & "ggml_backend_tensor_memset" &
        " already exists, not redeclaring")
when not declared(ggml_backend_synchronize):
  proc ggml_backend_synchronize*(backend: ggml_backend_t_520094238): void {.
      cdecl, importc: "ggml_backend_synchronize".}
else:
  static :
    hint("Declaration of " & "ggml_backend_synchronize" &
        " already exists, not redeclaring")
when not declared(ggml_backend_graph_plan_create):
  proc ggml_backend_graph_plan_create*(backend: ggml_backend_t_520094238;
                                       cgraph: ptr struct_ggml_cgraph): ggml_backend_graph_plan_t_520094246 {.
      cdecl, importc: "ggml_backend_graph_plan_create".}
else:
  static :
    hint("Declaration of " & "ggml_backend_graph_plan_create" &
        " already exists, not redeclaring")
when not declared(ggml_backend_graph_plan_free):
  proc ggml_backend_graph_plan_free*(backend: ggml_backend_t_520094238;
                                     plan: ggml_backend_graph_plan_t_520094246): void {.
      cdecl, importc: "ggml_backend_graph_plan_free".}
else:
  static :
    hint("Declaration of " & "ggml_backend_graph_plan_free" &
        " already exists, not redeclaring")
when not declared(ggml_backend_graph_plan_compute):
  proc ggml_backend_graph_plan_compute*(backend: ggml_backend_t_520094238;
                                        plan: ggml_backend_graph_plan_t_520094246): enum_ggml_status_520094145 {.
      cdecl, importc: "ggml_backend_graph_plan_compute".}
else:
  static :
    hint("Declaration of " & "ggml_backend_graph_plan_compute" &
        " already exists, not redeclaring")
when not declared(ggml_backend_graph_compute):
  proc ggml_backend_graph_compute*(backend: ggml_backend_t_520094238;
                                   cgraph: ptr struct_ggml_cgraph): enum_ggml_status_520094145 {.
      cdecl, importc: "ggml_backend_graph_compute".}
else:
  static :
    hint("Declaration of " & "ggml_backend_graph_compute" &
        " already exists, not redeclaring")
when not declared(ggml_backend_graph_compute_async):
  proc ggml_backend_graph_compute_async*(backend: ggml_backend_t_520094238;
      cgraph: ptr struct_ggml_cgraph): enum_ggml_status_520094145 {.cdecl,
      importc: "ggml_backend_graph_compute_async".}
else:
  static :
    hint("Declaration of " & "ggml_backend_graph_compute_async" &
        " already exists, not redeclaring")
when not declared(ggml_backend_supports_op):
  proc ggml_backend_supports_op*(backend: ggml_backend_t_520094238;
                                 op: ptr struct_ggml_tensor_520094173): bool {.
      cdecl, importc: "ggml_backend_supports_op".}
else:
  static :
    hint("Declaration of " & "ggml_backend_supports_op" &
        " already exists, not redeclaring")
when not declared(ggml_backend_supports_buft):
  proc ggml_backend_supports_buft*(backend: ggml_backend_t_520094238;
                                   buft: ggml_backend_buffer_type_t_520094234): bool {.
      cdecl, importc: "ggml_backend_supports_buft".}
else:
  static :
    hint("Declaration of " & "ggml_backend_supports_buft" &
        " already exists, not redeclaring")
when not declared(ggml_backend_offload_op):
  proc ggml_backend_offload_op*(backend: ggml_backend_t_520094238;
                                op: ptr struct_ggml_tensor_520094173): bool {.
      cdecl, importc: "ggml_backend_offload_op".}
else:
  static :
    hint("Declaration of " & "ggml_backend_offload_op" &
        " already exists, not redeclaring")
when not declared(ggml_backend_tensor_copy_async):
  proc ggml_backend_tensor_copy_async*(backend_src: ggml_backend_t_520094238;
                                       backend_dst: ggml_backend_t_520094238;
                                       src: ptr struct_ggml_tensor_520094173;
                                       dst: ptr struct_ggml_tensor_520094173): void {.
      cdecl, importc: "ggml_backend_tensor_copy_async".}
else:
  static :
    hint("Declaration of " & "ggml_backend_tensor_copy_async" &
        " already exists, not redeclaring")
when not declared(ggml_backend_get_device):
  proc ggml_backend_get_device*(backend: ggml_backend_t_520094238): ggml_backend_dev_t_520094250 {.
      cdecl, importc: "ggml_backend_get_device".}
else:
  static :
    hint("Declaration of " & "ggml_backend_get_device" &
        " already exists, not redeclaring")
when not declared(ggml_backend_event_new):
  proc ggml_backend_event_new*(device: ggml_backend_dev_t_520094250): ggml_backend_event_t_520094244 {.
      cdecl, importc: "ggml_backend_event_new".}
else:
  static :
    hint("Declaration of " & "ggml_backend_event_new" &
        " already exists, not redeclaring")
when not declared(ggml_backend_event_free):
  proc ggml_backend_event_free*(event: ggml_backend_event_t_520094244): void {.
      cdecl, importc: "ggml_backend_event_free".}
else:
  static :
    hint("Declaration of " & "ggml_backend_event_free" &
        " already exists, not redeclaring")
when not declared(ggml_backend_event_record):
  proc ggml_backend_event_record*(event: ggml_backend_event_t_520094244;
                                  backend: ggml_backend_t_520094238): void {.
      cdecl, importc: "ggml_backend_event_record".}
else:
  static :
    hint("Declaration of " & "ggml_backend_event_record" &
        " already exists, not redeclaring")
when not declared(ggml_backend_event_synchronize):
  proc ggml_backend_event_synchronize*(event: ggml_backend_event_t_520094244): void {.
      cdecl, importc: "ggml_backend_event_synchronize".}
else:
  static :
    hint("Declaration of " & "ggml_backend_event_synchronize" &
        " already exists, not redeclaring")
when not declared(ggml_backend_event_wait):
  proc ggml_backend_event_wait*(backend: ggml_backend_t_520094238;
                                event: ggml_backend_event_t_520094244): void {.
      cdecl, importc: "ggml_backend_event_wait".}
else:
  static :
    hint("Declaration of " & "ggml_backend_event_wait" &
        " already exists, not redeclaring")
when not declared(ggml_backend_dev_name):
  proc ggml_backend_dev_name*(device: ggml_backend_dev_t_520094250): cstring {.
      cdecl, importc: "ggml_backend_dev_name".}
else:
  static :
    hint("Declaration of " & "ggml_backend_dev_name" &
        " already exists, not redeclaring")
when not declared(ggml_backend_dev_description):
  proc ggml_backend_dev_description*(device: ggml_backend_dev_t_520094250): cstring {.
      cdecl, importc: "ggml_backend_dev_description".}
else:
  static :
    hint("Declaration of " & "ggml_backend_dev_description" &
        " already exists, not redeclaring")
when not declared(ggml_backend_dev_memory):
  proc ggml_backend_dev_memory*(device: ggml_backend_dev_t_520094250;
                                free: ptr csize_t; total: ptr csize_t): void {.
      cdecl, importc: "ggml_backend_dev_memory".}
else:
  static :
    hint("Declaration of " & "ggml_backend_dev_memory" &
        " already exists, not redeclaring")
when not declared(ggml_backend_dev_type):
  proc ggml_backend_dev_type*(device: ggml_backend_dev_t_520094250): enum_ggml_backend_dev_type_520094254 {.
      cdecl, importc: "ggml_backend_dev_type".}
else:
  static :
    hint("Declaration of " & "ggml_backend_dev_type" &
        " already exists, not redeclaring")
when not declared(ggml_backend_dev_get_props):
  proc ggml_backend_dev_get_props*(device: ggml_backend_dev_t_520094250;
                                   props: ptr struct_ggml_backend_dev_props_520094258): void {.
      cdecl, importc: "ggml_backend_dev_get_props".}
else:
  static :
    hint("Declaration of " & "ggml_backend_dev_get_props" &
        " already exists, not redeclaring")
when not declared(ggml_backend_dev_backend_reg):
  proc ggml_backend_dev_backend_reg*(device: ggml_backend_dev_t_520094250): ggml_backend_reg_t_520094248 {.
      cdecl, importc: "ggml_backend_dev_backend_reg".}
else:
  static :
    hint("Declaration of " & "ggml_backend_dev_backend_reg" &
        " already exists, not redeclaring")
when not declared(ggml_backend_dev_init):
  proc ggml_backend_dev_init*(device: ggml_backend_dev_t_520094250;
                              params: cstring): ggml_backend_t_520094238 {.
      cdecl, importc: "ggml_backend_dev_init".}
else:
  static :
    hint("Declaration of " & "ggml_backend_dev_init" &
        " already exists, not redeclaring")
when not declared(ggml_backend_dev_buffer_type):
  proc ggml_backend_dev_buffer_type*(device: ggml_backend_dev_t_520094250): ggml_backend_buffer_type_t_520094234 {.
      cdecl, importc: "ggml_backend_dev_buffer_type".}
else:
  static :
    hint("Declaration of " & "ggml_backend_dev_buffer_type" &
        " already exists, not redeclaring")
when not declared(ggml_backend_dev_host_buffer_type):
  proc ggml_backend_dev_host_buffer_type*(device: ggml_backend_dev_t_520094250): ggml_backend_buffer_type_t_520094234 {.
      cdecl, importc: "ggml_backend_dev_host_buffer_type".}
else:
  static :
    hint("Declaration of " & "ggml_backend_dev_host_buffer_type" &
        " already exists, not redeclaring")
when not declared(ggml_backend_dev_buffer_from_host_ptr):
  proc ggml_backend_dev_buffer_from_host_ptr*(device: ggml_backend_dev_t_520094250;
      ptr_arg: pointer; size: csize_t; max_tensor_size: csize_t): ggml_backend_buffer_t_520094236 {.
      cdecl, importc: "ggml_backend_dev_buffer_from_host_ptr".}
else:
  static :
    hint("Declaration of " & "ggml_backend_dev_buffer_from_host_ptr" &
        " already exists, not redeclaring")
when not declared(ggml_backend_dev_supports_op):
  proc ggml_backend_dev_supports_op*(device: ggml_backend_dev_t_520094250;
                                     op: ptr struct_ggml_tensor_520094173): bool {.
      cdecl, importc: "ggml_backend_dev_supports_op".}
else:
  static :
    hint("Declaration of " & "ggml_backend_dev_supports_op" &
        " already exists, not redeclaring")
when not declared(ggml_backend_dev_supports_buft):
  proc ggml_backend_dev_supports_buft*(device: ggml_backend_dev_t_520094250;
                                       buft: ggml_backend_buffer_type_t_520094234): bool {.
      cdecl, importc: "ggml_backend_dev_supports_buft".}
else:
  static :
    hint("Declaration of " & "ggml_backend_dev_supports_buft" &
        " already exists, not redeclaring")
when not declared(ggml_backend_dev_offload_op):
  proc ggml_backend_dev_offload_op*(device: ggml_backend_dev_t_520094250;
                                    op: ptr struct_ggml_tensor_520094173): bool {.
      cdecl, importc: "ggml_backend_dev_offload_op".}
else:
  static :
    hint("Declaration of " & "ggml_backend_dev_offload_op" &
        " already exists, not redeclaring")
when not declared(ggml_backend_reg_name):
  proc ggml_backend_reg_name*(reg: ggml_backend_reg_t_520094248): cstring {.
      cdecl, importc: "ggml_backend_reg_name".}
else:
  static :
    hint("Declaration of " & "ggml_backend_reg_name" &
        " already exists, not redeclaring")
when not declared(ggml_backend_reg_dev_count):
  proc ggml_backend_reg_dev_count*(reg: ggml_backend_reg_t_520094248): csize_t {.
      cdecl, importc: "ggml_backend_reg_dev_count".}
else:
  static :
    hint("Declaration of " & "ggml_backend_reg_dev_count" &
        " already exists, not redeclaring")
when not declared(ggml_backend_reg_dev_get):
  proc ggml_backend_reg_dev_get*(reg: ggml_backend_reg_t_520094248;
                                 index: csize_t): ggml_backend_dev_t_520094250 {.
      cdecl, importc: "ggml_backend_reg_dev_get".}
else:
  static :
    hint("Declaration of " & "ggml_backend_reg_dev_get" &
        " already exists, not redeclaring")
when not declared(ggml_backend_reg_get_proc_address):
  proc ggml_backend_reg_get_proc_address*(reg: ggml_backend_reg_t_520094248;
      name: cstring): pointer {.cdecl,
                                importc: "ggml_backend_reg_get_proc_address".}
else:
  static :
    hint("Declaration of " & "ggml_backend_reg_get_proc_address" &
        " already exists, not redeclaring")
when not declared(ggml_backend_reg_count):
  proc ggml_backend_reg_count*(): csize_t {.cdecl,
      importc: "ggml_backend_reg_count".}
else:
  static :
    hint("Declaration of " & "ggml_backend_reg_count" &
        " already exists, not redeclaring")
when not declared(ggml_backend_reg_get):
  proc ggml_backend_reg_get*(index: csize_t): ggml_backend_reg_t_520094248 {.
      cdecl, importc: "ggml_backend_reg_get".}
else:
  static :
    hint("Declaration of " & "ggml_backend_reg_get" &
        " already exists, not redeclaring")
when not declared(ggml_backend_reg_by_name):
  proc ggml_backend_reg_by_name*(name: cstring): ggml_backend_reg_t_520094248 {.
      cdecl, importc: "ggml_backend_reg_by_name".}
else:
  static :
    hint("Declaration of " & "ggml_backend_reg_by_name" &
        " already exists, not redeclaring")
when not declared(ggml_backend_dev_count):
  proc ggml_backend_dev_count*(): csize_t {.cdecl,
      importc: "ggml_backend_dev_count".}
else:
  static :
    hint("Declaration of " & "ggml_backend_dev_count" &
        " already exists, not redeclaring")
when not declared(ggml_backend_dev_get):
  proc ggml_backend_dev_get*(index: csize_t): ggml_backend_dev_t_520094250 {.
      cdecl, importc: "ggml_backend_dev_get".}
else:
  static :
    hint("Declaration of " & "ggml_backend_dev_get" &
        " already exists, not redeclaring")
when not declared(ggml_backend_dev_by_name):
  proc ggml_backend_dev_by_name*(name: cstring): ggml_backend_dev_t_520094250 {.
      cdecl, importc: "ggml_backend_dev_by_name".}
else:
  static :
    hint("Declaration of " & "ggml_backend_dev_by_name" &
        " already exists, not redeclaring")
when not declared(ggml_backend_dev_by_type):
  proc ggml_backend_dev_by_type*(type_arg: enum_ggml_backend_dev_type_520094254): ggml_backend_dev_t_520094250 {.
      cdecl, importc: "ggml_backend_dev_by_type".}
else:
  static :
    hint("Declaration of " & "ggml_backend_dev_by_type" &
        " already exists, not redeclaring")
when not declared(ggml_backend_init_by_name):
  proc ggml_backend_init_by_name*(name: cstring; params: cstring): ggml_backend_t_520094238 {.
      cdecl, importc: "ggml_backend_init_by_name".}
else:
  static :
    hint("Declaration of " & "ggml_backend_init_by_name" &
        " already exists, not redeclaring")
when not declared(ggml_backend_init_by_type):
  proc ggml_backend_init_by_type*(type_arg: enum_ggml_backend_dev_type_520094254;
                                  params: cstring): ggml_backend_t_520094238 {.
      cdecl, importc: "ggml_backend_init_by_type".}
else:
  static :
    hint("Declaration of " & "ggml_backend_init_by_type" &
        " already exists, not redeclaring")
when not declared(ggml_backend_init_best):
  proc ggml_backend_init_best*(): ggml_backend_t_520094238 {.cdecl,
      importc: "ggml_backend_init_best".}
else:
  static :
    hint("Declaration of " & "ggml_backend_init_best" &
        " already exists, not redeclaring")
when not declared(ggml_backend_sched_new):
  proc ggml_backend_sched_new*(backends: ptr ggml_backend_t_520094238;
                               bufts: ptr ggml_backend_buffer_type_t_520094234;
                               n_backends: cint; graph_size: csize_t;
                               parallel: bool): ggml_backend_sched_t_520094266 {.
      cdecl, importc: "ggml_backend_sched_new".}
else:
  static :
    hint("Declaration of " & "ggml_backend_sched_new" &
        " already exists, not redeclaring")
when not declared(ggml_backend_sched_free):
  proc ggml_backend_sched_free*(sched: ggml_backend_sched_t_520094266): void {.
      cdecl, importc: "ggml_backend_sched_free".}
else:
  static :
    hint("Declaration of " & "ggml_backend_sched_free" &
        " already exists, not redeclaring")
when not declared(ggml_backend_sched_reserve):
  proc ggml_backend_sched_reserve*(sched: ggml_backend_sched_t_520094266;
                                   measure_graph: ptr struct_ggml_cgraph): bool {.
      cdecl, importc: "ggml_backend_sched_reserve".}
else:
  static :
    hint("Declaration of " & "ggml_backend_sched_reserve" &
        " already exists, not redeclaring")
when not declared(ggml_backend_sched_get_n_backends):
  proc ggml_backend_sched_get_n_backends*(sched: ggml_backend_sched_t_520094266): cint {.
      cdecl, importc: "ggml_backend_sched_get_n_backends".}
else:
  static :
    hint("Declaration of " & "ggml_backend_sched_get_n_backends" &
        " already exists, not redeclaring")
when not declared(ggml_backend_sched_get_backend):
  proc ggml_backend_sched_get_backend*(sched: ggml_backend_sched_t_520094266;
                                       i: cint): ggml_backend_t_520094238 {.
      cdecl, importc: "ggml_backend_sched_get_backend".}
else:
  static :
    hint("Declaration of " & "ggml_backend_sched_get_backend" &
        " already exists, not redeclaring")
when not declared(ggml_backend_sched_get_n_splits):
  proc ggml_backend_sched_get_n_splits*(sched: ggml_backend_sched_t_520094266): cint {.
      cdecl, importc: "ggml_backend_sched_get_n_splits".}
else:
  static :
    hint("Declaration of " & "ggml_backend_sched_get_n_splits" &
        " already exists, not redeclaring")
when not declared(ggml_backend_sched_get_n_copies):
  proc ggml_backend_sched_get_n_copies*(sched: ggml_backend_sched_t_520094266): cint {.
      cdecl, importc: "ggml_backend_sched_get_n_copies".}
else:
  static :
    hint("Declaration of " & "ggml_backend_sched_get_n_copies" &
        " already exists, not redeclaring")
when not declared(ggml_backend_sched_get_buffer_size):
  proc ggml_backend_sched_get_buffer_size*(sched: ggml_backend_sched_t_520094266;
      backend: ggml_backend_t_520094238): csize_t {.cdecl,
      importc: "ggml_backend_sched_get_buffer_size".}
else:
  static :
    hint("Declaration of " & "ggml_backend_sched_get_buffer_size" &
        " already exists, not redeclaring")
when not declared(ggml_backend_sched_set_tensor_backend):
  proc ggml_backend_sched_set_tensor_backend*(sched: ggml_backend_sched_t_520094266;
      node: ptr struct_ggml_tensor_520094173; backend: ggml_backend_t_520094238): void {.
      cdecl, importc: "ggml_backend_sched_set_tensor_backend".}
else:
  static :
    hint("Declaration of " & "ggml_backend_sched_set_tensor_backend" &
        " already exists, not redeclaring")
when not declared(ggml_backend_sched_get_tensor_backend):
  proc ggml_backend_sched_get_tensor_backend*(sched: ggml_backend_sched_t_520094266;
      node: ptr struct_ggml_tensor_520094173): ggml_backend_t_520094238 {.cdecl,
      importc: "ggml_backend_sched_get_tensor_backend".}
else:
  static :
    hint("Declaration of " & "ggml_backend_sched_get_tensor_backend" &
        " already exists, not redeclaring")
when not declared(ggml_backend_sched_alloc_graph):
  proc ggml_backend_sched_alloc_graph*(sched: ggml_backend_sched_t_520094266;
                                       graph: ptr struct_ggml_cgraph): bool {.
      cdecl, importc: "ggml_backend_sched_alloc_graph".}
else:
  static :
    hint("Declaration of " & "ggml_backend_sched_alloc_graph" &
        " already exists, not redeclaring")
when not declared(ggml_backend_sched_graph_compute):
  proc ggml_backend_sched_graph_compute*(sched: ggml_backend_sched_t_520094266;
      graph: ptr struct_ggml_cgraph): enum_ggml_status_520094145 {.cdecl,
      importc: "ggml_backend_sched_graph_compute".}
else:
  static :
    hint("Declaration of " & "ggml_backend_sched_graph_compute" &
        " already exists, not redeclaring")
when not declared(ggml_backend_sched_graph_compute_async):
  proc ggml_backend_sched_graph_compute_async*(sched: ggml_backend_sched_t_520094266;
      graph: ptr struct_ggml_cgraph): enum_ggml_status_520094145 {.cdecl,
      importc: "ggml_backend_sched_graph_compute_async".}
else:
  static :
    hint("Declaration of " & "ggml_backend_sched_graph_compute_async" &
        " already exists, not redeclaring")
when not declared(ggml_backend_sched_synchronize):
  proc ggml_backend_sched_synchronize*(sched: ggml_backend_sched_t_520094266): void {.
      cdecl, importc: "ggml_backend_sched_synchronize".}
else:
  static :
    hint("Declaration of " & "ggml_backend_sched_synchronize" &
        " already exists, not redeclaring")
when not declared(ggml_backend_sched_reset):
  proc ggml_backend_sched_reset*(sched: ggml_backend_sched_t_520094266): void {.
      cdecl, importc: "ggml_backend_sched_reset".}
else:
  static :
    hint("Declaration of " & "ggml_backend_sched_reset" &
        " already exists, not redeclaring")
when not declared(ggml_backend_sched_set_eval_callback):
  proc ggml_backend_sched_set_eval_callback*(sched: ggml_backend_sched_t_520094266;
      callback: ggml_backend_sched_eval_callback_520094268; user_data: pointer): void {.
      cdecl, importc: "ggml_backend_sched_set_eval_callback".}
else:
  static :
    hint("Declaration of " & "ggml_backend_sched_set_eval_callback" &
        " already exists, not redeclaring")
when not declared(ggml_backend_graph_copy):
  proc ggml_backend_graph_copy*(backend: ggml_backend_t_520094238;
                                graph: ptr struct_ggml_cgraph): struct_ggml_backend_graph_copy_520094270 {.
      cdecl, importc: "ggml_backend_graph_copy".}
else:
  static :
    hint("Declaration of " & "ggml_backend_graph_copy" &
        " already exists, not redeclaring")
when not declared(ggml_backend_graph_copy_free):
  proc ggml_backend_graph_copy_free*(copy: struct_ggml_backend_graph_copy_520094270): void {.
      cdecl, importc: "ggml_backend_graph_copy_free".}
else:
  static :
    hint("Declaration of " & "ggml_backend_graph_copy_free" &
        " already exists, not redeclaring")
when not declared(ggml_backend_compare_graph_backend):
  proc ggml_backend_compare_graph_backend*(backend1: ggml_backend_t_520094238;
      backend2: ggml_backend_t_520094238; graph: ptr struct_ggml_cgraph;
      callback: ggml_backend_eval_callback_520094272; user_data: pointer): bool {.
      cdecl, importc: "ggml_backend_compare_graph_backend".}
else:
  static :
    hint("Declaration of " & "ggml_backend_compare_graph_backend" &
        " already exists, not redeclaring")
when not declared(ggml_backend_tensor_alloc):
  proc ggml_backend_tensor_alloc*(buffer: ggml_backend_buffer_t_520094236;
                                  tensor: ptr struct_ggml_tensor_520094173;
                                  addr_arg: pointer): void {.cdecl,
      importc: "ggml_backend_tensor_alloc".}
else:
  static :
    hint("Declaration of " & "ggml_backend_tensor_alloc" &
        " already exists, not redeclaring")
when not declared(ggml_backend_view_init):
  proc ggml_backend_view_init*(tensor: ptr struct_ggml_tensor_520094173): void {.
      cdecl, importc: "ggml_backend_view_init".}
else:
  static :
    hint("Declaration of " & "ggml_backend_view_init" &
        " already exists, not redeclaring")
when not declared(ggml_backend_cpu_buffer_from_ptr):
  proc ggml_backend_cpu_buffer_from_ptr*(ptr_arg: pointer; size: csize_t): ggml_backend_buffer_t_520094236 {.
      cdecl, importc: "ggml_backend_cpu_buffer_from_ptr".}
else:
  static :
    hint("Declaration of " & "ggml_backend_cpu_buffer_from_ptr" &
        " already exists, not redeclaring")
when not declared(ggml_backend_cpu_buffer_type):
  proc ggml_backend_cpu_buffer_type*(): ggml_backend_buffer_type_t_520094234 {.
      cdecl, importc: "ggml_backend_cpu_buffer_type".}
else:
  static :
    hint("Declaration of " & "ggml_backend_cpu_buffer_type" &
        " already exists, not redeclaring")
when not declared(ggml_numa_init):
  proc ggml_numa_init*(numa: enum_ggml_numa_strategy_520094282): void {.cdecl,
      importc: "ggml_numa_init".}
else:
  static :
    hint("Declaration of " & "ggml_numa_init" &
        " already exists, not redeclaring")
when not declared(ggml_is_numa):
  proc ggml_is_numa*(): bool {.cdecl, importc: "ggml_is_numa".}
else:
  static :
    hint("Declaration of " & "ggml_is_numa" & " already exists, not redeclaring")
when not declared(ggml_new_i32):
  proc ggml_new_i32*(ctx: ptr struct_ggml_context; value: int32): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_new_i32".}
else:
  static :
    hint("Declaration of " & "ggml_new_i32" & " already exists, not redeclaring")
when not declared(ggml_new_f32):
  proc ggml_new_f32*(ctx: ptr struct_ggml_context; value: cfloat): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_new_f32".}
else:
  static :
    hint("Declaration of " & "ggml_new_f32" & " already exists, not redeclaring")
when not declared(ggml_set_i32):
  proc ggml_set_i32*(tensor: ptr struct_ggml_tensor_520094173; value: int32): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_set_i32".}
else:
  static :
    hint("Declaration of " & "ggml_set_i32" & " already exists, not redeclaring")
when not declared(ggml_set_f32):
  proc ggml_set_f32*(tensor: ptr struct_ggml_tensor_520094173; value: cfloat): ptr struct_ggml_tensor_520094173 {.
      cdecl, importc: "ggml_set_f32".}
else:
  static :
    hint("Declaration of " & "ggml_set_f32" & " already exists, not redeclaring")
when not declared(ggml_get_i32_1d):
  proc ggml_get_i32_1d*(tensor: ptr struct_ggml_tensor_520094173; i: cint): int32 {.
      cdecl, importc: "ggml_get_i32_1d".}
else:
  static :
    hint("Declaration of " & "ggml_get_i32_1d" &
        " already exists, not redeclaring")
when not declared(ggml_set_i32_1d):
  proc ggml_set_i32_1d*(tensor: ptr struct_ggml_tensor_520094173; i: cint;
                        value: int32): void {.cdecl, importc: "ggml_set_i32_1d".}
else:
  static :
    hint("Declaration of " & "ggml_set_i32_1d" &
        " already exists, not redeclaring")
when not declared(ggml_get_i32_nd):
  proc ggml_get_i32_nd*(tensor: ptr struct_ggml_tensor_520094173; i0: cint;
                        i1: cint; i2: cint; i3: cint): int32 {.cdecl,
      importc: "ggml_get_i32_nd".}
else:
  static :
    hint("Declaration of " & "ggml_get_i32_nd" &
        " already exists, not redeclaring")
when not declared(ggml_set_i32_nd):
  proc ggml_set_i32_nd*(tensor: ptr struct_ggml_tensor_520094173; i0: cint;
                        i1: cint; i2: cint; i3: cint; value: int32): void {.
      cdecl, importc: "ggml_set_i32_nd".}
else:
  static :
    hint("Declaration of " & "ggml_set_i32_nd" &
        " already exists, not redeclaring")
when not declared(ggml_get_f32_1d):
  proc ggml_get_f32_1d*(tensor: ptr struct_ggml_tensor_520094173; i: cint): cfloat {.
      cdecl, importc: "ggml_get_f32_1d".}
else:
  static :
    hint("Declaration of " & "ggml_get_f32_1d" &
        " already exists, not redeclaring")
when not declared(ggml_set_f32_1d):
  proc ggml_set_f32_1d*(tensor: ptr struct_ggml_tensor_520094173; i: cint;
                        value: cfloat): void {.cdecl, importc: "ggml_set_f32_1d".}
else:
  static :
    hint("Declaration of " & "ggml_set_f32_1d" &
        " already exists, not redeclaring")
when not declared(ggml_get_f32_nd):
  proc ggml_get_f32_nd*(tensor: ptr struct_ggml_tensor_520094173; i0: cint;
                        i1: cint; i2: cint; i3: cint): cfloat {.cdecl,
      importc: "ggml_get_f32_nd".}
else:
  static :
    hint("Declaration of " & "ggml_get_f32_nd" &
        " already exists, not redeclaring")
when not declared(ggml_set_f32_nd):
  proc ggml_set_f32_nd*(tensor: ptr struct_ggml_tensor_520094173; i0: cint;
                        i1: cint; i2: cint; i3: cint; value: cfloat): void {.
      cdecl, importc: "ggml_set_f32_nd".}
else:
  static :
    hint("Declaration of " & "ggml_set_f32_nd" &
        " already exists, not redeclaring")
when not declared(ggml_threadpool_params_default):
  proc ggml_threadpool_params_default*(n_threads: cint): struct_ggml_threadpool_params_520094276 {.
      cdecl, importc: "ggml_threadpool_params_default".}
else:
  static :
    hint("Declaration of " & "ggml_threadpool_params_default" &
        " already exists, not redeclaring")
when not declared(ggml_threadpool_params_init):
  proc ggml_threadpool_params_init*(p: ptr struct_ggml_threadpool_params_520094276;
                                    n_threads: cint): void {.cdecl,
      importc: "ggml_threadpool_params_init".}
else:
  static :
    hint("Declaration of " & "ggml_threadpool_params_init" &
        " already exists, not redeclaring")
when not declared(ggml_threadpool_params_match):
  proc ggml_threadpool_params_match*(p0: ptr struct_ggml_threadpool_params_520094276;
                                     p1: ptr struct_ggml_threadpool_params_520094276): bool {.
      cdecl, importc: "ggml_threadpool_params_match".}
else:
  static :
    hint("Declaration of " & "ggml_threadpool_params_match" &
        " already exists, not redeclaring")
when not declared(ggml_threadpool_new):
  proc ggml_threadpool_new*(params: ptr struct_ggml_threadpool_params_520094276): ptr struct_ggml_threadpool {.
      cdecl, importc: "ggml_threadpool_new".}
else:
  static :
    hint("Declaration of " & "ggml_threadpool_new" &
        " already exists, not redeclaring")
when not declared(ggml_threadpool_free):
  proc ggml_threadpool_free*(threadpool: ptr struct_ggml_threadpool): void {.
      cdecl, importc: "ggml_threadpool_free".}
else:
  static :
    hint("Declaration of " & "ggml_threadpool_free" &
        " already exists, not redeclaring")
when not declared(ggml_threadpool_get_n_threads):
  proc ggml_threadpool_get_n_threads*(threadpool: ptr struct_ggml_threadpool): cint {.
      cdecl, importc: "ggml_threadpool_get_n_threads".}
else:
  static :
    hint("Declaration of " & "ggml_threadpool_get_n_threads" &
        " already exists, not redeclaring")
when not declared(ggml_threadpool_pause):
  proc ggml_threadpool_pause*(threadpool: ptr struct_ggml_threadpool): void {.
      cdecl, importc: "ggml_threadpool_pause".}
else:
  static :
    hint("Declaration of " & "ggml_threadpool_pause" &
        " already exists, not redeclaring")
when not declared(ggml_threadpool_resume):
  proc ggml_threadpool_resume*(threadpool: ptr struct_ggml_threadpool): void {.
      cdecl, importc: "ggml_threadpool_resume".}
else:
  static :
    hint("Declaration of " & "ggml_threadpool_resume" &
        " already exists, not redeclaring")
when not declared(ggml_graph_plan):
  proc ggml_graph_plan*(cgraph: ptr struct_ggml_cgraph; n_threads: cint;
                        threadpool: ptr struct_ggml_threadpool): struct_ggml_cplan_520094280 {.
      cdecl, importc: "ggml_graph_plan".}
else:
  static :
    hint("Declaration of " & "ggml_graph_plan" &
        " already exists, not redeclaring")
when not declared(ggml_graph_compute):
  proc ggml_graph_compute*(cgraph: ptr struct_ggml_cgraph;
                           cplan: ptr struct_ggml_cplan_520094280): enum_ggml_status_520094145 {.
      cdecl, importc: "ggml_graph_compute".}
else:
  static :
    hint("Declaration of " & "ggml_graph_compute" &
        " already exists, not redeclaring")
when not declared(ggml_graph_compute_with_ctx):
  proc ggml_graph_compute_with_ctx*(ctx: ptr struct_ggml_context;
                                    cgraph: ptr struct_ggml_cgraph;
                                    n_threads: cint): enum_ggml_status_520094145 {.
      cdecl, importc: "ggml_graph_compute_with_ctx".}
else:
  static :
    hint("Declaration of " & "ggml_graph_compute_with_ctx" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_neon):
  proc ggml_cpu_has_neon*(): cint {.cdecl, importc: "ggml_cpu_has_neon".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_neon" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_sve):
  proc ggml_cpu_has_sve*(): cint {.cdecl, importc: "ggml_cpu_has_sve".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_sve" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_has_matmul_int8):
  proc ggml_cpu_has_matmul_int8*(): cint {.cdecl,
      importc: "ggml_cpu_has_matmul_int8".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_has_matmul_int8" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_get_sve_cnt):
  proc ggml_cpu_get_sve_cnt*(): cint {.cdecl, importc: "ggml_cpu_get_sve_cnt".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_get_sve_cnt" &
        " already exists, not redeclaring")
when not declared(ggml_get_type_traits_cpu):
  proc ggml_get_type_traits_cpu*(type_arg: enum_ggml_type_520094153): ptr struct_ggml_type_traits_cpu_520094292 {.
      cdecl, importc: "ggml_get_type_traits_cpu".}
else:
  static :
    hint("Declaration of " & "ggml_get_type_traits_cpu" &
        " already exists, not redeclaring")
when not declared(ggml_cpu_init):
  proc ggml_cpu_init*(): void {.cdecl, importc: "ggml_cpu_init".}
else:
  static :
    hint("Declaration of " & "ggml_cpu_init" &
        " already exists, not redeclaring")
when not declared(ggml_backend_cpu_init):
  proc ggml_backend_cpu_init*(): ggml_backend_t_520094238 {.cdecl,
      importc: "ggml_backend_cpu_init".}
else:
  static :
    hint("Declaration of " & "ggml_backend_cpu_init" &
        " already exists, not redeclaring")
when not declared(ggml_backend_is_cpu):
  proc ggml_backend_is_cpu*(backend: ggml_backend_t_520094238): bool {.cdecl,
      importc: "ggml_backend_is_cpu".}
else:
  static :
    hint("Declaration of " & "ggml_backend_is_cpu" &
        " already exists, not redeclaring")
when not declared(ggml_backend_cpu_set_n_threads):
  proc ggml_backend_cpu_set_n_threads*(backend_cpu: ggml_backend_t_520094238;
                                       n_threads: cint): void {.cdecl,
      importc: "ggml_backend_cpu_set_n_threads".}
else:
  static :
    hint("Declaration of " & "ggml_backend_cpu_set_n_threads" &
        " already exists, not redeclaring")
when not declared(ggml_backend_cpu_set_threadpool):
  proc ggml_backend_cpu_set_threadpool*(backend_cpu: ggml_backend_t_520094238;
                                        threadpool: ggml_threadpool_t_520094278): void {.
      cdecl, importc: "ggml_backend_cpu_set_threadpool".}
else:
  static :
    hint("Declaration of " & "ggml_backend_cpu_set_threadpool" &
        " already exists, not redeclaring")
when not declared(ggml_backend_cpu_set_abort_callback):
  proc ggml_backend_cpu_set_abort_callback*(backend_cpu: ggml_backend_t_520094238;
      abort_callback: ggml_abort_callback_520094175;
      abort_callback_data: pointer): void {.cdecl,
      importc: "ggml_backend_cpu_set_abort_callback".}
else:
  static :
    hint("Declaration of " & "ggml_backend_cpu_set_abort_callback" &
        " already exists, not redeclaring")
when not declared(ggml_backend_cpu_reg):
  proc ggml_backend_cpu_reg*(): ggml_backend_reg_t_520094248 {.cdecl,
      importc: "ggml_backend_cpu_reg".}
else:
  static :
    hint("Declaration of " & "ggml_backend_cpu_reg" &
        " already exists, not redeclaring")
when not declared(whisper_init_from_file_with_params):
  proc whisper_init_from_file_with_params*(path_model: cstring;
      params: struct_whisper_context_params_520094310): ptr struct_whisper_context {.
      cdecl, importc: "whisper_init_from_file_with_params".}
else:
  static :
    hint("Declaration of " & "whisper_init_from_file_with_params" &
        " already exists, not redeclaring")
when not declared(whisper_init_from_buffer_with_params):
  proc whisper_init_from_buffer_with_params*(buffer: pointer;
      buffer_size: csize_t; params: struct_whisper_context_params_520094310): ptr struct_whisper_context {.
      cdecl, importc: "whisper_init_from_buffer_with_params".}
else:
  static :
    hint("Declaration of " & "whisper_init_from_buffer_with_params" &
        " already exists, not redeclaring")
when not declared(whisper_init_with_params):
  proc whisper_init_with_params*(loader: ptr struct_whisper_model_loader_520094316;
                                 params: struct_whisper_context_params_520094310): ptr struct_whisper_context {.
      cdecl, importc: "whisper_init_with_params".}
else:
  static :
    hint("Declaration of " & "whisper_init_with_params" &
        " already exists, not redeclaring")
when not declared(whisper_init_from_file_with_params_no_state):
  proc whisper_init_from_file_with_params_no_state*(path_model: cstring;
      params: struct_whisper_context_params_520094310): ptr struct_whisper_context {.
      cdecl, importc: "whisper_init_from_file_with_params_no_state".}
else:
  static :
    hint("Declaration of " & "whisper_init_from_file_with_params_no_state" &
        " already exists, not redeclaring")
when not declared(whisper_init_from_buffer_with_params_no_state):
  proc whisper_init_from_buffer_with_params_no_state*(buffer: pointer;
      buffer_size: csize_t; params: struct_whisper_context_params_520094310): ptr struct_whisper_context {.
      cdecl, importc: "whisper_init_from_buffer_with_params_no_state".}
else:
  static :
    hint("Declaration of " & "whisper_init_from_buffer_with_params_no_state" &
        " already exists, not redeclaring")
when not declared(whisper_init_with_params_no_state):
  proc whisper_init_with_params_no_state*(
      loader: ptr struct_whisper_model_loader_520094316;
      params: struct_whisper_context_params_520094310): ptr struct_whisper_context {.
      cdecl, importc: "whisper_init_with_params_no_state".}
else:
  static :
    hint("Declaration of " & "whisper_init_with_params_no_state" &
        " already exists, not redeclaring")
when not declared(whisper_init_from_file):
  proc whisper_init_from_file*(path_model: cstring): ptr struct_whisper_context {.
      cdecl, importc: "whisper_init_from_file".}
else:
  static :
    hint("Declaration of " & "whisper_init_from_file" &
        " already exists, not redeclaring")
when not declared(whisper_init_from_buffer):
  proc whisper_init_from_buffer*(buffer: pointer; buffer_size: csize_t): ptr struct_whisper_context {.
      cdecl, importc: "whisper_init_from_buffer".}
else:
  static :
    hint("Declaration of " & "whisper_init_from_buffer" &
        " already exists, not redeclaring")
when not declared(whisper_init):
  proc whisper_init*(loader: ptr struct_whisper_model_loader_520094316): ptr struct_whisper_context {.
      cdecl, importc: "whisper_init".}
else:
  static :
    hint("Declaration of " & "whisper_init" & " already exists, not redeclaring")
when not declared(whisper_init_from_file_no_state):
  proc whisper_init_from_file_no_state*(path_model: cstring): ptr struct_whisper_context {.
      cdecl, importc: "whisper_init_from_file_no_state".}
else:
  static :
    hint("Declaration of " & "whisper_init_from_file_no_state" &
        " already exists, not redeclaring")
when not declared(whisper_init_from_buffer_no_state):
  proc whisper_init_from_buffer_no_state*(buffer: pointer; buffer_size: csize_t): ptr struct_whisper_context {.
      cdecl, importc: "whisper_init_from_buffer_no_state".}
else:
  static :
    hint("Declaration of " & "whisper_init_from_buffer_no_state" &
        " already exists, not redeclaring")
when not declared(whisper_init_no_state):
  proc whisper_init_no_state*(loader: ptr struct_whisper_model_loader_520094316): ptr struct_whisper_context {.
      cdecl, importc: "whisper_init_no_state".}
else:
  static :
    hint("Declaration of " & "whisper_init_no_state" &
        " already exists, not redeclaring")
when not declared(whisper_init_state):
  proc whisper_init_state*(ctx: ptr struct_whisper_context): ptr struct_whisper_state {.
      cdecl, importc: "whisper_init_state".}
else:
  static :
    hint("Declaration of " & "whisper_init_state" &
        " already exists, not redeclaring")
when not declared(whisper_ctx_init_openvino_encoder_with_state):
  proc whisper_ctx_init_openvino_encoder_with_state*(
      ctx: ptr struct_whisper_context; state: ptr struct_whisper_state;
      model_path: cstring; device: cstring; cache_dir: cstring): cint {.cdecl,
      importc: "whisper_ctx_init_openvino_encoder_with_state".}
else:
  static :
    hint("Declaration of " & "whisper_ctx_init_openvino_encoder_with_state" &
        " already exists, not redeclaring")
when not declared(whisper_ctx_init_openvino_encoder):
  proc whisper_ctx_init_openvino_encoder*(ctx: ptr struct_whisper_context;
      model_path: cstring; device: cstring; cache_dir: cstring): cint {.cdecl,
      importc: "whisper_ctx_init_openvino_encoder".}
else:
  static :
    hint("Declaration of " & "whisper_ctx_init_openvino_encoder" &
        " already exists, not redeclaring")
when not declared(whisper_free):
  proc whisper_free*(ctx: ptr struct_whisper_context): void {.cdecl,
      importc: "whisper_free".}
else:
  static :
    hint("Declaration of " & "whisper_free" & " already exists, not redeclaring")
when not declared(whisper_free_state):
  proc whisper_free_state*(state: ptr struct_whisper_state): void {.cdecl,
      importc: "whisper_free_state".}
else:
  static :
    hint("Declaration of " & "whisper_free_state" &
        " already exists, not redeclaring")
when not declared(whisper_free_params):
  proc whisper_free_params*(params: ptr struct_whisper_full_params_520094326): void {.
      cdecl, importc: "whisper_free_params".}
else:
  static :
    hint("Declaration of " & "whisper_free_params" &
        " already exists, not redeclaring")
when not declared(whisper_free_context_params):
  proc whisper_free_context_params*(params: ptr struct_whisper_context_params_520094310): void {.
      cdecl, importc: "whisper_free_context_params".}
else:
  static :
    hint("Declaration of " & "whisper_free_context_params" &
        " already exists, not redeclaring")
when not declared(whisper_pcm_to_mel):
  proc whisper_pcm_to_mel*(ctx: ptr struct_whisper_context; samples: ptr cfloat;
                           n_samples: cint; n_threads: cint): cint {.cdecl,
      importc: "whisper_pcm_to_mel".}
else:
  static :
    hint("Declaration of " & "whisper_pcm_to_mel" &
        " already exists, not redeclaring")
when not declared(whisper_pcm_to_mel_with_state):
  proc whisper_pcm_to_mel_with_state*(ctx: ptr struct_whisper_context;
                                      state: ptr struct_whisper_state;
                                      samples: ptr cfloat; n_samples: cint;
                                      n_threads: cint): cint {.cdecl,
      importc: "whisper_pcm_to_mel_with_state".}
else:
  static :
    hint("Declaration of " & "whisper_pcm_to_mel_with_state" &
        " already exists, not redeclaring")
when not declared(whisper_set_mel):
  proc whisper_set_mel*(ctx: ptr struct_whisper_context; data: ptr cfloat;
                        n_len: cint; n_mel: cint): cint {.cdecl,
      importc: "whisper_set_mel".}
else:
  static :
    hint("Declaration of " & "whisper_set_mel" &
        " already exists, not redeclaring")
when not declared(whisper_set_mel_with_state):
  proc whisper_set_mel_with_state*(ctx: ptr struct_whisper_context;
                                   state: ptr struct_whisper_state;
                                   data: ptr cfloat; n_len: cint; n_mel: cint): cint {.
      cdecl, importc: "whisper_set_mel_with_state".}
else:
  static :
    hint("Declaration of " & "whisper_set_mel_with_state" &
        " already exists, not redeclaring")
when not declared(whisper_encode):
  proc whisper_encode*(ctx: ptr struct_whisper_context; offset: cint;
                       n_threads: cint): cint {.cdecl, importc: "whisper_encode".}
else:
  static :
    hint("Declaration of " & "whisper_encode" &
        " already exists, not redeclaring")
when not declared(whisper_encode_with_state):
  proc whisper_encode_with_state*(ctx: ptr struct_whisper_context;
                                  state: ptr struct_whisper_state; offset: cint;
                                  n_threads: cint): cint {.cdecl,
      importc: "whisper_encode_with_state".}
else:
  static :
    hint("Declaration of " & "whisper_encode_with_state" &
        " already exists, not redeclaring")
when not declared(whisper_decode):
  proc whisper_decode*(ctx: ptr struct_whisper_context;
                       tokens: ptr whisper_token_520094296; n_tokens: cint;
                       n_past: cint; n_threads: cint): cint {.cdecl,
      importc: "whisper_decode".}
else:
  static :
    hint("Declaration of " & "whisper_decode" &
        " already exists, not redeclaring")
when not declared(whisper_decode_with_state):
  proc whisper_decode_with_state*(ctx: ptr struct_whisper_context;
                                  state: ptr struct_whisper_state;
                                  tokens: ptr whisper_token_520094296;
                                  n_tokens: cint; n_past: cint; n_threads: cint): cint {.
      cdecl, importc: "whisper_decode_with_state".}
else:
  static :
    hint("Declaration of " & "whisper_decode_with_state" &
        " already exists, not redeclaring")
when not declared(whisper_tokenize):
  proc whisper_tokenize*(ctx: ptr struct_whisper_context; text: cstring;
                         tokens: ptr whisper_token_520094296; n_max_tokens: cint): cint {.
      cdecl, importc: "whisper_tokenize".}
else:
  static :
    hint("Declaration of " & "whisper_tokenize" &
        " already exists, not redeclaring")
when not declared(whisper_token_count):
  proc whisper_token_count*(ctx: ptr struct_whisper_context; text: cstring): cint {.
      cdecl, importc: "whisper_token_count".}
else:
  static :
    hint("Declaration of " & "whisper_token_count" &
        " already exists, not redeclaring")
when not declared(whisper_lang_max_id):
  proc whisper_lang_max_id*(): cint {.cdecl, importc: "whisper_lang_max_id".}
else:
  static :
    hint("Declaration of " & "whisper_lang_max_id" &
        " already exists, not redeclaring")
when not declared(whisper_lang_id):
  proc whisper_lang_id*(lang: cstring): cint {.cdecl, importc: "whisper_lang_id".}
else:
  static :
    hint("Declaration of " & "whisper_lang_id" &
        " already exists, not redeclaring")
when not declared(whisper_lang_str):
  proc whisper_lang_str*(id: cint): cstring {.cdecl, importc: "whisper_lang_str".}
else:
  static :
    hint("Declaration of " & "whisper_lang_str" &
        " already exists, not redeclaring")
when not declared(whisper_lang_str_full):
  proc whisper_lang_str_full*(id: cint): cstring {.cdecl,
      importc: "whisper_lang_str_full".}
else:
  static :
    hint("Declaration of " & "whisper_lang_str_full" &
        " already exists, not redeclaring")
when not declared(whisper_lang_auto_detect):
  proc whisper_lang_auto_detect*(ctx: ptr struct_whisper_context;
                                 offset_ms: cint; n_threads: cint;
                                 lang_probs: ptr cfloat): cint {.cdecl,
      importc: "whisper_lang_auto_detect".}
else:
  static :
    hint("Declaration of " & "whisper_lang_auto_detect" &
        " already exists, not redeclaring")
when not declared(whisper_lang_auto_detect_with_state):
  proc whisper_lang_auto_detect_with_state*(ctx: ptr struct_whisper_context;
      state: ptr struct_whisper_state; offset_ms: cint; n_threads: cint;
      lang_probs: ptr cfloat): cint {.cdecl, importc: "whisper_lang_auto_detect_with_state".}
else:
  static :
    hint("Declaration of " & "whisper_lang_auto_detect_with_state" &
        " already exists, not redeclaring")
when not declared(whisper_n_len):
  proc whisper_n_len*(ctx: ptr struct_whisper_context): cint {.cdecl,
      importc: "whisper_n_len".}
else:
  static :
    hint("Declaration of " & "whisper_n_len" &
        " already exists, not redeclaring")
when not declared(whisper_n_len_from_state):
  proc whisper_n_len_from_state*(state: ptr struct_whisper_state): cint {.cdecl,
      importc: "whisper_n_len_from_state".}
else:
  static :
    hint("Declaration of " & "whisper_n_len_from_state" &
        " already exists, not redeclaring")
when not declared(whisper_n_vocab):
  proc whisper_n_vocab*(ctx: ptr struct_whisper_context): cint {.cdecl,
      importc: "whisper_n_vocab".}
else:
  static :
    hint("Declaration of " & "whisper_n_vocab" &
        " already exists, not redeclaring")
when not declared(whisper_n_text_ctx):
  proc whisper_n_text_ctx*(ctx: ptr struct_whisper_context): cint {.cdecl,
      importc: "whisper_n_text_ctx".}
else:
  static :
    hint("Declaration of " & "whisper_n_text_ctx" &
        " already exists, not redeclaring")
when not declared(whisper_n_audio_ctx):
  proc whisper_n_audio_ctx*(ctx: ptr struct_whisper_context): cint {.cdecl,
      importc: "whisper_n_audio_ctx".}
else:
  static :
    hint("Declaration of " & "whisper_n_audio_ctx" &
        " already exists, not redeclaring")
when not declared(whisper_is_multilingual):
  proc whisper_is_multilingual*(ctx: ptr struct_whisper_context): cint {.cdecl,
      importc: "whisper_is_multilingual".}
else:
  static :
    hint("Declaration of " & "whisper_is_multilingual" &
        " already exists, not redeclaring")
when not declared(whisper_model_n_vocab):
  proc whisper_model_n_vocab*(ctx: ptr struct_whisper_context): cint {.cdecl,
      importc: "whisper_model_n_vocab".}
else:
  static :
    hint("Declaration of " & "whisper_model_n_vocab" &
        " already exists, not redeclaring")
when not declared(whisper_model_n_audio_ctx):
  proc whisper_model_n_audio_ctx*(ctx: ptr struct_whisper_context): cint {.
      cdecl, importc: "whisper_model_n_audio_ctx".}
else:
  static :
    hint("Declaration of " & "whisper_model_n_audio_ctx" &
        " already exists, not redeclaring")
when not declared(whisper_model_n_audio_state):
  proc whisper_model_n_audio_state*(ctx: ptr struct_whisper_context): cint {.
      cdecl, importc: "whisper_model_n_audio_state".}
else:
  static :
    hint("Declaration of " & "whisper_model_n_audio_state" &
        " already exists, not redeclaring")
when not declared(whisper_model_n_audio_head):
  proc whisper_model_n_audio_head*(ctx: ptr struct_whisper_context): cint {.
      cdecl, importc: "whisper_model_n_audio_head".}
else:
  static :
    hint("Declaration of " & "whisper_model_n_audio_head" &
        " already exists, not redeclaring")
when not declared(whisper_model_n_audio_layer):
  proc whisper_model_n_audio_layer*(ctx: ptr struct_whisper_context): cint {.
      cdecl, importc: "whisper_model_n_audio_layer".}
else:
  static :
    hint("Declaration of " & "whisper_model_n_audio_layer" &
        " already exists, not redeclaring")
when not declared(whisper_model_n_text_ctx):
  proc whisper_model_n_text_ctx*(ctx: ptr struct_whisper_context): cint {.cdecl,
      importc: "whisper_model_n_text_ctx".}
else:
  static :
    hint("Declaration of " & "whisper_model_n_text_ctx" &
        " already exists, not redeclaring")
when not declared(whisper_model_n_text_state):
  proc whisper_model_n_text_state*(ctx: ptr struct_whisper_context): cint {.
      cdecl, importc: "whisper_model_n_text_state".}
else:
  static :
    hint("Declaration of " & "whisper_model_n_text_state" &
        " already exists, not redeclaring")
when not declared(whisper_model_n_text_head):
  proc whisper_model_n_text_head*(ctx: ptr struct_whisper_context): cint {.
      cdecl, importc: "whisper_model_n_text_head".}
else:
  static :
    hint("Declaration of " & "whisper_model_n_text_head" &
        " already exists, not redeclaring")
when not declared(whisper_model_n_text_layer):
  proc whisper_model_n_text_layer*(ctx: ptr struct_whisper_context): cint {.
      cdecl, importc: "whisper_model_n_text_layer".}
else:
  static :
    hint("Declaration of " & "whisper_model_n_text_layer" &
        " already exists, not redeclaring")
when not declared(whisper_model_n_mels):
  proc whisper_model_n_mels*(ctx: ptr struct_whisper_context): cint {.cdecl,
      importc: "whisper_model_n_mels".}
else:
  static :
    hint("Declaration of " & "whisper_model_n_mels" &
        " already exists, not redeclaring")
when not declared(whisper_model_ftype):
  proc whisper_model_ftype*(ctx: ptr struct_whisper_context): cint {.cdecl,
      importc: "whisper_model_ftype".}
else:
  static :
    hint("Declaration of " & "whisper_model_ftype" &
        " already exists, not redeclaring")
when not declared(whisper_model_type):
  proc whisper_model_type*(ctx: ptr struct_whisper_context): cint {.cdecl,
      importc: "whisper_model_type".}
else:
  static :
    hint("Declaration of " & "whisper_model_type" &
        " already exists, not redeclaring")
when not declared(whisper_get_logits):
  proc whisper_get_logits*(ctx: ptr struct_whisper_context): ptr cfloat {.cdecl,
      importc: "whisper_get_logits".}
else:
  static :
    hint("Declaration of " & "whisper_get_logits" &
        " already exists, not redeclaring")
when not declared(whisper_get_logits_from_state):
  proc whisper_get_logits_from_state*(state: ptr struct_whisper_state): ptr cfloat {.
      cdecl, importc: "whisper_get_logits_from_state".}
else:
  static :
    hint("Declaration of " & "whisper_get_logits_from_state" &
        " already exists, not redeclaring")
when not declared(whisper_token_to_str):
  proc whisper_token_to_str*(ctx: ptr struct_whisper_context;
                             token: whisper_token_520094296): cstring {.cdecl,
      importc: "whisper_token_to_str".}
else:
  static :
    hint("Declaration of " & "whisper_token_to_str" &
        " already exists, not redeclaring")
when not declared(whisper_model_type_readable):
  proc whisper_model_type_readable*(ctx: ptr struct_whisper_context): cstring {.
      cdecl, importc: "whisper_model_type_readable".}
else:
  static :
    hint("Declaration of " & "whisper_model_type_readable" &
        " already exists, not redeclaring")
when not declared(whisper_token_eot):
  proc whisper_token_eot*(ctx: ptr struct_whisper_context): whisper_token_520094296 {.
      cdecl, importc: "whisper_token_eot".}
else:
  static :
    hint("Declaration of " & "whisper_token_eot" &
        " already exists, not redeclaring")
when not declared(whisper_token_sot):
  proc whisper_token_sot*(ctx: ptr struct_whisper_context): whisper_token_520094296 {.
      cdecl, importc: "whisper_token_sot".}
else:
  static :
    hint("Declaration of " & "whisper_token_sot" &
        " already exists, not redeclaring")
when not declared(whisper_token_solm):
  proc whisper_token_solm*(ctx: ptr struct_whisper_context): whisper_token_520094296 {.
      cdecl, importc: "whisper_token_solm".}
else:
  static :
    hint("Declaration of " & "whisper_token_solm" &
        " already exists, not redeclaring")
when not declared(whisper_token_prev):
  proc whisper_token_prev*(ctx: ptr struct_whisper_context): whisper_token_520094296 {.
      cdecl, importc: "whisper_token_prev".}
else:
  static :
    hint("Declaration of " & "whisper_token_prev" &
        " already exists, not redeclaring")
when not declared(whisper_token_nosp):
  proc whisper_token_nosp*(ctx: ptr struct_whisper_context): whisper_token_520094296 {.
      cdecl, importc: "whisper_token_nosp".}
else:
  static :
    hint("Declaration of " & "whisper_token_nosp" &
        " already exists, not redeclaring")
when not declared(whisper_token_not):
  proc whisper_token_not*(ctx: ptr struct_whisper_context): whisper_token_520094296 {.
      cdecl, importc: "whisper_token_not".}
else:
  static :
    hint("Declaration of " & "whisper_token_not" &
        " already exists, not redeclaring")
when not declared(whisper_token_beg):
  proc whisper_token_beg*(ctx: ptr struct_whisper_context): whisper_token_520094296 {.
      cdecl, importc: "whisper_token_beg".}
else:
  static :
    hint("Declaration of " & "whisper_token_beg" &
        " already exists, not redeclaring")
when not declared(whisper_token_lang):
  proc whisper_token_lang*(ctx: ptr struct_whisper_context; lang_id: cint): whisper_token_520094296 {.
      cdecl, importc: "whisper_token_lang".}
else:
  static :
    hint("Declaration of " & "whisper_token_lang" &
        " already exists, not redeclaring")
when not declared(whisper_token_translate):
  proc whisper_token_translate*(ctx: ptr struct_whisper_context): whisper_token_520094296 {.
      cdecl, importc: "whisper_token_translate".}
else:
  static :
    hint("Declaration of " & "whisper_token_translate" &
        " already exists, not redeclaring")
when not declared(whisper_token_transcribe):
  proc whisper_token_transcribe*(ctx: ptr struct_whisper_context): whisper_token_520094296 {.
      cdecl, importc: "whisper_token_transcribe".}
else:
  static :
    hint("Declaration of " & "whisper_token_transcribe" &
        " already exists, not redeclaring")
when not declared(whisper_get_timings):
  proc whisper_get_timings*(ctx: ptr struct_whisper_context): ptr struct_whisper_timings_520094328 {.
      cdecl, importc: "whisper_get_timings".}
else:
  static :
    hint("Declaration of " & "whisper_get_timings" &
        " already exists, not redeclaring")
when not declared(whisper_print_timings):
  proc whisper_print_timings*(ctx: ptr struct_whisper_context): void {.cdecl,
      importc: "whisper_print_timings".}
else:
  static :
    hint("Declaration of " & "whisper_print_timings" &
        " already exists, not redeclaring")
when not declared(whisper_reset_timings):
  proc whisper_reset_timings*(ctx: ptr struct_whisper_context): void {.cdecl,
      importc: "whisper_reset_timings".}
else:
  static :
    hint("Declaration of " & "whisper_reset_timings" &
        " already exists, not redeclaring")
when not declared(whisper_print_system_info):
  proc whisper_print_system_info*(): cstring {.cdecl,
      importc: "whisper_print_system_info".}
else:
  static :
    hint("Declaration of " & "whisper_print_system_info" &
        " already exists, not redeclaring")
when not declared(whisper_context_default_params_by_ref):
  proc whisper_context_default_params_by_ref*(): ptr struct_whisper_context_params_520094310 {.
      cdecl, importc: "whisper_context_default_params_by_ref".}
else:
  static :
    hint("Declaration of " & "whisper_context_default_params_by_ref" &
        " already exists, not redeclaring")
when not declared(whisper_context_default_params):
  proc whisper_context_default_params*(): struct_whisper_context_params_520094310 {.
      cdecl, importc: "whisper_context_default_params".}
else:
  static :
    hint("Declaration of " & "whisper_context_default_params" &
        " already exists, not redeclaring")
when not declared(whisper_full_default_params_by_ref):
  proc whisper_full_default_params_by_ref*(
      strategy: enum_whisper_sampling_strategy_520094330): ptr struct_whisper_full_params_520094326 {.
      cdecl, importc: "whisper_full_default_params_by_ref".}
else:
  static :
    hint("Declaration of " & "whisper_full_default_params_by_ref" &
        " already exists, not redeclaring")
when not declared(whisper_full_default_params):
  proc whisper_full_default_params*(strategy: enum_whisper_sampling_strategy_520094330): struct_whisper_full_params_520094326 {.
      cdecl, importc: "whisper_full_default_params".}
else:
  static :
    hint("Declaration of " & "whisper_full_default_params" &
        " already exists, not redeclaring")
when not declared(whisper_full):
  proc whisper_full*(ctx: ptr struct_whisper_context;
                     params: struct_whisper_full_params_520094326;
                     samples: ptr cfloat; n_samples: cint): cint {.cdecl,
      importc: "whisper_full".}
else:
  static :
    hint("Declaration of " & "whisper_full" & " already exists, not redeclaring")
when not declared(whisper_full_with_state):
  proc whisper_full_with_state*(ctx: ptr struct_whisper_context;
                                state: ptr struct_whisper_state;
                                params: struct_whisper_full_params_520094326;
                                samples: ptr cfloat; n_samples: cint): cint {.
      cdecl, importc: "whisper_full_with_state".}
else:
  static :
    hint("Declaration of " & "whisper_full_with_state" &
        " already exists, not redeclaring")
when not declared(whisper_full_parallel):
  proc whisper_full_parallel*(ctx: ptr struct_whisper_context;
                              params: struct_whisper_full_params_520094326;
                              samples: ptr cfloat; n_samples: cint;
                              n_processors: cint): cint {.cdecl,
      importc: "whisper_full_parallel".}
else:
  static :
    hint("Declaration of " & "whisper_full_parallel" &
        " already exists, not redeclaring")
when not declared(whisper_full_n_segments):
  proc whisper_full_n_segments*(ctx: ptr struct_whisper_context): cint {.cdecl,
      importc: "whisper_full_n_segments".}
else:
  static :
    hint("Declaration of " & "whisper_full_n_segments" &
        " already exists, not redeclaring")
when not declared(whisper_full_n_segments_from_state):
  proc whisper_full_n_segments_from_state*(state: ptr struct_whisper_state): cint {.
      cdecl, importc: "whisper_full_n_segments_from_state".}
else:
  static :
    hint("Declaration of " & "whisper_full_n_segments_from_state" &
        " already exists, not redeclaring")
when not declared(whisper_full_lang_id):
  proc whisper_full_lang_id*(ctx: ptr struct_whisper_context): cint {.cdecl,
      importc: "whisper_full_lang_id".}
else:
  static :
    hint("Declaration of " & "whisper_full_lang_id" &
        " already exists, not redeclaring")
when not declared(whisper_full_lang_id_from_state):
  proc whisper_full_lang_id_from_state*(state: ptr struct_whisper_state): cint {.
      cdecl, importc: "whisper_full_lang_id_from_state".}
else:
  static :
    hint("Declaration of " & "whisper_full_lang_id_from_state" &
        " already exists, not redeclaring")
when not declared(whisper_full_get_segment_t0):
  proc whisper_full_get_segment_t0*(ctx: ptr struct_whisper_context;
                                    i_segment: cint): int64 {.cdecl,
      importc: "whisper_full_get_segment_t0".}
else:
  static :
    hint("Declaration of " & "whisper_full_get_segment_t0" &
        " already exists, not redeclaring")
when not declared(whisper_full_get_segment_t0_from_state):
  proc whisper_full_get_segment_t0_from_state*(state: ptr struct_whisper_state;
      i_segment: cint): int64 {.cdecl, importc: "whisper_full_get_segment_t0_from_state".}
else:
  static :
    hint("Declaration of " & "whisper_full_get_segment_t0_from_state" &
        " already exists, not redeclaring")
when not declared(whisper_full_get_segment_t1):
  proc whisper_full_get_segment_t1*(ctx: ptr struct_whisper_context;
                                    i_segment: cint): int64 {.cdecl,
      importc: "whisper_full_get_segment_t1".}
else:
  static :
    hint("Declaration of " & "whisper_full_get_segment_t1" &
        " already exists, not redeclaring")
when not declared(whisper_full_get_segment_t1_from_state):
  proc whisper_full_get_segment_t1_from_state*(state: ptr struct_whisper_state;
      i_segment: cint): int64 {.cdecl, importc: "whisper_full_get_segment_t1_from_state".}
else:
  static :
    hint("Declaration of " & "whisper_full_get_segment_t1_from_state" &
        " already exists, not redeclaring")
when not declared(whisper_full_get_segment_speaker_turn_next):
  proc whisper_full_get_segment_speaker_turn_next*(
      ctx: ptr struct_whisper_context; i_segment: cint): bool {.cdecl,
      importc: "whisper_full_get_segment_speaker_turn_next".}
else:
  static :
    hint("Declaration of " & "whisper_full_get_segment_speaker_turn_next" &
        " already exists, not redeclaring")
when not declared(whisper_full_get_segment_speaker_turn_next_from_state):
  proc whisper_full_get_segment_speaker_turn_next_from_state*(
      state: ptr struct_whisper_state; i_segment: cint): bool {.cdecl,
      importc: "whisper_full_get_segment_speaker_turn_next_from_state".}
else:
  static :
    hint("Declaration of " &
        "whisper_full_get_segment_speaker_turn_next_from_state" &
        " already exists, not redeclaring")
when not declared(whisper_full_get_segment_text):
  proc whisper_full_get_segment_text*(ctx: ptr struct_whisper_context;
                                      i_segment: cint): cstring {.cdecl,
      importc: "whisper_full_get_segment_text".}
else:
  static :
    hint("Declaration of " & "whisper_full_get_segment_text" &
        " already exists, not redeclaring")
when not declared(whisper_full_get_segment_text_from_state):
  proc whisper_full_get_segment_text_from_state*(
      state: ptr struct_whisper_state; i_segment: cint): cstring {.cdecl,
      importc: "whisper_full_get_segment_text_from_state".}
else:
  static :
    hint("Declaration of " & "whisper_full_get_segment_text_from_state" &
        " already exists, not redeclaring")
when not declared(whisper_full_n_tokens):
  proc whisper_full_n_tokens*(ctx: ptr struct_whisper_context; i_segment: cint): cint {.
      cdecl, importc: "whisper_full_n_tokens".}
else:
  static :
    hint("Declaration of " & "whisper_full_n_tokens" &
        " already exists, not redeclaring")
when not declared(whisper_full_n_tokens_from_state):
  proc whisper_full_n_tokens_from_state*(state: ptr struct_whisper_state;
      i_segment: cint): cint {.cdecl,
                               importc: "whisper_full_n_tokens_from_state".}
else:
  static :
    hint("Declaration of " & "whisper_full_n_tokens_from_state" &
        " already exists, not redeclaring")
when not declared(whisper_full_get_token_text):
  proc whisper_full_get_token_text*(ctx: ptr struct_whisper_context;
                                    i_segment: cint; i_token: cint): cstring {.
      cdecl, importc: "whisper_full_get_token_text".}
else:
  static :
    hint("Declaration of " & "whisper_full_get_token_text" &
        " already exists, not redeclaring")
when not declared(whisper_full_get_token_text_from_state):
  proc whisper_full_get_token_text_from_state*(ctx: ptr struct_whisper_context;
      state: ptr struct_whisper_state; i_segment: cint; i_token: cint): cstring {.
      cdecl, importc: "whisper_full_get_token_text_from_state".}
else:
  static :
    hint("Declaration of " & "whisper_full_get_token_text_from_state" &
        " already exists, not redeclaring")
when not declared(whisper_full_get_token_id):
  proc whisper_full_get_token_id*(ctx: ptr struct_whisper_context;
                                  i_segment: cint; i_token: cint): whisper_token_520094296 {.
      cdecl, importc: "whisper_full_get_token_id".}
else:
  static :
    hint("Declaration of " & "whisper_full_get_token_id" &
        " already exists, not redeclaring")
when not declared(whisper_full_get_token_id_from_state):
  proc whisper_full_get_token_id_from_state*(state: ptr struct_whisper_state;
      i_segment: cint; i_token: cint): whisper_token_520094296 {.cdecl,
      importc: "whisper_full_get_token_id_from_state".}
else:
  static :
    hint("Declaration of " & "whisper_full_get_token_id_from_state" &
        " already exists, not redeclaring")
when not declared(whisper_full_get_token_data):
  proc whisper_full_get_token_data*(ctx: ptr struct_whisper_context;
                                    i_segment: cint; i_token: cint): whisper_token_data_520094314 {.
      cdecl, importc: "whisper_full_get_token_data".}
else:
  static :
    hint("Declaration of " & "whisper_full_get_token_data" &
        " already exists, not redeclaring")
when not declared(whisper_full_get_token_data_from_state):
  proc whisper_full_get_token_data_from_state*(state: ptr struct_whisper_state;
      i_segment: cint; i_token: cint): whisper_token_data_520094314 {.cdecl,
      importc: "whisper_full_get_token_data_from_state".}
else:
  static :
    hint("Declaration of " & "whisper_full_get_token_data_from_state" &
        " already exists, not redeclaring")
when not declared(whisper_full_get_token_p):
  proc whisper_full_get_token_p*(ctx: ptr struct_whisper_context;
                                 i_segment: cint; i_token: cint): cfloat {.
      cdecl, importc: "whisper_full_get_token_p".}
else:
  static :
    hint("Declaration of " & "whisper_full_get_token_p" &
        " already exists, not redeclaring")
when not declared(whisper_full_get_token_p_from_state):
  proc whisper_full_get_token_p_from_state*(state: ptr struct_whisper_state;
      i_segment: cint; i_token: cint): cfloat {.cdecl,
      importc: "whisper_full_get_token_p_from_state".}
else:
  static :
    hint("Declaration of " & "whisper_full_get_token_p_from_state" &
        " already exists, not redeclaring")
when not declared(whisper_bench_memcpy):
  proc whisper_bench_memcpy*(n_threads: cint): cint {.cdecl,
      importc: "whisper_bench_memcpy".}
else:
  static :
    hint("Declaration of " & "whisper_bench_memcpy" &
        " already exists, not redeclaring")
when not declared(whisper_bench_memcpy_str):
  proc whisper_bench_memcpy_str*(n_threads: cint): cstring {.cdecl,
      importc: "whisper_bench_memcpy_str".}
else:
  static :
    hint("Declaration of " & "whisper_bench_memcpy_str" &
        " already exists, not redeclaring")
when not declared(whisper_bench_ggml_mul_mat):
  proc whisper_bench_ggml_mul_mat*(n_threads: cint): cint {.cdecl,
      importc: "whisper_bench_ggml_mul_mat".}
else:
  static :
    hint("Declaration of " & "whisper_bench_ggml_mul_mat" &
        " already exists, not redeclaring")
when not declared(whisper_bench_ggml_mul_mat_str):
  proc whisper_bench_ggml_mul_mat_str*(n_threads: cint): cstring {.cdecl,
      importc: "whisper_bench_ggml_mul_mat_str".}
else:
  static :
    hint("Declaration of " & "whisper_bench_ggml_mul_mat_str" &
        " already exists, not redeclaring")
when not declared(whisper_log_set):
  proc whisper_log_set*(log_callback: ggml_log_callback_520094211;
                        user_data: pointer): void {.cdecl,
      importc: "whisper_log_set".}
else:
  static :
    hint("Declaration of " & "whisper_log_set" &
        " already exists, not redeclaring")