
{.warning[UnusedImport]: off.}
{.hint[XDeclaredButNotUsed]: off.}
from macros import hint, warning, newLit, getSize

from os import parentDir

when not declared(ownSizeOf):
  macro ownSizeof(x: typed): untyped =
    newLit(x.getSize)

type
  enum_ma_log_level_536871412* {.size: sizeof(cuint).} = enum
    MA_LOG_LEVEL_ERROR = 1, MA_LOG_LEVEL_WARNING = 2, MA_LOG_LEVEL_INFO = 3,
    MA_LOG_LEVEL_DEBUG = 4
type
  enum_ma_channel_position_536871426* {.size: sizeof(cuint).} = enum
    MA_CHANNEL_NONE = 0, MA_CHANNEL_MONO = 1, MA_CHANNEL_FRONT_LEFT = 2,
    MA_CHANNEL_FRONT_RIGHT = 3, MA_CHANNEL_FRONT_CENTER = 4, MA_CHANNEL_LFE = 5,
    MA_CHANNEL_BACK_LEFT = 6, MA_CHANNEL_BACK_RIGHT = 7,
    MA_CHANNEL_FRONT_LEFT_CENTER = 8, MA_CHANNEL_FRONT_RIGHT_CENTER = 9,
    MA_CHANNEL_BACK_CENTER = 10, MA_CHANNEL_SIDE_LEFT = 11,
    MA_CHANNEL_SIDE_RIGHT = 12, MA_CHANNEL_TOP_CENTER = 13,
    MA_CHANNEL_TOP_FRONT_LEFT = 14, MA_CHANNEL_TOP_FRONT_CENTER = 15,
    MA_CHANNEL_TOP_FRONT_RIGHT = 16, MA_CHANNEL_TOP_BACK_LEFT = 17,
    MA_CHANNEL_TOP_BACK_CENTER = 18, MA_CHANNEL_TOP_BACK_RIGHT = 19,
    MA_CHANNEL_AUX_0 = 20, MA_CHANNEL_AUX_1 = 21, MA_CHANNEL_AUX_2 = 22,
    MA_CHANNEL_AUX_3 = 23, MA_CHANNEL_AUX_4 = 24, MA_CHANNEL_AUX_5 = 25,
    MA_CHANNEL_AUX_6 = 26, MA_CHANNEL_AUX_7 = 27, MA_CHANNEL_AUX_8 = 28,
    MA_CHANNEL_AUX_9 = 29, MA_CHANNEL_AUX_10 = 30, MA_CHANNEL_AUX_11 = 31,
    MA_CHANNEL_AUX_12 = 32, MA_CHANNEL_AUX_13 = 33, MA_CHANNEL_AUX_14 = 34,
    MA_CHANNEL_AUX_15 = 35, MA_CHANNEL_AUX_16 = 36, MA_CHANNEL_AUX_17 = 37,
    MA_CHANNEL_AUX_18 = 38, MA_CHANNEL_AUX_19 = 39, MA_CHANNEL_AUX_20 = 40,
    MA_CHANNEL_AUX_21 = 41, MA_CHANNEL_AUX_22 = 42, MA_CHANNEL_AUX_23 = 43,
    MA_CHANNEL_AUX_24 = 44, MA_CHANNEL_AUX_25 = 45, MA_CHANNEL_AUX_26 = 46,
    MA_CHANNEL_AUX_27 = 47, MA_CHANNEL_AUX_28 = 48, MA_CHANNEL_AUX_29 = 49,
    MA_CHANNEL_AUX_30 = 50, MA_CHANNEL_AUX_31 = 51,
    MA_CHANNEL_POSITION_COUNT = 52
when not declared(MA_CHANNEL_LEFT):
  const
    MA_CHANNEL_LEFT* = enum_ma_channel_position_536871426.MA_CHANNEL_FRONT_LEFT
else:
  static :
    hint("Declaration of " & "MA_CHANNEL_LEFT" &
        " already exists, not redeclaring")
when not declared(MA_CHANNEL_RIGHT):
  const
    MA_CHANNEL_RIGHT* = enum_ma_channel_position_536871426.MA_CHANNEL_FRONT_RIGHT
else:
  static :
    hint("Declaration of " & "MA_CHANNEL_RIGHT" &
        " already exists, not redeclaring")
type
  enum_ma_result_536871430* {.size: sizeof(cint).} = enum
    MA_FAILED_TO_STOP_BACKEND_DEVICE = -403,
    MA_FAILED_TO_START_BACKEND_DEVICE = -402,
    MA_FAILED_TO_OPEN_BACKEND_DEVICE = -401, MA_FAILED_TO_INIT_BACKEND = -400,
    MA_DEVICE_NOT_STOPPED = -303, MA_DEVICE_NOT_STARTED = -302,
    MA_DEVICE_ALREADY_INITIALIZED = -301, MA_DEVICE_NOT_INITIALIZED = -300,
    MA_BACKEND_NOT_ENABLED = -208, MA_LOOP = -207,
    MA_INVALID_DEVICE_CONFIG = -206, MA_API_NOT_FOUND = -205,
    MA_NO_DEVICE = -204, MA_NO_BACKEND = -203,
    MA_SHARE_MODE_NOT_SUPPORTED = -202, MA_DEVICE_TYPE_NOT_SUPPORTED = -201,
    MA_FORMAT_NOT_SUPPORTED = -200, MA_CRC_MISMATCH = -100,
    MA_MEMORY_ALREADY_MAPPED = -52, MA_CANCELLED = -51, MA_IN_PROGRESS = -50,
    MA_NO_HOST = -49, MA_CONNECTION_REFUSED = -48, MA_NOT_CONNECTED = -47,
    MA_ALREADY_CONNECTED = -46, MA_CONNECTION_RESET = -45,
    MA_SOCKET_NOT_SUPPORTED = -44, MA_ADDRESS_FAMILY_NOT_SUPPORTED = -43,
    MA_PROTOCOL_FAMILY_NOT_SUPPORTED = -42, MA_PROTOCOL_NOT_SUPPORTED = -41,
    MA_PROTOCOL_UNAVAILABLE = -40, MA_BAD_PROTOCOL = -39, MA_NO_ADDRESS = -38,
    MA_NOT_SOCKET = -37, MA_NOT_UNIQUE = -36, MA_NO_NETWORK = -35,
    MA_TIMEOUT = -34, MA_INVALID_DATA = -33, MA_NO_DATA_AVAILABLE = -32,
    MA_BAD_MESSAGE = -31, MA_NO_MESSAGE = -30, MA_NOT_IMPLEMENTED = -29,
    MA_TOO_MANY_LINKS = -28, MA_DEADLOCK = -27, MA_BAD_PIPE = -26,
    MA_BAD_SEEK = -25, MA_BAD_ADDRESS = -24, MA_ALREADY_IN_USE = -23,
    MA_UNAVAILABLE = -22, MA_INTERRUPT = -21, MA_IO_ERROR = -20, MA_BUSY = -19,
    MA_NO_SPACE = -18, MA_AT_END = -17, MA_DIRECTORY_NOT_EMPTY = -16,
    MA_IS_DIRECTORY = -15, MA_NOT_DIRECTORY = -14, MA_NAME_TOO_LONG = -13,
    MA_PATH_TOO_LONG = -12, MA_TOO_BIG = -11, MA_INVALID_FILE = -10,
    MA_TOO_MANY_OPEN_FILES = -9, MA_ALREADY_EXISTS = -8, MA_DOES_NOT_EXIST = -7,
    MA_ACCESS_DENIED = -6, MA_OUT_OF_RANGE = -5, MA_OUT_OF_MEMORY = -4,
    MA_INVALID_OPERATION = -3, MA_INVALID_ARGS = -2, MA_ERROR = -1,
    MA_SUCCESS = 0
type
  enum_ma_stream_format_536871434* {.size: sizeof(cuint).} = enum
    ma_stream_format_pcm = 0
type
  enum_ma_stream_layout_536871438* {.size: sizeof(cuint).} = enum
    ma_stream_layout_interleaved = 0, ma_stream_layout_deinterleaved = 1
type
  enum_ma_dither_mode_536871449* {.size: sizeof(cuint).} = enum
    ma_dither_mode_none = 0, ma_dither_mode_rectangle = 1,
    ma_dither_mode_triangle = 2
type
  enum_ma_format_536871453* {.size: sizeof(cuint).} = enum
    ma_format_unknown = 0, ma_format_u8 = 1, ma_format_s16 = 2,
    ma_format_s24 = 3, ma_format_s32 = 4, ma_format_f32 = 5, ma_format_count = 6
type
  enum_ma_standard_sample_rate_536871457* {.size: sizeof(cuint).} = enum
    ma_standard_sample_rate_count = 14, ma_standard_sample_rate_8000 = 8000,
    ma_standard_sample_rate_11025 = 11025,
    ma_standard_sample_rate_16000 = 16000,
    ma_standard_sample_rate_22050 = 22050,
    ma_standard_sample_rate_24000 = 24000,
    ma_standard_sample_rate_32000 = 32000,
    ma_standard_sample_rate_44100 = 44100,
    ma_standard_sample_rate_48000 = 48000,
    ma_standard_sample_rate_88200 = 88200,
    ma_standard_sample_rate_96000 = 96000,
    ma_standard_sample_rate_176400 = 176400,
    ma_standard_sample_rate_192000 = 192000,
    ma_standard_sample_rate_352800 = 352800,
    ma_standard_sample_rate_384000 = 384000
when not declared(ma_standard_sample_rate_min):
  const
    ma_standard_sample_rate_min* = enum_ma_standard_sample_rate_536871457.ma_standard_sample_rate_8000
else:
  static :
    hint("Declaration of " & "ma_standard_sample_rate_min" &
        " already exists, not redeclaring")
when not declared(ma_standard_sample_rate_max):
  const
    ma_standard_sample_rate_max* = enum_ma_standard_sample_rate_536871457.ma_standard_sample_rate_384000
else:
  static :
    hint("Declaration of " & "ma_standard_sample_rate_max" &
        " already exists, not redeclaring")
type
  enum_ma_channel_mix_mode_536871461* {.size: sizeof(cuint).} = enum
    ma_channel_mix_mode_rectangular = 0, ma_channel_mix_mode_simple = 1,
    ma_channel_mix_mode_custom_weights = 2
when not declared(ma_channel_mix_mode_default):
  const
    ma_channel_mix_mode_default* = enum_ma_channel_mix_mode_536871461.ma_channel_mix_mode_rectangular
else:
  static :
    hint("Declaration of " & "ma_channel_mix_mode_default" &
        " already exists, not redeclaring")
type
  enum_ma_standard_channel_map_536871465* {.size: sizeof(cuint).} = enum
    ma_standard_channel_map_microsoft = 0, ma_standard_channel_map_alsa = 1,
    ma_standard_channel_map_rfc3551 = 2, ma_standard_channel_map_flac = 3,
    ma_standard_channel_map_vorbis = 4, ma_standard_channel_map_sound4 = 5,
    ma_standard_channel_map_sndio = 6
when not declared(ma_standard_channel_map_webaudio):
  const
    ma_standard_channel_map_webaudio* = enum_ma_standard_channel_map_536871465.ma_standard_channel_map_flac
else:
  static :
    hint("Declaration of " & "ma_standard_channel_map_webaudio" &
        " already exists, not redeclaring")
when not declared(ma_standard_channel_map_default):
  const
    ma_standard_channel_map_default* = enum_ma_standard_channel_map_536871465.ma_standard_channel_map_microsoft
else:
  static :
    hint("Declaration of " & "ma_standard_channel_map_default" &
        " already exists, not redeclaring")
type
  enum_ma_performance_profile_536871469* {.size: sizeof(cuint).} = enum
    ma_performance_profile_low_latency = 0,
    ma_performance_profile_conservative = 1
type
  enum_ma_thread_priority_536871503* {.size: sizeof(cint).} = enum
    ma_thread_priority_idle = -5, ma_thread_priority_lowest = -4,
    ma_thread_priority_low = -3, ma_thread_priority_normal = -2,
    ma_thread_priority_high = -1, ma_thread_priority_highest = 0,
    ma_thread_priority_realtime = 1
when not declared(ma_thread_priority_default):
  const
    ma_thread_priority_default* = enum_ma_thread_priority_536871503.ma_thread_priority_highest
else:
  static :
    hint("Declaration of " & "ma_thread_priority_default" &
        " already exists, not redeclaring")
type
  enum_ma_pan_mode_536871657* {.size: sizeof(cuint).} = enum
    ma_pan_mode_balance = 0, ma_pan_mode_pan = 1
type
  enum_ma_attenuation_model_536871685* {.size: sizeof(cuint).} = enum
    ma_attenuation_model_none = 0, ma_attenuation_model_inverse = 1,
    ma_attenuation_model_linear = 2, ma_attenuation_model_exponential = 3
type
  enum_ma_positioning_536871689* {.size: sizeof(cuint).} = enum
    ma_positioning_absolute = 0, ma_positioning_relative = 1
type
  enum_ma_handedness_536871693* {.size: sizeof(cuint).} = enum
    ma_handedness_right = 0, ma_handedness_left = 1
type
  enum_ma_resample_algorithm_536871731* {.size: sizeof(cuint).} = enum
    ma_resample_algorithm_linear = 0, ma_resample_algorithm_custom = 1
type
  enum_ma_channel_conversion_path_536871739* {.size: sizeof(cuint).} = enum
    ma_channel_conversion_path_unknown = 0,
    ma_channel_conversion_path_passthrough = 1,
    ma_channel_conversion_path_mono_out = 2,
    ma_channel_conversion_path_mono_in = 3,
    ma_channel_conversion_path_shuffle = 4,
    ma_channel_conversion_path_weights = 5
type
  enum_ma_mono_expansion_mode_536871743* {.size: sizeof(cuint).} = enum
    ma_mono_expansion_mode_duplicate = 0, ma_mono_expansion_mode_average = 1,
    ma_mono_expansion_mode_stereo_only = 2
when not declared(ma_mono_expansion_mode_default):
  const
    ma_mono_expansion_mode_default* = enum_ma_mono_expansion_mode_536871743.ma_mono_expansion_mode_duplicate
else:
  static :
    hint("Declaration of " & "ma_mono_expansion_mode_default" &
        " already exists, not redeclaring")
type
  enum_ma_data_converter_execution_path_536871759* {.size: sizeof(cuint).} = enum
    ma_data_converter_execution_path_passthrough = 0,
    ma_data_converter_execution_path_format_only = 1,
    ma_data_converter_execution_path_channels_only = 2,
    ma_data_converter_execution_path_resample_only = 3,
    ma_data_converter_execution_path_resample_first = 4,
    ma_data_converter_execution_path_channels_first = 5
type
  enum_ma_job_type_536871857* {.size: sizeof(cuint).} = enum
    MA_JOB_TYPE_QUIT = 0, MA_JOB_TYPE_CUSTOM = 1,
    MA_JOB_TYPE_RESOURCE_MANAGER_LOAD_DATA_BUFFER_NODE = 2,
    MA_JOB_TYPE_RESOURCE_MANAGER_FREE_DATA_BUFFER_NODE = 3,
    MA_JOB_TYPE_RESOURCE_MANAGER_PAGE_DATA_BUFFER_NODE = 4,
    MA_JOB_TYPE_RESOURCE_MANAGER_LOAD_DATA_BUFFER = 5,
    MA_JOB_TYPE_RESOURCE_MANAGER_FREE_DATA_BUFFER = 6,
    MA_JOB_TYPE_RESOURCE_MANAGER_LOAD_DATA_STREAM = 7,
    MA_JOB_TYPE_RESOURCE_MANAGER_FREE_DATA_STREAM = 8,
    MA_JOB_TYPE_RESOURCE_MANAGER_PAGE_DATA_STREAM = 9,
    MA_JOB_TYPE_RESOURCE_MANAGER_SEEK_DATA_STREAM = 10,
    MA_JOB_TYPE_DEVICE_AAUDIO_REROUTE = 11, MA_JOB_TYPE_COUNT = 12
type
  enum_ma_job_queue_flags_536871863* {.size: sizeof(cuint).} = enum
    MA_JOB_QUEUE_FLAG_NON_BLOCKING = 1
type
  enum_ma_device_state_536871871* {.size: sizeof(cuint).} = enum
    ma_device_state_uninitialized = 0, ma_device_state_stopped = 1,
    ma_device_state_started = 2, ma_device_state_starting = 3,
    ma_device_state_stopping = 4
type
  enum_ma_backend_536871879* {.size: sizeof(cuint).} = enum
    ma_backend_wasapi = 0, ma_backend_dsound = 1, ma_backend_winmm = 2,
    ma_backend_coreaudio = 3, ma_backend_sndio = 4, ma_backend_audio4 = 5,
    ma_backend_oss = 6, ma_backend_pulseaudio = 7, ma_backend_alsa = 8,
    ma_backend_jack = 9, ma_backend_aaudio = 10, ma_backend_opensl = 11,
    ma_backend_webaudio = 12, ma_backend_custom = 13, ma_backend_null = 14
type
  enum_ma_device_notification_type_536871891* {.size: sizeof(cuint).} = enum
    ma_device_notification_type_started = 0,
    ma_device_notification_type_stopped = 1,
    ma_device_notification_type_rerouted = 2,
    ma_device_notification_type_interruption_began = 3,
    ma_device_notification_type_interruption_ended = 4,
    ma_device_notification_type_unlocked = 5
type
  enum_ma_device_type_536871905* {.size: sizeof(cuint).} = enum
    ma_device_type_playback = 1, ma_device_type_capture = 2,
    ma_device_type_duplex = 3, ma_device_type_loopback = 4
type
  enum_ma_share_mode_536871909* {.size: sizeof(cuint).} = enum
    ma_share_mode_shared = 0, ma_share_mode_exclusive = 1
type
  enum_ma_ios_session_category_536871913* {.size: sizeof(cuint).} = enum
    ma_ios_session_category_default = 0, ma_ios_session_category_none = 1,
    ma_ios_session_category_ambient = 2,
    ma_ios_session_category_solo_ambient = 3,
    ma_ios_session_category_playback = 4, ma_ios_session_category_record = 5,
    ma_ios_session_category_play_and_record = 6,
    ma_ios_session_category_multi_route = 7
type
  enum_ma_ios_session_category_option_536871917* {.size: sizeof(cuint).} = enum
    ma_ios_session_category_option_mix_with_others = 1,
    ma_ios_session_category_option_duck_others = 2,
    ma_ios_session_category_option_allow_bluetooth = 4,
    ma_ios_session_category_option_default_to_speaker = 8, ma_ios_session_category_option_interrupt_spoken_audio_and_mix_with_others = 17,
    ma_ios_session_category_option_allow_bluetooth_a2dp = 32,
    ma_ios_session_category_option_allow_air_play = 64
type
  enum_ma_opensl_stream_type_536871921* {.size: sizeof(cuint).} = enum
    ma_opensl_stream_type_default = 0, ma_opensl_stream_type_voice = 1,
    ma_opensl_stream_type_system = 2, ma_opensl_stream_type_ring = 3,
    ma_opensl_stream_type_media = 4, ma_opensl_stream_type_alarm = 5,
    ma_opensl_stream_type_notification = 6
type
  enum_ma_opensl_recording_preset_536871925* {.size: sizeof(cuint).} = enum
    ma_opensl_recording_preset_default = 0,
    ma_opensl_recording_preset_generic = 1,
    ma_opensl_recording_preset_camcorder = 2,
    ma_opensl_recording_preset_voice_recognition = 3,
    ma_opensl_recording_preset_voice_communication = 4,
    ma_opensl_recording_preset_voice_unprocessed = 5
type
  enum_ma_wasapi_usage_536871929* {.size: sizeof(cuint).} = enum
    ma_wasapi_usage_default = 0, ma_wasapi_usage_games = 1,
    ma_wasapi_usage_pro_audio = 2
type
  enum_ma_aaudio_usage_536871933* {.size: sizeof(cuint).} = enum
    ma_aaudio_usage_default = 0, ma_aaudio_usage_media = 1,
    ma_aaudio_usage_voice_communication = 2,
    ma_aaudio_usage_voice_communication_signalling = 3,
    ma_aaudio_usage_alarm = 4, ma_aaudio_usage_notification = 5,
    ma_aaudio_usage_notification_ringtone = 6,
    ma_aaudio_usage_notification_event = 7,
    ma_aaudio_usage_assistance_accessibility = 8,
    ma_aaudio_usage_assistance_navigation_guidance = 9,
    ma_aaudio_usage_assistance_sonification = 10, ma_aaudio_usage_game = 11,
    ma_aaudio_usage_assitant = 12, ma_aaudio_usage_emergency = 13,
    ma_aaudio_usage_safety = 14, ma_aaudio_usage_vehicle_status = 15,
    ma_aaudio_usage_announcement = 16
type
  enum_ma_aaudio_content_type_536871937* {.size: sizeof(cuint).} = enum
    ma_aaudio_content_type_default = 0, ma_aaudio_content_type_speech = 1,
    ma_aaudio_content_type_music = 2, ma_aaudio_content_type_movie = 3,
    ma_aaudio_content_type_sonification = 4
type
  enum_ma_aaudio_input_preset_536871941* {.size: sizeof(cuint).} = enum
    ma_aaudio_input_preset_default = 0, ma_aaudio_input_preset_generic = 1,
    ma_aaudio_input_preset_camcorder = 2,
    ma_aaudio_input_preset_voice_recognition = 3,
    ma_aaudio_input_preset_voice_communication = 4,
    ma_aaudio_input_preset_unprocessed = 5,
    ma_aaudio_input_preset_voice_performance = 6
type
  enum_ma_aaudio_allowed_capture_policy_536871945* {.size: sizeof(cuint).} = enum
    ma_aaudio_allow_capture_default = 0, ma_aaudio_allow_capture_by_all = 1,
    ma_aaudio_allow_capture_by_system = 2, ma_aaudio_allow_capture_by_none = 3
type
  enum_ma_open_mode_flags_536871987* {.size: sizeof(cuint).} = enum
    MA_OPEN_MODE_READ = 1, MA_OPEN_MODE_WRITE = 2
type
  enum_ma_seek_origin_536871991* {.size: sizeof(cuint).} = enum
    ma_seek_origin_start = 0, ma_seek_origin_current = 1, ma_seek_origin_end = 2
type
  enum_ma_encoding_format_536872013* {.size: sizeof(cuint).} = enum
    ma_encoding_format_unknown = 0, ma_encoding_format_wav = 1,
    ma_encoding_format_flac = 2, ma_encoding_format_mp3 = 3,
    ma_encoding_format_vorbis = 4
type
  enum_ma_waveform_type_536872057* {.size: sizeof(cuint).} = enum
    ma_waveform_type_sine = 0, ma_waveform_type_square = 1,
    ma_waveform_type_triangle = 2, ma_waveform_type_sawtooth = 3
type
  enum_ma_noise_type_536872077* {.size: sizeof(cuint).} = enum
    ma_noise_type_white = 0, ma_noise_type_pink = 1, ma_noise_type_brownian = 2
type
  enum_ma_resource_manager_data_source_flags_536872109* {.size: sizeof(cuint).} = enum
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_STREAM = 1,
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_DECODE = 2,
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_ASYNC = 4,
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_WAIT_INIT = 8,
    MA_RESOURCE_MANAGER_DATA_SOURCE_FLAG_UNKNOWN_LENGTH = 16
type
  enum_ma_resource_manager_flags_536872121* {.size: sizeof(cuint).} = enum
    MA_RESOURCE_MANAGER_FLAG_NON_BLOCKING = 1,
    MA_RESOURCE_MANAGER_FLAG_NO_THREADING = 2
type
  enum_ma_resource_manager_data_supply_type_536872129* {.size: sizeof(cuint).} = enum
    ma_resource_manager_data_supply_type_unknown = 0,
    ma_resource_manager_data_supply_type_encoded = 1,
    ma_resource_manager_data_supply_type_decoded = 2,
    ma_resource_manager_data_supply_type_decoded_paged = 3
type
  enum_ma_node_flags_536872147* {.size: sizeof(cuint).} = enum
    MA_NODE_FLAG_PASSTHROUGH = 1, MA_NODE_FLAG_CONTINUOUS_PROCESSING = 2,
    MA_NODE_FLAG_ALLOW_NULL_INPUT = 4,
    MA_NODE_FLAG_DIFFERENT_PROCESSING_RATES = 8, MA_NODE_FLAG_SILENT_OUTPUT = 16
type
  enum_ma_node_state_536872151* {.size: sizeof(cuint).} = enum
    ma_node_state_started = 0, ma_node_state_stopped = 1
type
  enum_ma_sound_flags_536872275* {.size: sizeof(cuint).} = enum
    MA_SOUND_FLAG_STREAM = 1, MA_SOUND_FLAG_DECODE = 2, MA_SOUND_FLAG_ASYNC = 4,
    MA_SOUND_FLAG_WAIT_INIT = 8, MA_SOUND_FLAG_UNKNOWN_LENGTH = 16,
    MA_SOUND_FLAG_NO_DEFAULT_ATTACHMENT = 4096, MA_SOUND_FLAG_NO_PITCH = 8192,
    MA_SOUND_FLAG_NO_SPATIALIZATION = 16384
type
  enum_ma_engine_node_type_536872279* {.size: sizeof(cuint).} = enum
    ma_engine_node_type_sound = 0, ma_engine_node_type_group = 1
when not declared(extern):
  type
    extern* = object
else:
  static :
    hint("Declaration of " & "extern" & " already exists, not redeclaring")
when not declared(inline):
  type
    inline* = object
else:
  static :
    hint("Declaration of " & "inline" & " already exists, not redeclaring")
type
  ma_job_536871360 = struct_ma_job_536871854 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6322:23
  ma_job_queue_config_536871362 = struct_ma_job_queue_config_536871868 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6492:3
  ma_job_queue_536871364 = struct_ma_job_queue_536871870 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6515:3
  ma_int8_536871366 = cschar ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3764:37
  ma_uint8_536871368 = uint8 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3765:37
  ma_int16_536871370 = cshort ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3766:37
  ma_uint16_536871372 = cushort ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3767:37
  ma_int32_536871374 = cint  ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3768:37
  ma_uint32_536871376 = cuint ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3769:37
  ma_int64_536871378 = clonglong ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3781:37
  ma_uint64_536871380 = culonglong ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3782:37
  ma_uintptr_536871382 = ma_uint64_536871381 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3790:33
  ma_bool8_536871384 = ma_uint8_536871369 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3795:21
  ma_bool32_536871386 = ma_uint32_536871377 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3796:21
  ma_float_536871388 = cfloat ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3801:21
  ma_double_536871390 = cdouble ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3802:21
  ma_handle_536871392 = pointer ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3804:15
  ma_ptr_536871394 = pointer ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3805:15
  ma_proc_536871396 = proc (): void {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3814:16
  ma_pthread_t_536871398 = pthread_t_536871401 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3858:33
  pthread_t_536871400 = culong ## Generated based on /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h:27:27
  ma_pthread_mutex_t_536871402 = pthread_mutex_t_536871405 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3859:33
  pthread_mutex_t_536871404 = union_pthread_mutex_t_536872312 ## Generated based on /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h:72:3
  ma_pthread_cond_t_536871406 = pthread_cond_t_536871409 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3860:33
  pthread_cond_t_536871408 = union_pthread_cond_t_536872314 ## Generated based on /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h:80:3
  ma_wchar_win32_536871410 = ma_uint16_536871373 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4008:21
  ma_log_level_536871414 = enum_ma_log_level_536871413 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4043:3
  ma_context_536871416 = struct_ma_context_536871419 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4072:27
  struct_ma_context_anon0_t_alsa_t {.pure, inheritable, bycopy.} = object
    asoundSO*: ma_handle_536871393
    snd_pcm_open*: ma_proc_536871397
    snd_pcm_close*: ma_proc_536871397
    snd_pcm_hw_params_sizeof*: ma_proc_536871397
    snd_pcm_hw_params_any*: ma_proc_536871397
    snd_pcm_hw_params_set_format*: ma_proc_536871397
    snd_pcm_hw_params_set_format_first*: ma_proc_536871397
    snd_pcm_hw_params_get_format_mask*: ma_proc_536871397
    snd_pcm_hw_params_set_channels*: ma_proc_536871397
    snd_pcm_hw_params_set_channels_near*: ma_proc_536871397
    snd_pcm_hw_params_set_channels_minmax*: ma_proc_536871397
    snd_pcm_hw_params_set_rate_resample*: ma_proc_536871397
    snd_pcm_hw_params_set_rate*: ma_proc_536871397
    snd_pcm_hw_params_set_rate_near*: ma_proc_536871397
    snd_pcm_hw_params_set_buffer_size_near*: ma_proc_536871397
    snd_pcm_hw_params_set_periods_near*: ma_proc_536871397
    snd_pcm_hw_params_set_access*: ma_proc_536871397
    snd_pcm_hw_params_get_format*: ma_proc_536871397
    snd_pcm_hw_params_get_channels*: ma_proc_536871397
    snd_pcm_hw_params_get_channels_min*: ma_proc_536871397
    snd_pcm_hw_params_get_channels_max*: ma_proc_536871397
    snd_pcm_hw_params_get_rate*: ma_proc_536871397
    snd_pcm_hw_params_get_rate_min*: ma_proc_536871397
    snd_pcm_hw_params_get_rate_max*: ma_proc_536871397
    snd_pcm_hw_params_get_buffer_size*: ma_proc_536871397
    snd_pcm_hw_params_get_periods*: ma_proc_536871397
    snd_pcm_hw_params_get_access*: ma_proc_536871397
    snd_pcm_hw_params_test_format*: ma_proc_536871397
    snd_pcm_hw_params_test_channels*: ma_proc_536871397
    snd_pcm_hw_params_test_rate*: ma_proc_536871397
    snd_pcm_hw_params*: ma_proc_536871397
    snd_pcm_sw_params_sizeof*: ma_proc_536871397
    snd_pcm_sw_params_current*: ma_proc_536871397
    snd_pcm_sw_params_get_boundary*: ma_proc_536871397
    snd_pcm_sw_params_set_avail_min*: ma_proc_536871397
    snd_pcm_sw_params_set_start_threshold*: ma_proc_536871397
    snd_pcm_sw_params_set_stop_threshold*: ma_proc_536871397
    snd_pcm_sw_params*: ma_proc_536871397
    snd_pcm_format_mask_sizeof*: ma_proc_536871397
    snd_pcm_format_mask_test*: ma_proc_536871397
    snd_pcm_get_chmap*: ma_proc_536871397
    snd_pcm_state*: ma_proc_536871397
    snd_pcm_prepare*: ma_proc_536871397
    snd_pcm_start*: ma_proc_536871397
    snd_pcm_drop*: ma_proc_536871397
    snd_pcm_drain*: ma_proc_536871397
    snd_pcm_reset*: ma_proc_536871397
    snd_device_name_hint*: ma_proc_536871397
    snd_device_name_get_hint*: ma_proc_536871397
    snd_card_get_index*: ma_proc_536871397
    snd_device_name_free_hint*: ma_proc_536871397
    snd_pcm_mmap_begin*: ma_proc_536871397
    snd_pcm_mmap_commit*: ma_proc_536871397
    snd_pcm_recover*: ma_proc_536871397
    snd_pcm_readi*: ma_proc_536871397
    snd_pcm_writei*: ma_proc_536871397
    snd_pcm_avail*: ma_proc_536871397
    snd_pcm_avail_update*: ma_proc_536871397
    snd_pcm_wait*: ma_proc_536871397
    snd_pcm_nonblock*: ma_proc_536871397
    snd_pcm_info*: ma_proc_536871397
    snd_pcm_info_sizeof*: ma_proc_536871397
    snd_pcm_info_get_name*: ma_proc_536871397
    snd_pcm_poll_descriptors*: ma_proc_536871397
    snd_pcm_poll_descriptors_count*: ma_proc_536871397
    snd_pcm_poll_descriptors_revents*: ma_proc_536871397
    snd_config_update_free_global*: ma_proc_536871397
    internalDeviceEnumLock*: ma_mutex_536871510
    useVerboseDeviceEnumeration*: ma_bool32_536871387
  struct_ma_context_anon0_t_pulse_t {.pure, inheritable, bycopy.} = object
    pulseSO*: ma_handle_536871393
    pa_mainloop_new*: ma_proc_536871397
    pa_mainloop_free*: ma_proc_536871397
    pa_mainloop_quit*: ma_proc_536871397
    pa_mainloop_get_api*: ma_proc_536871397
    pa_mainloop_iterate*: ma_proc_536871397
    pa_mainloop_wakeup*: ma_proc_536871397
    pa_threaded_mainloop_new*: ma_proc_536871397
    pa_threaded_mainloop_free*: ma_proc_536871397
    pa_threaded_mainloop_start*: ma_proc_536871397
    pa_threaded_mainloop_stop*: ma_proc_536871397
    pa_threaded_mainloop_lock*: ma_proc_536871397
    pa_threaded_mainloop_unlock*: ma_proc_536871397
    pa_threaded_mainloop_wait*: ma_proc_536871397
    pa_threaded_mainloop_signal*: ma_proc_536871397
    pa_threaded_mainloop_accept*: ma_proc_536871397
    pa_threaded_mainloop_get_retval*: ma_proc_536871397
    pa_threaded_mainloop_get_api*: ma_proc_536871397
    pa_threaded_mainloop_in_thread*: ma_proc_536871397
    pa_threaded_mainloop_set_name*: ma_proc_536871397
    pa_context_new*: ma_proc_536871397
    pa_context_unref*: ma_proc_536871397
    pa_context_connect*: ma_proc_536871397
    pa_context_disconnect*: ma_proc_536871397
    pa_context_set_state_callback*: ma_proc_536871397
    pa_context_get_state*: ma_proc_536871397
    pa_context_get_sink_info_list*: ma_proc_536871397
    pa_context_get_source_info_list*: ma_proc_536871397
    pa_context_get_sink_info_by_name*: ma_proc_536871397
    pa_context_get_source_info_by_name*: ma_proc_536871397
    pa_operation_unref*: ma_proc_536871397
    pa_operation_get_state*: ma_proc_536871397
    pa_channel_map_init_extend*: ma_proc_536871397
    pa_channel_map_valid*: ma_proc_536871397
    pa_channel_map_compatible*: ma_proc_536871397
    pa_stream_new*: ma_proc_536871397
    pa_stream_unref*: ma_proc_536871397
    pa_stream_connect_playback*: ma_proc_536871397
    pa_stream_connect_record*: ma_proc_536871397
    pa_stream_disconnect*: ma_proc_536871397
    pa_stream_get_state*: ma_proc_536871397
    pa_stream_get_sample_spec*: ma_proc_536871397
    pa_stream_get_channel_map*: ma_proc_536871397
    pa_stream_get_buffer_attr*: ma_proc_536871397
    pa_stream_set_buffer_attr*: ma_proc_536871397
    pa_stream_get_device_name*: ma_proc_536871397
    pa_stream_set_write_callback*: ma_proc_536871397
    pa_stream_set_read_callback*: ma_proc_536871397
    pa_stream_set_suspended_callback*: ma_proc_536871397
    pa_stream_set_moved_callback*: ma_proc_536871397
    pa_stream_is_suspended*: ma_proc_536871397
    pa_stream_flush*: ma_proc_536871397
    pa_stream_drain*: ma_proc_536871397
    pa_stream_is_corked*: ma_proc_536871397
    pa_stream_cork*: ma_proc_536871397
    pa_stream_trigger*: ma_proc_536871397
    pa_stream_begin_write*: ma_proc_536871397
    pa_stream_write*: ma_proc_536871397
    pa_stream_peek*: ma_proc_536871397
    pa_stream_drop*: ma_proc_536871397
    pa_stream_writable_size*: ma_proc_536871397
    pa_stream_readable_size*: ma_proc_536871397
    pMainLoop*: ma_ptr_536871395
    pPulseContext*: ma_ptr_536871395
    pApplicationName*: cstring
    pServerName*: cstring
  struct_ma_context_anon0_t_jack_t {.pure, inheritable, bycopy.} = object
    jackSO*: ma_handle_536871393
    jack_client_open*: ma_proc_536871397
    jack_client_close*: ma_proc_536871397
    jack_client_name_size*: ma_proc_536871397
    jack_set_process_callback*: ma_proc_536871397
    jack_set_buffer_size_callback*: ma_proc_536871397
    jack_on_shutdown*: ma_proc_536871397
    jack_get_sample_rate*: ma_proc_536871397
    jack_get_buffer_size*: ma_proc_536871397
    jack_get_ports*: ma_proc_536871397
    jack_activate*: ma_proc_536871397
    jack_deactivate*: ma_proc_536871397
    jack_connect*: ma_proc_536871397
    jack_port_register*: ma_proc_536871397
    jack_port_name*: ma_proc_536871397
    jack_port_get_buffer*: ma_proc_536871397
    jack_free*: ma_proc_536871397
    pClientName*: cstring
    tryStartServer*: ma_bool32_536871387
  struct_ma_context_anon0_t_null_backend_t {.pure, inheritable, bycopy.} = object
    internal_unused*: cint
  struct_ma_context_anon0_t {.union, bycopy.} = object
    alsa*: struct_ma_context_anon0_t_alsa_t
    pulse*: struct_ma_context_anon0_t_pulse_t
    jack*: struct_ma_context_anon0_t_jack_t
    null_backend*: struct_ma_context_anon0_t_null_backend_t
  struct_ma_context_anon1_t_posix_t {.pure, inheritable, bycopy.} = object
    internal_unused*: cint
  struct_ma_context_anon1_t {.union, bycopy.} = object
    posix*: struct_ma_context_anon1_t_posix_t
    internal_unused*: cint
  struct_ma_context_536871418 {.pure, inheritable, bycopy.} = object
    callbacks*: ma_backend_callbacks_536871966 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:7301:8
    backend*: ma_backend_536871882
    pLog*: ptr ma_log_536871528
    log*: ma_log_536871528
    threadPriority*: ma_thread_priority_536871506
    threadStackSize*: csize_t
    pUserData*: pointer
    allocationCallbacks*: ma_allocation_callbacks_536871476
    deviceEnumLock*: ma_mutex_536871510
    deviceInfoLock*: ma_mutex_536871510
    deviceInfoCapacity*: ma_uint32_536871377
    playbackDeviceInfoCount*: ma_uint32_536871377
    captureDeviceInfoCount*: ma_uint32_536871377
    pDeviceInfos*: ptr ma_device_info_536871972
    anon0*: struct_ma_context_anon0_t
    anon1*: struct_ma_context_anon1_t
  ma_device_536871420 = struct_ma_device_536871423 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4073:26
  struct_ma_device_resampling_t_linear_t {.pure, inheritable, bycopy.} = object
    lpfOrder*: ma_uint32_536871377
  struct_ma_device_resampling_t {.pure, inheritable, bycopy.} = object
    algorithm*: ma_resample_algorithm_536871734
    pBackendVTable*: ptr ma_resampling_backend_vtable_536871730
    pBackendUserData*: pointer
    linear*: struct_ma_device_resampling_t_linear_t
  struct_ma_device_playback_t {.pure, inheritable, bycopy.} = object
    pID*: ptr ma_device_id_536871956
    id*: ma_device_id_536871956
    name*: array[256'i64, cschar]
    shareMode*: ma_share_mode_536871912
    format*: ma_format_536871456
    channels*: ma_uint32_536871377
    channelMap*: array[254'i64, ma_channel_536871425]
    internalFormat*: ma_format_536871456
    internalChannels*: ma_uint32_536871377
    internalSampleRate*: ma_uint32_536871377
    internalChannelMap*: array[254'i64, ma_channel_536871425]
    internalPeriodSizeInFrames*: ma_uint32_536871377
    internalPeriods*: ma_uint32_536871377
    channelMixMode*: ma_channel_mix_mode_536871464
    calculateLFEFromSpatialChannels*: ma_bool32_536871387
    converter_field*: ma_data_converter_536871766
    pIntermediaryBuffer*: pointer
    intermediaryBufferCap*: ma_uint32_536871377
    intermediaryBufferLen*: ma_uint32_536871377
    pInputCache*: pointer
    inputCacheCap*: ma_uint64_536871381
    inputCacheConsumed*: ma_uint64_536871381
    inputCacheRemaining*: ma_uint64_536871381
  struct_ma_device_capture_t {.pure, inheritable, bycopy.} = object
    pID*: ptr ma_device_id_536871956
    id*: ma_device_id_536871956
    name*: array[256'i64, cschar]
    shareMode*: ma_share_mode_536871912
    format*: ma_format_536871456
    channels*: ma_uint32_536871377
    channelMap*: array[254'i64, ma_channel_536871425]
    internalFormat*: ma_format_536871456
    internalChannels*: ma_uint32_536871377
    internalSampleRate*: ma_uint32_536871377
    internalChannelMap*: array[254'i64, ma_channel_536871425]
    internalPeriodSizeInFrames*: ma_uint32_536871377
    internalPeriods*: ma_uint32_536871377
    channelMixMode*: ma_channel_mix_mode_536871464
    calculateLFEFromSpatialChannels*: ma_bool32_536871387
    converter_field*: ma_data_converter_536871766
    pIntermediaryBuffer*: pointer
    intermediaryBufferCap*: ma_uint32_536871377
    intermediaryBufferLen*: ma_uint32_536871377
  struct_ma_device_anon0_t_alsa_t {.pure, inheritable, bycopy.} = object
    pPCMPlayback*: ma_ptr_536871395
    pPCMCapture*: ma_ptr_536871395
    pPollDescriptorsPlayback*: pointer
    pPollDescriptorsCapture*: pointer
    pollDescriptorCountPlayback*: cint
    pollDescriptorCountCapture*: cint
    wakeupfdPlayback*: cint
    wakeupfdCapture*: cint
    isUsingMMapPlayback*: ma_bool8_536871385
    isUsingMMapCapture*: ma_bool8_536871385
  struct_ma_device_anon0_t_pulse_t {.pure, inheritable, bycopy.} = object
    pMainLoop*: ma_ptr_536871395
    pPulseContext*: ma_ptr_536871395
    pStreamPlayback*: ma_ptr_536871395
    pStreamCapture*: ma_ptr_536871395
  struct_ma_device_anon0_t_jack_t {.pure, inheritable, bycopy.} = object
    pClient*: ma_ptr_536871395
    ppPortsPlayback*: ptr ma_ptr_536871395
    ppPortsCapture*: ptr ma_ptr_536871395
    pIntermediaryBufferPlayback*: ptr cfloat
    pIntermediaryBufferCapture*: ptr cfloat
  struct_ma_device_anon0_t_null_device_t {.pure, inheritable, bycopy.} = object
    deviceThread*: ma_thread_536871508
    operationEvent*: ma_event_536871514
    operationCompletionEvent*: ma_event_536871514
    operationSemaphore*: ma_semaphore_536871518
    operation*: ma_uint32_536871377
    operationResult*: ma_result_536871433
    timer*: ma_timer_536871952
    priorRunTime*: cdouble
    currentPeriodFramesRemainingPlayback*: ma_uint32_536871377
    currentPeriodFramesRemainingCapture*: ma_uint32_536871377
    lastProcessedFramePlayback*: ma_uint64_536871381
    lastProcessedFrameCapture*: ma_uint64_536871381
    isStarted*: ma_atomic_bool32_536871500
  struct_ma_device_anon0_t {.union, bycopy.} = object
    alsa*: struct_ma_device_anon0_t_alsa_t
    pulse*: struct_ma_device_anon0_t_pulse_t
    jack*: struct_ma_device_anon0_t_jack_t
    null_device*: struct_ma_device_anon0_t_null_device_t
  struct_ma_device_536871422 {.pure, inheritable, bycopy.} = object
    pContext*: ptr ma_context_536871417 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:7708:8
    type_field*: ma_device_type_536871908
    sampleRate*: ma_uint32_536871377
    state*: ma_atomic_device_state_536871878
    onData*: ma_device_data_proc_536871902
    onNotification*: ma_device_notification_proc_536871900
    onStop*: ma_stop_proc_536871904
    pUserData*: pointer
    startStopLock*: ma_mutex_536871510
    wakeupEvent*: ma_event_536871514
    startEvent*: ma_event_536871514
    stopEvent*: ma_event_536871514
    thread*: ma_thread_536871508
    workResult*: ma_result_536871433
    isOwnerOfContext*: ma_bool8_536871385
    noPreSilencedOutputBuffer*: ma_bool8_536871385
    noClip*: ma_bool8_536871385
    noDisableDenormals*: ma_bool8_536871385
    noFixedSizedCallback*: ma_bool8_536871385
    masterVolumeFactor*: ma_atomic_float_536871496
    duplexRB*: ma_duplex_rb_536871822
    resampling*: struct_ma_device_resampling_t
    playback*: struct_ma_device_playback_t
    capture*: struct_ma_device_capture_t
    anon0*: struct_ma_device_anon0_t
  ma_channel_536871424 = ma_uint8_536871369 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4075:18
  internal_ma_channel_position_536871428 = enum_ma_channel_position_536871427 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4133:3
  ma_result_536871432 = enum_ma_result_536871431 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4216:3
  ma_stream_format_536871436 = enum_ma_stream_format_536871435 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4231:3
  ma_stream_layout_536871440 = enum_ma_stream_layout_536871439 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4237:3
  ma_dither_mode_536871451 = enum_ma_dither_mode_536871450 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4244:3
  ma_format_536871455 = enum_ma_format_536871454 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4259:3
  ma_standard_sample_rate_536871459 = enum_ma_standard_sample_rate_536871458 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4286:3
  ma_channel_mix_mode_536871463 = enum_ma_channel_mix_mode_536871462 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4295:3
  ma_standard_channel_map_536871467 = enum_ma_standard_channel_map_536871466 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4308:3
  ma_performance_profile_536871471 = enum_ma_performance_profile_536871470 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4314:3
  struct_ma_allocation_callbacks_536871473 {.pure, inheritable, bycopy.} = object
    pUserData*: pointer      ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4317:9
    onMalloc*: proc (a0: csize_t; a1: pointer): pointer {.cdecl.}
    onRealloc*: proc (a0: pointer; a1: csize_t; a2: pointer): pointer {.cdecl.}
    onFree*: proc (a0: pointer; a1: pointer): void {.cdecl.}
  ma_allocation_callbacks_536871475 = struct_ma_allocation_callbacks_536871474 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4323:3
  struct_ma_lcg_536871477 {.pure, inheritable, bycopy.} = object
    state*: ma_int32_536871375 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4325:9
  ma_lcg_536871479 = struct_ma_lcg_536871478 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4328:3
  struct_ma_atomic_uint32_536871481 {.pure, inheritable, bycopy.} = object
    value*: ma_uint32_536871377 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4381:1
  ma_atomic_uint32_536871483 = struct_ma_atomic_uint32_536871482 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4381:1
  struct_ma_atomic_int32_536871485 {.pure, inheritable, bycopy.} = object
    value*: ma_int32_536871375 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4382:1
  ma_atomic_int32_536871487 = struct_ma_atomic_int32_536871486 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4382:1
  struct_ma_atomic_uint64_536871489 {.pure, inheritable, bycopy.} = object
    value*: ma_uint64_536871381 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4383:1
  ma_atomic_uint64_536871491 = struct_ma_atomic_uint64_536871490 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4383:1
  struct_ma_atomic_float_536871493 {.pure, inheritable, bycopy.} = object
    value*: ma_float_536871389 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4384:1
  ma_atomic_float_536871495 = struct_ma_atomic_float_536871494 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4384:1
  struct_ma_atomic_bool32_536871497 {.pure, inheritable, bycopy.} = object
    value*: ma_bool32_536871387 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4385:1
  ma_atomic_bool32_536871499 = struct_ma_atomic_bool32_536871498 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4385:1
  ma_spinlock_536871501 = ma_uint32_536871377 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4389:19
  ma_thread_priority_536871505 = enum_ma_thread_priority_536871504 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4403:7
  ma_thread_536871507 = ma_pthread_t_536871399 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4406:30
  ma_mutex_536871509 = ma_pthread_mutex_t_536871403 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4412:36
  struct_ma_event_536871511 {.pure, inheritable, bycopy.} = object
    value*: ma_uint32_536871377 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4418:17
    lock*: ma_pthread_mutex_t_536871403
    cond*: ma_pthread_cond_t_536871407
  ma_event_536871513 = struct_ma_event_536871512 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4423:11
  struct_ma_semaphore_536871515 {.pure, inheritable, bycopy.} = object
    value*: cint             ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4429:17
    lock*: ma_pthread_mutex_t_536871403
    cond*: ma_pthread_cond_t_536871407
  ma_semaphore_536871517 = struct_ma_semaphore_536871516 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4434:11
  ma_log_callback_proc_536871519 = proc (a0: pointer; a1: ma_uint32_536871377;
      a2: cstring): void {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4502:17
  struct_ma_log_callback_536871521 {.pure, inheritable, bycopy.} = object
    onLog*: ma_log_callback_proc_536871520 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4504:9
    pUserData*: pointer
  ma_log_callback_536871523 = struct_ma_log_callback_536871522 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4508:3
  struct_ma_log_536871525 {.pure, inheritable, bycopy.} = object
    callbacks*: array[4'i64, ma_log_callback_536871524] ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4513:9
    callbackCount*: ma_uint32_536871377
    allocationCallbacks*: ma_allocation_callbacks_536871476
    lock*: ma_mutex_536871510
  ma_log_536871527 = struct_ma_log_536871526 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4521:3
  union_ma_biquad_coefficient_536871529 {.union, bycopy.} = object
    f32*: cfloat             ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4537:9
    s32*: ma_int32_536871375
  ma_biquad_coefficient_536871531 = union_ma_biquad_coefficient_536871530 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4541:3
  struct_ma_biquad_config_536871533 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4543:9
    channels*: ma_uint32_536871377
    b0*: cdouble
    b1*: cdouble
    b2*: cdouble
    a0*: cdouble
    a1*: cdouble
    a2*: cdouble
  ma_biquad_config_536871535 = struct_ma_biquad_config_536871534 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4553:3
  struct_ma_biquad_536871537 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4557:9
    channels*: ma_uint32_536871377
    b0*: ma_biquad_coefficient_536871532
    b1*: ma_biquad_coefficient_536871532
    b2*: ma_biquad_coefficient_536871532
    a1*: ma_biquad_coefficient_536871532
    a2*: ma_biquad_coefficient_536871532
    pR1*: ptr ma_biquad_coefficient_536871532
    pR2*: ptr ma_biquad_coefficient_536871532
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_536871387
  ma_biquad_536871539 = struct_ma_biquad_536871538 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4572:3
  struct_ma_lpf1_config_536871541 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4589:9
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    cutoffFrequency*: cdouble
    q*: cdouble
  ma_lpf1_config_536871543 = struct_ma_lpf1_config_536871542 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4596:3
  ma_lpf2_config_536871545 = struct_ma_lpf1_config_536871542 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4596:19
  struct_ma_lpf1_536871547 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4601:9
    channels*: ma_uint32_536871377
    a*: ma_biquad_coefficient_536871532
    pR1*: ptr ma_biquad_coefficient_536871532
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_536871387
  ma_lpf1_536871549 = struct_ma_lpf1_536871548 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4611:3
  struct_ma_lpf2_536871551 {.pure, inheritable, bycopy.} = object
    bq*: ma_biquad_536871540 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4622:9
  ma_lpf2_536871553 = struct_ma_lpf2_536871552 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4625:3
  struct_ma_lpf_config_536871555 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4637:9
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    cutoffFrequency*: cdouble
    order*: ma_uint32_536871377
  ma_lpf_config_536871557 = struct_ma_lpf_config_536871556 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4644:3
  struct_ma_lpf_536871559 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4648:9
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    lpf1Count*: ma_uint32_536871377
    lpf2Count*: ma_uint32_536871377
    pLPF1*: ptr ma_lpf1_536871550
    pLPF2*: ptr ma_lpf2_536871554
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_536871387
  ma_lpf_536871561 = struct_ma_lpf_536871560 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4661:3
  struct_ma_hpf1_config_536871563 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4678:9
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    cutoffFrequency*: cdouble
    q*: cdouble
  ma_hpf1_config_536871565 = struct_ma_hpf1_config_536871564 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4685:3
  ma_hpf2_config_536871567 = struct_ma_hpf1_config_536871564 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4685:19
  struct_ma_hpf1_536871569 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4690:9
    channels*: ma_uint32_536871377
    a*: ma_biquad_coefficient_536871532
    pR1*: ptr ma_biquad_coefficient_536871532
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_536871387
  ma_hpf1_536871571 = struct_ma_hpf1_536871570 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4700:3
  struct_ma_hpf2_536871573 {.pure, inheritable, bycopy.} = object
    bq*: ma_biquad_536871540 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4710:9
  ma_hpf2_536871575 = struct_ma_hpf2_536871574 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4713:3
  struct_ma_hpf_config_536871577 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4724:9
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    cutoffFrequency*: cdouble
    order*: ma_uint32_536871377
  ma_hpf_config_536871579 = struct_ma_hpf_config_536871578 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4731:3
  struct_ma_hpf_536871581 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4735:9
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    hpf1Count*: ma_uint32_536871377
    hpf2Count*: ma_uint32_536871377
    pHPF1*: ptr ma_hpf1_536871572
    pHPF2*: ptr ma_hpf2_536871576
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_536871387
  ma_hpf_536871583 = struct_ma_hpf_536871582 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4748:3
  struct_ma_bpf2_config_536871585 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4764:9
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    cutoffFrequency*: cdouble
    q*: cdouble
  ma_bpf2_config_536871587 = struct_ma_bpf2_config_536871586 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4771:3
  struct_ma_bpf2_536871589 {.pure, inheritable, bycopy.} = object
    bq*: ma_biquad_536871540 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4775:9
  ma_bpf2_536871591 = struct_ma_bpf2_536871590 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4778:3
  struct_ma_bpf_config_536871593 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4789:9
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    cutoffFrequency*: cdouble
    order*: ma_uint32_536871377
  ma_bpf_config_536871595 = struct_ma_bpf_config_536871594 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4796:3
  struct_ma_bpf_536871597 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4800:9
    channels*: ma_uint32_536871377
    bpf2Count*: ma_uint32_536871377
    pBPF2*: ptr ma_bpf2_536871592
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_536871387
  ma_bpf_536871599 = struct_ma_bpf_536871598 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4810:3
  struct_ma_notch2_config_536871601 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4826:9
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    q*: cdouble
    frequency*: cdouble
  ma_notch2_config_536871603 = struct_ma_notch2_config_536871602 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4833:3
  ma_notch_config_536871605 = struct_ma_notch2_config_536871602 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4833:21
  struct_ma_notch2_536871607 {.pure, inheritable, bycopy.} = object
    bq*: ma_biquad_536871540 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4837:9
  ma_notch2_536871609 = struct_ma_notch2_536871608 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4840:3
  struct_ma_peak2_config_536871611 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4856:9
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    gainDB*: cdouble
    q*: cdouble
    frequency*: cdouble
  ma_peak2_config_536871613 = struct_ma_peak2_config_536871612 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4864:3
  ma_peak_config_536871615 = struct_ma_peak2_config_536871612 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4864:20
  struct_ma_peak2_536871617 {.pure, inheritable, bycopy.} = object
    bq*: ma_biquad_536871540 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4868:9
  ma_peak2_536871619 = struct_ma_peak2_536871618 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4871:3
  struct_ma_loshelf2_config_536871621 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4887:9
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    gainDB*: cdouble
    shelfSlope*: cdouble
    frequency*: cdouble
  ma_loshelf2_config_536871623 = struct_ma_loshelf2_config_536871622 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4895:3
  ma_loshelf_config_536871625 = struct_ma_loshelf2_config_536871622 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4895:23
  struct_ma_loshelf2_536871627 {.pure, inheritable, bycopy.} = object
    bq*: ma_biquad_536871540 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4899:9
  ma_loshelf2_536871629 = struct_ma_loshelf2_536871628 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4902:3
  struct_ma_hishelf2_config_536871631 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4918:9
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    gainDB*: cdouble
    shelfSlope*: cdouble
    frequency*: cdouble
  ma_hishelf2_config_536871633 = struct_ma_hishelf2_config_536871632 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4926:3
  ma_hishelf_config_536871635 = struct_ma_hishelf2_config_536871632 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4926:23
  struct_ma_hishelf2_536871637 {.pure, inheritable, bycopy.} = object
    bq*: ma_biquad_536871540 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4930:9
  ma_hishelf2_536871639 = struct_ma_hishelf2_536871638 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4933:3
  struct_ma_delay_config_536871641 {.pure, inheritable, bycopy.} = object
    channels*: ma_uint32_536871377 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4948:9
    sampleRate*: ma_uint32_536871377
    delayInFrames*: ma_uint32_536871377
    delayStart*: ma_bool32_536871387
    wet*: cfloat
    dry*: cfloat
    decay*: cfloat
  ma_delay_config_536871643 = struct_ma_delay_config_536871642 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4957:3
  struct_ma_delay_536871645 {.pure, inheritable, bycopy.} = object
    config*: ma_delay_config_536871644 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4962:9
    cursor*: ma_uint32_536871377
    bufferSizeInFrames*: ma_uint32_536871377
    pBuffer*: ptr cfloat
  ma_delay_536871647 = struct_ma_delay_536871646 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4968:3
  struct_ma_gainer_config_536871649 {.pure, inheritable, bycopy.} = object
    channels*: ma_uint32_536871377 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4982:9
    smoothTimeInFrames*: ma_uint32_536871377
  ma_gainer_config_536871651 = struct_ma_gainer_config_536871650 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4986:3
  struct_ma_gainer_536871653 {.pure, inheritable, bycopy.} = object
    config*: ma_gainer_config_536871652 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4991:9
    t*: ma_uint32_536871377
    masterVolume*: cfloat
    pOldGains*: ptr cfloat
    pNewGains*: ptr cfloat
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_536871387
  ma_gainer_536871655 = struct_ma_gainer_536871654 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5002:3
  ma_pan_mode_536871659 = enum_ma_pan_mode_536871658 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5021:3
  struct_ma_panner_config_536871661 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5023:9
    channels*: ma_uint32_536871377
    mode*: ma_pan_mode_536871660
    pan*: cfloat
  ma_panner_config_536871663 = struct_ma_panner_config_536871662 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5029:3
  struct_ma_panner_536871665 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5034:9
    channels*: ma_uint32_536871377
    mode*: ma_pan_mode_536871660
    pan*: cfloat
  ma_panner_536871667 = struct_ma_panner_536871666 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5040:3
  struct_ma_fader_config_536871669 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5052:9
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
  ma_fader_config_536871671 = struct_ma_fader_config_536871670 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5057:3
  struct_ma_fader_536871673 {.pure, inheritable, bycopy.} = object
    config*: ma_fader_config_536871672 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5061:9
    volumeBeg*: cfloat
    volumeEnd*: cfloat
    lengthInFrames*: ma_uint64_536871381
    cursorInFrames*: ma_int64_536871379
  ma_fader_536871675 = struct_ma_fader_536871674 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5068:3
  struct_ma_vec3f_536871677 {.pure, inheritable, bycopy.} = object
    x*: cfloat               ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5080:9
    y*: cfloat
    z*: cfloat
  ma_vec3f_536871679 = struct_ma_vec3f_536871678 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5085:3
  struct_ma_atomic_vec3f_536871681 {.pure, inheritable, bycopy.} = object
    v*: ma_vec3f_536871680   ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5087:9
    lock*: ma_spinlock_536871502
  ma_atomic_vec3f_536871683 = struct_ma_atomic_vec3f_536871682 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5091:3
  ma_attenuation_model_536871687 = enum_ma_attenuation_model_536871686 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5099:3
  ma_positioning_536871691 = enum_ma_positioning_536871690 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5105:3
  ma_handedness_536871695 = enum_ma_handedness_536871694 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5111:3
  struct_ma_spatializer_listener_config_536871697 {.pure, inheritable, bycopy.} = object
    channelsOut*: ma_uint32_536871377 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5114:9
    pChannelMapOut*: ptr ma_channel_536871425
    handedness*: ma_handedness_536871696
    coneInnerAngleInRadians*: cfloat
    coneOuterAngleInRadians*: cfloat
    coneOuterGain*: cfloat
    speedOfSound*: cfloat
    worldUp*: ma_vec3f_536871680
  ma_spatializer_listener_config_536871699 = struct_ma_spatializer_listener_config_536871698 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5124:3
  struct_ma_spatializer_listener_536871701 {.pure, inheritable, bycopy.} = object
    config*: ma_spatializer_listener_config_536871700 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5129:9
    position*: ma_atomic_vec3f_536871684
    direction*: ma_atomic_vec3f_536871684
    velocity*: ma_atomic_vec3f_536871684
    isEnabled*: ma_bool32_536871387
    internal_ownsHeap*: ma_bool32_536871387
    internal_pHeap*: pointer
  ma_spatializer_listener_536871703 = struct_ma_spatializer_listener_536871702 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5140:3
  struct_ma_spatializer_config_536871705 {.pure, inheritable, bycopy.} = object
    channelsIn*: ma_uint32_536871377 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5163:9
    channelsOut*: ma_uint32_536871377
    pChannelMapIn*: ptr ma_channel_536871425
    attenuationModel*: ma_attenuation_model_536871688
    positioning*: ma_positioning_536871692
    handedness*: ma_handedness_536871696
    minGain*: cfloat
    maxGain*: cfloat
    minDistance*: cfloat
    maxDistance*: cfloat
    rolloff*: cfloat
    coneInnerAngleInRadians*: cfloat
    coneOuterAngleInRadians*: cfloat
    coneOuterGain*: cfloat
    dopplerFactor*: cfloat
    directionalAttenuationFactor*: cfloat
    minSpatializationChannelGain*: cfloat
    gainSmoothTimeInFrames*: ma_uint32_536871377
  ma_spatializer_config_536871707 = struct_ma_spatializer_config_536871706 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5183:3
  struct_ma_spatializer_536871709 {.pure, inheritable, bycopy.} = object
    channelsIn*: ma_uint32_536871377 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5188:9
    channelsOut*: ma_uint32_536871377
    pChannelMapIn*: ptr ma_channel_536871425
    attenuationModel*: ma_attenuation_model_536871688
    positioning*: ma_positioning_536871692
    handedness*: ma_handedness_536871696
    minGain*: cfloat
    maxGain*: cfloat
    minDistance*: cfloat
    maxDistance*: cfloat
    rolloff*: cfloat
    coneInnerAngleInRadians*: cfloat
    coneOuterAngleInRadians*: cfloat
    coneOuterGain*: cfloat
    dopplerFactor*: cfloat
    directionalAttenuationFactor*: cfloat
    gainSmoothTimeInFrames*: ma_uint32_536871377
    position*: ma_atomic_vec3f_536871684
    direction*: ma_atomic_vec3f_536871684
    velocity*: ma_atomic_vec3f_536871684
    dopplerPitch*: cfloat
    minSpatializationChannelGain*: cfloat
    gainer*: ma_gainer_536871656
    pNewChannelGainsOut*: ptr cfloat
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_536871387
  ma_spatializer_536871711 = struct_ma_spatializer_536871710 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5218:3
  struct_ma_linear_resampler_config_536871713 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5275:9
    channels*: ma_uint32_536871377
    sampleRateIn*: ma_uint32_536871377
    sampleRateOut*: ma_uint32_536871377
    lpfOrder*: ma_uint32_536871377
    lpfNyquistFactor*: cdouble
  ma_linear_resampler_config_536871715 = struct_ma_linear_resampler_config_536871714 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5283:3
  struct_ma_linear_resampler_x0_t {.union, bycopy.} = object
    f32*: ptr cfloat
    s16*: ptr ma_int16_536871371
  struct_ma_linear_resampler_x1_t {.union, bycopy.} = object
    f32*: ptr cfloat
    s16*: ptr ma_int16_536871371
  struct_ma_linear_resampler_536871717 {.pure, inheritable, bycopy.} = object
    config*: ma_linear_resampler_config_536871716 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5287:9
    inAdvanceInt*: ma_uint32_536871377
    inAdvanceFrac*: ma_uint32_536871377
    inTimeInt*: ma_uint32_536871377
    inTimeFrac*: ma_uint32_536871377
    x0*: struct_ma_linear_resampler_x0_t
    x1*: struct_ma_linear_resampler_x1_t
    lpf*: ma_lpf_536871562
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_536871387
  ma_linear_resampler_536871719 = struct_ma_linear_resampler_536871718 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5309:3
  ma_resampler_config_536871721 = struct_ma_resampler_config_536871724 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5325:36
  struct_ma_resampler_config_linear_t {.pure, inheritable, bycopy.} = object
    lpfOrder*: ma_uint32_536871377
  struct_ma_resampler_config_536871723 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5348:8
    channels*: ma_uint32_536871377
    sampleRateIn*: ma_uint32_536871377
    sampleRateOut*: ma_uint32_536871377
    algorithm*: ma_resample_algorithm_536871734
    pBackendVTable*: ptr ma_resampling_backend_vtable_536871730
    pBackendUserData*: pointer
    linear*: struct_ma_resampler_config_linear_t
  struct_ma_resampling_backend_vtable_536871727 {.pure, inheritable, bycopy.} = object
    onGetHeapSize*: proc (a0: pointer; a1: ptr ma_resampler_config_536871722;
                          a2: ptr csize_t): ma_result_536871433 {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5328:9
    onInit*: proc (a0: pointer; a1: ptr ma_resampler_config_536871722;
                   a2: pointer; a3: ptr pointer): ma_result_536871433 {.cdecl.}
    onUninit*: proc (a0: pointer; a1: pointer; a2: ptr ma_allocation_callbacks_536871476): void {.
        cdecl.}
    onProcess*: proc (a0: pointer; a1: pointer; a2: pointer; a3: ptr ma_uint64_536871381;
                      a4: pointer; a5: ptr ma_uint64_536871381): ma_result_536871433 {.
        cdecl.}
    onSetRate*: proc (a0: pointer; a1: pointer; a2: ma_uint32_536871377;
                      a3: ma_uint32_536871377): ma_result_536871433 {.cdecl.}
    onGetInputLatency*: proc (a0: pointer; a1: pointer): ma_uint64_536871381 {.
        cdecl.}
    onGetOutputLatency*: proc (a0: pointer; a1: pointer): ma_uint64_536871381 {.
        cdecl.}
    onGetRequiredInputFrameCount*: proc (a0: pointer; a1: pointer;
        a2: ma_uint64_536871381; a3: ptr ma_uint64_536871381): ma_result_536871433 {.
        cdecl.}
    onGetExpectedOutputFrameCount*: proc (a0: pointer; a1: pointer;
        a2: ma_uint64_536871381; a3: ptr ma_uint64_536871381): ma_result_536871433 {.
        cdecl.}
    onReset*: proc (a0: pointer; a1: pointer): ma_result_536871433 {.cdecl.}
  ma_resampling_backend_vtable_536871729 = struct_ma_resampling_backend_vtable_536871728 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5340:3
  ma_resample_algorithm_536871733 = enum_ma_resample_algorithm_536871732 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5346:3
  struct_ma_resampler_state_t {.union, bycopy.} = object
    linear*: ma_linear_resampler_536871720
  struct_ma_resampler_536871735 {.pure, inheritable, bycopy.} = object
    pBackend*: pointer       ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5365:9
    pBackendVTable*: ptr ma_resampling_backend_vtable_536871730
    pBackendUserData*: pointer
    format*: ma_format_536871456
    channels*: ma_uint32_536871377
    sampleRateIn*: ma_uint32_536871377
    sampleRateOut*: ma_uint32_536871377
    state*: struct_ma_resampler_state_t
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_536871387
  ma_resampler_536871737 = struct_ma_resampler_536871736 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5382:3
  ma_channel_conversion_path_536871741 = enum_ma_channel_conversion_path_536871740 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5478:3
  ma_mono_expansion_mode_536871745 = enum_ma_mono_expansion_mode_536871744 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5486:3
  struct_ma_channel_converter_config_536871747 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5488:9
    channelsIn*: ma_uint32_536871377
    channelsOut*: ma_uint32_536871377
    pChannelMapIn*: ptr ma_channel_536871425
    pChannelMapOut*: ptr ma_channel_536871425
    mixingMode*: ma_channel_mix_mode_536871464
    calculateLFEFromSpatialChannels*: ma_bool32_536871387
    ppWeights*: ptr ptr cfloat
  ma_channel_converter_config_536871749 = struct_ma_channel_converter_config_536871748 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5498:3
  struct_ma_channel_converter_weights_t {.union, bycopy.} = object
    f32*: ptr ptr cfloat
    s16*: ptr ptr ma_int32_536871375
  struct_ma_channel_converter_536871751 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5502:9
    channelsIn*: ma_uint32_536871377
    channelsOut*: ma_uint32_536871377
    mixingMode*: ma_channel_mix_mode_536871464
    conversionPath*: ma_channel_conversion_path_536871742
    pChannelMapIn*: ptr ma_channel_536871425
    pChannelMapOut*: ptr ma_channel_536871425
    pShuffleTable*: ptr ma_uint8_536871369
    weights*: struct_ma_channel_converter_weights_t
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_536871387
  ma_channel_converter_536871753 = struct_ma_channel_converter_536871752 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5521:3
  struct_ma_data_converter_config_536871755 {.pure, inheritable, bycopy.} = object
    formatIn*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5537:9
    formatOut*: ma_format_536871456
    channelsIn*: ma_uint32_536871377
    channelsOut*: ma_uint32_536871377
    sampleRateIn*: ma_uint32_536871377
    sampleRateOut*: ma_uint32_536871377
    pChannelMapIn*: ptr ma_channel_536871425
    pChannelMapOut*: ptr ma_channel_536871425
    ditherMode*: ma_dither_mode_536871452
    channelMixMode*: ma_channel_mix_mode_536871464
    calculateLFEFromSpatialChannels*: ma_bool32_536871387
    ppChannelWeights*: ptr ptr cfloat
    allowDynamicSampleRate*: ma_bool32_536871387
    resampling*: ma_resampler_config_536871722
  ma_data_converter_config_536871757 = struct_ma_data_converter_config_536871756 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5553:3
  ma_data_converter_execution_path_536871761 = enum_ma_data_converter_execution_path_536871760 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5567:3
  struct_ma_data_converter_536871763 {.pure, inheritable, bycopy.} = object
    formatIn*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5569:9
    formatOut*: ma_format_536871456
    channelsIn*: ma_uint32_536871377
    channelsOut*: ma_uint32_536871377
    sampleRateIn*: ma_uint32_536871377
    sampleRateOut*: ma_uint32_536871377
    ditherMode*: ma_dither_mode_536871452
    executionPath*: ma_data_converter_execution_path_536871762
    channelConverter*: ma_channel_converter_536871754
    resampler*: ma_resampler_536871738
    hasPreFormatConversion*: ma_bool8_536871385
    hasPostFormatConversion*: ma_bool8_536871385
    hasChannelConverter*: ma_bool8_536871385
    hasResampler*: ma_bool8_536871385
    isPassthrough*: ma_bool8_536871385
    internal_ownsHeap*: ma_bool8_536871385
    internal_pHeap*: pointer
  ma_data_converter_536871765 = struct_ma_data_converter_536871764 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5590:3
  struct_ma_data_source_vtable_536871769 {.pure, inheritable, bycopy.} = object
    onRead*: proc (a0: pointer; a1: pointer; a2: ma_uint64_536871381;
                   a3: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5781:9
    onSeek*: proc (a0: pointer; a1: ma_uint64_536871381): ma_result_536871433 {.
        cdecl.}
    onGetDataFormat*: proc (a0: pointer; a1: ptr ma_format_536871456;
                            a2: ptr ma_uint32_536871377; a3: ptr ma_uint32_536871377;
                            a4: ptr ma_channel_536871425; a5: csize_t): ma_result_536871433 {.
        cdecl.}
    onGetCursor*: proc (a0: pointer; a1: ptr ma_uint64_536871381): ma_result_536871433 {.
        cdecl.}
    onGetLength*: proc (a0: pointer; a1: ptr ma_uint64_536871381): ma_result_536871433 {.
        cdecl.}
    onSetLooping*: proc (a0: pointer; a1: ma_bool32_536871387): ma_result_536871433 {.
        cdecl.}
    flags*: ma_uint32_536871377
  ma_data_source_vtable_536871771 = struct_ma_data_source_vtable_536871770 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5790:3
  ma_data_source_get_next_proc_536871773 = proc (a0: pointer): pointer {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5792:28
  struct_ma_data_source_config_536871775 {.pure, inheritable, bycopy.} = object
    vtable*: ptr ma_data_source_vtable_536871772 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5794:9
  ma_data_source_config_536871777 = struct_ma_data_source_config_536871776 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5797:3
  struct_ma_data_source_base_536871779 {.pure, inheritable, bycopy.} = object
    vtable*: ptr ma_data_source_vtable_536871772 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5802:9
    rangeBegInFrames*: ma_uint64_536871381
    rangeEndInFrames*: ma_uint64_536871381
    loopBegInFrames*: ma_uint64_536871381
    loopEndInFrames*: ma_uint64_536871381
    pCurrent*: pointer
    pNext*: pointer
    onGetNext*: ma_data_source_get_next_proc_536871774
    isLooping*: ma_bool32_536871387
  ma_data_source_base_536871781 = struct_ma_data_source_base_536871780 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5813:3
  struct_ma_audio_buffer_ref_536871783 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_536871782 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5839:9
    format*: ma_format_536871456
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    cursor*: ma_uint64_536871381
    sizeInFrames*: ma_uint64_536871381
    pData*: pointer
  ma_audio_buffer_ref_536871785 = struct_ma_audio_buffer_ref_536871784 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5848:3
  struct_ma_audio_buffer_config_536871787 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5864:9
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    sizeInFrames*: ma_uint64_536871381
    pData*: pointer
    allocationCallbacks*: ma_allocation_callbacks_536871476
  ma_audio_buffer_config_536871789 = struct_ma_audio_buffer_config_536871788 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5872:3
  struct_ma_audio_buffer_536871791 {.pure, inheritable, bycopy.} = object
    ref_field*: ma_audio_buffer_ref_536871786 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5876:9
    allocationCallbacks*: ma_allocation_callbacks_536871476
    ownsData*: ma_bool32_536871387
    internal_pExtraData*: array[1'i64, ma_uint8_536871369]
  ma_audio_buffer_536871793 = struct_ma_audio_buffer_536871792 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5882:3
  ma_paged_audio_buffer_page_536871795 = struct_ma_paged_audio_buffer_page_536871798 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5910:43
  struct_ma_paged_audio_buffer_page_536871797 {.pure, inheritable, bycopy.} = object
    pNext*: ptr ma_paged_audio_buffer_page_536871796 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5911:8
    sizeInFrames*: ma_uint64_536871381
    pAudioData*: array[1'i64, ma_uint8_536871369]
  struct_ma_paged_audio_buffer_data_536871799 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5918:9
    channels*: ma_uint32_536871377
    head*: ma_paged_audio_buffer_page_536871796
    pTail*: ptr ma_paged_audio_buffer_page_536871796
  ma_paged_audio_buffer_data_536871801 = struct_ma_paged_audio_buffer_data_536871800 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5924:3
  struct_ma_paged_audio_buffer_config_536871803 {.pure, inheritable, bycopy.} = object
    pData*: ptr ma_paged_audio_buffer_data_536871802 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5937:9
  ma_paged_audio_buffer_config_536871805 = struct_ma_paged_audio_buffer_config_536871804 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5940:3
  struct_ma_paged_audio_buffer_536871807 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_536871782 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5945:9
    pData*: ptr ma_paged_audio_buffer_data_536871802
    pCurrent*: ptr ma_paged_audio_buffer_page_536871796
    relativeCursor*: ma_uint64_536871381
    absoluteCursor*: ma_uint64_536871381
  ma_paged_audio_buffer_536871809 = struct_ma_paged_audio_buffer_536871808 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5952:3
  struct_ma_rb_536871811 {.pure, inheritable, bycopy.} = object
    pBuffer*: pointer        ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5968:9
    subbufferSizeInBytes*: ma_uint32_536871377
    subbufferCount*: ma_uint32_536871377
    subbufferStrideInBytes*: ma_uint32_536871377
    encodedReadOffset*: ma_uint32_536871377
    encodedWriteOffset*: ma_uint32_536871377
    ownsBuffer*: ma_bool8_536871385
    clearOnWriteAcquire*: ma_bool8_536871385
    allocationCallbacks*: ma_allocation_callbacks_536871476
  ma_rb_536871813 = struct_ma_rb_536871812 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5979:3
  struct_ma_pcm_rb_536871815 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_536871782 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6000:9
    rb*: ma_rb_536871814
    format*: ma_format_536871456
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
  ma_pcm_rb_536871817 = struct_ma_pcm_rb_536871816 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6007:3
  struct_ma_duplex_rb_536871819 {.pure, inheritable, bycopy.} = object
    rb*: ma_pcm_rb_536871818 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6042:9
  ma_duplex_rb_536871821 = struct_ma_duplex_rb_536871820 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6045:3
  struct_ma_fence_536871823 {.pure, inheritable, bycopy.} = object
    e*: ma_event_536871514   ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6202:9
    counter*: ma_uint32_536871377
  ma_fence_536871825 = struct_ma_fence_536871824 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6208:3
  struct_ma_async_notification_callbacks_536871829 {.pure, inheritable, bycopy.} = object
    onSignal*: proc (a0: pointer): void {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6223:9
  ma_async_notification_callbacks_536871831 = struct_ma_async_notification_callbacks_536871830 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6226:3
  struct_ma_async_notification_poll_536871833 {.pure, inheritable, bycopy.} = object
    cb*: ma_async_notification_callbacks_536871832 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6236:9
    signalled*: ma_bool32_536871387
  ma_async_notification_poll_536871835 = struct_ma_async_notification_poll_536871834 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6240:3
  struct_ma_async_notification_event_536871837 {.pure, inheritable, bycopy.} = object
    cb*: ma_async_notification_callbacks_536871832 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6251:9
    e*: ma_event_536871514
  ma_async_notification_event_536871839 = struct_ma_async_notification_event_536871838 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6257:3
  struct_ma_slot_allocator_config_536871841 {.pure, inheritable, bycopy.} = object
    capacity*: ma_uint32_536871377 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6289:9
  ma_slot_allocator_config_536871843 = struct_ma_slot_allocator_config_536871842 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6292:3
  struct_ma_slot_allocator_group_536871845 {.pure, inheritable, bycopy.} = object
    bitfield*: ma_uint32_536871377 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6297:9
  ma_slot_allocator_group_536871847 = struct_ma_slot_allocator_group_536871846 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6300:3
  struct_ma_slot_allocator_536871849 {.pure, inheritable, bycopy.} = object
    pGroups*: ptr ma_slot_allocator_group_536871848 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6302:9
    pSlots*: ptr ma_uint32_536871377
    count*: ma_uint32_536871377
    capacity*: ma_uint32_536871377
    internal_ownsHeap*: ma_bool32_536871387
    internal_pHeap*: pointer
  ma_slot_allocator_536871851 = struct_ma_slot_allocator_536871850 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6312:3
  struct_ma_job_toc_t_breakup_t {.pure, inheritable, bycopy.} = object
    code*: ma_uint16_536871373
    slot*: ma_uint16_536871373
    refcount*: ma_uint32_536871377
  struct_ma_job_toc_t {.union, bycopy.} = object
    breakup*: struct_ma_job_toc_t_breakup_t
    allocation*: ma_uint64_536871381
  struct_ma_job_data_t_custom_t {.pure, inheritable, bycopy.} = object
    proc_field*: ma_job_proc_536871856
    data0*: ma_uintptr_536871383
    data1*: ma_uintptr_536871383
  struct_ma_job_data_t_resourceManager_t_loadDataBufferNode_t {.pure,
      inheritable, bycopy.} = object
    pResourceManager*: pointer
    pDataBufferNode*: pointer
    pFilePath*: cstring
    pFilePathW*: ptr wchar_t_536871862
    flags*: ma_uint32_536871377
    pInitNotification*: pointer
    pDoneNotification*: pointer
    pInitFence*: ptr ma_fence_536871826
    pDoneFence*: ptr ma_fence_536871826
  struct_ma_job_data_t_resourceManager_t_freeDataBufferNode_t {.pure,
      inheritable, bycopy.} = object
    pResourceManager*: pointer
    pDataBufferNode*: pointer
    pDoneNotification*: pointer
    pDoneFence*: ptr ma_fence_536871826
  struct_ma_job_data_t_resourceManager_t_pageDataBufferNode_t {.pure,
      inheritable, bycopy.} = object
    pResourceManager*: pointer
    pDataBufferNode*: pointer
    pDecoder*: pointer
    pDoneNotification*: pointer
    pDoneFence*: ptr ma_fence_536871826
  struct_ma_job_data_t_resourceManager_t_loadDataBuffer_t {.pure, inheritable,
      bycopy.} = object
    pDataBuffer*: pointer
    pInitNotification*: pointer
    pDoneNotification*: pointer
    pInitFence*: ptr ma_fence_536871826
    pDoneFence*: ptr ma_fence_536871826
    rangeBegInPCMFrames*: ma_uint64_536871381
    rangeEndInPCMFrames*: ma_uint64_536871381
    loopPointBegInPCMFrames*: ma_uint64_536871381
    loopPointEndInPCMFrames*: ma_uint64_536871381
    isLooping*: ma_uint32_536871377
  struct_ma_job_data_t_resourceManager_t_freeDataBuffer_t {.pure, inheritable,
      bycopy.} = object
    pDataBuffer*: pointer
    pDoneNotification*: pointer
    pDoneFence*: ptr ma_fence_536871826
  struct_ma_job_data_t_resourceManager_t_loadDataStream_t {.pure, inheritable,
      bycopy.} = object
    pDataStream*: pointer
    pFilePath*: cstring
    pFilePathW*: ptr wchar_t_536871862
    initialSeekPoint*: ma_uint64_536871381
    pInitNotification*: pointer
    pInitFence*: ptr ma_fence_536871826
  struct_ma_job_data_t_resourceManager_t_freeDataStream_t {.pure, inheritable,
      bycopy.} = object
    pDataStream*: pointer
    pDoneNotification*: pointer
    pDoneFence*: ptr ma_fence_536871826
  struct_ma_job_data_t_resourceManager_t_pageDataStream_t {.pure, inheritable,
      bycopy.} = object
    pDataStream*: pointer
    pageIndex*: ma_uint32_536871377
  struct_ma_job_data_t_resourceManager_t_seekDataStream_t {.pure, inheritable,
      bycopy.} = object
    pDataStream*: pointer
    frameIndex*: ma_uint64_536871381
  struct_ma_job_data_t_resourceManager_t {.union, bycopy.} = object
    loadDataBufferNode*: struct_ma_job_data_t_resourceManager_t_loadDataBufferNode_t
    freeDataBufferNode*: struct_ma_job_data_t_resourceManager_t_freeDataBufferNode_t
    pageDataBufferNode*: struct_ma_job_data_t_resourceManager_t_pageDataBufferNode_t
    loadDataBuffer*: struct_ma_job_data_t_resourceManager_t_loadDataBuffer_t
    freeDataBuffer*: struct_ma_job_data_t_resourceManager_t_freeDataBuffer_t
    loadDataStream*: struct_ma_job_data_t_resourceManager_t_loadDataStream_t
    freeDataStream*: struct_ma_job_data_t_resourceManager_t_freeDataStream_t
    pageDataStream*: struct_ma_job_data_t_resourceManager_t_pageDataStream_t
    seekDataStream*: struct_ma_job_data_t_resourceManager_t_seekDataStream_t
  struct_ma_job_data_t_device_t_aaudio_t_reroute_t {.pure, inheritable, bycopy.} = object
    pDevice*: pointer
    deviceType*: ma_uint32_536871377
  struct_ma_job_data_t_device_t_aaudio_t {.union, bycopy.} = object
    reroute*: struct_ma_job_data_t_device_t_aaudio_t_reroute_t
  struct_ma_job_data_t_device_t {.union, bycopy.} = object
    aaudio*: struct_ma_job_data_t_device_t_aaudio_t
  struct_ma_job_data_t {.union, bycopy.} = object
    custom*: struct_ma_job_data_t_custom_t
    resourceManager*: struct_ma_job_data_t_resourceManager_t
    device*: struct_ma_job_data_t_device_t
  struct_ma_job_536871853 {.pure, inheritable, bycopy.} = object
    toc*: struct_ma_job_toc_t ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6355:8
    next*: ma_uint64_536871381
    order*: ma_uint32_536871377
    data*: struct_ma_job_data_t
  ma_job_proc_536871855 = proc (a0: ptr ma_job_536871361): ma_result_536871433 {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6328:22
  ma_job_type_536871859 = enum_ma_job_type_536871858 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6353:3
  wchar_t_536871861 = cint   ## Generated based on /usr/include/clang/18.1.3/include/__stddef_wchar_t.h:24:24
  ma_job_queue_flags_536871865 = enum_ma_job_queue_flags_536871864 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6486:3
  struct_ma_job_queue_config_536871867 {.pure, inheritable, bycopy.} = object
    flags*: ma_uint32_536871377 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6488:9
    capacity*: ma_uint32_536871377
  struct_ma_job_queue_536871869 {.pure, inheritable, bycopy.} = object
    flags*: ma_uint32_536871377 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6497:9
    capacity*: ma_uint32_536871377
    head*: ma_uint64_536871381
    tail*: ma_uint64_536871381
    sem*: ma_semaphore_536871518
    allocator*: ma_slot_allocator_536871852
    pJobs*: ptr ma_job_536871361
    lock*: ma_spinlock_536871502
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_536871387
  ma_device_state_536871873 = enum_ma_device_state_536871872 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6644:3
  struct_ma_atomic_device_state_536871875 {.pure, inheritable, bycopy.} = object
    value*: ma_device_state_536871874 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6646:1
  ma_atomic_device_state_536871877 = struct_ma_atomic_device_state_536871876 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6646:1
  ma_backend_536871881 = enum_ma_backend_536871880 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6677:3
  struct_ma_device_job_thread_config_536871883 {.pure, inheritable, bycopy.} = object
    noThread*: ma_bool32_536871387 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6689:9
    jobQueueCapacity*: ma_uint32_536871377
    jobQueueFlags*: ma_uint32_536871377
  ma_device_job_thread_config_536871885 = struct_ma_device_job_thread_config_536871884 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6694:3
  struct_ma_device_job_thread_536871887 {.pure, inheritable, bycopy.} = object
    thread*: ma_thread_536871508 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6698:9
    jobQueue*: ma_job_queue_536871365
    internal_hasThread*: ma_bool32_536871387
  ma_device_job_thread_536871889 = struct_ma_device_job_thread_536871888 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6703:3
  ma_device_notification_type_536871893 = enum_ma_device_notification_type_536871892 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6721:3
  struct_ma_device_notification_data_t_started_t {.pure, inheritable, bycopy.} = object
    internal_unused*: cint
  struct_ma_device_notification_data_t_stopped_t {.pure, inheritable, bycopy.} = object
    internal_unused*: cint
  struct_ma_device_notification_data_t_rerouted_t {.pure, inheritable, bycopy.} = object
    internal_unused*: cint
  struct_ma_device_notification_data_t_interruption_t {.pure, inheritable,
      bycopy.} = object
    internal_unused*: cint
  struct_ma_device_notification_data_t {.union, bycopy.} = object
    started*: struct_ma_device_notification_data_t_started_t
    stopped*: struct_ma_device_notification_data_t_stopped_t
    rerouted*: struct_ma_device_notification_data_t_rerouted_t
    interruption*: struct_ma_device_notification_data_t_interruption_t
  struct_ma_device_notification_536871895 {.pure, inheritable, bycopy.} = object
    pDevice*: ptr ma_device_536871421 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6723:9
    type_field*: ma_device_notification_type_536871894
    data*: struct_ma_device_notification_data_t
  ma_device_notification_536871897 = struct_ma_device_notification_536871896 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6746:3
  ma_device_notification_proc_536871899 = proc (a0: ptr ma_device_notification_536871898): void {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6788:17
  ma_device_data_proc_536871901 = proc (a0: ptr ma_device_536871421;
                                        a1: pointer; a2: pointer; a3: ma_uint32_536871377): void {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6831:17
  ma_stop_proc_536871903 = proc (a0: ptr ma_device_536871421): void {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6855:17
  ma_device_type_536871907 = enum_ma_device_type_536871906 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6863:3
  ma_share_mode_536871911 = enum_ma_share_mode_536871910 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6869:3
  ma_ios_session_category_536871915 = enum_ma_ios_session_category_536871914 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6882:3
  ma_ios_session_category_option_536871919 = enum_ma_ios_session_category_option_536871918 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6894:3
  ma_opensl_stream_type_536871923 = enum_ma_opensl_stream_type_536871922 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6906:3
  ma_opensl_recording_preset_536871927 = enum_ma_opensl_recording_preset_536871926 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6917:3
  ma_wasapi_usage_536871931 = enum_ma_wasapi_usage_536871930 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6925:3
  ma_aaudio_usage_536871935 = enum_ma_aaudio_usage_536871934 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6947:3
  ma_aaudio_content_type_536871939 = enum_ma_aaudio_content_type_536871938 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6957:3
  ma_aaudio_input_preset_536871943 = enum_ma_aaudio_input_preset_536871942 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6969:3
  ma_aaudio_allowed_capture_policy_536871947 = enum_ma_aaudio_allowed_capture_policy_536871946 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6977:3
  union_ma_timer_536871949 {.union, bycopy.} = object
    counter*: ma_int64_536871379 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6979:9
    counterD*: cdouble
  ma_timer_536871951 = union_ma_timer_536871950 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6983:3
  union_ma_device_id_custom_t {.union, bycopy.} = object
    i*: cint
    s*: array[256'i64, cschar]
    p*: pointer
  union_ma_device_id_536871953 {.union, bycopy.} = object
    wasapi*: array[64'i64, ma_wchar_win32_536871411] ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:6985:9
    dsound*: array[16'i64, ma_uint8_536871369]
    winmm*: ma_uint32_536871377
    alsa*: array[256'i64, cschar]
    pulse*: array[256'i64, cschar]
    jack*: cint
    coreaudio*: array[256'i64, cschar]
    sndio*: array[256'i64, cschar]
    audio4*: array[256'i64, cschar]
    oss*: array[64'i64, cschar]
    aaudio*: ma_int32_536871375
    opensl*: ma_uint32_536871377
    webaudio*: array[32'i64, cschar]
    custom*: union_ma_device_id_custom_t
    nullbackend*: cint
  ma_device_id_536871955 = union_ma_device_id_536871954 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:7007:3
  ma_context_config_536871957 = struct_ma_context_config_536871960 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:7010:37
  struct_ma_context_config_alsa_t {.pure, inheritable, bycopy.} = object
    useVerboseDeviceEnumeration*: ma_bool32_536871387
  struct_ma_context_config_pulse_t {.pure, inheritable, bycopy.} = object
    pApplicationName*: cstring
    pServerName*: cstring
    tryAutoSpawn*: ma_bool32_536871387
  struct_ma_context_config_coreaudio_t {.pure, inheritable, bycopy.} = object
    sessionCategory*: ma_ios_session_category_536871916
    sessionCategoryOptions*: ma_uint32_536871377
    noAudioSessionActivate*: ma_bool32_536871387
    noAudioSessionDeactivate*: ma_bool32_536871387
  struct_ma_context_config_jack_t {.pure, inheritable, bycopy.} = object
    pClientName*: cstring
    tryStartServer*: ma_bool32_536871387
  struct_ma_context_config_536871959 {.pure, inheritable, bycopy.} = object
    pLog*: ptr ma_log_536871528 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:7243:8
    threadPriority*: ma_thread_priority_536871506
    threadStackSize*: csize_t
    pUserData*: pointer
    allocationCallbacks*: ma_allocation_callbacks_536871476
    alsa*: struct_ma_context_config_alsa_t
    pulse*: struct_ma_context_config_pulse_t
    coreaudio*: struct_ma_context_config_coreaudio_t
    jack*: struct_ma_context_config_jack_t
    custom*: ma_backend_callbacks_536871966
  ma_device_config_536871961 = struct_ma_device_config_536871964 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:7011:37
  struct_ma_device_config_playback_t {.pure, inheritable, bycopy.} = object
    pDeviceID*: ptr ma_device_id_536871956
    format*: ma_format_536871456
    channels*: ma_uint32_536871377
    pChannelMap*: ptr ma_channel_536871425
    channelMixMode*: ma_channel_mix_mode_536871464
    calculateLFEFromSpatialChannels*: ma_bool32_536871387
    shareMode*: ma_share_mode_536871912
  struct_ma_device_config_capture_t {.pure, inheritable, bycopy.} = object
    pDeviceID*: ptr ma_device_id_536871956
    format*: ma_format_536871456
    channels*: ma_uint32_536871377
    pChannelMap*: ptr ma_channel_536871425
    channelMixMode*: ma_channel_mix_mode_536871464
    calculateLFEFromSpatialChannels*: ma_bool32_536871387
    shareMode*: ma_share_mode_536871912
  struct_ma_device_config_wasapi_t {.pure, inheritable, bycopy.} = object
    usage*: ma_wasapi_usage_536871932
    noAutoConvertSRC*: ma_bool8_536871385
    noDefaultQualitySRC*: ma_bool8_536871385
    noAutoStreamRouting*: ma_bool8_536871385
    noHardwareOffloading*: ma_bool8_536871385
    loopbackProcessID*: ma_uint32_536871377
    loopbackProcessExclude*: ma_bool8_536871385
  struct_ma_device_config_alsa_t {.pure, inheritable, bycopy.} = object
    noMMap*: ma_bool32_536871387
    noAutoFormat*: ma_bool32_536871387
    noAutoChannels*: ma_bool32_536871387
    noAutoResample*: ma_bool32_536871387
  struct_ma_device_config_pulse_t {.pure, inheritable, bycopy.} = object
    pStreamNamePlayback*: cstring
    pStreamNameCapture*: cstring
  struct_ma_device_config_coreaudio_t {.pure, inheritable, bycopy.} = object
    allowNominalSampleRateChange*: ma_bool32_536871387
  struct_ma_device_config_opensl_t {.pure, inheritable, bycopy.} = object
    streamType*: ma_opensl_stream_type_536871924
    recordingPreset*: ma_opensl_recording_preset_536871928
    enableCompatibilityWorkarounds*: ma_bool32_536871387
  struct_ma_device_config_aaudio_t {.pure, inheritable, bycopy.} = object
    usage*: ma_aaudio_usage_536871936
    contentType*: ma_aaudio_content_type_536871940
    inputPreset*: ma_aaudio_input_preset_536871944
    allowedCapturePolicy*: ma_aaudio_allowed_capture_policy_536871948
    noAutoStartAfterReroute*: ma_bool32_536871387
    enableCompatibilityWorkarounds*: ma_bool32_536871387
  struct_ma_device_config_536871963 {.pure, inheritable, bycopy.} = object
    deviceType*: ma_device_type_536871908 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:7037:8
    sampleRate*: ma_uint32_536871377
    periodSizeInFrames*: ma_uint32_536871377
    periodSizeInMilliseconds*: ma_uint32_536871377
    periods*: ma_uint32_536871377
    performanceProfile*: ma_performance_profile_536871472
    noPreSilencedOutputBuffer*: ma_bool8_536871385
    noClip*: ma_bool8_536871385
    noDisableDenormals*: ma_bool8_536871385
    noFixedSizedCallback*: ma_bool8_536871385
    dataCallback*: ma_device_data_proc_536871902
    notificationCallback*: ma_device_notification_proc_536871900
    stopCallback*: ma_stop_proc_536871904
    pUserData*: pointer
    resampling*: ma_resampler_config_536871722
    playback*: struct_ma_device_config_playback_t
    capture*: struct_ma_device_config_capture_t
    wasapi*: struct_ma_device_config_wasapi_t
    alsa*: struct_ma_device_config_alsa_t
    pulse*: struct_ma_device_config_pulse_t
    coreaudio*: struct_ma_device_config_coreaudio_t
    opensl*: struct_ma_device_config_opensl_t
    aaudio*: struct_ma_device_config_aaudio_t
  ma_backend_callbacks_536871965 = struct_ma_backend_callbacks_536871968 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:7012:37
  struct_ma_backend_callbacks_536871967 {.pure, inheritable, bycopy.} = object
    onContextInit*: proc (a0: ptr ma_context_536871417;
                          a1: ptr ma_context_config_536871958;
                          a2: ptr ma_backend_callbacks_536871966): ma_result_536871433 {.
        cdecl.}              ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:7226:8
    onContextUninit*: proc (a0: ptr ma_context_536871417): ma_result_536871433 {.
        cdecl.}
    onContextEnumerateDevices*: proc (a0: ptr ma_context_536871417;
                                      a1: ma_enum_devices_callback_proc_536871974;
                                      a2: pointer): ma_result_536871433 {.cdecl.}
    onContextGetDeviceInfo*: proc (a0: ptr ma_context_536871417;
                                   a1: ma_device_type_536871908;
                                   a2: ptr ma_device_id_536871956;
                                   a3: ptr ma_device_info_536871972): ma_result_536871433 {.
        cdecl.}
    onDeviceInit*: proc (a0: ptr ma_device_536871421; a1: ptr ma_device_config_536871962;
                         a2: ptr ma_device_descriptor_536871978;
                         a3: ptr ma_device_descriptor_536871978): ma_result_536871433 {.
        cdecl.}
    onDeviceUninit*: proc (a0: ptr ma_device_536871421): ma_result_536871433 {.
        cdecl.}
    onDeviceStart*: proc (a0: ptr ma_device_536871421): ma_result_536871433 {.
        cdecl.}
    onDeviceStop*: proc (a0: ptr ma_device_536871421): ma_result_536871433 {.
        cdecl.}
    onDeviceRead*: proc (a0: ptr ma_device_536871421; a1: pointer;
                         a2: ma_uint32_536871377; a3: ptr ma_uint32_536871377): ma_result_536871433 {.
        cdecl.}
    onDeviceWrite*: proc (a0: ptr ma_device_536871421; a1: pointer;
                          a2: ma_uint32_536871377; a3: ptr ma_uint32_536871377): ma_result_536871433 {.
        cdecl.}
    onDeviceDataLoop*: proc (a0: ptr ma_device_536871421): ma_result_536871433 {.
        cdecl.}
    onDeviceDataLoopWakeup*: proc (a0: ptr ma_device_536871421): ma_result_536871433 {.
        cdecl.}
    onDeviceGetInfo*: proc (a0: ptr ma_device_536871421; a1: ma_device_type_536871908;
                            a2: ptr ma_device_info_536871972): ma_result_536871433 {.
        cdecl.}
  struct_ma_device_info_nativeDataFormats_t {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    flags*: ma_uint32_536871377
  struct_ma_device_info_536871969 {.pure, inheritable, bycopy.} = object
    id*: ma_device_id_536871956 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:7020:9
    name*: array[256'i64, cschar]
    isDefault*: ma_bool32_536871387
    nativeDataFormatCount*: ma_uint32_536871377
    nativeDataFormats*: array[64'i64, struct_ma_device_info_nativeDataFormats_t]
  ma_device_info_536871971 = struct_ma_device_info_536871970 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:7035:3
  ma_enum_devices_callback_proc_536871973 = proc (a0: ptr ma_context_536871417;
      a1: ma_device_type_536871908; a2: ptr ma_device_info_536871972;
      a3: pointer): ma_bool32_536871387 {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:7139:22
  struct_ma_device_descriptor_536871975 {.pure, inheritable, bycopy.} = object
    pDeviceID*: ptr ma_device_id_536871956 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:7145:9
    shareMode*: ma_share_mode_536871912
    format*: ma_format_536871456
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    channelMap*: array[254'i64, ma_channel_536871425]
    periodSizeInFrames*: ma_uint32_536871377
    periodSizeInMilliseconds*: ma_uint32_536871377
    periodCount*: ma_uint32_536871377
  ma_device_descriptor_536871977 = struct_ma_device_descriptor_536871976 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:7156:3
  struct_ma_context_command_wasapi_data_t_quit_t {.pure, inheritable, bycopy.} = object
    internal_unused*: cint
  struct_ma_context_command_wasapi_data_t_createAudioClient_t {.pure,
      inheritable, bycopy.} = object
    deviceType*: ma_device_type_536871908
    pAudioClient*: pointer
    ppAudioClientService*: ptr pointer
    pResult*: ptr ma_result_536871433
  struct_ma_context_command_wasapi_data_t_releaseAudioClient_t {.pure,
      inheritable, bycopy.} = object
    pDevice*: ptr ma_device_536871421
    deviceType*: ma_device_type_536871908
  struct_ma_context_command_wasapi_data_t {.union, bycopy.} = object
    quit*: struct_ma_context_command_wasapi_data_t_quit_t
    createAudioClient*: struct_ma_context_command_wasapi_data_t_createAudioClient_t
    releaseAudioClient*: struct_ma_context_command_wasapi_data_t_releaseAudioClient_t
  struct_ma_context_command_wasapi_536871979 {.pure, inheritable, bycopy.} = object
    code*: cint              ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:7276:9
    pEvent*: ptr ma_event_536871514
    data*: struct_ma_context_command_wasapi_data_t
  ma_context_command_wasapi_536871981 = struct_ma_context_command_wasapi_536871980 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:7299:3
  ma_vfs_file_536871985 = ma_handle_536871393 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9794:19
  ma_open_mode_flags_536871989 = enum_ma_open_mode_flags_536871988 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9800:3
  ma_seek_origin_536871993 = enum_ma_seek_origin_536871992 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9807:3
  struct_ma_file_info_536871995 {.pure, inheritable, bycopy.} = object
    sizeInBytes*: ma_uint64_536871381 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9809:9
  ma_file_info_536871997 = struct_ma_file_info_536871996 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9812:3
  struct_ma_vfs_callbacks_536871999 {.pure, inheritable, bycopy.} = object
    onOpen*: proc (a0: pointer; a1: cstring; a2: ma_uint32_536871377;
                   a3: ptr ma_vfs_file_536871986): ma_result_536871433 {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9814:9
    onOpenW*: proc (a0: pointer; a1: ptr wchar_t_536871862; a2: ma_uint32_536871377;
                    a3: ptr ma_vfs_file_536871986): ma_result_536871433 {.cdecl.}
    onClose*: proc (a0: pointer; a1: ma_vfs_file_536871986): ma_result_536871433 {.
        cdecl.}
    onRead*: proc (a0: pointer; a1: ma_vfs_file_536871986; a2: pointer;
                   a3: csize_t; a4: ptr csize_t): ma_result_536871433 {.cdecl.}
    onWrite*: proc (a0: pointer; a1: ma_vfs_file_536871986; a2: pointer;
                    a3: csize_t; a4: ptr csize_t): ma_result_536871433 {.cdecl.}
    onSeek*: proc (a0: pointer; a1: ma_vfs_file_536871986; a2: ma_int64_536871379;
                   a3: ma_seek_origin_536871994): ma_result_536871433 {.cdecl.}
    onTell*: proc (a0: pointer; a1: ma_vfs_file_536871986; a2: ptr ma_int64_536871379): ma_result_536871433 {.
        cdecl.}
    onInfo*: proc (a0: pointer; a1: ma_vfs_file_536871986; a2: ptr ma_file_info_536871998): ma_result_536871433 {.
        cdecl.}
  ma_vfs_callbacks_536872001 = struct_ma_vfs_callbacks_536872000 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9824:3
  struct_ma_default_vfs_536872003 {.pure, inheritable, bycopy.} = object
    cb*: ma_vfs_callbacks_536872002 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9836:9
    allocationCallbacks*: ma_allocation_callbacks_536871476
  ma_default_vfs_536872005 = struct_ma_default_vfs_536872004 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9840:3
  ma_read_proc_536872007 = proc (a0: pointer; a1: pointer; a2: csize_t;
                                 a3: ptr csize_t): ma_result_536871433 {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9846:22
  ma_seek_proc_536872009 = proc (a0: pointer; a1: ma_int64_536871379;
                                 a2: ma_seek_origin_536871994): ma_result_536871433 {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9847:22
  ma_tell_proc_536872011 = proc (a0: pointer; a1: ptr ma_int64_536871379): ma_result_536871433 {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9848:22
  ma_encoding_format_536872015 = enum_ma_encoding_format_536872014 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9860:3
  ma_decoder_536872017 = struct_ma_decoder_536872020 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9873:27
  struct_ma_decoder_data_t_vfs_t {.pure, inheritable, bycopy.} = object
    pVFS*: pointer
    file*: ma_vfs_file_536871986
  struct_ma_decoder_data_t_memory_t {.pure, inheritable, bycopy.} = object
    pData*: ptr ma_uint8_536871369
    dataSize*: csize_t
    currentReadPos*: csize_t
  struct_ma_decoder_data_t {.union, bycopy.} = object
    vfs*: struct_ma_decoder_data_t_vfs_t
    memory*: struct_ma_decoder_data_t_memory_t
  struct_ma_decoder_536872019 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_536871782 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9916:8
    pBackend*: pointer
    pBackendVTable*: ptr ma_decoding_backend_vtable_536872028
    pBackendUserData*: pointer
    onRead*: ma_decoder_read_proc_536872030
    onSeek*: ma_decoder_seek_proc_536872032
    onTell*: ma_decoder_tell_proc_536872034
    pUserData*: pointer
    readPointerInPCMFrames*: ma_uint64_536871381
    outputFormat*: ma_format_536871456
    outputChannels*: ma_uint32_536871377
    outputSampleRate*: ma_uint32_536871377
    converter_field*: ma_data_converter_536871766
    pInputCache*: pointer
    inputCacheCap*: ma_uint64_536871381
    inputCacheConsumed*: ma_uint64_536871381
    inputCacheRemaining*: ma_uint64_536871381
    allocationCallbacks*: ma_allocation_callbacks_536871476
    data*: struct_ma_decoder_data_t
  struct_ma_decoding_backend_config_536872021 {.pure, inheritable, bycopy.} = object
    preferredFormat*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9876:9
    seekPointCount*: ma_uint32_536871377
  ma_decoding_backend_config_536872023 = struct_ma_decoding_backend_config_536872022 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9880:3
  struct_ma_decoding_backend_vtable_536872025 {.pure, inheritable, bycopy.} = object
    onInit*: proc (a0: pointer; a1: ma_read_proc_536872008; a2: ma_seek_proc_536872010;
                   a3: ma_tell_proc_536872012; a4: pointer;
                   a5: ptr ma_decoding_backend_config_536872024;
                   a6: ptr ma_allocation_callbacks_536871476; a7: ptr pointer): ma_result_536871433 {.
        cdecl.}              ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9885:9
    onInitFile*: proc (a0: pointer; a1: cstring;
                       a2: ptr ma_decoding_backend_config_536872024;
                       a3: ptr ma_allocation_callbacks_536871476;
                       a4: ptr pointer): ma_result_536871433 {.cdecl.}
    onInitFileW*: proc (a0: pointer; a1: ptr wchar_t_536871862;
                        a2: ptr ma_decoding_backend_config_536872024;
                        a3: ptr ma_allocation_callbacks_536871476;
                        a4: ptr pointer): ma_result_536871433 {.cdecl.}
    onInitMemory*: proc (a0: pointer; a1: pointer; a2: csize_t;
                         a3: ptr ma_decoding_backend_config_536872024;
                         a4: ptr ma_allocation_callbacks_536871476;
                         a5: ptr pointer): ma_result_536871433 {.cdecl.}
    onUninit*: proc (a0: pointer; a1: pointer; a2: ptr ma_allocation_callbacks_536871476): void {.
        cdecl.}
  ma_decoding_backend_vtable_536872027 = struct_ma_decoding_backend_vtable_536872026 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9892:3
  ma_decoder_read_proc_536872029 = proc (a0: ptr ma_decoder_536872018;
      a1: pointer; a2: csize_t; a3: ptr csize_t): ma_result_536871433 {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9895:22
  ma_decoder_seek_proc_536872031 = proc (a0: ptr ma_decoder_536872018;
      a1: ma_int64_536871379; a2: ma_seek_origin_536871994): ma_result_536871433 {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9896:22
  ma_decoder_tell_proc_536872033 = proc (a0: ptr ma_decoder_536872018;
      a1: ptr ma_int64_536871379): ma_result_536871433 {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9897:22
  struct_ma_decoder_config_536872035 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9899:9
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    pChannelMap*: ptr ma_channel_536871425
    channelMixMode*: ma_channel_mix_mode_536871464
    ditherMode*: ma_dither_mode_536871452
    resampling*: ma_resampler_config_536871722
    allocationCallbacks*: ma_allocation_callbacks_536871476
    encodingFormat*: ma_encoding_format_536872016
    seekPointCount*: ma_uint32_536871377
    ppCustomBackendVTables*: ptr ptr ma_decoding_backend_vtable_536872028
    customBackendCount*: ma_uint32_536871377
    pCustomBackendUserData*: pointer
  ma_decoder_config_536872037 = struct_ma_decoder_config_536872036 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:9914:3
  ma_encoder_536872039 = struct_ma_encoder_536872042 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10038:27
  struct_ma_encoder_data_t_vfs_t {.pure, inheritable, bycopy.} = object
    pVFS*: pointer
    file*: ma_vfs_file_536871986
  struct_ma_encoder_data_t {.union, bycopy.} = object
    vfs*: struct_ma_encoder_data_t_vfs_t
  struct_ma_encoder_536872041 {.pure, inheritable, bycopy.} = object
    config*: ma_encoder_config_536872056 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10057:8
    onWrite*: ma_encoder_write_proc_536872044
    onSeek*: ma_encoder_seek_proc_536872046
    onInit*: ma_encoder_init_proc_536872048
    onUninit*: ma_encoder_uninit_proc_536872050
    onWritePCMFrames*: ma_encoder_write_pcm_frames_proc_536872052
    pUserData*: pointer
    pInternalEncoder*: pointer
    data*: struct_ma_encoder_data_t
  ma_encoder_write_proc_536872043 = proc (a0: ptr ma_encoder_536872040;
      a1: pointer; a2: csize_t; a3: ptr csize_t): ma_result_536871433 {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10040:22
  ma_encoder_seek_proc_536872045 = proc (a0: ptr ma_encoder_536872040;
      a1: ma_int64_536871379; a2: ma_seek_origin_536871994): ma_result_536871433 {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10041:22
  ma_encoder_init_proc_536872047 = proc (a0: ptr ma_encoder_536872040): ma_result_536871433 {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10042:22
  ma_encoder_uninit_proc_536872049 = proc (a0: ptr ma_encoder_536872040): void {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10043:22
  ma_encoder_write_pcm_frames_proc_536872051 = proc (a0: ptr ma_encoder_536872040;
      a1: pointer; a2: ma_uint64_536871381; a3: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10044:22
  struct_ma_encoder_config_536872053 {.pure, inheritable, bycopy.} = object
    encodingFormat*: ma_encoding_format_536872016 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10046:9
    format*: ma_format_536871456
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    allocationCallbacks*: ma_allocation_callbacks_536871476
  ma_encoder_config_536872055 = struct_ma_encoder_config_536872054 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10053:3
  ma_waveform_type_536872059 = enum_ma_waveform_type_536872058 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10100:3
  struct_ma_waveform_config_536872061 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10102:9
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    type_field*: ma_waveform_type_536872060
    amplitude*: cdouble
    frequency*: cdouble
  ma_waveform_config_536872063 = struct_ma_waveform_config_536872062 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10110:3
  struct_ma_waveform_536872065 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_536871782 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10114:9
    config*: ma_waveform_config_536872064
    advance*: cdouble
    time*: cdouble
  ma_waveform_536872067 = struct_ma_waveform_536872066 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10120:3
  struct_ma_pulsewave_config_536872069 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10131:9
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    dutyCycle*: cdouble
    amplitude*: cdouble
    frequency*: cdouble
  ma_pulsewave_config_536872071 = struct_ma_pulsewave_config_536872070 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10139:3
  struct_ma_pulsewave_536872073 {.pure, inheritable, bycopy.} = object
    waveform*: ma_waveform_536872068 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10143:9
    config*: ma_pulsewave_config_536872072
  ma_pulsewave_536872075 = struct_ma_pulsewave_536872074 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10147:3
  ma_noise_type_536872079 = enum_ma_noise_type_536872078 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10163:3
  struct_ma_noise_config_536872081 {.pure, inheritable, bycopy.} = object
    format*: ma_format_536871456 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10166:9
    channels*: ma_uint32_536871377
    type_field*: ma_noise_type_536872080
    seed*: ma_int32_536871375
    amplitude*: cdouble
    duplicateChannels*: ma_bool32_536871387
  ma_noise_config_536872083 = struct_ma_noise_config_536872082 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10174:3
  struct_ma_noise_state_t_pink_t {.pure, inheritable, bycopy.} = object
    bin*: ptr ptr cdouble
    accumulation*: ptr cdouble
    counter*: ptr ma_uint32_536871377
  struct_ma_noise_state_t_brownian_t {.pure, inheritable, bycopy.} = object
    accumulation*: ptr cdouble
  struct_ma_noise_state_t {.union, bycopy.} = object
    pink*: struct_ma_noise_state_t_pink_t
    brownian*: struct_ma_noise_state_t_brownian_t
  struct_ma_noise_536872085 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_536871782 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10178:9
    config*: ma_noise_config_536872084
    lcg*: ma_lcg_536871480
    state*: struct_ma_noise_state_t
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_536871387
  ma_noise_536872087 = struct_ma_noise_536872086 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10200:3
  ma_resource_manager_536872089 = struct_ma_resource_manager_536872092 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10226:53
  struct_ma_resource_manager_536872091 {.pure, inheritable, bycopy.} = object
    config*: ma_resource_manager_config_536872140 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10444:8
    pRootDataBufferNode*: ptr ma_resource_manager_data_buffer_node_536872094
    dataBufferBSTLock*: ma_mutex_536871510
    jobThreads*: array[64'i64, ma_thread_536871508]
    jobQueue*: ma_job_queue_536871365
    defaultVFS*: ma_default_vfs_536872006
    log*: ma_log_536871528
  ma_resource_manager_data_buffer_node_536872093 = struct_ma_resource_manager_data_buffer_node_536872096 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10227:53
  struct_ma_resource_manager_data_buffer_node_536872095 {.pure, inheritable,
      bycopy.} = object
    hashedName32*: ma_uint32_536871377 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10349:8
    refCount*: ma_uint32_536871377
    result*: ma_result_536871433
    executionCounter*: ma_uint32_536871377
    executionPointer*: ma_uint32_536871377
    isDataOwnedByResourceManager*: ma_bool32_536871387
    data*: ma_resource_manager_data_supply_536872136
    pParent*: ptr ma_resource_manager_data_buffer_node_536872094
    pChildLo*: ptr ma_resource_manager_data_buffer_node_536872094
    pChildHi*: ptr ma_resource_manager_data_buffer_node_536872094
  ma_resource_manager_data_buffer_536872097 = struct_ma_resource_manager_data_buffer_536872100 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10228:53
  struct_ma_resource_manager_data_buffer_connector_t {.union, bycopy.} = object
    decoder*: ma_decoder_536872018
    buffer*: ma_audio_buffer_536871794
    pagedBuffer*: ma_paged_audio_buffer_536871810
  struct_ma_resource_manager_data_buffer_536872099 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_536871782 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10363:8
    pResourceManager*: ptr ma_resource_manager_536872090
    pNode*: ptr ma_resource_manager_data_buffer_node_536872094
    flags*: ma_uint32_536871377
    executionCounter*: ma_uint32_536871377
    executionPointer*: ma_uint32_536871377
    seekTargetInPCMFrames*: ma_uint64_536871381
    seekToCursorOnNextRead*: ma_bool32_536871387
    result*: ma_result_536871433
    isLooping*: ma_bool32_536871387
    isConnectorInitialized*: ma_atomic_bool32_536871500
    connector*: struct_ma_resource_manager_data_buffer_connector_t
  ma_resource_manager_data_stream_536872101 = struct_ma_resource_manager_data_stream_536872104 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10229:53
  struct_ma_resource_manager_data_stream_536872103 {.pure, inheritable, bycopy.} = object
    ds*: ma_data_source_base_536871782 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10384:8
    pResourceManager*: ptr ma_resource_manager_536872090
    flags*: ma_uint32_536871377
    decoder*: ma_decoder_536872018
    isDecoderInitialized*: ma_bool32_536871387
    totalLengthInPCMFrames*: ma_uint64_536871381
    relativeCursor*: ma_uint32_536871377
    absoluteCursor*: ma_uint64_536871381
    currentPageIndex*: ma_uint32_536871377
    executionCounter*: ma_uint32_536871377
    executionPointer*: ma_uint32_536871377
    isLooping*: ma_bool32_536871387
    pPageData*: pointer
    pageFrameCount*: array[2'i64, ma_uint32_536871377]
    result*: ma_result_536871433
    isDecoderAtEnd*: ma_bool32_536871387
    isPageValid*: array[2'i64, ma_bool32_536871387]
    seekCounter*: ma_bool32_536871387
  ma_resource_manager_data_source_536872105 = struct_ma_resource_manager_data_source_536872108 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10230:53
  struct_ma_resource_manager_data_source_backend_t {.union, bycopy.} = object
    buffer*: ma_resource_manager_data_buffer_536872098
    stream*: ma_resource_manager_data_stream_536872102
  struct_ma_resource_manager_data_source_536872107 {.pure, inheritable, bycopy.} = object
    backend*: struct_ma_resource_manager_data_source_backend_t ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10412:8
    flags*: ma_uint32_536871377
    executionCounter*: ma_uint32_536871377
    executionPointer*: ma_uint32_536871377
  ma_resource_manager_data_source_flags_536872111 = enum_ma_resource_manager_data_source_flags_536872110 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10239:3
  struct_ma_resource_manager_pipeline_stage_notification_536872113 {.pure,
      inheritable, bycopy.} = object
    pNotification*: pointer  ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10245:9
    pFence*: ptr ma_fence_536871826
  ma_resource_manager_pipeline_stage_notification_536872115 = struct_ma_resource_manager_pipeline_stage_notification_536872114 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10249:3
  struct_ma_resource_manager_pipeline_notifications_536872117 {.pure,
      inheritable, bycopy.} = object
    init*: ma_resource_manager_pipeline_stage_notification_536872116 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10251:9
    done*: ma_resource_manager_pipeline_stage_notification_536872116
  ma_resource_manager_pipeline_notifications_536872119 = struct_ma_resource_manager_pipeline_notifications_536872118 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10255:3
  ma_resource_manager_flags_536872123 = enum_ma_resource_manager_flags_536872122 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10294:3
  struct_ma_resource_manager_data_source_config_536872125 {.pure, inheritable,
      bycopy.} = object
    pFilePath*: cstring      ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10296:9
    pFilePathW*: ptr wchar_t_536871862
    pNotifications*: ptr ma_resource_manager_pipeline_notifications_536872120
    initialSeekPointInPCMFrames*: ma_uint64_536871381
    rangeBegInPCMFrames*: ma_uint64_536871381
    rangeEndInPCMFrames*: ma_uint64_536871381
    loopPointBegInPCMFrames*: ma_uint64_536871381
    loopPointEndInPCMFrames*: ma_uint64_536871381
    isLooping*: ma_bool32_536871387
    flags*: ma_uint32_536871377
  ma_resource_manager_data_source_config_536872127 = struct_ma_resource_manager_data_source_config_536872126 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10308:3
  ma_resource_manager_data_supply_type_536872131 = enum_ma_resource_manager_data_supply_type_536872130 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10319:3
  struct_ma_resource_manager_data_supply_backend_t_encoded_t {.pure,
      inheritable, bycopy.} = object
    pData*: pointer
    sizeInBytes*: csize_t
  struct_ma_resource_manager_data_supply_backend_t_decoded_t {.pure,
      inheritable, bycopy.} = object
    pData*: pointer
    totalFrameCount*: ma_uint64_536871381
    decodedFrameCount*: ma_uint64_536871381
    format*: ma_format_536871456
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
  struct_ma_resource_manager_data_supply_backend_t_decodedPaged_t {.pure,
      inheritable, bycopy.} = object
    data*: ma_paged_audio_buffer_data_536871802
    decodedFrameCount*: ma_uint64_536871381
    sampleRate*: ma_uint32_536871377
  struct_ma_resource_manager_data_supply_backend_t {.union, bycopy.} = object
    encoded*: struct_ma_resource_manager_data_supply_backend_t_encoded_t
    decoded*: struct_ma_resource_manager_data_supply_backend_t_decoded_t
    decodedPaged*: struct_ma_resource_manager_data_supply_backend_t_decodedPaged_t
  struct_ma_resource_manager_data_supply_536872133 {.pure, inheritable, bycopy.} = object
    type_field*: ma_resource_manager_data_supply_type_536872132 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10321:9
    backend*: struct_ma_resource_manager_data_supply_backend_t
  ma_resource_manager_data_supply_536872135 = struct_ma_resource_manager_data_supply_536872134 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10347:3
  struct_ma_resource_manager_config_536872137 {.pure, inheritable, bycopy.} = object
    allocationCallbacks*: ma_allocation_callbacks_536871476 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10425:9
    pLog*: ptr ma_log_536871528
    decodedFormat*: ma_format_536871456
    decodedChannels*: ma_uint32_536871377
    decodedSampleRate*: ma_uint32_536871377
    jobThreadCount*: ma_uint32_536871377
    jobThreadStackSize*: csize_t
    jobQueueCapacity*: ma_uint32_536871377
    flags*: ma_uint32_536871377
    pVFS*: pointer
    ppCustomDecodingBackendVTables*: ptr ptr ma_decoding_backend_vtable_536872028
    customDecodingBackendCount*: ma_uint32_536871377
    pCustomDecodingBackendUserData*: pointer
  ma_resource_manager_config_536872139 = struct_ma_resource_manager_config_536872138 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10440:3
  ma_node_graph_536872141 = struct_ma_node_graph_536872144 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10550:30
  struct_ma_node_graph_536872143 {.pure, inheritable, bycopy.} = object
    base*: ma_node_base_536872172 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10733:8
    endpoint*: ma_node_base_536872172
    nodeCacheCapInFrames*: ma_uint16_536871373
    isReading*: ma_bool32_536871387
  ma_node_flags_536872149 = enum_ma_node_flags_536872148 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10562:3
  ma_node_state_536872153 = enum_ma_node_state_536872152 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10570:3
  struct_ma_node_vtable_536872155 {.pure, inheritable, bycopy.} = object
    onProcess*: proc (a0: pointer; a1: ptr ptr cfloat; a2: ptr ma_uint32_536871377;
                      a3: ptr ptr cfloat; a4: ptr ma_uint32_536871377): void {.
        cdecl.}              ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10573:9
    onGetRequiredInputFrameCount*: proc (a0: pointer; a1: ma_uint32_536871377;
        a2: ptr ma_uint32_536871377): ma_result_536871433 {.cdecl.}
    inputBusCount*: ma_uint8_536871369
    outputBusCount*: ma_uint8_536871369
    flags*: ma_uint32_536871377
  ma_node_vtable_536872157 = struct_ma_node_vtable_536872156 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10614:3
  struct_ma_node_config_536872159 {.pure, inheritable, bycopy.} = object
    vtable*: ptr ma_node_vtable_536872158 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10616:9
    initialState*: ma_node_state_536872154
    inputBusCount*: ma_uint32_536871377
    outputBusCount*: ma_uint32_536871377
    pInputChannels*: ptr ma_uint32_536871377
    pOutputChannels*: ptr ma_uint32_536871377
  ma_node_config_536872161 = struct_ma_node_config_536872160 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10624:3
  ma_node_output_bus_536872163 = struct_ma_node_output_bus_536872166 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10633:35
  struct_ma_node_output_bus_536872165 {.pure, inheritable, bycopy.} = object
    pNode*: pointer          ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10634:8
    outputBusIndex*: ma_uint8_536871369
    channels*: ma_uint8_536871369
    inputNodeInputBusIndex*: ma_uint8_536871369
    flags*: ma_uint32_536871377
    refCount*: ma_uint32_536871377
    isAttached*: ma_bool32_536871387
    lock*: ma_spinlock_536871502
    volume*: cfloat
    pNext*: ptr ma_node_output_bus_536872164
    pPrev*: ptr ma_node_output_bus_536872164
    pInputNode*: pointer
  ma_node_input_bus_536872167 = struct_ma_node_input_bus_536872170 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10657:34
  struct_ma_node_input_bus_536872169 {.pure, inheritable, bycopy.} = object
    head*: ma_node_output_bus_536872164 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10658:8
    nextCounter*: ma_uint32_536871377
    lock*: ma_spinlock_536871502
    channels*: ma_uint8_536871369
  ma_node_base_536872171 = struct_ma_node_base_536872174 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10670:29
  struct_ma_node_base_536872173 {.pure, inheritable, bycopy.} = object
    pNodeGraph*: ptr ma_node_graph_536872142 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10671:8
    vtable*: ptr ma_node_vtable_536872158
    pCachedData*: ptr cfloat
    cachedDataCapInFramesPerBus*: ma_uint16_536871373
    cachedFrameCountOut*: ma_uint16_536871373
    cachedFrameCountIn*: ma_uint16_536871373
    consumedFrameCountIn*: ma_uint16_536871373
    state*: ma_node_state_536872154
    stateTimes*: array[2'i64, ma_uint64_536871381]
    localTime*: ma_uint64_536871381
    inputBusCount*: ma_uint32_536871377
    outputBusCount*: ma_uint32_536871377
    pInputBuses*: ptr ma_node_input_bus_536872168
    pOutputBuses*: ptr ma_node_output_bus_536872164
    internal_inputBuses*: array[2'i64, ma_node_input_bus_536872168]
    internal_outputBuses*: array[2'i64, ma_node_output_bus_536872164]
    internal_pHeap*: pointer
    internal_ownsHeap*: ma_bool32_536871387
  struct_ma_node_graph_config_536872175 {.pure, inheritable, bycopy.} = object
    channels*: ma_uint32_536871377 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10724:9
    nodeCacheCapInFrames*: ma_uint16_536871373
  ma_node_graph_config_536872177 = struct_ma_node_graph_config_536872176 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10728:3
  struct_ma_data_source_node_config_536872179 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_536872162 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10755:9
    pDataSource*: pointer
  ma_data_source_node_config_536872181 = struct_ma_data_source_node_config_536872180 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10759:3
  struct_ma_data_source_node_536872183 {.pure, inheritable, bycopy.} = object
    base*: ma_node_base_536872172 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10764:9
    pDataSource*: pointer
  ma_data_source_node_536872185 = struct_ma_data_source_node_536872184 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10768:3
  struct_ma_splitter_node_config_536872187 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_536872162 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10777:9
    channels*: ma_uint32_536871377
    outputBusCount*: ma_uint32_536871377
  ma_splitter_node_config_536872189 = struct_ma_splitter_node_config_536872188 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10782:3
  struct_ma_splitter_node_536872191 {.pure, inheritable, bycopy.} = object
    base*: ma_node_base_536872172 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10787:9
  ma_splitter_node_536872193 = struct_ma_splitter_node_536872192 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10790:3
  struct_ma_biquad_node_config_536872195 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_536872162 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10799:9
    biquad*: ma_biquad_config_536871536
  ma_biquad_node_config_536872197 = struct_ma_biquad_node_config_536872196 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10803:3
  struct_ma_biquad_node_536872199 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_536872172 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10808:9
    biquad*: ma_biquad_536871540
  ma_biquad_node_536872201 = struct_ma_biquad_node_536872200 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10812:3
  struct_ma_lpf_node_config_536872203 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_536872162 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10822:9
    lpf*: ma_lpf_config_536871558
  ma_lpf_node_config_536872205 = struct_ma_lpf_node_config_536872204 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10826:3
  struct_ma_lpf_node_536872207 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_536872172 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10831:9
    lpf*: ma_lpf_536871562
  ma_lpf_node_536872209 = struct_ma_lpf_node_536872208 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10835:3
  struct_ma_hpf_node_config_536872211 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_536872162 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10845:9
    hpf*: ma_hpf_config_536871580
  ma_hpf_node_config_536872213 = struct_ma_hpf_node_config_536872212 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10849:3
  struct_ma_hpf_node_536872215 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_536872172 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10854:9
    hpf*: ma_hpf_536871584
  ma_hpf_node_536872217 = struct_ma_hpf_node_536872216 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10858:3
  struct_ma_bpf_node_config_536872219 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_536872162 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10868:9
    bpf*: ma_bpf_config_536871596
  ma_bpf_node_config_536872221 = struct_ma_bpf_node_config_536872220 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10872:3
  struct_ma_bpf_node_536872223 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_536872172 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10877:9
    bpf*: ma_bpf_536871600
  ma_bpf_node_536872225 = struct_ma_bpf_node_536872224 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10881:3
  struct_ma_notch_node_config_536872227 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_536872162 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10891:9
    notch*: ma_notch_config_536871606
  ma_notch_node_config_536872229 = struct_ma_notch_node_config_536872228 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10895:3
  struct_ma_notch_node_536872231 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_536872172 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10900:9
    notch*: ma_notch2_536871610
  ma_notch_node_536872233 = struct_ma_notch_node_536872232 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10904:3
  struct_ma_peak_node_config_536872235 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_536872162 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10914:9
    peak*: ma_peak_config_536871616
  ma_peak_node_config_536872237 = struct_ma_peak_node_config_536872236 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10918:3
  struct_ma_peak_node_536872239 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_536872172 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10923:9
    peak*: ma_peak2_536871620
  ma_peak_node_536872241 = struct_ma_peak_node_536872240 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10927:3
  struct_ma_loshelf_node_config_536872243 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_536872162 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10937:9
    loshelf*: ma_loshelf_config_536871626
  ma_loshelf_node_config_536872245 = struct_ma_loshelf_node_config_536872244 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10941:3
  struct_ma_loshelf_node_536872247 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_536872172 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10946:9
    loshelf*: ma_loshelf2_536871630
  ma_loshelf_node_536872249 = struct_ma_loshelf_node_536872248 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10950:3
  struct_ma_hishelf_node_config_536872251 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_536872162 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10960:9
    hishelf*: ma_hishelf_config_536871636
  ma_hishelf_node_config_536872253 = struct_ma_hishelf_node_config_536872252 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10964:3
  struct_ma_hishelf_node_536872255 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_536872172 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10969:9
    hishelf*: ma_hishelf2_536871640
  ma_hishelf_node_536872257 = struct_ma_hishelf_node_536872256 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10973:3
  struct_ma_delay_node_config_536872259 {.pure, inheritable, bycopy.} = object
    nodeConfig*: ma_node_config_536872162 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10980:9
    delay*: ma_delay_config_536871644
  ma_delay_node_config_536872261 = struct_ma_delay_node_config_536872260 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10984:3
  struct_ma_delay_node_536872263 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_536872172 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10989:9
    delay*: ma_delay_536871648
  ma_delay_node_536872265 = struct_ma_delay_node_536872264 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10993:3
  ma_engine_536872267 = struct_ma_engine_536872270 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11013:26
  struct_ma_engine_536872269 {.pure, inheritable, bycopy.} = object
    nodeGraph*: ma_node_graph_536872142 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11207:8
    pResourceManager*: ptr ma_resource_manager_536872090
    pDevice*: ptr ma_device_536871421
    pLog*: ptr ma_log_536871528
    sampleRate*: ma_uint32_536871377
    listenerCount*: ma_uint32_536871377
    listeners*: array[4'i64, ma_spatializer_listener_536871704]
    allocationCallbacks*: ma_allocation_callbacks_536871476
    ownsResourceManager*: ma_bool8_536871385
    ownsDevice*: ma_bool8_536871385
    inlinedSoundLock*: ma_spinlock_536871502
    pInlinedSoundHead*: ptr ma_sound_inlined_536872298
    inlinedSoundCount*: ma_uint32_536871377
    gainSmoothTimeInFrames*: ma_uint32_536871377
    defaultVolumeSmoothTimeInPCMFrames*: ma_uint32_536871377
    monoExpansionMode*: ma_mono_expansion_mode_536871746
    onProcess*: ma_engine_process_proc_536872306
    pProcessUserData*: pointer
  ma_sound_536872271 = struct_ma_sound_536872274 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11014:26
  struct_ma_sound_536872273 {.pure, inheritable, bycopy.} = object
    engineNode*: ma_engine_node_536872290 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11137:8
    pDataSource*: pointer
    seekTarget*: ma_uint64_536871381
    atEnd*: ma_bool32_536871387
    endCallback*: ma_sound_end_proc_536872292
    pEndCallbackUserData*: pointer
    ownsDataSource*: ma_bool8_536871385
    pResourceManagerDataSource*: ptr ma_resource_manager_data_source_536872106
  ma_sound_flags_536872277 = enum_ma_sound_flags_536872276 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11031:3
  ma_engine_node_type_536872281 = enum_ma_engine_node_type_536872280 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11043:3
  struct_ma_engine_node_config_536872283 {.pure, inheritable, bycopy.} = object
    pEngine*: ptr ma_engine_536872268 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11045:9
    type_field*: ma_engine_node_type_536872282
    channelsIn*: ma_uint32_536871377
    channelsOut*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    volumeSmoothTimeInPCMFrames*: ma_uint32_536871377
    monoExpansionMode*: ma_mono_expansion_mode_536871746
    isPitchDisabled*: ma_bool8_536871385
    isSpatializationDisabled*: ma_bool8_536871385
    pinnedListenerIndex*: ma_uint8_536871369
  ma_engine_node_config_536872285 = struct_ma_engine_node_config_536872284 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11057:3
  struct_ma_engine_node_fadeSettings_t {.pure, inheritable, bycopy.} = object
    volumeBeg*: ma_atomic_float_536871496
    volumeEnd*: ma_atomic_float_536871496
    fadeLengthInFrames*: ma_atomic_uint64_536871492
    absoluteGlobalTimeInFrames*: ma_atomic_uint64_536871492
  struct_ma_engine_node_536872287 {.pure, inheritable, bycopy.} = object
    baseNode*: ma_node_base_536872172 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11063:9
    pEngine*: ptr ma_engine_536872268
    sampleRate*: ma_uint32_536871377
    volumeSmoothTimeInPCMFrames*: ma_uint32_536871377
    monoExpansionMode*: ma_mono_expansion_mode_536871746
    fader*: ma_fader_536871676
    resampler*: ma_linear_resampler_536871720
    spatializer*: ma_spatializer_536871712
    panner*: ma_panner_536871668
    volumeGainer*: ma_gainer_536871656
    volume*: ma_atomic_float_536871496
    pitch*: cfloat
    oldPitch*: cfloat
    oldDopplerPitch*: cfloat
    isPitchDisabled*: ma_bool32_536871387
    isSpatializationDisabled*: ma_bool32_536871387
    pinnedListenerIndex*: ma_uint32_536871377
    fadeSettings*: struct_ma_engine_node_fadeSettings_t
    internal_ownsHeap*: ma_bool8_536871385
    internal_pHeap*: pointer
  ma_engine_node_536872289 = struct_ma_engine_node_536872288 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11095:3
  ma_sound_end_proc_536872291 = proc (a0: pointer; a1: ptr ma_sound_536872272): void {.
      cdecl.}                ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11106:17
  struct_ma_sound_config_536872293 {.pure, inheritable, bycopy.} = object
    pFilePath*: cstring      ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11108:9
    pFilePathW*: ptr wchar_t_536871862
    pDataSource*: pointer
    pInitialAttachment*: pointer
    initialAttachmentInputBusIndex*: ma_uint32_536871377
    channelsIn*: ma_uint32_536871377
    channelsOut*: ma_uint32_536871377
    monoExpansionMode*: ma_mono_expansion_mode_536871746
    flags*: ma_uint32_536871377
    volumeSmoothTimeInPCMFrames*: ma_uint32_536871377
    initialSeekPointInPCMFrames*: ma_uint64_536871381
    rangeBegInPCMFrames*: ma_uint64_536871381
    rangeEndInPCMFrames*: ma_uint64_536871381
    loopPointBegInPCMFrames*: ma_uint64_536871381
    loopPointEndInPCMFrames*: ma_uint64_536871381
    isLooping*: ma_bool32_536871387
    endCallback*: ma_sound_end_proc_536872292
    pEndCallbackUserData*: pointer
    initNotifications*: ma_resource_manager_pipeline_notifications_536872120
    pDoneFence*: ptr ma_fence_536871826
  ma_sound_config_536872295 = struct_ma_sound_config_536872294 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11132:3
  ma_sound_inlined_536872297 = struct_ma_sound_inlined_536872300 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11157:33
  struct_ma_sound_inlined_536872299 {.pure, inheritable, bycopy.} = object
    sound*: ma_sound_536872272 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11158:8
    pNext*: ptr ma_sound_inlined_536872298
    pPrev*: ptr ma_sound_inlined_536872298
  ma_sound_group_config_536872301 = ma_sound_config_536872296 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11166:25
  ma_sound_group_536872303 = ma_sound_536872272 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11167:25
  ma_engine_process_proc_536872305 = proc (a0: pointer; a1: ptr cfloat;
      a2: ma_uint64_536871381): void {.cdecl.} ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11172:17
  struct_ma_engine_config_536872307 {.pure, inheritable, bycopy.} = object
    pResourceManager*: ptr ma_resource_manager_536872090 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11174:9
    pContext*: ptr ma_context_536871417
    pDevice*: ptr ma_device_536871421
    pPlaybackDeviceID*: ptr ma_device_id_536871956
    dataCallback*: ma_device_data_proc_536871902
    notificationCallback*: ma_device_notification_proc_536871900
    pLog*: ptr ma_log_536871528
    listenerCount*: ma_uint32_536871377
    channels*: ma_uint32_536871377
    sampleRate*: ma_uint32_536871377
    periodSizeInFrames*: ma_uint32_536871377
    periodSizeInMilliseconds*: ma_uint32_536871377
    gainSmoothTimeInFrames*: ma_uint32_536871377
    gainSmoothTimeInMilliseconds*: ma_uint32_536871377
    defaultVolumeSmoothTimeInPCMFrames*: ma_uint32_536871377
    allocationCallbacks*: ma_allocation_callbacks_536871476
    noAutoStart*: ma_bool32_536871387
    noDevice*: ma_bool32_536871387
    monoExpansionMode*: ma_mono_expansion_mode_536871746
    pResourceManagerVFS*: pointer
    onProcess*: ma_engine_process_proc_536872306
    pProcessUserData*: pointer
  ma_engine_config_536872309 = struct_ma_engine_config_536872308 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11202:3
  union_pthread_mutex_t_536872311 {.union, bycopy.} = object
    compiler_data*: struct_pthread_mutex_s_536872316 ## Generated based on /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h:67:9
    compiler_size*: array[40'i64, cschar]
    compiler_align*: clong
  union_pthread_cond_t_536872313 {.union, bycopy.} = object
    compiler_data*: struct_pthread_cond_s_536872318 ## Generated based on /usr/include/x86_64-linux-gnu/bits/pthreadtypes.h:75:9
    compiler_size*: array[48'i64, cschar]
    compiler_align*: clonglong
  struct_pthread_mutex_s_536872315 {.pure, inheritable, bycopy.} = object
    compiler_lock*: cint     ## Generated based on /usr/include/x86_64-linux-gnu/bits/struct_mutex.h:22:8
    compiler_count*: cuint
    compiler_owner*: cint
    compiler_nusers*: cuint
    compiler_kind*: cint
    compiler_spins*: cshort
    compiler_elision*: cshort
    compiler_list*: compiler_pthread_list_t_536872320
  struct_pthread_cond_s_536872317 {.pure, inheritable, bycopy.} = object
    compiler_wseq*: compiler_atomic_wide_counter_536872322 ## Generated based on /usr/include/x86_64-linux-gnu/bits/thread-shared-types.h:94:8
    compiler_g1_start*: compiler_atomic_wide_counter_536872322
    compiler_g_refs*: array[2'i64, cuint]
    compiler_g_size*: array[2'i64, cuint]
    compiler_g1_orig_size*: cuint
    compiler_wrefs*: cuint
    compiler_g_signals*: array[2'i64, cuint]
  compiler_pthread_list_t_536872319 = struct_pthread_internal_list_536872324 ## Generated based on /usr/include/x86_64-linux-gnu/bits/thread-shared-types.h:55:3
  compiler_atomic_wide_counter_536872321 = union_atomic_wide_counter_536872326 ## Generated based on /usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h:33:3
  struct_pthread_internal_list_536872323 {.pure, inheritable, bycopy.} = object
    compiler_prev*: ptr struct_pthread_internal_list_536872324 ## Generated based on /usr/include/x86_64-linux-gnu/bits/thread-shared-types.h:51:16
    compiler_next*: ptr struct_pthread_internal_list_536872324
  union_atomic_wide_counter_compiler_value32_t {.pure, inheritable, bycopy.} = object
    compiler_low*: cuint
    compiler_high*: cuint
  union_atomic_wide_counter_536872325 {.union, bycopy.} = object
    compiler_value64*: culonglong ## Generated based on /usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h:25:9
    compiler_value32*: union_atomic_wide_counter_compiler_value32_t
  ma_pulsewave_536872076 = (when declared(ma_pulsewave):
    when ownSizeof(ma_pulsewave) != ownSizeof(ma_pulsewave_536872075):
      static :
        warning("Declaration of " & "ma_pulsewave" &
            " exists but with different size")
    ma_pulsewave
   else:
    ma_pulsewave_536872075)
  ma_waveform_config_536872064 = (when declared(ma_waveform_config):
    when ownSizeof(ma_waveform_config) != ownSizeof(ma_waveform_config_536872063):
      static :
        warning("Declaration of " & "ma_waveform_config" &
            " exists but with different size")
    ma_waveform_config
   else:
    ma_waveform_config_536872063)
  enum_ma_resource_manager_data_supply_type_536872130 = (when declared(
      enum_ma_resource_manager_data_supply_type):
    when ownSizeof(enum_ma_resource_manager_data_supply_type) !=
        ownSizeof(enum_ma_resource_manager_data_supply_type_536872129):
      static :
        warning("Declaration of " & "enum_ma_resource_manager_data_supply_type" &
            " exists but with different size")
    enum_ma_resource_manager_data_supply_type
   else:
    enum_ma_resource_manager_data_supply_type_536872129)
  struct_ma_data_converter_config_536871756 = (when declared(
      struct_ma_data_converter_config):
    when ownSizeof(struct_ma_data_converter_config) !=
        ownSizeof(struct_ma_data_converter_config_536871755):
      static :
        warning("Declaration of " & "struct_ma_data_converter_config" &
            " exists but with different size")
    struct_ma_data_converter_config
   else:
    struct_ma_data_converter_config_536871755)
  ma_bpf2_536871592 = (when declared(ma_bpf2):
    when ownSizeof(ma_bpf2) != ownSizeof(ma_bpf2_536871591):
      static :
        warning("Declaration of " & "ma_bpf2" &
            " exists but with different size")
    ma_bpf2
   else:
    ma_bpf2_536871591)
  union_ma_device_id_536871954 = (when declared(union_ma_device_id):
    when ownSizeof(union_ma_device_id) != ownSizeof(union_ma_device_id_536871953):
      static :
        warning("Declaration of " & "union_ma_device_id" &
            " exists but with different size")
    union_ma_device_id
   else:
    union_ma_device_id_536871953)
  ma_device_descriptor_536871978 = (when declared(ma_device_descriptor):
    when ownSizeof(ma_device_descriptor) != ownSizeof(ma_device_descriptor_536871977):
      static :
        warning("Declaration of " & "ma_device_descriptor" &
            " exists but with different size")
    ma_device_descriptor
   else:
    ma_device_descriptor_536871977)
  struct_ma_event_536871512 = (when declared(struct_ma_event):
    when ownSizeof(struct_ma_event) != ownSizeof(struct_ma_event_536871511):
      static :
        warning("Declaration of " & "struct_ma_event" &
            " exists but with different size")
    struct_ma_event
   else:
    struct_ma_event_536871511)
  struct_pthread_cond_s_536872318 = (when declared(struct_pthread_cond_s):
    when ownSizeof(struct_pthread_cond_s) != ownSizeof(struct_pthread_cond_s_536872317):
      static :
        warning("Declaration of " & "struct_pthread_cond_s" &
            " exists but with different size")
    struct_pthread_cond_s
   else:
    struct_pthread_cond_s_536872317)
  ma_read_proc_536872008 = (when declared(ma_read_proc):
    when ownSizeof(ma_read_proc) != ownSizeof(ma_read_proc_536872007):
      static :
        warning("Declaration of " & "ma_read_proc" &
            " exists but with different size")
    ma_read_proc
   else:
    ma_read_proc_536872007)
  ma_ptr_536871395 = (when declared(ma_ptr):
    when ownSizeof(ma_ptr) != ownSizeof(ma_ptr_536871394):
      static :
        warning("Declaration of " & "ma_ptr" & " exists but with different size")
    ma_ptr
   else:
    ma_ptr_536871394)
  struct_ma_lpf1_config_536871542 = (when declared(struct_ma_lpf1_config):
    when ownSizeof(struct_ma_lpf1_config) != ownSizeof(struct_ma_lpf1_config_536871541):
      static :
        warning("Declaration of " & "struct_ma_lpf1_config" &
            " exists but with different size")
    struct_ma_lpf1_config
   else:
    struct_ma_lpf1_config_536871541)
  ma_channel_converter_536871754 = (when declared(ma_channel_converter):
    when ownSizeof(ma_channel_converter) != ownSizeof(ma_channel_converter_536871753):
      static :
        warning("Declaration of " & "ma_channel_converter" &
            " exists but with different size")
    ma_channel_converter
   else:
    ma_channel_converter_536871753)
  ma_log_536871528 = (when declared(ma_log):
    when ownSizeof(ma_log) != ownSizeof(ma_log_536871527):
      static :
        warning("Declaration of " & "ma_log" & " exists but with different size")
    ma_log
   else:
    ma_log_536871527)
  ma_fader_536871676 = (when declared(ma_fader):
    when ownSizeof(ma_fader) != ownSizeof(ma_fader_536871675):
      static :
        warning("Declaration of " & "ma_fader" &
            " exists but with different size")
    ma_fader
   else:
    ma_fader_536871675)
  struct_ma_lpf_536871560 = (when declared(struct_ma_lpf):
    when ownSizeof(struct_ma_lpf) != ownSizeof(struct_ma_lpf_536871559):
      static :
        warning("Declaration of " & "struct_ma_lpf" &
            " exists but with different size")
    struct_ma_lpf
   else:
    struct_ma_lpf_536871559)
  struct_ma_lpf_node_config_536872204 = (when declared(struct_ma_lpf_node_config):
    when ownSizeof(struct_ma_lpf_node_config) !=
        ownSizeof(struct_ma_lpf_node_config_536872203):
      static :
        warning("Declaration of " & "struct_ma_lpf_node_config" &
            " exists but with different size")
    struct_ma_lpf_node_config
   else:
    struct_ma_lpf_node_config_536872203)
  struct_ma_panner_config_536871662 = (when declared(struct_ma_panner_config):
    when ownSizeof(struct_ma_panner_config) !=
        ownSizeof(struct_ma_panner_config_536871661):
      static :
        warning("Declaration of " & "struct_ma_panner_config" &
            " exists but with different size")
    struct_ma_panner_config
   else:
    struct_ma_panner_config_536871661)
  struct_ma_sound_inlined_536872300 = (when declared(struct_ma_sound_inlined):
    when ownSizeof(struct_ma_sound_inlined) !=
        ownSizeof(struct_ma_sound_inlined_536872299):
      static :
        warning("Declaration of " & "struct_ma_sound_inlined" &
            " exists but with different size")
    struct_ma_sound_inlined
   else:
    struct_ma_sound_inlined_536872299)
  ma_job_536871361 = (when declared(ma_job):
    when ownSizeof(ma_job) != ownSizeof(ma_job_536871360):
      static :
        warning("Declaration of " & "ma_job" & " exists but with different size")
    ma_job
   else:
    ma_job_536871360)
  ma_slot_allocator_536871852 = (when declared(ma_slot_allocator):
    when ownSizeof(ma_slot_allocator) != ownSizeof(ma_slot_allocator_536871851):
      static :
        warning("Declaration of " & "ma_slot_allocator" &
            " exists but with different size")
    ma_slot_allocator
   else:
    ma_slot_allocator_536871851)
  struct_ma_gainer_536871654 = (when declared(struct_ma_gainer):
    when ownSizeof(struct_ma_gainer) != ownSizeof(struct_ma_gainer_536871653):
      static :
        warning("Declaration of " & "struct_ma_gainer" &
            " exists but with different size")
    struct_ma_gainer
   else:
    struct_ma_gainer_536871653)
  ma_proc_536871397 = (when declared(ma_proc):
    when ownSizeof(ma_proc) != ownSizeof(ma_proc_536871396):
      static :
        warning("Declaration of " & "ma_proc" &
            " exists but with different size")
    ma_proc
   else:
    ma_proc_536871396)
  ma_node_graph_config_536872178 = (when declared(ma_node_graph_config):
    when ownSizeof(ma_node_graph_config) != ownSizeof(ma_node_graph_config_536872177):
      static :
        warning("Declaration of " & "ma_node_graph_config" &
            " exists but with different size")
    ma_node_graph_config
   else:
    ma_node_graph_config_536872177)
  ma_biquad_node_536872202 = (when declared(ma_biquad_node):
    when ownSizeof(ma_biquad_node) != ownSizeof(ma_biquad_node_536872201):
      static :
        warning("Declaration of " & "ma_biquad_node" &
            " exists but with different size")
    ma_biquad_node
   else:
    ma_biquad_node_536872201)
  enum_ma_seek_origin_536871992 = (when declared(enum_ma_seek_origin):
    when ownSizeof(enum_ma_seek_origin) != ownSizeof(enum_ma_seek_origin_536871991):
      static :
        warning("Declaration of " & "enum_ma_seek_origin" &
            " exists but with different size")
    enum_ma_seek_origin
   else:
    enum_ma_seek_origin_536871991)
  enum_ma_noise_type_536872078 = (when declared(enum_ma_noise_type):
    when ownSizeof(enum_ma_noise_type) != ownSizeof(enum_ma_noise_type_536872077):
      static :
        warning("Declaration of " & "enum_ma_noise_type" &
            " exists but with different size")
    enum_ma_noise_type
   else:
    enum_ma_noise_type_536872077)
  struct_ma_engine_node_config_536872284 = (when declared(
      struct_ma_engine_node_config):
    when ownSizeof(struct_ma_engine_node_config) !=
        ownSizeof(struct_ma_engine_node_config_536872283):
      static :
        warning("Declaration of " & "struct_ma_engine_node_config" &
            " exists but with different size")
    struct_ma_engine_node_config
   else:
    struct_ma_engine_node_config_536872283)
  enum_ma_standard_channel_map_536871466 = (when declared(
      enum_ma_standard_channel_map):
    when ownSizeof(enum_ma_standard_channel_map) !=
        ownSizeof(enum_ma_standard_channel_map_536871465):
      static :
        warning("Declaration of " & "enum_ma_standard_channel_map" &
            " exists but with different size")
    enum_ma_standard_channel_map
   else:
    enum_ma_standard_channel_map_536871465)
  struct_ma_hpf1_536871570 = (when declared(struct_ma_hpf1):
    when ownSizeof(struct_ma_hpf1) != ownSizeof(struct_ma_hpf1_536871569):
      static :
        warning("Declaration of " & "struct_ma_hpf1" &
            " exists but with different size")
    struct_ma_hpf1
   else:
    struct_ma_hpf1_536871569)
  struct_ma_data_source_config_536871776 = (when declared(
      struct_ma_data_source_config):
    when ownSizeof(struct_ma_data_source_config) !=
        ownSizeof(struct_ma_data_source_config_536871775):
      static :
        warning("Declaration of " & "struct_ma_data_source_config" &
            " exists but with different size")
    struct_ma_data_source_config
   else:
    struct_ma_data_source_config_536871775)
  enum_ma_channel_mix_mode_536871462 = (when declared(enum_ma_channel_mix_mode):
    when ownSizeof(enum_ma_channel_mix_mode) !=
        ownSizeof(enum_ma_channel_mix_mode_536871461):
      static :
        warning("Declaration of " & "enum_ma_channel_mix_mode" &
            " exists but with different size")
    enum_ma_channel_mix_mode
   else:
    enum_ma_channel_mix_mode_536871461)
  struct_ma_delay_config_536871642 = (when declared(struct_ma_delay_config):
    when ownSizeof(struct_ma_delay_config) != ownSizeof(struct_ma_delay_config_536871641):
      static :
        warning("Declaration of " & "struct_ma_delay_config" &
            " exists but with different size")
    struct_ma_delay_config
   else:
    struct_ma_delay_config_536871641)
  ma_panner_config_536871664 = (when declared(ma_panner_config):
    when ownSizeof(ma_panner_config) != ownSizeof(ma_panner_config_536871663):
      static :
        warning("Declaration of " & "ma_panner_config" &
            " exists but with different size")
    ma_panner_config
   else:
    ma_panner_config_536871663)
  enum_ma_positioning_536871690 = (when declared(enum_ma_positioning):
    when ownSizeof(enum_ma_positioning) != ownSizeof(enum_ma_positioning_536871689):
      static :
        warning("Declaration of " & "enum_ma_positioning" &
            " exists but with different size")
    enum_ma_positioning
   else:
    enum_ma_positioning_536871689)
  struct_ma_audio_buffer_config_536871788 = (when declared(
      struct_ma_audio_buffer_config):
    when ownSizeof(struct_ma_audio_buffer_config) !=
        ownSizeof(struct_ma_audio_buffer_config_536871787):
      static :
        warning("Declaration of " & "struct_ma_audio_buffer_config" &
            " exists but with different size")
    struct_ma_audio_buffer_config
   else:
    struct_ma_audio_buffer_config_536871787)
  ma_atomic_device_state_536871878 = (when declared(ma_atomic_device_state):
    when ownSizeof(ma_atomic_device_state) != ownSizeof(ma_atomic_device_state_536871877):
      static :
        warning("Declaration of " & "ma_atomic_device_state" &
            " exists but with different size")
    ma_atomic_device_state
   else:
    ma_atomic_device_state_536871877)
  ma_device_info_536871972 = (when declared(ma_device_info):
    when ownSizeof(ma_device_info) != ownSizeof(ma_device_info_536871971):
      static :
        warning("Declaration of " & "ma_device_info" &
            " exists but with different size")
    ma_device_info
   else:
    ma_device_info_536871971)
  ma_encoder_uninit_proc_536872050 = (when declared(ma_encoder_uninit_proc):
    when ownSizeof(ma_encoder_uninit_proc) != ownSizeof(ma_encoder_uninit_proc_536872049):
      static :
        warning("Declaration of " & "ma_encoder_uninit_proc" &
            " exists but with different size")
    ma_encoder_uninit_proc
   else:
    ma_encoder_uninit_proc_536872049)
  ma_hpf2_config_536871568 = (when declared(ma_hpf2_config):
    when ownSizeof(ma_hpf2_config) != ownSizeof(ma_hpf2_config_536871567):
      static :
        warning("Declaration of " & "ma_hpf2_config" &
            " exists but with different size")
    ma_hpf2_config
   else:
    ma_hpf2_config_536871567)
  ma_job_proc_536871856 = (when declared(ma_job_proc):
    when ownSizeof(ma_job_proc) != ownSizeof(ma_job_proc_536871855):
      static :
        warning("Declaration of " & "ma_job_proc" &
            " exists but with different size")
    ma_job_proc
   else:
    ma_job_proc_536871855)
  ma_uint64_536871381 = (when declared(ma_uint64):
    when ownSizeof(ma_uint64) != ownSizeof(ma_uint64_536871380):
      static :
        warning("Declaration of " & "ma_uint64" &
            " exists but with different size")
    ma_uint64
   else:
    ma_uint64_536871380)
  struct_ma_fader_536871674 = (when declared(struct_ma_fader):
    when ownSizeof(struct_ma_fader) != ownSizeof(struct_ma_fader_536871673):
      static :
        warning("Declaration of " & "struct_ma_fader" &
            " exists but with different size")
    struct_ma_fader
   else:
    struct_ma_fader_536871673)
  ma_audio_buffer_config_536871790 = (when declared(ma_audio_buffer_config):
    when ownSizeof(ma_audio_buffer_config) != ownSizeof(ma_audio_buffer_config_536871789):
      static :
        warning("Declaration of " & "ma_audio_buffer_config" &
            " exists but with different size")
    ma_audio_buffer_config
   else:
    ma_audio_buffer_config_536871789)
  struct_ma_hpf_node_536872216 = (when declared(struct_ma_hpf_node):
    when ownSizeof(struct_ma_hpf_node) != ownSizeof(struct_ma_hpf_node_536872215):
      static :
        warning("Declaration of " & "struct_ma_hpf_node" &
            " exists but with different size")
    struct_ma_hpf_node
   else:
    struct_ma_hpf_node_536872215)
  ma_int16_536871371 = (when declared(ma_int16):
    when ownSizeof(ma_int16) != ownSizeof(ma_int16_536871370):
      static :
        warning("Declaration of " & "ma_int16" &
            " exists but with different size")
    ma_int16
   else:
    ma_int16_536871370)
  ma_channel_converter_config_536871750 = (when declared(
      ma_channel_converter_config):
    when ownSizeof(ma_channel_converter_config) !=
        ownSizeof(ma_channel_converter_config_536871749):
      static :
        warning("Declaration of " & "ma_channel_converter_config" &
            " exists but with different size")
    ma_channel_converter_config
   else:
    ma_channel_converter_config_536871749)
  ma_audio_buffer_ref_536871786 = (when declared(ma_audio_buffer_ref):
    when ownSizeof(ma_audio_buffer_ref) != ownSizeof(ma_audio_buffer_ref_536871785):
      static :
        warning("Declaration of " & "ma_audio_buffer_ref" &
            " exists but with different size")
    ma_audio_buffer_ref
   else:
    ma_audio_buffer_ref_536871785)
  struct_ma_fence_536871824 = (when declared(struct_ma_fence):
    when ownSizeof(struct_ma_fence) != ownSizeof(struct_ma_fence_536871823):
      static :
        warning("Declaration of " & "struct_ma_fence" &
            " exists but with different size")
    struct_ma_fence
   else:
    struct_ma_fence_536871823)
  struct_ma_hpf_config_536871578 = (when declared(struct_ma_hpf_config):
    when ownSizeof(struct_ma_hpf_config) != ownSizeof(struct_ma_hpf_config_536871577):
      static :
        warning("Declaration of " & "struct_ma_hpf_config" &
            " exists but with different size")
    struct_ma_hpf_config
   else:
    struct_ma_hpf_config_536871577)
  struct_ma_default_vfs_536872004 = (when declared(struct_ma_default_vfs):
    when ownSizeof(struct_ma_default_vfs) != ownSizeof(struct_ma_default_vfs_536872003):
      static :
        warning("Declaration of " & "struct_ma_default_vfs" &
            " exists but with different size")
    struct_ma_default_vfs
   else:
    struct_ma_default_vfs_536872003)
  ma_stream_layout_536871441 = (when declared(ma_stream_layout):
    when ownSizeof(ma_stream_layout) != ownSizeof(ma_stream_layout_536871440):
      static :
        warning("Declaration of " & "ma_stream_layout" &
            " exists but with different size")
    ma_stream_layout
   else:
    ma_stream_layout_536871440)
  ma_decoder_read_proc_536872030 = (when declared(ma_decoder_read_proc):
    when ownSizeof(ma_decoder_read_proc) != ownSizeof(ma_decoder_read_proc_536872029):
      static :
        warning("Declaration of " & "ma_decoder_read_proc" &
            " exists but with different size")
    ma_decoder_read_proc
   else:
    ma_decoder_read_proc_536872029)
  struct_ma_atomic_vec3f_536871682 = (when declared(struct_ma_atomic_vec3f):
    when ownSizeof(struct_ma_atomic_vec3f) != ownSizeof(struct_ma_atomic_vec3f_536871681):
      static :
        warning("Declaration of " & "struct_ma_atomic_vec3f" &
            " exists but with different size")
    struct_ma_atomic_vec3f
   else:
    struct_ma_atomic_vec3f_536871681)
  ma_loshelf2_536871630 = (when declared(ma_loshelf2):
    when ownSizeof(ma_loshelf2) != ownSizeof(ma_loshelf2_536871629):
      static :
        warning("Declaration of " & "ma_loshelf2" &
            " exists but with different size")
    ma_loshelf2
   else:
    ma_loshelf2_536871629)
  struct_ma_slot_allocator_config_536871842 = (when declared(
      struct_ma_slot_allocator_config):
    when ownSizeof(struct_ma_slot_allocator_config) !=
        ownSizeof(struct_ma_slot_allocator_config_536871841):
      static :
        warning("Declaration of " & "struct_ma_slot_allocator_config" &
            " exists but with different size")
    struct_ma_slot_allocator_config
   else:
    struct_ma_slot_allocator_config_536871841)
  ma_decoder_config_536872038 = (when declared(ma_decoder_config):
    when ownSizeof(ma_decoder_config) != ownSizeof(ma_decoder_config_536872037):
      static :
        warning("Declaration of " & "ma_decoder_config" &
            " exists but with different size")
    ma_decoder_config
   else:
    ma_decoder_config_536872037)
  ma_resource_manager_flags_536872124 = (when declared(ma_resource_manager_flags):
    when ownSizeof(ma_resource_manager_flags) !=
        ownSizeof(ma_resource_manager_flags_536872123):
      static :
        warning("Declaration of " & "ma_resource_manager_flags" &
            " exists but with different size")
    ma_resource_manager_flags
   else:
    ma_resource_manager_flags_536872123)
  ma_lpf_config_536871558 = (when declared(ma_lpf_config):
    when ownSizeof(ma_lpf_config) != ownSizeof(ma_lpf_config_536871557):
      static :
        warning("Declaration of " & "ma_lpf_config" &
            " exists but with different size")
    ma_lpf_config
   else:
    ma_lpf_config_536871557)
  ma_resource_manager_config_536872140 = (when declared(
      ma_resource_manager_config):
    when ownSizeof(ma_resource_manager_config) !=
        ownSizeof(ma_resource_manager_config_536872139):
      static :
        warning("Declaration of " & "ma_resource_manager_config" &
            " exists but with different size")
    ma_resource_manager_config
   else:
    ma_resource_manager_config_536872139)
  ma_node_flags_536872150 = (when declared(ma_node_flags):
    when ownSizeof(ma_node_flags) != ownSizeof(ma_node_flags_536872149):
      static :
        warning("Declaration of " & "ma_node_flags" &
            " exists but with different size")
    ma_node_flags
   else:
    ma_node_flags_536872149)
  ma_semaphore_536871518 = (when declared(ma_semaphore):
    when ownSizeof(ma_semaphore) != ownSizeof(ma_semaphore_536871517):
      static :
        warning("Declaration of " & "ma_semaphore" &
            " exists but with different size")
    ma_semaphore
   else:
    ma_semaphore_536871517)
  struct_ma_context_command_wasapi_536871980 = (when declared(
      struct_ma_context_command_wasapi):
    when ownSizeof(struct_ma_context_command_wasapi) !=
        ownSizeof(struct_ma_context_command_wasapi_536871979):
      static :
        warning("Declaration of " & "struct_ma_context_command_wasapi" &
            " exists but with different size")
    struct_ma_context_command_wasapi
   else:
    struct_ma_context_command_wasapi_536871979)
  ma_loshelf_node_config_536872246 = (when declared(ma_loshelf_node_config):
    when ownSizeof(ma_loshelf_node_config) != ownSizeof(ma_loshelf_node_config_536872245):
      static :
        warning("Declaration of " & "ma_loshelf_node_config" &
            " exists but with different size")
    ma_loshelf_node_config
   else:
    ma_loshelf_node_config_536872245)
  struct_ma_resource_manager_536872092 = (when declared(
      struct_ma_resource_manager):
    when ownSizeof(struct_ma_resource_manager) !=
        ownSizeof(struct_ma_resource_manager_536872091):
      static :
        warning("Declaration of " & "struct_ma_resource_manager" &
            " exists but with different size")
    struct_ma_resource_manager
   else:
    struct_ma_resource_manager_536872091)
  ma_resource_manager_data_buffer_node_536872094 = (when declared(
      ma_resource_manager_data_buffer_node):
    when ownSizeof(ma_resource_manager_data_buffer_node) !=
        ownSizeof(ma_resource_manager_data_buffer_node_536872093):
      static :
        warning("Declaration of " & "ma_resource_manager_data_buffer_node" &
            " exists but with different size")
    ma_resource_manager_data_buffer_node
   else:
    ma_resource_manager_data_buffer_node_536872093)
  ma_resource_manager_pipeline_notifications_536872120 = (when declared(
      ma_resource_manager_pipeline_notifications):
    when ownSizeof(ma_resource_manager_pipeline_notifications) !=
        ownSizeof(ma_resource_manager_pipeline_notifications_536872119):
      static :
        warning("Declaration of " & "ma_resource_manager_pipeline_notifications" &
            " exists but with different size")
    ma_resource_manager_pipeline_notifications
   else:
    ma_resource_manager_pipeline_notifications_536872119)
  ma_pthread_mutex_t_536871403 = (when declared(ma_pthread_mutex_t):
    when ownSizeof(ma_pthread_mutex_t) != ownSizeof(ma_pthread_mutex_t_536871402):
      static :
        warning("Declaration of " & "ma_pthread_mutex_t" &
            " exists but with different size")
    ma_pthread_mutex_t
   else:
    ma_pthread_mutex_t_536871402)
  ma_atomic_uint32_536871484 = (when declared(ma_atomic_uint32):
    when ownSizeof(ma_atomic_uint32) != ownSizeof(ma_atomic_uint32_536871483):
      static :
        warning("Declaration of " & "ma_atomic_uint32" &
            " exists but with different size")
    ma_atomic_uint32
   else:
    ma_atomic_uint32_536871483)
  struct_ma_node_vtable_536872156 = (when declared(struct_ma_node_vtable):
    when ownSizeof(struct_ma_node_vtable) != ownSizeof(struct_ma_node_vtable_536872155):
      static :
        warning("Declaration of " & "struct_ma_node_vtable" &
            " exists but with different size")
    struct_ma_node_vtable
   else:
    struct_ma_node_vtable_536872155)
  struct_ma_engine_node_536872288 = (when declared(struct_ma_engine_node):
    when ownSizeof(struct_ma_engine_node) != ownSizeof(struct_ma_engine_node_536872287):
      static :
        warning("Declaration of " & "struct_ma_engine_node" &
            " exists but with different size")
    struct_ma_engine_node
   else:
    struct_ma_engine_node_536872287)
  ma_backend_callbacks_536871966 = (when declared(ma_backend_callbacks):
    when ownSizeof(ma_backend_callbacks) != ownSizeof(ma_backend_callbacks_536871965):
      static :
        warning("Declaration of " & "ma_backend_callbacks" &
            " exists but with different size")
    ma_backend_callbacks
   else:
    ma_backend_callbacks_536871965)
  ma_context_config_536871958 = (when declared(ma_context_config):
    when ownSizeof(ma_context_config) != ownSizeof(ma_context_config_536871957):
      static :
        warning("Declaration of " & "ma_context_config" &
            " exists but with different size")
    ma_context_config
   else:
    ma_context_config_536871957)
  ma_uint32_536871377 = (when declared(ma_uint32):
    when ownSizeof(ma_uint32) != ownSizeof(ma_uint32_536871376):
      static :
        warning("Declaration of " & "ma_uint32" &
            " exists but with different size")
    ma_uint32
   else:
    ma_uint32_536871376)
  ma_hishelf2_536871640 = (when declared(ma_hishelf2):
    when ownSizeof(ma_hishelf2) != ownSizeof(ma_hishelf2_536871639):
      static :
        warning("Declaration of " & "ma_hishelf2" &
            " exists but with different size")
    ma_hishelf2
   else:
    ma_hishelf2_536871639)
  struct_ma_paged_audio_buffer_config_536871804 = (when declared(
      struct_ma_paged_audio_buffer_config):
    when ownSizeof(struct_ma_paged_audio_buffer_config) !=
        ownSizeof(struct_ma_paged_audio_buffer_config_536871803):
      static :
        warning("Declaration of " & "struct_ma_paged_audio_buffer_config" &
            " exists but with different size")
    struct_ma_paged_audio_buffer_config
   else:
    struct_ma_paged_audio_buffer_config_536871803)
  struct_ma_pulsewave_536872074 = (when declared(struct_ma_pulsewave):
    when ownSizeof(struct_ma_pulsewave) != ownSizeof(struct_ma_pulsewave_536872073):
      static :
        warning("Declaration of " & "struct_ma_pulsewave" &
            " exists but with different size")
    struct_ma_pulsewave
   else:
    struct_ma_pulsewave_536872073)
  ma_decoder_536872018 = (when declared(ma_decoder):
    when ownSizeof(ma_decoder) != ownSizeof(ma_decoder_536872017):
      static :
        warning("Declaration of " & "ma_decoder" &
            " exists but with different size")
    ma_decoder
   else:
    ma_decoder_536872017)
  pthread_t_536871401 = (when declared(pthread_t):
    when ownSizeof(pthread_t) != ownSizeof(pthread_t_536871400):
      static :
        warning("Declaration of " & "pthread_t" &
            " exists but with different size")
    pthread_t
   else:
    pthread_t_536871400)
  struct_ma_resource_manager_data_stream_536872104 = (when declared(
      struct_ma_resource_manager_data_stream):
    when ownSizeof(struct_ma_resource_manager_data_stream) !=
        ownSizeof(struct_ma_resource_manager_data_stream_536872103):
      static :
        warning("Declaration of " & "struct_ma_resource_manager_data_stream" &
            " exists but with different size")
    struct_ma_resource_manager_data_stream
   else:
    struct_ma_resource_manager_data_stream_536872103)
  ma_loshelf_node_536872250 = (when declared(ma_loshelf_node):
    when ownSizeof(ma_loshelf_node) != ownSizeof(ma_loshelf_node_536872249):
      static :
        warning("Declaration of " & "ma_loshelf_node" &
            " exists but with different size")
    ma_loshelf_node
   else:
    ma_loshelf_node_536872249)
  struct_ma_async_notification_poll_536871834 = (when declared(
      struct_ma_async_notification_poll):
    when ownSizeof(struct_ma_async_notification_poll) !=
        ownSizeof(struct_ma_async_notification_poll_536871833):
      static :
        warning("Declaration of " & "struct_ma_async_notification_poll" &
            " exists but with different size")
    struct_ma_async_notification_poll
   else:
    struct_ma_async_notification_poll_536871833)
  ma_sound_flags_536872278 = (when declared(ma_sound_flags):
    when ownSizeof(ma_sound_flags) != ownSizeof(ma_sound_flags_536872277):
      static :
        warning("Declaration of " & "ma_sound_flags" &
            " exists but with different size")
    ma_sound_flags
   else:
    ma_sound_flags_536872277)
  ma_device_notification_536871898 = (when declared(ma_device_notification):
    when ownSizeof(ma_device_notification) != ownSizeof(ma_device_notification_536871897):
      static :
        warning("Declaration of " & "ma_device_notification" &
            " exists but with different size")
    ma_device_notification
   else:
    ma_device_notification_536871897)
  ma_fader_config_536871672 = (when declared(ma_fader_config):
    when ownSizeof(ma_fader_config) != ownSizeof(ma_fader_config_536871671):
      static :
        warning("Declaration of " & "ma_fader_config" &
            " exists but with different size")
    ma_fader_config
   else:
    ma_fader_config_536871671)
  ma_loshelf2_config_536871624 = (when declared(ma_loshelf2_config):
    when ownSizeof(ma_loshelf2_config) != ownSizeof(ma_loshelf2_config_536871623):
      static :
        warning("Declaration of " & "ma_loshelf2_config" &
            " exists but with different size")
    ma_loshelf2_config
   else:
    ma_loshelf2_config_536871623)
  ma_paged_audio_buffer_536871810 = (when declared(ma_paged_audio_buffer):
    when ownSizeof(ma_paged_audio_buffer) != ownSizeof(ma_paged_audio_buffer_536871809):
      static :
        warning("Declaration of " & "ma_paged_audio_buffer" &
            " exists but with different size")
    ma_paged_audio_buffer
   else:
    ma_paged_audio_buffer_536871809)
  ma_atomic_int32_536871488 = (when declared(ma_atomic_int32):
    when ownSizeof(ma_atomic_int32) != ownSizeof(ma_atomic_int32_536871487):
      static :
        warning("Declaration of " & "ma_atomic_int32" &
            " exists but with different size")
    ma_atomic_int32
   else:
    ma_atomic_int32_536871487)
  ma_pthread_cond_t_536871407 = (when declared(ma_pthread_cond_t):
    when ownSizeof(ma_pthread_cond_t) != ownSizeof(ma_pthread_cond_t_536871406):
      static :
        warning("Declaration of " & "ma_pthread_cond_t" &
            " exists but with different size")
    ma_pthread_cond_t
   else:
    ma_pthread_cond_t_536871406)
  struct_ma_biquad_536871538 = (when declared(struct_ma_biquad):
    when ownSizeof(struct_ma_biquad) != ownSizeof(struct_ma_biquad_536871537):
      static :
        warning("Declaration of " & "struct_ma_biquad" &
            " exists but with different size")
    struct_ma_biquad
   else:
    struct_ma_biquad_536871537)
  struct_ma_lpf2_536871552 = (when declared(struct_ma_lpf2):
    when ownSizeof(struct_ma_lpf2) != ownSizeof(struct_ma_lpf2_536871551):
      static :
        warning("Declaration of " & "struct_ma_lpf2" &
            " exists but with different size")
    struct_ma_lpf2
   else:
    struct_ma_lpf2_536871551)
  struct_ma_atomic_uint32_536871482 = (when declared(struct_ma_atomic_uint32):
    when ownSizeof(struct_ma_atomic_uint32) !=
        ownSizeof(struct_ma_atomic_uint32_536871481):
      static :
        warning("Declaration of " & "struct_ma_atomic_uint32" &
            " exists but with different size")
    struct_ma_atomic_uint32
   else:
    struct_ma_atomic_uint32_536871481)
  struct_ma_hishelf2_536871638 = (when declared(struct_ma_hishelf2):
    when ownSizeof(struct_ma_hishelf2) != ownSizeof(struct_ma_hishelf2_536871637):
      static :
        warning("Declaration of " & "struct_ma_hishelf2" &
            " exists but with different size")
    struct_ma_hishelf2
   else:
    struct_ma_hishelf2_536871637)
  ma_async_notification_event_536871840 = (when declared(
      ma_async_notification_event):
    when ownSizeof(ma_async_notification_event) !=
        ownSizeof(ma_async_notification_event_536871839):
      static :
        warning("Declaration of " & "ma_async_notification_event" &
            " exists but with different size")
    ma_async_notification_event
   else:
    ma_async_notification_event_536871839)
  ma_delay_node_536872266 = (when declared(ma_delay_node):
    when ownSizeof(ma_delay_node) != ownSizeof(ma_delay_node_536872265):
      static :
        warning("Declaration of " & "ma_delay_node" &
            " exists but with different size")
    ma_delay_node
   else:
    ma_delay_node_536872265)
  struct_ma_hishelf_node_536872256 = (when declared(struct_ma_hishelf_node):
    when ownSizeof(struct_ma_hishelf_node) != ownSizeof(struct_ma_hishelf_node_536872255):
      static :
        warning("Declaration of " & "struct_ma_hishelf_node" &
            " exists but with different size")
    struct_ma_hishelf_node
   else:
    struct_ma_hishelf_node_536872255)
  struct_ma_loshelf2_536871628 = (when declared(struct_ma_loshelf2):
    when ownSizeof(struct_ma_loshelf2) != ownSizeof(struct_ma_loshelf2_536871627):
      static :
        warning("Declaration of " & "struct_ma_loshelf2" &
            " exists but with different size")
    struct_ma_loshelf2
   else:
    struct_ma_loshelf2_536871627)
  ma_device_type_536871908 = (when declared(ma_device_type):
    when ownSizeof(ma_device_type) != ownSizeof(ma_device_type_536871907):
      static :
        warning("Declaration of " & "ma_device_type" &
            " exists but with different size")
    ma_device_type
   else:
    ma_device_type_536871907)
  enum_ma_resample_algorithm_536871732 = (when declared(
      enum_ma_resample_algorithm):
    when ownSizeof(enum_ma_resample_algorithm) !=
        ownSizeof(enum_ma_resample_algorithm_536871731):
      static :
        warning("Declaration of " & "enum_ma_resample_algorithm" &
            " exists but with different size")
    enum_ma_resample_algorithm
   else:
    enum_ma_resample_algorithm_536871731)
  ma_panner_536871668 = (when declared(ma_panner):
    when ownSizeof(ma_panner) != ownSizeof(ma_panner_536871667):
      static :
        warning("Declaration of " & "ma_panner" &
            " exists but with different size")
    ma_panner
   else:
    ma_panner_536871667)
  ma_resource_manager_pipeline_stage_notification_536872116 = (when declared(
      ma_resource_manager_pipeline_stage_notification):
    when ownSizeof(ma_resource_manager_pipeline_stage_notification) !=
        ownSizeof(ma_resource_manager_pipeline_stage_notification_536872115):
      static :
        warning("Declaration of " &
            "ma_resource_manager_pipeline_stage_notification" &
            " exists but with different size")
    ma_resource_manager_pipeline_stage_notification
   else:
    ma_resource_manager_pipeline_stage_notification_536872115)
  struct_ma_resource_manager_data_source_config_536872126 = (when declared(
      struct_ma_resource_manager_data_source_config):
    when ownSizeof(struct_ma_resource_manager_data_source_config) !=
        ownSizeof(struct_ma_resource_manager_data_source_config_536872125):
      static :
        warning("Declaration of " &
            "struct_ma_resource_manager_data_source_config" &
            " exists but with different size")
    struct_ma_resource_manager_data_source_config
   else:
    struct_ma_resource_manager_data_source_config_536872125)
  struct_ma_linear_resampler_config_536871714 = (when declared(
      struct_ma_linear_resampler_config):
    when ownSizeof(struct_ma_linear_resampler_config) !=
        ownSizeof(struct_ma_linear_resampler_config_536871713):
      static :
        warning("Declaration of " & "struct_ma_linear_resampler_config" &
            " exists but with different size")
    struct_ma_linear_resampler_config
   else:
    struct_ma_linear_resampler_config_536871713)
  ma_rb_536871814 = (when declared(ma_rb):
    when ownSizeof(ma_rb) != ownSizeof(ma_rb_536871813):
      static :
        warning("Declaration of " & "ma_rb" & " exists but with different size")
    ma_rb
   else:
    ma_rb_536871813)
  ma_hpf_config_536871580 = (when declared(ma_hpf_config):
    when ownSizeof(ma_hpf_config) != ownSizeof(ma_hpf_config_536871579):
      static :
        warning("Declaration of " & "ma_hpf_config" &
            " exists but with different size")
    ma_hpf_config
   else:
    ma_hpf_config_536871579)
  ma_peak_node_config_536872238 = (when declared(ma_peak_node_config):
    when ownSizeof(ma_peak_node_config) != ownSizeof(ma_peak_node_config_536872237):
      static :
        warning("Declaration of " & "ma_peak_node_config" &
            " exists but with different size")
    ma_peak_node_config
   else:
    ma_peak_node_config_536872237)
  ma_device_state_536871874 = (when declared(ma_device_state):
    when ownSizeof(ma_device_state) != ownSizeof(ma_device_state_536871873):
      static :
        warning("Declaration of " & "ma_device_state" &
            " exists but with different size")
    ma_device_state
   else:
    ma_device_state_536871873)
  ma_log_level_536871415 = (when declared(ma_log_level):
    when ownSizeof(ma_log_level) != ownSizeof(ma_log_level_536871414):
      static :
        warning("Declaration of " & "ma_log_level" &
            " exists but with different size")
    ma_log_level
   else:
    ma_log_level_536871414)
  enum_ma_resource_manager_data_source_flags_536872110 = (when declared(
      enum_ma_resource_manager_data_source_flags):
    when ownSizeof(enum_ma_resource_manager_data_source_flags) !=
        ownSizeof(enum_ma_resource_manager_data_source_flags_536872109):
      static :
        warning("Declaration of " & "enum_ma_resource_manager_data_source_flags" &
            " exists but with different size")
    enum_ma_resource_manager_data_source_flags
   else:
    enum_ma_resource_manager_data_source_flags_536872109)
  ma_data_source_vtable_536871772 = (when declared(ma_data_source_vtable):
    when ownSizeof(ma_data_source_vtable) != ownSizeof(ma_data_source_vtable_536871771):
      static :
        warning("Declaration of " & "ma_data_source_vtable" &
            " exists but with different size")
    ma_data_source_vtable
   else:
    ma_data_source_vtable_536871771)
  enum_ma_sound_flags_536872276 = (when declared(enum_ma_sound_flags):
    when ownSizeof(enum_ma_sound_flags) != ownSizeof(enum_ma_sound_flags_536872275):
      static :
        warning("Declaration of " & "enum_ma_sound_flags" &
            " exists but with different size")
    enum_ma_sound_flags
   else:
    enum_ma_sound_flags_536872275)
  struct_ma_bpf_536871598 = (when declared(struct_ma_bpf):
    when ownSizeof(struct_ma_bpf) != ownSizeof(struct_ma_bpf_536871597):
      static :
        warning("Declaration of " & "struct_ma_bpf" &
            " exists but with different size")
    struct_ma_bpf
   else:
    struct_ma_bpf_536871597)
  struct_ma_pulsewave_config_536872070 = (when declared(
      struct_ma_pulsewave_config):
    when ownSizeof(struct_ma_pulsewave_config) !=
        ownSizeof(struct_ma_pulsewave_config_536872069):
      static :
        warning("Declaration of " & "struct_ma_pulsewave_config" &
            " exists but with different size")
    struct_ma_pulsewave_config
   else:
    struct_ma_pulsewave_config_536872069)
  enum_ma_aaudio_content_type_536871938 = (when declared(
      enum_ma_aaudio_content_type):
    when ownSizeof(enum_ma_aaudio_content_type) !=
        ownSizeof(enum_ma_aaudio_content_type_536871937):
      static :
        warning("Declaration of " & "enum_ma_aaudio_content_type" &
            " exists but with different size")
    enum_ma_aaudio_content_type
   else:
    enum_ma_aaudio_content_type_536871937)
  ma_peak_config_536871616 = (when declared(ma_peak_config):
    when ownSizeof(ma_peak_config) != ownSizeof(ma_peak_config_536871615):
      static :
        warning("Declaration of " & "ma_peak_config" &
            " exists but with different size")
    ma_peak_config
   else:
    ma_peak_config_536871615)
  ma_noise_config_536872084 = (when declared(ma_noise_config):
    when ownSizeof(ma_noise_config) != ownSizeof(ma_noise_config_536872083):
      static :
        warning("Declaration of " & "ma_noise_config" &
            " exists but with different size")
    ma_noise_config
   else:
    ma_noise_config_536872083)
  union_pthread_mutex_t_536872312 = (when declared(union_pthread_mutex_t):
    when ownSizeof(union_pthread_mutex_t) != ownSizeof(union_pthread_mutex_t_536872311):
      static :
        warning("Declaration of " & "union_pthread_mutex_t" &
            " exists but with different size")
    union_pthread_mutex_t
   else:
    union_pthread_mutex_t_536872311)
  ma_context_command_wasapi_536871982 = (when declared(ma_context_command_wasapi):
    when ownSizeof(ma_context_command_wasapi) !=
        ownSizeof(ma_context_command_wasapi_536871981):
      static :
        warning("Declaration of " & "ma_context_command_wasapi" &
            " exists but with different size")
    ma_context_command_wasapi
   else:
    ma_context_command_wasapi_536871981)
  struct_ma_job_queue_536871870 = (when declared(struct_ma_job_queue):
    when ownSizeof(struct_ma_job_queue) != ownSizeof(struct_ma_job_queue_536871869):
      static :
        warning("Declaration of " & "struct_ma_job_queue" &
            " exists but with different size")
    struct_ma_job_queue
   else:
    struct_ma_job_queue_536871869)
  struct_pthread_internal_list_536872324 = (when declared(
      struct_pthread_internal_list):
    when ownSizeof(struct_pthread_internal_list) !=
        ownSizeof(struct_pthread_internal_list_536872323):
      static :
        warning("Declaration of " & "struct_pthread_internal_list" &
            " exists but with different size")
    struct_pthread_internal_list
   else:
    struct_pthread_internal_list_536872323)
  ma_data_source_node_config_536872182 = (when declared(
      ma_data_source_node_config):
    when ownSizeof(ma_data_source_node_config) !=
        ownSizeof(ma_data_source_node_config_536872181):
      static :
        warning("Declaration of " & "ma_data_source_node_config" &
            " exists but with different size")
    ma_data_source_node_config
   else:
    ma_data_source_node_config_536872181)
  ma_resource_manager_data_source_flags_536872112 = (when declared(
      ma_resource_manager_data_source_flags):
    when ownSizeof(ma_resource_manager_data_source_flags) !=
        ownSizeof(ma_resource_manager_data_source_flags_536872111):
      static :
        warning("Declaration of " & "ma_resource_manager_data_source_flags" &
            " exists but with different size")
    ma_resource_manager_data_source_flags
   else:
    ma_resource_manager_data_source_flags_536872111)
  struct_ma_atomic_device_state_536871876 = (when declared(
      struct_ma_atomic_device_state):
    when ownSizeof(struct_ma_atomic_device_state) !=
        ownSizeof(struct_ma_atomic_device_state_536871875):
      static :
        warning("Declaration of " & "struct_ma_atomic_device_state" &
            " exists but with different size")
    struct_ma_atomic_device_state
   else:
    struct_ma_atomic_device_state_536871875)
  ma_sound_536872272 = (when declared(ma_sound):
    when ownSizeof(ma_sound) != ownSizeof(ma_sound_536872271):
      static :
        warning("Declaration of " & "ma_sound" &
            " exists but with different size")
    ma_sound
   else:
    ma_sound_536872271)
  struct_ma_notch_node_config_536872228 = (when declared(
      struct_ma_notch_node_config):
    when ownSizeof(struct_ma_notch_node_config) !=
        ownSizeof(struct_ma_notch_node_config_536872227):
      static :
        warning("Declaration of " & "struct_ma_notch_node_config" &
            " exists but with different size")
    struct_ma_notch_node_config
   else:
    struct_ma_notch_node_config_536872227)
  enum_ma_result_536871431 = (when declared(enum_ma_result):
    when ownSizeof(enum_ma_result) != ownSizeof(enum_ma_result_536871430):
      static :
        warning("Declaration of " & "enum_ma_result" &
            " exists but with different size")
    enum_ma_result
   else:
    enum_ma_result_536871430)
  enum_ma_share_mode_536871910 = (when declared(enum_ma_share_mode):
    when ownSizeof(enum_ma_share_mode) != ownSizeof(enum_ma_share_mode_536871909):
      static :
        warning("Declaration of " & "enum_ma_share_mode" &
            " exists but with different size")
    enum_ma_share_mode
   else:
    enum_ma_share_mode_536871909)
  struct_ma_resource_manager_data_buffer_536872100 = (when declared(
      struct_ma_resource_manager_data_buffer):
    when ownSizeof(struct_ma_resource_manager_data_buffer) !=
        ownSizeof(struct_ma_resource_manager_data_buffer_536872099):
      static :
        warning("Declaration of " & "struct_ma_resource_manager_data_buffer" &
            " exists but with different size")
    struct_ma_resource_manager_data_buffer
   else:
    struct_ma_resource_manager_data_buffer_536872099)
  ma_gainer_config_536871652 = (when declared(ma_gainer_config):
    when ownSizeof(ma_gainer_config) != ownSizeof(ma_gainer_config_536871651):
      static :
        warning("Declaration of " & "ma_gainer_config" &
            " exists but with different size")
    ma_gainer_config
   else:
    ma_gainer_config_536871651)
  ma_notch_config_536871606 = (when declared(ma_notch_config):
    when ownSizeof(ma_notch_config) != ownSizeof(ma_notch_config_536871605):
      static :
        warning("Declaration of " & "ma_notch_config" &
            " exists but with different size")
    ma_notch_config
   else:
    ma_notch_config_536871605)
  ma_lpf_node_536872210 = (when declared(ma_lpf_node):
    when ownSizeof(ma_lpf_node) != ownSizeof(ma_lpf_node_536872209):
      static :
        warning("Declaration of " & "ma_lpf_node" &
            " exists but with different size")
    ma_lpf_node
   else:
    ma_lpf_node_536872209)
  enum_ma_performance_profile_536871470 = (when declared(
      enum_ma_performance_profile):
    when ownSizeof(enum_ma_performance_profile) !=
        ownSizeof(enum_ma_performance_profile_536871469):
      static :
        warning("Declaration of " & "enum_ma_performance_profile" &
            " exists but with different size")
    enum_ma_performance_profile
   else:
    enum_ma_performance_profile_536871469)
  ma_aaudio_input_preset_536871944 = (when declared(ma_aaudio_input_preset):
    when ownSizeof(ma_aaudio_input_preset) != ownSizeof(ma_aaudio_input_preset_536871943):
      static :
        warning("Declaration of " & "ma_aaudio_input_preset" &
            " exists but with different size")
    ma_aaudio_input_preset
   else:
    ma_aaudio_input_preset_536871943)
  enum_ma_device_state_536871872 = (when declared(enum_ma_device_state):
    when ownSizeof(enum_ma_device_state) != ownSizeof(enum_ma_device_state_536871871):
      static :
        warning("Declaration of " & "enum_ma_device_state" &
            " exists but with different size")
    enum_ma_device_state
   else:
    enum_ma_device_state_536871871)
  ma_enum_devices_callback_proc_536871974 = (when declared(
      ma_enum_devices_callback_proc):
    when ownSizeof(ma_enum_devices_callback_proc) !=
        ownSizeof(ma_enum_devices_callback_proc_536871973):
      static :
        warning("Declaration of " & "ma_enum_devices_callback_proc" &
            " exists but with different size")
    ma_enum_devices_callback_proc
   else:
    ma_enum_devices_callback_proc_536871973)
  struct_ma_lpf1_536871548 = (when declared(struct_ma_lpf1):
    when ownSizeof(struct_ma_lpf1) != ownSizeof(struct_ma_lpf1_536871547):
      static :
        warning("Declaration of " & "struct_ma_lpf1" &
            " exists but with different size")
    struct_ma_lpf1
   else:
    struct_ma_lpf1_536871547)
  enum_ma_channel_position_536871427 = (when declared(enum_ma_channel_position):
    when ownSizeof(enum_ma_channel_position) !=
        ownSizeof(enum_ma_channel_position_536871426):
      static :
        warning("Declaration of " & "enum_ma_channel_position" &
            " exists but with different size")
    enum_ma_channel_position
   else:
    enum_ma_channel_position_536871426)
  ma_opensl_recording_preset_536871928 = (when declared(
      ma_opensl_recording_preset):
    when ownSizeof(ma_opensl_recording_preset) !=
        ownSizeof(ma_opensl_recording_preset_536871927):
      static :
        warning("Declaration of " & "ma_opensl_recording_preset" &
            " exists but with different size")
    ma_opensl_recording_preset
   else:
    ma_opensl_recording_preset_536871927)
  ma_resampling_backend_vtable_536871730 = (when declared(
      ma_resampling_backend_vtable):
    when ownSizeof(ma_resampling_backend_vtable) !=
        ownSizeof(ma_resampling_backend_vtable_536871729):
      static :
        warning("Declaration of " & "ma_resampling_backend_vtable" &
            " exists but with different size")
    ma_resampling_backend_vtable
   else:
    ma_resampling_backend_vtable_536871729)
  struct_ma_spatializer_536871710 = (when declared(struct_ma_spatializer):
    when ownSizeof(struct_ma_spatializer) != ownSizeof(struct_ma_spatializer_536871709):
      static :
        warning("Declaration of " & "struct_ma_spatializer" &
            " exists but with different size")
    struct_ma_spatializer
   else:
    struct_ma_spatializer_536871709)
  ma_float_536871389 = (when declared(ma_float):
    when ownSizeof(ma_float) != ownSizeof(ma_float_536871388):
      static :
        warning("Declaration of " & "ma_float" &
            " exists but with different size")
    ma_float
   else:
    ma_float_536871388)
  ma_mutex_536871510 = (when declared(ma_mutex):
    when ownSizeof(ma_mutex) != ownSizeof(ma_mutex_536871509):
      static :
        warning("Declaration of " & "ma_mutex" &
            " exists but with different size")
    ma_mutex
   else:
    ma_mutex_536871509)
  ma_log_callback_proc_536871520 = (when declared(ma_log_callback_proc):
    when ownSizeof(ma_log_callback_proc) != ownSizeof(ma_log_callback_proc_536871519):
      static :
        warning("Declaration of " & "ma_log_callback_proc" &
            " exists but with different size")
    ma_log_callback_proc
   else:
    ma_log_callback_proc_536871519)
  ma_pthread_t_536871399 = (when declared(ma_pthread_t):
    when ownSizeof(ma_pthread_t) != ownSizeof(ma_pthread_t_536871398):
      static :
        warning("Declaration of " & "ma_pthread_t" &
            " exists but with different size")
    ma_pthread_t
   else:
    ma_pthread_t_536871398)
  pthread_cond_t_536871409 = (when declared(pthread_cond_t):
    when ownSizeof(pthread_cond_t) != ownSizeof(pthread_cond_t_536871408):
      static :
        warning("Declaration of " & "pthread_cond_t" &
            " exists but with different size")
    pthread_cond_t
   else:
    pthread_cond_t_536871408)
  ma_handedness_536871696 = (when declared(ma_handedness):
    when ownSizeof(ma_handedness) != ownSizeof(ma_handedness_536871695):
      static :
        warning("Declaration of " & "ma_handedness" &
            " exists but with different size")
    ma_handedness
   else:
    ma_handedness_536871695)
  ma_channel_conversion_path_536871742 = (when declared(
      ma_channel_conversion_path):
    when ownSizeof(ma_channel_conversion_path) !=
        ownSizeof(ma_channel_conversion_path_536871741):
      static :
        warning("Declaration of " & "ma_channel_conversion_path" &
            " exists but with different size")
    ma_channel_conversion_path
   else:
    ma_channel_conversion_path_536871741)
  ma_data_source_config_536871778 = (when declared(ma_data_source_config):
    when ownSizeof(ma_data_source_config) != ownSizeof(ma_data_source_config_536871777):
      static :
        warning("Declaration of " & "ma_data_source_config" &
            " exists but with different size")
    ma_data_source_config
   else:
    ma_data_source_config_536871777)
  ma_standard_sample_rate_536871460 = (when declared(ma_standard_sample_rate):
    when ownSizeof(ma_standard_sample_rate) !=
        ownSizeof(ma_standard_sample_rate_536871459):
      static :
        warning("Declaration of " & "ma_standard_sample_rate" &
            " exists but with different size")
    ma_standard_sample_rate
   else:
    ma_standard_sample_rate_536871459)
  struct_ma_linear_resampler_536871718 = (when declared(
      struct_ma_linear_resampler):
    when ownSizeof(struct_ma_linear_resampler) !=
        ownSizeof(struct_ma_linear_resampler_536871717):
      static :
        warning("Declaration of " & "struct_ma_linear_resampler" &
            " exists but with different size")
    struct_ma_linear_resampler
   else:
    struct_ma_linear_resampler_536871717)
  struct_ma_rb_536871812 = (when declared(struct_ma_rb):
    when ownSizeof(struct_ma_rb) != ownSizeof(struct_ma_rb_536871811):
      static :
        warning("Declaration of " & "struct_ma_rb" &
            " exists but with different size")
    struct_ma_rb
   else:
    struct_ma_rb_536871811)
  struct_ma_encoder_config_536872054 = (when declared(struct_ma_encoder_config):
    when ownSizeof(struct_ma_encoder_config) !=
        ownSizeof(struct_ma_encoder_config_536872053):
      static :
        warning("Declaration of " & "struct_ma_encoder_config" &
            " exists but with different size")
    struct_ma_encoder_config
   else:
    struct_ma_encoder_config_536872053)
  ma_bpf_536871600 = (when declared(ma_bpf):
    when ownSizeof(ma_bpf) != ownSizeof(ma_bpf_536871599):
      static :
        warning("Declaration of " & "ma_bpf" & " exists but with different size")
    ma_bpf
   else:
    ma_bpf_536871599)
  struct_ma_sound_536872274 = (when declared(struct_ma_sound):
    when ownSizeof(struct_ma_sound) != ownSizeof(struct_ma_sound_536872273):
      static :
        warning("Declaration of " & "struct_ma_sound" &
            " exists but with different size")
    struct_ma_sound
   else:
    struct_ma_sound_536872273)
  enum_ma_open_mode_flags_536871988 = (when declared(enum_ma_open_mode_flags):
    when ownSizeof(enum_ma_open_mode_flags) !=
        ownSizeof(enum_ma_open_mode_flags_536871987):
      static :
        warning("Declaration of " & "enum_ma_open_mode_flags" &
            " exists but with different size")
    enum_ma_open_mode_flags
   else:
    enum_ma_open_mode_flags_536871987)
  ma_spatializer_config_536871708 = (when declared(ma_spatializer_config):
    when ownSizeof(ma_spatializer_config) != ownSizeof(ma_spatializer_config_536871707):
      static :
        warning("Declaration of " & "ma_spatializer_config" &
            " exists but with different size")
    ma_spatializer_config
   else:
    ma_spatializer_config_536871707)
  ma_double_536871391 = (when declared(ma_double):
    when ownSizeof(ma_double) != ownSizeof(ma_double_536871390):
      static :
        warning("Declaration of " & "ma_double" &
            " exists but with different size")
    ma_double
   else:
    ma_double_536871390)
  enum_ma_aaudio_input_preset_536871942 = (when declared(
      enum_ma_aaudio_input_preset):
    when ownSizeof(enum_ma_aaudio_input_preset) !=
        ownSizeof(enum_ma_aaudio_input_preset_536871941):
      static :
        warning("Declaration of " & "enum_ma_aaudio_input_preset" &
            " exists but with different size")
    enum_ma_aaudio_input_preset
   else:
    enum_ma_aaudio_input_preset_536871941)
  struct_ma_splitter_node_536872192 = (when declared(struct_ma_splitter_node):
    when ownSizeof(struct_ma_splitter_node) !=
        ownSizeof(struct_ma_splitter_node_536872191):
      static :
        warning("Declaration of " & "struct_ma_splitter_node" &
            " exists but with different size")
    struct_ma_splitter_node
   else:
    struct_ma_splitter_node_536872191)
  ma_int8_536871367 = (when declared(ma_int8):
    when ownSizeof(ma_int8) != ownSizeof(ma_int8_536871366):
      static :
        warning("Declaration of " & "ma_int8" &
            " exists but with different size")
    ma_int8
   else:
    ma_int8_536871366)
  ma_hpf1_config_536871566 = (when declared(ma_hpf1_config):
    when ownSizeof(ma_hpf1_config) != ownSizeof(ma_hpf1_config_536871565):
      static :
        warning("Declaration of " & "ma_hpf1_config" &
            " exists but with different size")
    ma_hpf1_config
   else:
    ma_hpf1_config_536871565)
  struct_ma_peak_node_config_536872236 = (when declared(
      struct_ma_peak_node_config):
    when ownSizeof(struct_ma_peak_node_config) !=
        ownSizeof(struct_ma_peak_node_config_536872235):
      static :
        warning("Declaration of " & "struct_ma_peak_node_config" &
            " exists but with different size")
    struct_ma_peak_node_config
   else:
    struct_ma_peak_node_config_536872235)
  ma_atomic_bool32_536871500 = (when declared(ma_atomic_bool32):
    when ownSizeof(ma_atomic_bool32) != ownSizeof(ma_atomic_bool32_536871499):
      static :
        warning("Declaration of " & "ma_atomic_bool32" &
            " exists but with different size")
    ma_atomic_bool32
   else:
    ma_atomic_bool32_536871499)
  enum_ma_node_state_536872152 = (when declared(enum_ma_node_state):
    when ownSizeof(enum_ma_node_state) != ownSizeof(enum_ma_node_state_536872151):
      static :
        warning("Declaration of " & "enum_ma_node_state" &
            " exists but with different size")
    enum_ma_node_state
   else:
    enum_ma_node_state_536872151)
  struct_ma_device_info_536871970 = (when declared(struct_ma_device_info):
    when ownSizeof(struct_ma_device_info) != ownSizeof(struct_ma_device_info_536871969):
      static :
        warning("Declaration of " & "struct_ma_device_info" &
            " exists but with different size")
    struct_ma_device_info
   else:
    struct_ma_device_info_536871969)
  ma_file_info_536871998 = (when declared(ma_file_info):
    when ownSizeof(ma_file_info) != ownSizeof(ma_file_info_536871997):
      static :
        warning("Declaration of " & "ma_file_info" &
            " exists but with different size")
    ma_file_info
   else:
    ma_file_info_536871997)
  struct_ma_job_536871854 = (when declared(struct_ma_job):
    when ownSizeof(struct_ma_job) != ownSizeof(struct_ma_job_536871853):
      static :
        warning("Declaration of " & "struct_ma_job" &
            " exists but with different size")
    struct_ma_job
   else:
    struct_ma_job_536871853)
  ma_bpf2_config_536871588 = (when declared(ma_bpf2_config):
    when ownSizeof(ma_bpf2_config) != ownSizeof(ma_bpf2_config_536871587):
      static :
        warning("Declaration of " & "ma_bpf2_config" &
            " exists but with different size")
    ma_bpf2_config
   else:
    ma_bpf2_config_536871587)
  ma_data_source_get_next_proc_536871774 = (when declared(
      ma_data_source_get_next_proc):
    when ownSizeof(ma_data_source_get_next_proc) !=
        ownSizeof(ma_data_source_get_next_proc_536871773):
      static :
        warning("Declaration of " & "ma_data_source_get_next_proc" &
            " exists but with different size")
    ma_data_source_get_next_proc
   else:
    ma_data_source_get_next_proc_536871773)
  struct_ma_splitter_node_config_536872188 = (when declared(
      struct_ma_splitter_node_config):
    when ownSizeof(struct_ma_splitter_node_config) !=
        ownSizeof(struct_ma_splitter_node_config_536872187):
      static :
        warning("Declaration of " & "struct_ma_splitter_node_config" &
            " exists but with different size")
    struct_ma_splitter_node_config
   else:
    struct_ma_splitter_node_config_536872187)
  ma_uintptr_536871383 = (when declared(ma_uintptr):
    when ownSizeof(ma_uintptr) != ownSizeof(ma_uintptr_536871382):
      static :
        warning("Declaration of " & "ma_uintptr" &
            " exists but with different size")
    ma_uintptr
   else:
    ma_uintptr_536871382)
  ma_seek_proc_536872010 = (when declared(ma_seek_proc):
    when ownSizeof(ma_seek_proc) != ownSizeof(ma_seek_proc_536872009):
      static :
        warning("Declaration of " & "ma_seek_proc" &
            " exists but with different size")
    ma_seek_proc
   else:
    ma_seek_proc_536872009)
  ma_paged_audio_buffer_data_536871802 = (when declared(
      ma_paged_audio_buffer_data):
    when ownSizeof(ma_paged_audio_buffer_data) !=
        ownSizeof(ma_paged_audio_buffer_data_536871801):
      static :
        warning("Declaration of " & "ma_paged_audio_buffer_data" &
            " exists but with different size")
    ma_paged_audio_buffer_data
   else:
    ma_paged_audio_buffer_data_536871801)
  struct_ma_noise_536872086 = (when declared(struct_ma_noise):
    when ownSizeof(struct_ma_noise) != ownSizeof(struct_ma_noise_536872085):
      static :
        warning("Declaration of " & "struct_ma_noise" &
            " exists but with different size")
    struct_ma_noise
   else:
    struct_ma_noise_536872085)
  struct_ma_notch2_536871608 = (when declared(struct_ma_notch2):
    when ownSizeof(struct_ma_notch2) != ownSizeof(struct_ma_notch2_536871607):
      static :
        warning("Declaration of " & "struct_ma_notch2" &
            " exists but with different size")
    struct_ma_notch2
   else:
    struct_ma_notch2_536871607)
  enum_ma_opensl_stream_type_536871922 = (when declared(
      enum_ma_opensl_stream_type):
    when ownSizeof(enum_ma_opensl_stream_type) !=
        ownSizeof(enum_ma_opensl_stream_type_536871921):
      static :
        warning("Declaration of " & "enum_ma_opensl_stream_type" &
            " exists but with different size")
    enum_ma_opensl_stream_type
   else:
    enum_ma_opensl_stream_type_536871921)
  union_ma_biquad_coefficient_536871530 = (when declared(
      union_ma_biquad_coefficient):
    when ownSizeof(union_ma_biquad_coefficient) !=
        ownSizeof(union_ma_biquad_coefficient_536871529):
      static :
        warning("Declaration of " & "union_ma_biquad_coefficient" &
            " exists but with different size")
    union_ma_biquad_coefficient
   else:
    union_ma_biquad_coefficient_536871529)
  ma_data_source_node_536872186 = (when declared(ma_data_source_node):
    when ownSizeof(ma_data_source_node) != ownSizeof(ma_data_source_node_536872185):
      static :
        warning("Declaration of " & "ma_data_source_node" &
            " exists but with different size")
    ma_data_source_node
   else:
    ma_data_source_node_536872185)
  ma_notch_node_config_536872230 = (when declared(ma_notch_node_config):
    when ownSizeof(ma_notch_node_config) != ownSizeof(ma_notch_node_config_536872229):
      static :
        warning("Declaration of " & "ma_notch_node_config" &
            " exists but with different size")
    ma_notch_node_config
   else:
    ma_notch_node_config_536872229)
  struct_ma_spatializer_config_536871706 = (when declared(
      struct_ma_spatializer_config):
    when ownSizeof(struct_ma_spatializer_config) !=
        ownSizeof(struct_ma_spatializer_config_536871705):
      static :
        warning("Declaration of " & "struct_ma_spatializer_config" &
            " exists but with different size")
    struct_ma_spatializer_config
   else:
    struct_ma_spatializer_config_536871705)
  struct_ma_channel_converter_config_536871748 = (when declared(
      struct_ma_channel_converter_config):
    when ownSizeof(struct_ma_channel_converter_config) !=
        ownSizeof(struct_ma_channel_converter_config_536871747):
      static :
        warning("Declaration of " & "struct_ma_channel_converter_config" &
            " exists but with different size")
    struct_ma_channel_converter_config
   else:
    struct_ma_channel_converter_config_536871747)
  ma_sound_config_536872296 = (when declared(ma_sound_config):
    when ownSizeof(ma_sound_config) != ownSizeof(ma_sound_config_536872295):
      static :
        warning("Declaration of " & "ma_sound_config" &
            " exists but with different size")
    ma_sound_config
   else:
    ma_sound_config_536872295)
  ma_backend_536871882 = (when declared(ma_backend):
    when ownSizeof(ma_backend) != ownSizeof(ma_backend_536871881):
      static :
        warning("Declaration of " & "ma_backend" &
            " exists but with different size")
    ma_backend
   else:
    ma_backend_536871881)
  ma_wasapi_usage_536871932 = (when declared(ma_wasapi_usage):
    when ownSizeof(ma_wasapi_usage) != ownSizeof(ma_wasapi_usage_536871931):
      static :
        warning("Declaration of " & "ma_wasapi_usage" &
            " exists but with different size")
    ma_wasapi_usage
   else:
    ma_wasapi_usage_536871931)
  ma_biquad_536871540 = (when declared(ma_biquad):
    when ownSizeof(ma_biquad) != ownSizeof(ma_biquad_536871539):
      static :
        warning("Declaration of " & "ma_biquad" &
            " exists but with different size")
    ma_biquad
   else:
    ma_biquad_536871539)
  struct_ma_hpf_node_config_536872212 = (when declared(struct_ma_hpf_node_config):
    when ownSizeof(struct_ma_hpf_node_config) !=
        ownSizeof(struct_ma_hpf_node_config_536872211):
      static :
        warning("Declaration of " & "struct_ma_hpf_node_config" &
            " exists but with different size")
    struct_ma_hpf_node_config
   else:
    struct_ma_hpf_node_config_536872211)
  struct_ma_peak_node_536872240 = (when declared(struct_ma_peak_node):
    when ownSizeof(struct_ma_peak_node) != ownSizeof(struct_ma_peak_node_536872239):
      static :
        warning("Declaration of " & "struct_ma_peak_node" &
            " exists but with different size")
    struct_ma_peak_node
   else:
    struct_ma_peak_node_536872239)
  struct_ma_resource_manager_data_buffer_node_536872096 = (when declared(
      struct_ma_resource_manager_data_buffer_node):
    when ownSizeof(struct_ma_resource_manager_data_buffer_node) !=
        ownSizeof(struct_ma_resource_manager_data_buffer_node_536872095):
      static :
        warning("Declaration of " &
            "struct_ma_resource_manager_data_buffer_node" &
            " exists but with different size")
    struct_ma_resource_manager_data_buffer_node
   else:
    struct_ma_resource_manager_data_buffer_node_536872095)
  struct_ma_node_input_bus_536872170 = (when declared(struct_ma_node_input_bus):
    when ownSizeof(struct_ma_node_input_bus) !=
        ownSizeof(struct_ma_node_input_bus_536872169):
      static :
        warning("Declaration of " & "struct_ma_node_input_bus" &
            " exists but with different size")
    struct_ma_node_input_bus
   else:
    struct_ma_node_input_bus_536872169)
  ma_resampler_536871738 = (when declared(ma_resampler):
    when ownSizeof(ma_resampler) != ownSizeof(ma_resampler_536871737):
      static :
        warning("Declaration of " & "ma_resampler" &
            " exists but with different size")
    ma_resampler
   else:
    ma_resampler_536871737)
  ma_paged_audio_buffer_config_536871806 = (when declared(
      ma_paged_audio_buffer_config):
    when ownSizeof(ma_paged_audio_buffer_config) !=
        ownSizeof(ma_paged_audio_buffer_config_536871805):
      static :
        warning("Declaration of " & "ma_paged_audio_buffer_config" &
            " exists but with different size")
    ma_paged_audio_buffer_config
   else:
    ma_paged_audio_buffer_config_536871805)
  ma_data_source_base_536871782 = (when declared(ma_data_source_base):
    when ownSizeof(ma_data_source_base) != ownSizeof(ma_data_source_base_536871781):
      static :
        warning("Declaration of " & "ma_data_source_base" &
            " exists but with different size")
    ma_data_source_base
   else:
    ma_data_source_base_536871781)
  ma_job_type_536871860 = (when declared(ma_job_type):
    when ownSizeof(ma_job_type) != ownSizeof(ma_job_type_536871859):
      static :
        warning("Declaration of " & "ma_job_type" &
            " exists but with different size")
    ma_job_type
   else:
    ma_job_type_536871859)
  ma_slot_allocator_group_536871848 = (when declared(ma_slot_allocator_group):
    when ownSizeof(ma_slot_allocator_group) !=
        ownSizeof(ma_slot_allocator_group_536871847):
      static :
        warning("Declaration of " & "ma_slot_allocator_group" &
            " exists but with different size")
    ma_slot_allocator_group
   else:
    ma_slot_allocator_group_536871847)
  struct_ma_resource_manager_config_536872138 = (when declared(
      struct_ma_resource_manager_config):
    when ownSizeof(struct_ma_resource_manager_config) !=
        ownSizeof(struct_ma_resource_manager_config_536872137):
      static :
        warning("Declaration of " & "struct_ma_resource_manager_config" &
            " exists but with different size")
    struct_ma_resource_manager_config
   else:
    struct_ma_resource_manager_config_536872137)
  struct_ma_node_graph_536872144 = (when declared(struct_ma_node_graph):
    when ownSizeof(struct_ma_node_graph) != ownSizeof(struct_ma_node_graph_536872143):
      static :
        warning("Declaration of " & "struct_ma_node_graph" &
            " exists but with different size")
    struct_ma_node_graph
   else:
    struct_ma_node_graph_536872143)
  enum_ma_job_queue_flags_536871864 = (when declared(enum_ma_job_queue_flags):
    when ownSizeof(enum_ma_job_queue_flags) !=
        ownSizeof(enum_ma_job_queue_flags_536871863):
      static :
        warning("Declaration of " & "enum_ma_job_queue_flags" &
            " exists but with different size")
    enum_ma_job_queue_flags
   else:
    enum_ma_job_queue_flags_536871863)
  struct_ma_peak2_536871618 = (when declared(struct_ma_peak2):
    when ownSizeof(struct_ma_peak2) != ownSizeof(struct_ma_peak2_536871617):
      static :
        warning("Declaration of " & "struct_ma_peak2" &
            " exists but with different size")
    struct_ma_peak2
   else:
    struct_ma_peak2_536871617)
  ma_share_mode_536871912 = (when declared(ma_share_mode):
    when ownSizeof(ma_share_mode) != ownSizeof(ma_share_mode_536871911):
      static :
        warning("Declaration of " & "ma_share_mode" &
            " exists but with different size")
    ma_share_mode
   else:
    ma_share_mode_536871911)
  ma_ios_session_category_536871916 = (when declared(ma_ios_session_category):
    when ownSizeof(ma_ios_session_category) !=
        ownSizeof(ma_ios_session_category_536871915):
      static :
        warning("Declaration of " & "ma_ios_session_category" &
            " exists but with different size")
    ma_ios_session_category
   else:
    ma_ios_session_category_536871915)
  ma_loshelf_config_536871626 = (when declared(ma_loshelf_config):
    when ownSizeof(ma_loshelf_config) != ownSizeof(ma_loshelf_config_536871625):
      static :
        warning("Declaration of " & "ma_loshelf_config" &
            " exists but with different size")
    ma_loshelf_config
   else:
    ma_loshelf_config_536871625)
  struct_ma_duplex_rb_536871820 = (when declared(struct_ma_duplex_rb):
    when ownSizeof(struct_ma_duplex_rb) != ownSizeof(struct_ma_duplex_rb_536871819):
      static :
        warning("Declaration of " & "struct_ma_duplex_rb" &
            " exists but with different size")
    struct_ma_duplex_rb
   else:
    struct_ma_duplex_rb_536871819)
  struct_ma_semaphore_536871516 = (when declared(struct_ma_semaphore):
    when ownSizeof(struct_ma_semaphore) != ownSizeof(struct_ma_semaphore_536871515):
      static :
        warning("Declaration of " & "struct_ma_semaphore" &
            " exists but with different size")
    struct_ma_semaphore
   else:
    struct_ma_semaphore_536871515)
  ma_node_graph_536872142 = (when declared(ma_node_graph):
    when ownSizeof(ma_node_graph) != ownSizeof(ma_node_graph_536872141):
      static :
        warning("Declaration of " & "ma_node_graph" &
            " exists but with different size")
    ma_node_graph
   else:
    ma_node_graph_536872141)
  struct_ma_bpf_node_config_536872220 = (when declared(struct_ma_bpf_node_config):
    when ownSizeof(struct_ma_bpf_node_config) !=
        ownSizeof(struct_ma_bpf_node_config_536872219):
      static :
        warning("Declaration of " & "struct_ma_bpf_node_config" &
            " exists but with different size")
    struct_ma_bpf_node_config
   else:
    struct_ma_bpf_node_config_536872219)
  ma_job_queue_flags_536871866 = (when declared(ma_job_queue_flags):
    when ownSizeof(ma_job_queue_flags) != ownSizeof(ma_job_queue_flags_536871865):
      static :
        warning("Declaration of " & "ma_job_queue_flags" &
            " exists but with different size")
    ma_job_queue_flags
   else:
    ma_job_queue_flags_536871865)
  struct_ma_resampling_backend_vtable_536871728 = (when declared(
      struct_ma_resampling_backend_vtable):
    when ownSizeof(struct_ma_resampling_backend_vtable) !=
        ownSizeof(struct_ma_resampling_backend_vtable_536871727):
      static :
        warning("Declaration of " & "struct_ma_resampling_backend_vtable" &
            " exists but with different size")
    struct_ma_resampling_backend_vtable
   else:
    struct_ma_resampling_backend_vtable_536871727)
  enum_ma_backend_536871880 = (when declared(enum_ma_backend):
    when ownSizeof(enum_ma_backend) != ownSizeof(enum_ma_backend_536871879):
      static :
        warning("Declaration of " & "enum_ma_backend" &
            " exists but with different size")
    enum_ma_backend
   else:
    enum_ma_backend_536871879)
  struct_ma_gainer_config_536871650 = (when declared(struct_ma_gainer_config):
    when ownSizeof(struct_ma_gainer_config) !=
        ownSizeof(struct_ma_gainer_config_536871649):
      static :
        warning("Declaration of " & "struct_ma_gainer_config" &
            " exists but with different size")
    struct_ma_gainer_config
   else:
    struct_ma_gainer_config_536871649)
  enum_ma_device_notification_type_536871892 = (when declared(
      enum_ma_device_notification_type):
    when ownSizeof(enum_ma_device_notification_type) !=
        ownSizeof(enum_ma_device_notification_type_536871891):
      static :
        warning("Declaration of " & "enum_ma_device_notification_type" &
            " exists but with different size")
    enum_ma_device_notification_type
   else:
    enum_ma_device_notification_type_536871891)
  ma_biquad_coefficient_536871532 = (when declared(ma_biquad_coefficient):
    when ownSizeof(ma_biquad_coefficient) != ownSizeof(ma_biquad_coefficient_536871531):
      static :
        warning("Declaration of " & "ma_biquad_coefficient" &
            " exists but with different size")
    ma_biquad_coefficient
   else:
    ma_biquad_coefficient_536871531)
  ma_resource_manager_data_supply_536872136 = (when declared(
      ma_resource_manager_data_supply):
    when ownSizeof(ma_resource_manager_data_supply) !=
        ownSizeof(ma_resource_manager_data_supply_536872135):
      static :
        warning("Declaration of " & "ma_resource_manager_data_supply" &
            " exists but with different size")
    ma_resource_manager_data_supply
   else:
    ma_resource_manager_data_supply_536872135)
  ma_async_notification_callbacks_536871832 = (when declared(
      ma_async_notification_callbacks):
    when ownSizeof(ma_async_notification_callbacks) !=
        ownSizeof(ma_async_notification_callbacks_536871831):
      static :
        warning("Declaration of " & "ma_async_notification_callbacks" &
            " exists but with different size")
    ma_async_notification_callbacks
   else:
    ma_async_notification_callbacks_536871831)
  ma_device_536871421 = (when declared(ma_device):
    when ownSizeof(ma_device) != ownSizeof(ma_device_536871420):
      static :
        warning("Declaration of " & "ma_device" &
            " exists but with different size")
    ma_device
   else:
    ma_device_536871420)
  ma_engine_node_type_536872282 = (when declared(ma_engine_node_type):
    when ownSizeof(ma_engine_node_type) != ownSizeof(ma_engine_node_type_536872281):
      static :
        warning("Declaration of " & "ma_engine_node_type" &
            " exists but with different size")
    ma_engine_node_type
   else:
    ma_engine_node_type_536872281)
  enum_ma_wasapi_usage_536871930 = (when declared(enum_ma_wasapi_usage):
    when ownSizeof(enum_ma_wasapi_usage) != ownSizeof(enum_ma_wasapi_usage_536871929):
      static :
        warning("Declaration of " & "enum_ma_wasapi_usage" &
            " exists but with different size")
    enum_ma_wasapi_usage
   else:
    enum_ma_wasapi_usage_536871929)
  struct_ma_bpf2_config_536871586 = (when declared(struct_ma_bpf2_config):
    when ownSizeof(struct_ma_bpf2_config) != ownSizeof(struct_ma_bpf2_config_536871585):
      static :
        warning("Declaration of " & "struct_ma_bpf2_config" &
            " exists but with different size")
    struct_ma_bpf2_config
   else:
    struct_ma_bpf2_config_536871585)
  struct_ma_decoding_backend_config_536872022 = (when declared(
      struct_ma_decoding_backend_config):
    when ownSizeof(struct_ma_decoding_backend_config) !=
        ownSizeof(struct_ma_decoding_backend_config_536872021):
      static :
        warning("Declaration of " & "struct_ma_decoding_backend_config" &
            " exists but with different size")
    struct_ma_decoding_backend_config
   else:
    struct_ma_decoding_backend_config_536872021)
  enum_ma_ios_session_category_536871914 = (when declared(
      enum_ma_ios_session_category):
    when ownSizeof(enum_ma_ios_session_category) !=
        ownSizeof(enum_ma_ios_session_category_536871913):
      static :
        warning("Declaration of " & "enum_ma_ios_session_category" &
            " exists but with different size")
    enum_ma_ios_session_category
   else:
    enum_ma_ios_session_category_536871913)
  struct_ma_atomic_uint64_536871490 = (when declared(struct_ma_atomic_uint64):
    when ownSizeof(struct_ma_atomic_uint64) !=
        ownSizeof(struct_ma_atomic_uint64_536871489):
      static :
        warning("Declaration of " & "struct_ma_atomic_uint64" &
            " exists but with different size")
    struct_ma_atomic_uint64
   else:
    struct_ma_atomic_uint64_536871489)
  struct_ma_vfs_callbacks_536872000 = (when declared(struct_ma_vfs_callbacks):
    when ownSizeof(struct_ma_vfs_callbacks) !=
        ownSizeof(struct_ma_vfs_callbacks_536871999):
      static :
        warning("Declaration of " & "struct_ma_vfs_callbacks" &
            " exists but with different size")
    struct_ma_vfs_callbacks
   else:
    struct_ma_vfs_callbacks_536871999)
  struct_ma_audio_buffer_536871792 = (when declared(struct_ma_audio_buffer):
    when ownSizeof(struct_ma_audio_buffer) != ownSizeof(struct_ma_audio_buffer_536871791):
      static :
        warning("Declaration of " & "struct_ma_audio_buffer" &
            " exists but with different size")
    struct_ma_audio_buffer
   else:
    struct_ma_audio_buffer_536871791)
  struct_ma_paged_audio_buffer_data_536871800 = (when declared(
      struct_ma_paged_audio_buffer_data):
    when ownSizeof(struct_ma_paged_audio_buffer_data) !=
        ownSizeof(struct_ma_paged_audio_buffer_data_536871799):
      static :
        warning("Declaration of " & "struct_ma_paged_audio_buffer_data" &
            " exists but with different size")
    struct_ma_paged_audio_buffer_data
   else:
    struct_ma_paged_audio_buffer_data_536871799)
  ma_handle_536871393 = (when declared(ma_handle):
    when ownSizeof(ma_handle) != ownSizeof(ma_handle_536871392):
      static :
        warning("Declaration of " & "ma_handle" &
            " exists but with different size")
    ma_handle
   else:
    ma_handle_536871392)
  enum_ma_resource_manager_flags_536872122 = (when declared(
      enum_ma_resource_manager_flags):
    when ownSizeof(enum_ma_resource_manager_flags) !=
        ownSizeof(enum_ma_resource_manager_flags_536872121):
      static :
        warning("Declaration of " & "enum_ma_resource_manager_flags" &
            " exists but with different size")
    enum_ma_resource_manager_flags
   else:
    enum_ma_resource_manager_flags_536872121)
  struct_ma_waveform_config_536872062 = (when declared(struct_ma_waveform_config):
    when ownSizeof(struct_ma_waveform_config) !=
        ownSizeof(struct_ma_waveform_config_536872061):
      static :
        warning("Declaration of " & "struct_ma_waveform_config" &
            " exists but with different size")
    struct_ma_waveform_config
   else:
    struct_ma_waveform_config_536872061)
  ma_format_536871456 = (when declared(ma_format):
    when ownSizeof(ma_format) != ownSizeof(ma_format_536871455):
      static :
        warning("Declaration of " & "ma_format" &
            " exists but with different size")
    ma_format
   else:
    ma_format_536871455)
  ma_decoding_backend_vtable_536872028 = (when declared(
      ma_decoding_backend_vtable):
    when ownSizeof(ma_decoding_backend_vtable) !=
        ownSizeof(ma_decoding_backend_vtable_536872027):
      static :
        warning("Declaration of " & "ma_decoding_backend_vtable" &
            " exists but with different size")
    ma_decoding_backend_vtable
   else:
    ma_decoding_backend_vtable_536872027)
  ma_resource_manager_data_stream_536872102 = (when declared(
      ma_resource_manager_data_stream):
    when ownSizeof(ma_resource_manager_data_stream) !=
        ownSizeof(ma_resource_manager_data_stream_536872101):
      static :
        warning("Declaration of " & "ma_resource_manager_data_stream" &
            " exists but with different size")
    ma_resource_manager_data_stream
   else:
    ma_resource_manager_data_stream_536872101)
  ma_channel_mix_mode_536871464 = (when declared(ma_channel_mix_mode):
    when ownSizeof(ma_channel_mix_mode) != ownSizeof(ma_channel_mix_mode_536871463):
      static :
        warning("Declaration of " & "ma_channel_mix_mode" &
            " exists but with different size")
    ma_channel_mix_mode
   else:
    ma_channel_mix_mode_536871463)
  struct_ma_peak2_config_536871612 = (when declared(struct_ma_peak2_config):
    when ownSizeof(struct_ma_peak2_config) != ownSizeof(struct_ma_peak2_config_536871611):
      static :
        warning("Declaration of " & "struct_ma_peak2_config" &
            " exists but with different size")
    struct_ma_peak2_config
   else:
    struct_ma_peak2_config_536871611)
  struct_ma_panner_536871666 = (when declared(struct_ma_panner):
    when ownSizeof(struct_ma_panner) != ownSizeof(struct_ma_panner_536871665):
      static :
        warning("Declaration of " & "struct_ma_panner" &
            " exists but with different size")
    struct_ma_panner
   else:
    struct_ma_panner_536871665)
  enum_ma_data_converter_execution_path_536871760 = (when declared(
      enum_ma_data_converter_execution_path):
    when ownSizeof(enum_ma_data_converter_execution_path) !=
        ownSizeof(enum_ma_data_converter_execution_path_536871759):
      static :
        warning("Declaration of " & "enum_ma_data_converter_execution_path" &
            " exists but with different size")
    enum_ma_data_converter_execution_path
   else:
    enum_ma_data_converter_execution_path_536871759)
  struct_ma_loshelf_node_config_536872244 = (when declared(
      struct_ma_loshelf_node_config):
    when ownSizeof(struct_ma_loshelf_node_config) !=
        ownSizeof(struct_ma_loshelf_node_config_536872243):
      static :
        warning("Declaration of " & "struct_ma_loshelf_node_config" &
            " exists but with different size")
    struct_ma_loshelf_node_config
   else:
    struct_ma_loshelf_node_config_536872243)
  enum_ma_stream_layout_536871439 = (when declared(enum_ma_stream_layout):
    when ownSizeof(enum_ma_stream_layout) != ownSizeof(enum_ma_stream_layout_536871438):
      static :
        warning("Declaration of " & "enum_ma_stream_layout" &
            " exists but with different size")
    enum_ma_stream_layout
   else:
    enum_ma_stream_layout_536871438)
  ma_performance_profile_536871472 = (when declared(ma_performance_profile):
    when ownSizeof(ma_performance_profile) != ownSizeof(ma_performance_profile_536871471):
      static :
        warning("Declaration of " & "ma_performance_profile" &
            " exists but with different size")
    ma_performance_profile
   else:
    ma_performance_profile_536871471)
  ma_encoder_init_proc_536872048 = (when declared(ma_encoder_init_proc):
    when ownSizeof(ma_encoder_init_proc) != ownSizeof(ma_encoder_init_proc_536872047):
      static :
        warning("Declaration of " & "ma_encoder_init_proc" &
            " exists but with different size")
    ma_encoder_init_proc
   else:
    ma_encoder_init_proc_536872047)
  enum_ma_waveform_type_536872058 = (when declared(enum_ma_waveform_type):
    when ownSizeof(enum_ma_waveform_type) != ownSizeof(enum_ma_waveform_type_536872057):
      static :
        warning("Declaration of " & "enum_ma_waveform_type" &
            " exists but with different size")
    enum_ma_waveform_type
   else:
    enum_ma_waveform_type_536872057)
  ma_int64_536871379 = (when declared(ma_int64):
    when ownSizeof(ma_int64) != ownSizeof(ma_int64_536871378):
      static :
        warning("Declaration of " & "ma_int64" &
            " exists but with different size")
    ma_int64
   else:
    ma_int64_536871378)
  struct_ma_resource_manager_data_source_536872108 = (when declared(
      struct_ma_resource_manager_data_source):
    when ownSizeof(struct_ma_resource_manager_data_source) !=
        ownSizeof(struct_ma_resource_manager_data_source_536872107):
      static :
        warning("Declaration of " & "struct_ma_resource_manager_data_source" &
            " exists but with different size")
    struct_ma_resource_manager_data_source
   else:
    struct_ma_resource_manager_data_source_536872107)
  ma_resource_manager_data_supply_type_536872132 = (when declared(
      ma_resource_manager_data_supply_type):
    when ownSizeof(ma_resource_manager_data_supply_type) !=
        ownSizeof(ma_resource_manager_data_supply_type_536872131):
      static :
        warning("Declaration of " & "ma_resource_manager_data_supply_type" &
            " exists but with different size")
    ma_resource_manager_data_supply_type
   else:
    ma_resource_manager_data_supply_type_536872131)
  ma_node_input_bus_536872168 = (when declared(ma_node_input_bus):
    when ownSizeof(ma_node_input_bus) != ownSizeof(ma_node_input_bus_536872167):
      static :
        warning("Declaration of " & "ma_node_input_bus" &
            " exists but with different size")
    ma_node_input_bus
   else:
    ma_node_input_bus_536872167)
  ma_async_notification_poll_536871836 = (when declared(
      ma_async_notification_poll):
    when ownSizeof(ma_async_notification_poll) !=
        ownSizeof(ma_async_notification_poll_536871835):
      static :
        warning("Declaration of " & "ma_async_notification_poll" &
            " exists but with different size")
    ma_async_notification_poll
   else:
    ma_async_notification_poll_536871835)
  struct_ma_device_config_536871964 = (when declared(struct_ma_device_config):
    when ownSizeof(struct_ma_device_config) !=
        ownSizeof(struct_ma_device_config_536871963):
      static :
        warning("Declaration of " & "struct_ma_device_config" &
            " exists but with different size")
    struct_ma_device_config
   else:
    struct_ma_device_config_536871963)
  struct_ma_lpf_node_536872208 = (when declared(struct_ma_lpf_node):
    when ownSizeof(struct_ma_lpf_node) != ownSizeof(struct_ma_lpf_node_536872207):
      static :
        warning("Declaration of " & "struct_ma_lpf_node" &
            " exists but with different size")
    struct_ma_lpf_node
   else:
    struct_ma_lpf_node_536872207)
  enum_ma_handedness_536871694 = (when declared(enum_ma_handedness):
    when ownSizeof(enum_ma_handedness) != ownSizeof(enum_ma_handedness_536871693):
      static :
        warning("Declaration of " & "enum_ma_handedness" &
            " exists but with different size")
    enum_ma_handedness
   else:
    enum_ma_handedness_536871693)
  struct_ma_bpf_node_536872224 = (when declared(struct_ma_bpf_node):
    when ownSizeof(struct_ma_bpf_node) != ownSizeof(struct_ma_bpf_node_536872223):
      static :
        warning("Declaration of " & "struct_ma_bpf_node" &
            " exists but with different size")
    struct_ma_bpf_node
   else:
    struct_ma_bpf_node_536872223)
  struct_ma_device_536871423 = (when declared(struct_ma_device):
    when ownSizeof(struct_ma_device) != ownSizeof(struct_ma_device_536871422):
      static :
        warning("Declaration of " & "struct_ma_device" &
            " exists but with different size")
    struct_ma_device
   else:
    struct_ma_device_536871422)
  ma_dither_mode_536871452 = (when declared(ma_dither_mode):
    when ownSizeof(ma_dither_mode) != ownSizeof(ma_dither_mode_536871451):
      static :
        warning("Declaration of " & "ma_dither_mode" &
            " exists but with different size")
    ma_dither_mode
   else:
    ma_dither_mode_536871451)
  struct_ma_channel_converter_536871752 = (when declared(
      struct_ma_channel_converter):
    when ownSizeof(struct_ma_channel_converter) !=
        ownSizeof(struct_ma_channel_converter_536871751):
      static :
        warning("Declaration of " & "struct_ma_channel_converter" &
            " exists but with different size")
    struct_ma_channel_converter
   else:
    struct_ma_channel_converter_536871751)
  ma_data_converter_execution_path_536871762 = (when declared(
      ma_data_converter_execution_path):
    when ownSizeof(ma_data_converter_execution_path) !=
        ownSizeof(ma_data_converter_execution_path_536871761):
      static :
        warning("Declaration of " & "ma_data_converter_execution_path" &
            " exists but with different size")
    ma_data_converter_execution_path
   else:
    ma_data_converter_execution_path_536871761)
  ma_tell_proc_536872012 = (when declared(ma_tell_proc):
    when ownSizeof(ma_tell_proc) != ownSizeof(ma_tell_proc_536872011):
      static :
        warning("Declaration of " & "ma_tell_proc" &
            " exists but with different size")
    ma_tell_proc
   else:
    ma_tell_proc_536872011)
  ma_resource_manager_data_source_config_536872128 = (when declared(
      ma_resource_manager_data_source_config):
    when ownSizeof(ma_resource_manager_data_source_config) !=
        ownSizeof(ma_resource_manager_data_source_config_536872127):
      static :
        warning("Declaration of " & "ma_resource_manager_data_source_config" &
            " exists but with different size")
    ma_resource_manager_data_source_config
   else:
    ma_resource_manager_data_source_config_536872127)
  ma_thread_priority_536871506 = (when declared(ma_thread_priority):
    when ownSizeof(ma_thread_priority) != ownSizeof(ma_thread_priority_536871505):
      static :
        warning("Declaration of " & "ma_thread_priority" &
            " exists but with different size")
    ma_thread_priority
   else:
    ma_thread_priority_536871505)
  struct_ma_data_source_base_536871780 = (when declared(
      struct_ma_data_source_base):
    when ownSizeof(struct_ma_data_source_base) !=
        ownSizeof(struct_ma_data_source_base_536871779):
      static :
        warning("Declaration of " & "struct_ma_data_source_base" &
            " exists but with different size")
    struct_ma_data_source_base
   else:
    struct_ma_data_source_base_536871779)
  struct_ma_paged_audio_buffer_536871808 = (when declared(
      struct_ma_paged_audio_buffer):
    when ownSizeof(struct_ma_paged_audio_buffer) !=
        ownSizeof(struct_ma_paged_audio_buffer_536871807):
      static :
        warning("Declaration of " & "struct_ma_paged_audio_buffer" &
            " exists but with different size")
    struct_ma_paged_audio_buffer
   else:
    struct_ma_paged_audio_buffer_536871807)
  struct_ma_resource_manager_pipeline_stage_notification_536872114 = (when declared(
      struct_ma_resource_manager_pipeline_stage_notification):
    when ownSizeof(struct_ma_resource_manager_pipeline_stage_notification) !=
        ownSizeof(struct_ma_resource_manager_pipeline_stage_notification_536872113):
      static :
        warning("Declaration of " &
            "struct_ma_resource_manager_pipeline_stage_notification" &
            " exists but with different size")
    struct_ma_resource_manager_pipeline_stage_notification
   else:
    struct_ma_resource_manager_pipeline_stage_notification_536872113)
  struct_ma_data_source_vtable_536871770 = (when declared(
      struct_ma_data_source_vtable):
    when ownSizeof(struct_ma_data_source_vtable) !=
        ownSizeof(struct_ma_data_source_vtable_536871769):
      static :
        warning("Declaration of " & "struct_ma_data_source_vtable" &
            " exists but with different size")
    struct_ma_data_source_vtable
   else:
    struct_ma_data_source_vtable_536871769)
  ma_positioning_536871692 = (when declared(ma_positioning):
    when ownSizeof(ma_positioning) != ownSizeof(ma_positioning_536871691):
      static :
        warning("Declaration of " & "ma_positioning" &
            " exists but with different size")
    ma_positioning
   else:
    ma_positioning_536871691)
  ma_log_callback_536871524 = (when declared(ma_log_callback):
    when ownSizeof(ma_log_callback) != ownSizeof(ma_log_callback_536871523):
      static :
        warning("Declaration of " & "ma_log_callback" &
            " exists but with different size")
    ma_log_callback
   else:
    ma_log_callback_536871523)
  ma_device_id_536871956 = (when declared(ma_device_id):
    when ownSizeof(ma_device_id) != ownSizeof(ma_device_id_536871955):
      static :
        warning("Declaration of " & "ma_device_id" &
            " exists but with different size")
    ma_device_id
   else:
    ma_device_id_536871955)
  ma_node_state_536872154 = (when declared(ma_node_state):
    when ownSizeof(ma_node_state) != ownSizeof(ma_node_state_536872153):
      static :
        warning("Declaration of " & "ma_node_state" &
            " exists but with different size")
    ma_node_state
   else:
    ma_node_state_536872153)
  struct_ma_spatializer_listener_config_536871698 = (when declared(
      struct_ma_spatializer_listener_config):
    when ownSizeof(struct_ma_spatializer_listener_config) !=
        ownSizeof(struct_ma_spatializer_listener_config_536871697):
      static :
        warning("Declaration of " & "struct_ma_spatializer_listener_config" &
            " exists but with different size")
    struct_ma_spatializer_listener_config
   else:
    struct_ma_spatializer_listener_config_536871697)
  ma_delay_536871648 = (when declared(ma_delay):
    when ownSizeof(ma_delay) != ownSizeof(ma_delay_536871647):
      static :
        warning("Declaration of " & "ma_delay" &
            " exists but with different size")
    ma_delay
   else:
    ma_delay_536871647)
  struct_ma_device_notification_536871896 = (when declared(
      struct_ma_device_notification):
    when ownSizeof(struct_ma_device_notification) !=
        ownSizeof(struct_ma_device_notification_536871895):
      static :
        warning("Declaration of " & "struct_ma_device_notification" &
            " exists but with different size")
    struct_ma_device_notification
   else:
    struct_ma_device_notification_536871895)
  ma_encoding_format_536872016 = (when declared(ma_encoding_format):
    when ownSizeof(ma_encoding_format) != ownSizeof(ma_encoding_format_536872015):
      static :
        warning("Declaration of " & "ma_encoding_format" &
            " exists but with different size")
    ma_encoding_format
   else:
    ma_encoding_format_536872015)
  ma_int32_536871375 = (when declared(ma_int32):
    when ownSizeof(ma_int32) != ownSizeof(ma_int32_536871374):
      static :
        warning("Declaration of " & "ma_int32" &
            " exists but with different size")
    ma_int32
   else:
    ma_int32_536871374)
  struct_ma_engine_config_536872308 = (when declared(struct_ma_engine_config):
    when ownSizeof(struct_ma_engine_config) !=
        ownSizeof(struct_ma_engine_config_536872307):
      static :
        warning("Declaration of " & "struct_ma_engine_config" &
            " exists but with different size")
    struct_ma_engine_config
   else:
    struct_ma_engine_config_536872307)
  ma_node_output_bus_536872164 = (when declared(ma_node_output_bus):
    when ownSizeof(ma_node_output_bus) != ownSizeof(ma_node_output_bus_536872163):
      static :
        warning("Declaration of " & "ma_node_output_bus" &
            " exists but with different size")
    ma_node_output_bus
   else:
    ma_node_output_bus_536872163)
  enum_ma_thread_priority_536871504 = (when declared(enum_ma_thread_priority):
    when ownSizeof(enum_ma_thread_priority) !=
        ownSizeof(enum_ma_thread_priority_536871503):
      static :
        warning("Declaration of " & "enum_ma_thread_priority" &
            " exists but with different size")
    enum_ma_thread_priority
   else:
    enum_ma_thread_priority_536871503)
  ma_peak2_config_536871614 = (when declared(ma_peak2_config):
    when ownSizeof(ma_peak2_config) != ownSizeof(ma_peak2_config_536871613):
      static :
        warning("Declaration of " & "ma_peak2_config" &
            " exists but with different size")
    ma_peak2_config
   else:
    ma_peak2_config_536871613)
  struct_ma_device_job_thread_config_536871884 = (when declared(
      struct_ma_device_job_thread_config):
    when ownSizeof(struct_ma_device_job_thread_config) !=
        ownSizeof(struct_ma_device_job_thread_config_536871883):
      static :
        warning("Declaration of " & "struct_ma_device_job_thread_config" &
            " exists but with different size")
    struct_ma_device_job_thread_config
   else:
    struct_ma_device_job_thread_config_536871883)
  ma_decoder_tell_proc_536872034 = (when declared(ma_decoder_tell_proc):
    when ownSizeof(ma_decoder_tell_proc) != ownSizeof(ma_decoder_tell_proc_536872033):
      static :
        warning("Declaration of " & "ma_decoder_tell_proc" &
            " exists but with different size")
    ma_decoder_tell_proc
   else:
    ma_decoder_tell_proc_536872033)
  enum_ma_engine_node_type_536872280 = (when declared(enum_ma_engine_node_type):
    when ownSizeof(enum_ma_engine_node_type) !=
        ownSizeof(enum_ma_engine_node_type_536872279):
      static :
        warning("Declaration of " & "enum_ma_engine_node_type" &
            " exists but with different size")
    enum_ma_engine_node_type
   else:
    enum_ma_engine_node_type_536872279)
  struct_ma_atomic_bool32_536871498 = (when declared(struct_ma_atomic_bool32):
    when ownSizeof(struct_ma_atomic_bool32) !=
        ownSizeof(struct_ma_atomic_bool32_536871497):
      static :
        warning("Declaration of " & "struct_ma_atomic_bool32" &
            " exists but with different size")
    struct_ma_atomic_bool32
   else:
    struct_ma_atomic_bool32_536871497)
  ma_duplex_rb_536871822 = (when declared(ma_duplex_rb):
    when ownSizeof(ma_duplex_rb) != ownSizeof(ma_duplex_rb_536871821):
      static :
        warning("Declaration of " & "ma_duplex_rb" &
            " exists but with different size")
    ma_duplex_rb
   else:
    ma_duplex_rb_536871821)
  ma_vfs_file_536871986 = (when declared(ma_vfs_file):
    when ownSizeof(ma_vfs_file) != ownSizeof(ma_vfs_file_536871985):
      static :
        warning("Declaration of " & "ma_vfs_file" &
            " exists but with different size")
    ma_vfs_file
   else:
    ma_vfs_file_536871985)
  ma_encoder_config_536872056 = (when declared(ma_encoder_config):
    when ownSizeof(ma_encoder_config) != ownSizeof(ma_encoder_config_536872055):
      static :
        warning("Declaration of " & "ma_encoder_config" &
            " exists but with different size")
    ma_encoder_config
   else:
    ma_encoder_config_536872055)
  struct_ma_node_output_bus_536872166 = (when declared(struct_ma_node_output_bus):
    when ownSizeof(struct_ma_node_output_bus) !=
        ownSizeof(struct_ma_node_output_bus_536872165):
      static :
        warning("Declaration of " & "struct_ma_node_output_bus" &
            " exists but with different size")
    struct_ma_node_output_bus
   else:
    struct_ma_node_output_bus_536872165)
  ma_lpf_536871562 = (when declared(ma_lpf):
    when ownSizeof(ma_lpf) != ownSizeof(ma_lpf_536871561):
      static :
        warning("Declaration of " & "ma_lpf" & " exists but with different size")
    ma_lpf
   else:
    ma_lpf_536871561)
  ma_hpf_node_536872218 = (when declared(ma_hpf_node):
    when ownSizeof(ma_hpf_node) != ownSizeof(ma_hpf_node_536872217):
      static :
        warning("Declaration of " & "ma_hpf_node" &
            " exists but with different size")
    ma_hpf_node
   else:
    ma_hpf_node_536872217)
  ma_pulsewave_config_536872072 = (when declared(ma_pulsewave_config):
    when ownSizeof(ma_pulsewave_config) != ownSizeof(ma_pulsewave_config_536872071):
      static :
        warning("Declaration of " & "ma_pulsewave_config" &
            " exists but with different size")
    ma_pulsewave_config
   else:
    ma_pulsewave_config_536872071)
  ma_job_queue_config_536871363 = (when declared(ma_job_queue_config):
    when ownSizeof(ma_job_queue_config) != ownSizeof(ma_job_queue_config_536871362):
      static :
        warning("Declaration of " & "ma_job_queue_config" &
            " exists but with different size")
    ma_job_queue_config
   else:
    ma_job_queue_config_536871362)
  struct_ma_decoder_config_536872036 = (when declared(struct_ma_decoder_config):
    when ownSizeof(struct_ma_decoder_config) !=
        ownSizeof(struct_ma_decoder_config_536872035):
      static :
        warning("Declaration of " & "struct_ma_decoder_config" &
            " exists but with different size")
    struct_ma_decoder_config
   else:
    struct_ma_decoder_config_536872035)
  struct_ma_hpf2_536871574 = (when declared(struct_ma_hpf2):
    when ownSizeof(struct_ma_hpf2) != ownSizeof(struct_ma_hpf2_536871573):
      static :
        warning("Declaration of " & "struct_ma_hpf2" &
            " exists but with different size")
    struct_ma_hpf2
   else:
    struct_ma_hpf2_536871573)
  struct_ma_pcm_rb_536871816 = (when declared(struct_ma_pcm_rb):
    when ownSizeof(struct_ma_pcm_rb) != ownSizeof(struct_ma_pcm_rb_536871815):
      static :
        warning("Declaration of " & "struct_ma_pcm_rb" &
            " exists but with different size")
    struct_ma_pcm_rb
   else:
    struct_ma_pcm_rb_536871815)
  struct_ma_decoder_536872020 = (when declared(struct_ma_decoder):
    when ownSizeof(struct_ma_decoder) != ownSizeof(struct_ma_decoder_536872019):
      static :
        warning("Declaration of " & "struct_ma_decoder" &
            " exists but with different size")
    struct_ma_decoder
   else:
    struct_ma_decoder_536872019)
  ma_resource_manager_536872090 = (when declared(ma_resource_manager):
    when ownSizeof(ma_resource_manager) != ownSizeof(ma_resource_manager_536872089):
      static :
        warning("Declaration of " & "ma_resource_manager" &
            " exists but with different size")
    ma_resource_manager
   else:
    ma_resource_manager_536872089)
  ma_spatializer_536871712 = (when declared(ma_spatializer):
    when ownSizeof(ma_spatializer) != ownSizeof(ma_spatializer_536871711):
      static :
        warning("Declaration of " & "ma_spatializer" &
            " exists but with different size")
    ma_spatializer
   else:
    ma_spatializer_536871711)
  ma_channel_536871425 = (when declared(ma_channel):
    when ownSizeof(ma_channel) != ownSizeof(ma_channel_536871424):
      static :
        warning("Declaration of " & "ma_channel" &
            " exists but with different size")
    ma_channel
   else:
    ma_channel_536871424)
  struct_ma_resampler_536871736 = (when declared(struct_ma_resampler):
    when ownSizeof(struct_ma_resampler) != ownSizeof(struct_ma_resampler_536871735):
      static :
        warning("Declaration of " & "struct_ma_resampler" &
            " exists but with different size")
    struct_ma_resampler
   else:
    struct_ma_resampler_536871735)
  struct_ma_audio_buffer_ref_536871784 = (when declared(
      struct_ma_audio_buffer_ref):
    when ownSizeof(struct_ma_audio_buffer_ref) !=
        ownSizeof(struct_ma_audio_buffer_ref_536871783):
      static :
        warning("Declaration of " & "struct_ma_audio_buffer_ref" &
            " exists but with different size")
    struct_ma_audio_buffer_ref
   else:
    struct_ma_audio_buffer_ref_536871783)
  ma_splitter_node_536872194 = (when declared(ma_splitter_node):
    when ownSizeof(ma_splitter_node) != ownSizeof(ma_splitter_node_536872193):
      static :
        warning("Declaration of " & "ma_splitter_node" &
            " exists but with different size")
    ma_splitter_node
   else:
    ma_splitter_node_536872193)
  ma_engine_node_config_536872286 = (when declared(ma_engine_node_config):
    when ownSizeof(ma_engine_node_config) != ownSizeof(ma_engine_node_config_536872285):
      static :
        warning("Declaration of " & "ma_engine_node_config" &
            " exists but with different size")
    ma_engine_node_config
   else:
    ma_engine_node_config_536872285)
  ma_result_536871433 = (when declared(ma_result):
    when ownSizeof(ma_result) != ownSizeof(ma_result_536871432):
      static :
        warning("Declaration of " & "ma_result" &
            " exists but with different size")
    ma_result
   else:
    ma_result_536871432)
  ma_sound_end_proc_536872292 = (when declared(ma_sound_end_proc):
    when ownSizeof(ma_sound_end_proc) != ownSizeof(ma_sound_end_proc_536872291):
      static :
        warning("Declaration of " & "ma_sound_end_proc" &
            " exists but with different size")
    ma_sound_end_proc
   else:
    ma_sound_end_proc_536872291)
  ma_spatializer_listener_config_536871700 = (when declared(
      ma_spatializer_listener_config):
    when ownSizeof(ma_spatializer_listener_config) !=
        ownSizeof(ma_spatializer_listener_config_536871699):
      static :
        warning("Declaration of " & "ma_spatializer_listener_config" &
            " exists but with different size")
    ma_spatializer_listener_config
   else:
    ma_spatializer_listener_config_536871699)
  enum_ma_format_536871454 = (when declared(enum_ma_format):
    when ownSizeof(enum_ma_format) != ownSizeof(enum_ma_format_536871453):
      static :
        warning("Declaration of " & "enum_ma_format" &
            " exists but with different size")
    enum_ma_format
   else:
    enum_ma_format_536871453)
  compiler_atomic_wide_counter_536872322 = (when declared(
      compiler_atomic_wide_counter):
    when ownSizeof(compiler_atomic_wide_counter) !=
        ownSizeof(compiler_atomic_wide_counter_536872321):
      static :
        warning("Declaration of " & "compiler_atomic_wide_counter" &
            " exists but with different size")
    compiler_atomic_wide_counter
   else:
    compiler_atomic_wide_counter_536872321)
  ma_gainer_536871656 = (when declared(ma_gainer):
    when ownSizeof(ma_gainer) != ownSizeof(ma_gainer_536871655):
      static :
        warning("Declaration of " & "ma_gainer" &
            " exists but with different size")
    ma_gainer
   else:
    ma_gainer_536871655)
  ma_notch_node_536872234 = (when declared(ma_notch_node):
    when ownSizeof(ma_notch_node) != ownSizeof(ma_notch_node_536872233):
      static :
        warning("Declaration of " & "ma_notch_node" &
            " exists but with different size")
    ma_notch_node
   else:
    ma_notch_node_536872233)
  enum_ma_encoding_format_536872014 = (when declared(enum_ma_encoding_format):
    when ownSizeof(enum_ma_encoding_format) !=
        ownSizeof(enum_ma_encoding_format_536872013):
      static :
        warning("Declaration of " & "enum_ma_encoding_format" &
            " exists but with different size")
    enum_ma_encoding_format
   else:
    enum_ma_encoding_format_536872013)
  ma_splitter_node_config_536872190 = (when declared(ma_splitter_node_config):
    when ownSizeof(ma_splitter_node_config) !=
        ownSizeof(ma_splitter_node_config_536872189):
      static :
        warning("Declaration of " & "ma_splitter_node_config" &
            " exists but with different size")
    ma_splitter_node_config
   else:
    ma_splitter_node_config_536872189)
  ma_delay_config_536871644 = (when declared(ma_delay_config):
    when ownSizeof(ma_delay_config) != ownSizeof(ma_delay_config_536871643):
      static :
        warning("Declaration of " & "ma_delay_config" &
            " exists but with different size")
    ma_delay_config
   else:
    ma_delay_config_536871643)
  enum_ma_channel_conversion_path_536871740 = (when declared(
      enum_ma_channel_conversion_path):
    when ownSizeof(enum_ma_channel_conversion_path) !=
        ownSizeof(enum_ma_channel_conversion_path_536871739):
      static :
        warning("Declaration of " & "enum_ma_channel_conversion_path" &
            " exists but with different size")
    enum_ma_channel_conversion_path
   else:
    enum_ma_channel_conversion_path_536871739)
  struct_ma_context_config_536871960 = (when declared(struct_ma_context_config):
    when ownSizeof(struct_ma_context_config) !=
        ownSizeof(struct_ma_context_config_536871959):
      static :
        warning("Declaration of " & "struct_ma_context_config" &
            " exists but with different size")
    struct_ma_context_config
   else:
    struct_ma_context_config_536871959)
  ma_stop_proc_536871904 = (when declared(ma_stop_proc):
    when ownSizeof(ma_stop_proc) != ownSizeof(ma_stop_proc_536871903):
      static :
        warning("Declaration of " & "ma_stop_proc" &
            " exists but with different size")
    ma_stop_proc
   else:
    ma_stop_proc_536871903)
  ma_bool32_536871387 = (when declared(ma_bool32):
    when ownSizeof(ma_bool32) != ownSizeof(ma_bool32_536871386):
      static :
        warning("Declaration of " & "ma_bool32" &
            " exists but with different size")
    ma_bool32
   else:
    ma_bool32_536871386)
  ma_context_536871417 = (when declared(ma_context):
    when ownSizeof(ma_context) != ownSizeof(ma_context_536871416):
      static :
        warning("Declaration of " & "ma_context" &
            " exists but with different size")
    ma_context
   else:
    ma_context_536871416)
  ma_biquad_config_536871536 = (when declared(ma_biquad_config):
    when ownSizeof(ma_biquad_config) != ownSizeof(ma_biquad_config_536871535):
      static :
        warning("Declaration of " & "ma_biquad_config" &
            " exists but with different size")
    ma_biquad_config
   else:
    ma_biquad_config_536871535)
  struct_ma_hpf1_config_536871564 = (when declared(struct_ma_hpf1_config):
    when ownSizeof(struct_ma_hpf1_config) != ownSizeof(struct_ma_hpf1_config_536871563):
      static :
        warning("Declaration of " & "struct_ma_hpf1_config" &
            " exists but with different size")
    struct_ma_hpf1_config
   else:
    struct_ma_hpf1_config_536871563)
  struct_ma_job_queue_config_536871868 = (when declared(
      struct_ma_job_queue_config):
    when ownSizeof(struct_ma_job_queue_config) !=
        ownSizeof(struct_ma_job_queue_config_536871867):
      static :
        warning("Declaration of " & "struct_ma_job_queue_config" &
            " exists but with different size")
    struct_ma_job_queue_config
   else:
    struct_ma_job_queue_config_536871867)
  struct_ma_decoding_backend_vtable_536872026 = (when declared(
      struct_ma_decoding_backend_vtable):
    when ownSizeof(struct_ma_decoding_backend_vtable) !=
        ownSizeof(struct_ma_decoding_backend_vtable_536872025):
      static :
        warning("Declaration of " & "struct_ma_decoding_backend_vtable" &
            " exists but with different size")
    struct_ma_decoding_backend_vtable
   else:
    struct_ma_decoding_backend_vtable_536872025)
  struct_ma_node_graph_config_536872176 = (when declared(
      struct_ma_node_graph_config):
    when ownSizeof(struct_ma_node_graph_config) !=
        ownSizeof(struct_ma_node_graph_config_536872175):
      static :
        warning("Declaration of " & "struct_ma_node_graph_config" &
            " exists but with different size")
    struct_ma_node_graph_config
   else:
    struct_ma_node_graph_config_536872175)
  ma_peak_node_536872242 = (when declared(ma_peak_node):
    when ownSizeof(ma_peak_node) != ownSizeof(ma_peak_node_536872241):
      static :
        warning("Declaration of " & "ma_peak_node" &
            " exists but with different size")
    ma_peak_node
   else:
    ma_peak_node_536872241)
  ma_resampler_config_536871722 = (when declared(ma_resampler_config):
    when ownSizeof(ma_resampler_config) != ownSizeof(ma_resampler_config_536871721):
      static :
        warning("Declaration of " & "ma_resampler_config" &
            " exists but with different size")
    ma_resampler_config
   else:
    ma_resampler_config_536871721)
  struct_ma_notch2_config_536871602 = (when declared(struct_ma_notch2_config):
    when ownSizeof(struct_ma_notch2_config) !=
        ownSizeof(struct_ma_notch2_config_536871601):
      static :
        warning("Declaration of " & "struct_ma_notch2_config" &
            " exists but with different size")
    struct_ma_notch2_config
   else:
    struct_ma_notch2_config_536871601)
  ma_notch2_536871610 = (when declared(ma_notch2):
    when ownSizeof(ma_notch2) != ownSizeof(ma_notch2_536871609):
      static :
        warning("Declaration of " & "ma_notch2" &
            " exists but with different size")
    ma_notch2
   else:
    ma_notch2_536871609)
  ma_hpf_node_config_536872214 = (when declared(ma_hpf_node_config):
    when ownSizeof(ma_hpf_node_config) != ownSizeof(ma_hpf_node_config_536872213):
      static :
        warning("Declaration of " & "ma_hpf_node_config" &
            " exists but with different size")
    ma_hpf_node_config
   else:
    ma_hpf_node_config_536872213)
  ma_device_config_536871962 = (when declared(ma_device_config):
    when ownSizeof(ma_device_config) != ownSizeof(ma_device_config_536871961):
      static :
        warning("Declaration of " & "ma_device_config" &
            " exists but with different size")
    ma_device_config
   else:
    ma_device_config_536871961)
  ma_sound_group_config_536872302 = (when declared(ma_sound_group_config):
    when ownSizeof(ma_sound_group_config) != ownSizeof(ma_sound_group_config_536872301):
      static :
        warning("Declaration of " & "ma_sound_group_config" &
            " exists but with different size")
    ma_sound_group_config
   else:
    ma_sound_group_config_536872301)
  pthread_mutex_t_536871405 = (when declared(pthread_mutex_t):
    when ownSizeof(pthread_mutex_t) != ownSizeof(pthread_mutex_t_536871404):
      static :
        warning("Declaration of " & "pthread_mutex_t" &
            " exists but with different size")
    pthread_mutex_t
   else:
    pthread_mutex_t_536871404)
  ma_lpf1_config_536871544 = (when declared(ma_lpf1_config):
    when ownSizeof(ma_lpf1_config) != ownSizeof(ma_lpf1_config_536871543):
      static :
        warning("Declaration of " & "ma_lpf1_config" &
            " exists but with different size")
    ma_lpf1_config
   else:
    ma_lpf1_config_536871543)
  struct_ma_biquad_node_536872200 = (when declared(struct_ma_biquad_node):
    when ownSizeof(struct_ma_biquad_node) != ownSizeof(struct_ma_biquad_node_536872199):
      static :
        warning("Declaration of " & "struct_ma_biquad_node" &
            " exists but with different size")
    struct_ma_biquad_node
   else:
    struct_ma_biquad_node_536872199)
  struct_ma_node_base_536872174 = (when declared(struct_ma_node_base):
    when ownSizeof(struct_ma_node_base) != ownSizeof(struct_ma_node_base_536872173):
      static :
        warning("Declaration of " & "struct_ma_node_base" &
            " exists but with different size")
    struct_ma_node_base
   else:
    struct_ma_node_base_536872173)
  union_atomic_wide_counter_536872326 = (when declared(union_atomic_wide_counter):
    when ownSizeof(union_atomic_wide_counter) !=
        ownSizeof(union_atomic_wide_counter_536872325):
      static :
        warning("Declaration of " & "union_atomic_wide_counter" &
            " exists but with different size")
    union_atomic_wide_counter
   else:
    union_atomic_wide_counter_536872325)
  ma_fence_536871826 = (when declared(ma_fence):
    when ownSizeof(ma_fence) != ownSizeof(ma_fence_536871825):
      static :
        warning("Declaration of " & "ma_fence" &
            " exists but with different size")
    ma_fence
   else:
    ma_fence_536871825)
  ma_hpf1_536871572 = (when declared(ma_hpf1):
    when ownSizeof(ma_hpf1) != ownSizeof(ma_hpf1_536871571):
      static :
        warning("Declaration of " & "ma_hpf1" &
            " exists but with different size")
    ma_hpf1
   else:
    ma_hpf1_536871571)
  struct_ma_resource_manager_pipeline_notifications_536872118 = (when declared(
      struct_ma_resource_manager_pipeline_notifications):
    when ownSizeof(struct_ma_resource_manager_pipeline_notifications) !=
        ownSizeof(struct_ma_resource_manager_pipeline_notifications_536872117):
      static :
        warning("Declaration of " &
            "struct_ma_resource_manager_pipeline_notifications" &
            " exists but with different size")
    struct_ma_resource_manager_pipeline_notifications
   else:
    struct_ma_resource_manager_pipeline_notifications_536872117)
  ma_device_data_proc_536871902 = (when declared(ma_device_data_proc):
    when ownSizeof(ma_device_data_proc) != ownSizeof(ma_device_data_proc_536871901):
      static :
        warning("Declaration of " & "ma_device_data_proc" &
            " exists but with different size")
    ma_device_data_proc
   else:
    ma_device_data_proc_536871901)
  ma_hishelf2_config_536871634 = (when declared(ma_hishelf2_config):
    when ownSizeof(ma_hishelf2_config) != ownSizeof(ma_hishelf2_config_536871633):
      static :
        warning("Declaration of " & "ma_hishelf2_config" &
            " exists but with different size")
    ma_hishelf2_config
   else:
    ma_hishelf2_config_536871633)
  ma_device_job_thread_536871890 = (when declared(ma_device_job_thread):
    when ownSizeof(ma_device_job_thread) != ownSizeof(ma_device_job_thread_536871889):
      static :
        warning("Declaration of " & "ma_device_job_thread" &
            " exists but with different size")
    ma_device_job_thread
   else:
    ma_device_job_thread_536871889)
  ma_bool8_536871385 = (when declared(ma_bool8):
    when ownSizeof(ma_bool8) != ownSizeof(ma_bool8_536871384):
      static :
        warning("Declaration of " & "ma_bool8" &
            " exists but with different size")
    ma_bool8
   else:
    ma_bool8_536871384)
  ma_aaudio_usage_536871936 = (when declared(ma_aaudio_usage):
    when ownSizeof(ma_aaudio_usage) != ownSizeof(ma_aaudio_usage_536871935):
      static :
        warning("Declaration of " & "ma_aaudio_usage" &
            " exists but with different size")
    ma_aaudio_usage
   else:
    ma_aaudio_usage_536871935)
  ma_node_config_536872162 = (when declared(ma_node_config):
    when ownSizeof(ma_node_config) != ownSizeof(ma_node_config_536872161):
      static :
        warning("Declaration of " & "ma_node_config" &
            " exists but with different size")
    ma_node_config
   else:
    ma_node_config_536872161)
  ma_lpf_node_config_536872206 = (when declared(ma_lpf_node_config):
    when ownSizeof(ma_lpf_node_config) != ownSizeof(ma_lpf_node_config_536872205):
      static :
        warning("Declaration of " & "ma_lpf_node_config" &
            " exists but with different size")
    ma_lpf_node_config
   else:
    ma_lpf_node_config_536872205)
  ma_uint16_536871373 = (when declared(ma_uint16):
    when ownSizeof(ma_uint16) != ownSizeof(ma_uint16_536871372):
      static :
        warning("Declaration of " & "ma_uint16" &
            " exists but with different size")
    ma_uint16
   else:
    ma_uint16_536871372)
  ma_lpf2_536871554 = (when declared(ma_lpf2):
    when ownSizeof(ma_lpf2) != ownSizeof(ma_lpf2_536871553):
      static :
        warning("Declaration of " & "ma_lpf2" &
            " exists but with different size")
    ma_lpf2
   else:
    ma_lpf2_536871553)
  struct_ma_notch_node_536872232 = (when declared(struct_ma_notch_node):
    when ownSizeof(struct_ma_notch_node) != ownSizeof(struct_ma_notch_node_536872231):
      static :
        warning("Declaration of " & "struct_ma_notch_node" &
            " exists but with different size")
    struct_ma_notch_node
   else:
    struct_ma_notch_node_536872231)
  struct_ma_atomic_int32_536871486 = (when declared(struct_ma_atomic_int32):
    when ownSizeof(struct_ma_atomic_int32) != ownSizeof(struct_ma_atomic_int32_536871485):
      static :
        warning("Declaration of " & "struct_ma_atomic_int32" &
            " exists but with different size")
    struct_ma_atomic_int32
   else:
    struct_ma_atomic_int32_536871485)
  ma_data_converter_536871766 = (when declared(ma_data_converter):
    when ownSizeof(ma_data_converter) != ownSizeof(ma_data_converter_536871765):
      static :
        warning("Declaration of " & "ma_data_converter" &
            " exists but with different size")
    ma_data_converter
   else:
    ma_data_converter_536871765)
  ma_atomic_uint64_536871492 = (when declared(ma_atomic_uint64):
    when ownSizeof(ma_atomic_uint64) != ownSizeof(ma_atomic_uint64_536871491):
      static :
        warning("Declaration of " & "ma_atomic_uint64" &
            " exists but with different size")
    ma_atomic_uint64
   else:
    ma_atomic_uint64_536871491)
  ma_hishelf_node_config_536872254 = (when declared(ma_hishelf_node_config):
    when ownSizeof(ma_hishelf_node_config) != ownSizeof(ma_hishelf_node_config_536872253):
      static :
        warning("Declaration of " & "ma_hishelf_node_config" &
            " exists but with different size")
    ma_hishelf_node_config
   else:
    ma_hishelf_node_config_536872253)
  ma_pcm_rb_536871818 = (when declared(ma_pcm_rb):
    when ownSizeof(ma_pcm_rb) != ownSizeof(ma_pcm_rb_536871817):
      static :
        warning("Declaration of " & "ma_pcm_rb" &
            " exists but with different size")
    ma_pcm_rb
   else:
    ma_pcm_rb_536871817)
  ma_thread_536871508 = (when declared(ma_thread):
    when ownSizeof(ma_thread) != ownSizeof(ma_thread_536871507):
      static :
        warning("Declaration of " & "ma_thread" &
            " exists but with different size")
    ma_thread
   else:
    ma_thread_536871507)
  struct_ma_async_notification_callbacks_536871830 = (when declared(
      struct_ma_async_notification_callbacks):
    when ownSizeof(struct_ma_async_notification_callbacks) !=
        ownSizeof(struct_ma_async_notification_callbacks_536871829):
      static :
        warning("Declaration of " & "struct_ma_async_notification_callbacks" &
            " exists but with different size")
    struct_ma_async_notification_callbacks
   else:
    struct_ma_async_notification_callbacks_536871829)
  struct_ma_async_notification_event_536871838 = (when declared(
      struct_ma_async_notification_event):
    when ownSizeof(struct_ma_async_notification_event) !=
        ownSizeof(struct_ma_async_notification_event_536871837):
      static :
        warning("Declaration of " & "struct_ma_async_notification_event" &
            " exists but with different size")
    struct_ma_async_notification_event
   else:
    struct_ma_async_notification_event_536871837)
  ma_decoder_seek_proc_536872032 = (when declared(ma_decoder_seek_proc):
    when ownSizeof(ma_decoder_seek_proc) != ownSizeof(ma_decoder_seek_proc_536872031):
      static :
        warning("Declaration of " & "ma_decoder_seek_proc" &
            " exists but with different size")
    ma_decoder_seek_proc
   else:
    ma_decoder_seek_proc_536872031)
  struct_ma_allocation_callbacks_536871474 = (when declared(
      struct_ma_allocation_callbacks):
    when ownSizeof(struct_ma_allocation_callbacks) !=
        ownSizeof(struct_ma_allocation_callbacks_536871473):
      static :
        warning("Declaration of " & "struct_ma_allocation_callbacks" &
            " exists but with different size")
    struct_ma_allocation_callbacks
   else:
    struct_ma_allocation_callbacks_536871473)
  struct_ma_waveform_536872066 = (when declared(struct_ma_waveform):
    when ownSizeof(struct_ma_waveform) != ownSizeof(struct_ma_waveform_536872065):
      static :
        warning("Declaration of " & "struct_ma_waveform" &
            " exists but with different size")
    struct_ma_waveform
   else:
    struct_ma_waveform_536872065)
  compiler_pthread_list_t_536872320 = (when declared(compiler_pthread_list_t):
    when ownSizeof(compiler_pthread_list_t) !=
        ownSizeof(compiler_pthread_list_t_536872319):
      static :
        warning("Declaration of " & "compiler_pthread_list_t" &
            " exists but with different size")
    compiler_pthread_list_t
   else:
    compiler_pthread_list_t_536872319)
  ma_lpf2_config_536871546 = (when declared(ma_lpf2_config):
    when ownSizeof(ma_lpf2_config) != ownSizeof(ma_lpf2_config_536871545):
      static :
        warning("Declaration of " & "ma_lpf2_config" &
            " exists but with different size")
    ma_lpf2_config
   else:
    ma_lpf2_config_536871545)
  ma_resource_manager_data_source_536872106 = (when declared(
      ma_resource_manager_data_source):
    when ownSizeof(ma_resource_manager_data_source) !=
        ownSizeof(ma_resource_manager_data_source_536872105):
      static :
        warning("Declaration of " & "ma_resource_manager_data_source" &
            " exists but with different size")
    ma_resource_manager_data_source
   else:
    ma_resource_manager_data_source_536872105)
  ma_encoder_write_proc_536872044 = (when declared(ma_encoder_write_proc):
    when ownSizeof(ma_encoder_write_proc) != ownSizeof(ma_encoder_write_proc_536872043):
      static :
        warning("Declaration of " & "ma_encoder_write_proc" &
            " exists but with different size")
    ma_encoder_write_proc
   else:
    ma_encoder_write_proc_536872043)
  ma_timer_536871952 = (when declared(ma_timer):
    when ownSizeof(ma_timer) != ownSizeof(ma_timer_536871951):
      static :
        warning("Declaration of " & "ma_timer" &
            " exists but with different size")
    ma_timer
   else:
    ma_timer_536871951)
  ma_opensl_stream_type_536871924 = (when declared(ma_opensl_stream_type):
    when ownSizeof(ma_opensl_stream_type) != ownSizeof(ma_opensl_stream_type_536871923):
      static :
        warning("Declaration of " & "ma_opensl_stream_type" &
            " exists but with different size")
    ma_opensl_stream_type
   else:
    ma_opensl_stream_type_536871923)
  ma_vfs_callbacks_536872002 = (when declared(ma_vfs_callbacks):
    when ownSizeof(ma_vfs_callbacks) != ownSizeof(ma_vfs_callbacks_536872001):
      static :
        warning("Declaration of " & "ma_vfs_callbacks" &
            " exists but with different size")
    ma_vfs_callbacks
   else:
    ma_vfs_callbacks_536872001)
  struct_ma_paged_audio_buffer_page_536871798 = (when declared(
      struct_ma_paged_audio_buffer_page):
    when ownSizeof(struct_ma_paged_audio_buffer_page) !=
        ownSizeof(struct_ma_paged_audio_buffer_page_536871797):
      static :
        warning("Declaration of " & "struct_ma_paged_audio_buffer_page" &
            " exists but with different size")
    struct_ma_paged_audio_buffer_page
   else:
    struct_ma_paged_audio_buffer_page_536871797)
  ma_aaudio_content_type_536871940 = (when declared(ma_aaudio_content_type):
    when ownSizeof(ma_aaudio_content_type) != ownSizeof(ma_aaudio_content_type_536871939):
      static :
        warning("Declaration of " & "ma_aaudio_content_type" &
            " exists but with different size")
    ma_aaudio_content_type
   else:
    ma_aaudio_content_type_536871939)
  enum_ma_node_flags_536872148 = (when declared(enum_ma_node_flags):
    when ownSizeof(enum_ma_node_flags) != ownSizeof(enum_ma_node_flags_536872147):
      static :
        warning("Declaration of " & "enum_ma_node_flags" &
            " exists but with different size")
    enum_ma_node_flags
   else:
    enum_ma_node_flags_536872147)
  struct_ma_encoder_536872042 = (when declared(struct_ma_encoder):
    when ownSizeof(struct_ma_encoder) != ownSizeof(struct_ma_encoder_536872041):
      static :
        warning("Declaration of " & "struct_ma_encoder" &
            " exists but with different size")
    struct_ma_encoder
   else:
    struct_ma_encoder_536872041)
  enum_ma_stream_format_536871435 = (when declared(enum_ma_stream_format):
    when ownSizeof(enum_ma_stream_format) != ownSizeof(enum_ma_stream_format_536871434):
      static :
        warning("Declaration of " & "enum_ma_stream_format" &
            " exists but with different size")
    enum_ma_stream_format
   else:
    enum_ma_stream_format_536871434)
  struct_ma_hpf_536871582 = (when declared(struct_ma_hpf):
    when ownSizeof(struct_ma_hpf) != ownSizeof(struct_ma_hpf_536871581):
      static :
        warning("Declaration of " & "struct_ma_hpf" &
            " exists but with different size")
    struct_ma_hpf
   else:
    struct_ma_hpf_536871581)
  ma_pan_mode_536871660 = (when declared(ma_pan_mode):
    when ownSizeof(ma_pan_mode) != ownSizeof(ma_pan_mode_536871659):
      static :
        warning("Declaration of " & "ma_pan_mode" &
            " exists but with different size")
    ma_pan_mode
   else:
    ma_pan_mode_536871659)
  internal_ma_channel_position_536871429 = (when declared(
      internal_ma_channel_position):
    when ownSizeof(internal_ma_channel_position) !=
        ownSizeof(internal_ma_channel_position_536871428):
      static :
        warning("Declaration of " & "internal_ma_channel_position" &
            " exists but with different size")
    internal_ma_channel_position
   else:
    internal_ma_channel_position_536871428)
  struct_ma_context_536871419 = (when declared(struct_ma_context):
    when ownSizeof(struct_ma_context) != ownSizeof(struct_ma_context_536871418):
      static :
        warning("Declaration of " & "struct_ma_context" &
            " exists but with different size")
    struct_ma_context
   else:
    struct_ma_context_536871418)
  struct_ma_data_source_node_536872184 = (when declared(
      struct_ma_data_source_node):
    when ownSizeof(struct_ma_data_source_node) !=
        ownSizeof(struct_ma_data_source_node_536872183):
      static :
        warning("Declaration of " & "struct_ma_data_source_node" &
            " exists but with different size")
    struct_ma_data_source_node
   else:
    struct_ma_data_source_node_536872183)
  ma_hishelf_node_536872258 = (when declared(ma_hishelf_node):
    when ownSizeof(ma_hishelf_node) != ownSizeof(ma_hishelf_node_536872257):
      static :
        warning("Declaration of " & "ma_hishelf_node" &
            " exists but with different size")
    ma_hishelf_node
   else:
    ma_hishelf_node_536872257)
  struct_ma_delay_536871646 = (when declared(struct_ma_delay):
    when ownSizeof(struct_ma_delay) != ownSizeof(struct_ma_delay_536871645):
      static :
        warning("Declaration of " & "struct_ma_delay" &
            " exists but with different size")
    struct_ma_delay
   else:
    struct_ma_delay_536871645)
  ma_engine_536872268 = (when declared(ma_engine):
    when ownSizeof(ma_engine) != ownSizeof(ma_engine_536872267):
      static :
        warning("Declaration of " & "ma_engine" &
            " exists but with different size")
    ma_engine
   else:
    ma_engine_536872267)
  ma_engine_node_536872290 = (when declared(ma_engine_node):
    when ownSizeof(ma_engine_node) != ownSizeof(ma_engine_node_536872289):
      static :
        warning("Declaration of " & "ma_engine_node" &
            " exists but with different size")
    ma_engine_node
   else:
    ma_engine_node_536872289)
  ma_allocation_callbacks_536871476 = (when declared(ma_allocation_callbacks):
    when ownSizeof(ma_allocation_callbacks) !=
        ownSizeof(ma_allocation_callbacks_536871475):
      static :
        warning("Declaration of " & "ma_allocation_callbacks" &
            " exists but with different size")
    ma_allocation_callbacks
   else:
    ma_allocation_callbacks_536871475)
  ma_mono_expansion_mode_536871746 = (when declared(ma_mono_expansion_mode):
    when ownSizeof(ma_mono_expansion_mode) != ownSizeof(ma_mono_expansion_mode_536871745):
      static :
        warning("Declaration of " & "ma_mono_expansion_mode" &
            " exists but with different size")
    ma_mono_expansion_mode
   else:
    ma_mono_expansion_mode_536871745)
  ma_encoder_seek_proc_536872046 = (when declared(ma_encoder_seek_proc):
    when ownSizeof(ma_encoder_seek_proc) != ownSizeof(ma_encoder_seek_proc_536872045):
      static :
        warning("Declaration of " & "ma_encoder_seek_proc" &
            " exists but with different size")
    ma_encoder_seek_proc
   else:
    ma_encoder_seek_proc_536872045)
  ma_job_queue_536871365 = (when declared(ma_job_queue):
    when ownSizeof(ma_job_queue) != ownSizeof(ma_job_queue_536871364):
      static :
        warning("Declaration of " & "ma_job_queue" &
            " exists but with different size")
    ma_job_queue
   else:
    ma_job_queue_536871364)
  ma_lcg_536871480 = (when declared(ma_lcg):
    when ownSizeof(ma_lcg) != ownSizeof(ma_lcg_536871479):
      static :
        warning("Declaration of " & "ma_lcg" & " exists but with different size")
    ma_lcg
   else:
    ma_lcg_536871479)
  enum_ma_ios_session_category_option_536871918 = (when declared(
      enum_ma_ios_session_category_option):
    when ownSizeof(enum_ma_ios_session_category_option) !=
        ownSizeof(enum_ma_ios_session_category_option_536871917):
      static :
        warning("Declaration of " & "enum_ma_ios_session_category_option" &
            " exists but with different size")
    enum_ma_ios_session_category_option
   else:
    enum_ma_ios_session_category_option_536871917)
  ma_encoder_write_pcm_frames_proc_536872052 = (when declared(
      ma_encoder_write_pcm_frames_proc):
    when ownSizeof(ma_encoder_write_pcm_frames_proc) !=
        ownSizeof(ma_encoder_write_pcm_frames_proc_536872051):
      static :
        warning("Declaration of " & "ma_encoder_write_pcm_frames_proc" &
            " exists but with different size")
    ma_encoder_write_pcm_frames_proc
   else:
    ma_encoder_write_pcm_frames_proc_536872051)
  ma_default_vfs_536872006 = (when declared(ma_default_vfs):
    when ownSizeof(ma_default_vfs) != ownSizeof(ma_default_vfs_536872005):
      static :
        warning("Declaration of " & "ma_default_vfs" &
            " exists but with different size")
    ma_default_vfs
   else:
    ma_default_vfs_536872005)
  struct_ma_backend_callbacks_536871968 = (when declared(
      struct_ma_backend_callbacks):
    when ownSizeof(struct_ma_backend_callbacks) !=
        ownSizeof(struct_ma_backend_callbacks_536871967):
      static :
        warning("Declaration of " & "struct_ma_backend_callbacks" &
            " exists but with different size")
    struct_ma_backend_callbacks
   else:
    struct_ma_backend_callbacks_536871967)
  ma_resource_manager_data_buffer_536872098 = (when declared(
      ma_resource_manager_data_buffer):
    when ownSizeof(ma_resource_manager_data_buffer) !=
        ownSizeof(ma_resource_manager_data_buffer_536872097):
      static :
        warning("Declaration of " & "ma_resource_manager_data_buffer" &
            " exists but with different size")
    ma_resource_manager_data_buffer
   else:
    ma_resource_manager_data_buffer_536872097)
  struct_ma_delay_node_config_536872260 = (when declared(
      struct_ma_delay_node_config):
    when ownSizeof(struct_ma_delay_node_config) !=
        ownSizeof(struct_ma_delay_node_config_536872259):
      static :
        warning("Declaration of " & "struct_ma_delay_node_config" &
            " exists but with different size")
    struct_ma_delay_node_config
   else:
    struct_ma_delay_node_config_536872259)
  struct_ma_resampler_config_536871724 = (when declared(
      struct_ma_resampler_config):
    when ownSizeof(struct_ma_resampler_config) !=
        ownSizeof(struct_ma_resampler_config_536871723):
      static :
        warning("Declaration of " & "struct_ma_resampler_config" &
            " exists but with different size")
    struct_ma_resampler_config
   else:
    struct_ma_resampler_config_536871723)
  ma_linear_resampler_config_536871716 = (when declared(
      ma_linear_resampler_config):
    when ownSizeof(ma_linear_resampler_config) !=
        ownSizeof(ma_linear_resampler_config_536871715):
      static :
        warning("Declaration of " & "ma_linear_resampler_config" &
            " exists but with different size")
    ma_linear_resampler_config
   else:
    ma_linear_resampler_config_536871715)
  ma_lpf1_536871550 = (when declared(ma_lpf1):
    when ownSizeof(ma_lpf1) != ownSizeof(ma_lpf1_536871549):
      static :
        warning("Declaration of " & "ma_lpf1" &
            " exists but with different size")
    ma_lpf1
   else:
    ma_lpf1_536871549)
  enum_ma_dither_mode_536871450 = (when declared(enum_ma_dither_mode):
    when ownSizeof(enum_ma_dither_mode) != ownSizeof(enum_ma_dither_mode_536871449):
      static :
        warning("Declaration of " & "enum_ma_dither_mode" &
            " exists but with different size")
    enum_ma_dither_mode
   else:
    enum_ma_dither_mode_536871449)
  enum_ma_log_level_536871413 = (when declared(enum_ma_log_level):
    when ownSizeof(enum_ma_log_level) != ownSizeof(enum_ma_log_level_536871412):
      static :
        warning("Declaration of " & "enum_ma_log_level" &
            " exists but with different size")
    enum_ma_log_level
   else:
    enum_ma_log_level_536871412)
  struct_ma_device_job_thread_536871888 = (when declared(
      struct_ma_device_job_thread):
    when ownSizeof(struct_ma_device_job_thread) !=
        ownSizeof(struct_ma_device_job_thread_536871887):
      static :
        warning("Declaration of " & "struct_ma_device_job_thread" &
            " exists but with different size")
    struct_ma_device_job_thread
   else:
    struct_ma_device_job_thread_536871887)
  struct_ma_log_callback_536871522 = (when declared(struct_ma_log_callback):
    when ownSizeof(struct_ma_log_callback) != ownSizeof(struct_ma_log_callback_536871521):
      static :
        warning("Declaration of " & "struct_ma_log_callback" &
            " exists but with different size")
    struct_ma_log_callback
   else:
    struct_ma_log_callback_536871521)
  ma_peak2_536871620 = (when declared(ma_peak2):
    when ownSizeof(ma_peak2) != ownSizeof(ma_peak2_536871619):
      static :
        warning("Declaration of " & "ma_peak2" &
            " exists but with different size")
    ma_peak2
   else:
    ma_peak2_536871619)
  ma_sound_inlined_536872298 = (when declared(ma_sound_inlined):
    when ownSizeof(ma_sound_inlined) != ownSizeof(ma_sound_inlined_536872297):
      static :
        warning("Declaration of " & "ma_sound_inlined" &
            " exists but with different size")
    ma_sound_inlined
   else:
    ma_sound_inlined_536872297)
  struct_ma_vec3f_536871678 = (when declared(struct_ma_vec3f):
    when ownSizeof(struct_ma_vec3f) != ownSizeof(struct_ma_vec3f_536871677):
      static :
        warning("Declaration of " & "struct_ma_vec3f" &
            " exists but with different size")
    struct_ma_vec3f
   else:
    struct_ma_vec3f_536871677)
  ma_device_job_thread_config_536871886 = (when declared(
      ma_device_job_thread_config):
    when ownSizeof(ma_device_job_thread_config) !=
        ownSizeof(ma_device_job_thread_config_536871885):
      static :
        warning("Declaration of " & "ma_device_job_thread_config" &
            " exists but with different size")
    ma_device_job_thread_config
   else:
    ma_device_job_thread_config_536871885)
  ma_encoder_536872040 = (when declared(ma_encoder):
    when ownSizeof(ma_encoder) != ownSizeof(ma_encoder_536872039):
      static :
        warning("Declaration of " & "ma_encoder" &
            " exists but with different size")
    ma_encoder
   else:
    ma_encoder_536872039)
  ma_delay_node_config_536872262 = (when declared(ma_delay_node_config):
    when ownSizeof(ma_delay_node_config) != ownSizeof(ma_delay_node_config_536872261):
      static :
        warning("Declaration of " & "ma_delay_node_config" &
            " exists but with different size")
    ma_delay_node_config
   else:
    ma_delay_node_config_536872261)
  enum_ma_job_type_536871858 = (when declared(enum_ma_job_type):
    when ownSizeof(enum_ma_job_type) != ownSizeof(enum_ma_job_type_536871857):
      static :
        warning("Declaration of " & "enum_ma_job_type" &
            " exists but with different size")
    enum_ma_job_type
   else:
    enum_ma_job_type_536871857)
  enum_ma_aaudio_allowed_capture_policy_536871946 = (when declared(
      enum_ma_aaudio_allowed_capture_policy):
    when ownSizeof(enum_ma_aaudio_allowed_capture_policy) !=
        ownSizeof(enum_ma_aaudio_allowed_capture_policy_536871945):
      static :
        warning("Declaration of " & "enum_ma_aaudio_allowed_capture_policy" &
            " exists but with different size")
    enum_ma_aaudio_allowed_capture_policy
   else:
    enum_ma_aaudio_allowed_capture_policy_536871945)
  enum_ma_aaudio_usage_536871934 = (when declared(enum_ma_aaudio_usage):
    when ownSizeof(enum_ma_aaudio_usage) != ownSizeof(enum_ma_aaudio_usage_536871933):
      static :
        warning("Declaration of " & "enum_ma_aaudio_usage" &
            " exists but with different size")
    enum_ma_aaudio_usage
   else:
    enum_ma_aaudio_usage_536871933)
  ma_spatializer_listener_536871704 = (when declared(ma_spatializer_listener):
    when ownSizeof(ma_spatializer_listener) !=
        ownSizeof(ma_spatializer_listener_536871703):
      static :
        warning("Declaration of " & "ma_spatializer_listener" &
            " exists but with different size")
    ma_spatializer_listener
   else:
    ma_spatializer_listener_536871703)
  struct_ma_data_source_node_config_536872180 = (when declared(
      struct_ma_data_source_node_config):
    when ownSizeof(struct_ma_data_source_node_config) !=
        ownSizeof(struct_ma_data_source_node_config_536872179):
      static :
        warning("Declaration of " & "struct_ma_data_source_node_config" &
            " exists but with different size")
    struct_ma_data_source_node_config
   else:
    struct_ma_data_source_node_config_536872179)
  ma_bpf_node_config_536872222 = (when declared(ma_bpf_node_config):
    when ownSizeof(ma_bpf_node_config) != ownSizeof(ma_bpf_node_config_536872221):
      static :
        warning("Declaration of " & "ma_bpf_node_config" &
            " exists but with different size")
    ma_bpf_node_config
   else:
    ma_bpf_node_config_536872221)
  ma_device_notification_proc_536871900 = (when declared(
      ma_device_notification_proc):
    when ownSizeof(ma_device_notification_proc) !=
        ownSizeof(ma_device_notification_proc_536871899):
      static :
        warning("Declaration of " & "ma_device_notification_proc" &
            " exists but with different size")
    ma_device_notification_proc
   else:
    ma_device_notification_proc_536871899)
  ma_node_vtable_536872158 = (when declared(ma_node_vtable):
    when ownSizeof(ma_node_vtable) != ownSizeof(ma_node_vtable_536872157):
      static :
        warning("Declaration of " & "ma_node_vtable" &
            " exists but with different size")
    ma_node_vtable
   else:
    ma_node_vtable_536872157)
  ma_waveform_type_536872060 = (when declared(ma_waveform_type):
    when ownSizeof(ma_waveform_type) != ownSizeof(ma_waveform_type_536872059):
      static :
        warning("Declaration of " & "ma_waveform_type" &
            " exists but with different size")
    ma_waveform_type
   else:
    ma_waveform_type_536872059)
  ma_bpf_node_536872226 = (when declared(ma_bpf_node):
    when ownSizeof(ma_bpf_node) != ownSizeof(ma_bpf_node_536872225):
      static :
        warning("Declaration of " & "ma_bpf_node" &
            " exists but with different size")
    ma_bpf_node
   else:
    ma_bpf_node_536872225)
  ma_slot_allocator_config_536871844 = (when declared(ma_slot_allocator_config):
    when ownSizeof(ma_slot_allocator_config) !=
        ownSizeof(ma_slot_allocator_config_536871843):
      static :
        warning("Declaration of " & "ma_slot_allocator_config" &
            " exists but with different size")
    ma_slot_allocator_config
   else:
    ma_slot_allocator_config_536871843)
  struct_ma_loshelf2_config_536871622 = (when declared(struct_ma_loshelf2_config):
    when ownSizeof(struct_ma_loshelf2_config) !=
        ownSizeof(struct_ma_loshelf2_config_536871621):
      static :
        warning("Declaration of " & "struct_ma_loshelf2_config" &
            " exists but with different size")
    struct_ma_loshelf2_config
   else:
    struct_ma_loshelf2_config_536871621)
  struct_ma_lcg_536871478 = (when declared(struct_ma_lcg):
    when ownSizeof(struct_ma_lcg) != ownSizeof(struct_ma_lcg_536871477):
      static :
        warning("Declaration of " & "struct_ma_lcg" &
            " exists but with different size")
    struct_ma_lcg
   else:
    struct_ma_lcg_536871477)
  ma_atomic_float_536871496 = (when declared(ma_atomic_float):
    when ownSizeof(ma_atomic_float) != ownSizeof(ma_atomic_float_536871495):
      static :
        warning("Declaration of " & "ma_atomic_float" &
            " exists but with different size")
    ma_atomic_float
   else:
    ma_atomic_float_536871495)
  struct_ma_data_converter_536871764 = (when declared(struct_ma_data_converter):
    when ownSizeof(struct_ma_data_converter) !=
        ownSizeof(struct_ma_data_converter_536871763):
      static :
        warning("Declaration of " & "struct_ma_data_converter" &
            " exists but with different size")
    struct_ma_data_converter
   else:
    struct_ma_data_converter_536871763)
  struct_ma_biquad_node_config_536872196 = (when declared(
      struct_ma_biquad_node_config):
    when ownSizeof(struct_ma_biquad_node_config) !=
        ownSizeof(struct_ma_biquad_node_config_536872195):
      static :
        warning("Declaration of " & "struct_ma_biquad_node_config" &
            " exists but with different size")
    struct_ma_biquad_node_config
   else:
    struct_ma_biquad_node_config_536872195)
  struct_ma_delay_node_536872264 = (when declared(struct_ma_delay_node):
    when ownSizeof(struct_ma_delay_node) != ownSizeof(struct_ma_delay_node_536872263):
      static :
        warning("Declaration of " & "struct_ma_delay_node" &
            " exists but with different size")
    struct_ma_delay_node
   else:
    struct_ma_delay_node_536872263)
  struct_ma_device_descriptor_536871976 = (when declared(
      struct_ma_device_descriptor):
    when ownSizeof(struct_ma_device_descriptor) !=
        ownSizeof(struct_ma_device_descriptor_536871975):
      static :
        warning("Declaration of " & "struct_ma_device_descriptor" &
            " exists but with different size")
    struct_ma_device_descriptor
   else:
    struct_ma_device_descriptor_536871975)
  ma_hpf_536871584 = (when declared(ma_hpf):
    when ownSizeof(ma_hpf) != ownSizeof(ma_hpf_536871583):
      static :
        warning("Declaration of " & "ma_hpf" & " exists but with different size")
    ma_hpf
   else:
    ma_hpf_536871583)
  ma_noise_type_536872080 = (when declared(ma_noise_type):
    when ownSizeof(ma_noise_type) != ownSizeof(ma_noise_type_536872079):
      static :
        warning("Declaration of " & "ma_noise_type" &
            " exists but with different size")
    ma_noise_type
   else:
    ma_noise_type_536872079)
  ma_stream_format_536871437 = (when declared(ma_stream_format):
    when ownSizeof(ma_stream_format) != ownSizeof(ma_stream_format_536871436):
      static :
        warning("Declaration of " & "ma_stream_format" &
            " exists but with different size")
    ma_stream_format
   else:
    ma_stream_format_536871436)
  ma_hishelf_config_536871636 = (when declared(ma_hishelf_config):
    when ownSizeof(ma_hishelf_config) != ownSizeof(ma_hishelf_config_536871635):
      static :
        warning("Declaration of " & "ma_hishelf_config" &
            " exists but with different size")
    ma_hishelf_config
   else:
    ma_hishelf_config_536871635)
  enum_ma_mono_expansion_mode_536871744 = (when declared(
      enum_ma_mono_expansion_mode):
    when ownSizeof(enum_ma_mono_expansion_mode) !=
        ownSizeof(enum_ma_mono_expansion_mode_536871743):
      static :
        warning("Declaration of " & "enum_ma_mono_expansion_mode" &
            " exists but with different size")
    enum_ma_mono_expansion_mode
   else:
    enum_ma_mono_expansion_mode_536871743)
  ma_sound_group_536872304 = (when declared(ma_sound_group):
    when ownSizeof(ma_sound_group) != ownSizeof(ma_sound_group_536872303):
      static :
        warning("Declaration of " & "ma_sound_group" &
            " exists but with different size")
    ma_sound_group
   else:
    ma_sound_group_536872303)
  ma_paged_audio_buffer_page_536871796 = (when declared(
      ma_paged_audio_buffer_page):
    when ownSizeof(ma_paged_audio_buffer_page) !=
        ownSizeof(ma_paged_audio_buffer_page_536871795):
      static :
        warning("Declaration of " & "ma_paged_audio_buffer_page" &
            " exists but with different size")
    ma_paged_audio_buffer_page
   else:
    ma_paged_audio_buffer_page_536871795)
  wchar_t_536871862 = (when declared(wchar_t):
    when ownSizeof(wchar_t) != ownSizeof(wchar_t_536871861):
      static :
        warning("Declaration of " & "wchar_t" &
            " exists but with different size")
    wchar_t
   else:
    wchar_t_536871861)
  struct_ma_slot_allocator_group_536871846 = (when declared(
      struct_ma_slot_allocator_group):
    when ownSizeof(struct_ma_slot_allocator_group) !=
        ownSizeof(struct_ma_slot_allocator_group_536871845):
      static :
        warning("Declaration of " & "struct_ma_slot_allocator_group" &
            " exists but with different size")
    struct_ma_slot_allocator_group
   else:
    struct_ma_slot_allocator_group_536871845)
  ma_seek_origin_536871994 = (when declared(ma_seek_origin):
    when ownSizeof(ma_seek_origin) != ownSizeof(ma_seek_origin_536871993):
      static :
        warning("Declaration of " & "ma_seek_origin" &
            " exists but with different size")
    ma_seek_origin
   else:
    ma_seek_origin_536871993)
  ma_biquad_node_config_536872198 = (when declared(ma_biquad_node_config):
    when ownSizeof(ma_biquad_node_config) != ownSizeof(ma_biquad_node_config_536872197):
      static :
        warning("Declaration of " & "ma_biquad_node_config" &
            " exists but with different size")
    ma_biquad_node_config
   else:
    ma_biquad_node_config_536872197)
  struct_pthread_mutex_s_536872316 = (when declared(struct_pthread_mutex_s):
    when ownSizeof(struct_pthread_mutex_s) != ownSizeof(struct_pthread_mutex_s_536872315):
      static :
        warning("Declaration of " & "struct_pthread_mutex_s" &
            " exists but with different size")
    struct_pthread_mutex_s
   else:
    struct_pthread_mutex_s_536872315)
  ma_node_base_536872172 = (when declared(ma_node_base):
    when ownSizeof(ma_node_base) != ownSizeof(ma_node_base_536872171):
      static :
        warning("Declaration of " & "ma_node_base" &
            " exists but with different size")
    ma_node_base
   else:
    ma_node_base_536872171)
  ma_attenuation_model_536871688 = (when declared(ma_attenuation_model):
    when ownSizeof(ma_attenuation_model) != ownSizeof(ma_attenuation_model_536871687):
      static :
        warning("Declaration of " & "ma_attenuation_model" &
            " exists but with different size")
    ma_attenuation_model
   else:
    ma_attenuation_model_536871687)
  ma_ios_session_category_option_536871920 = (when declared(
      ma_ios_session_category_option):
    when ownSizeof(ma_ios_session_category_option) !=
        ownSizeof(ma_ios_session_category_option_536871919):
      static :
        warning("Declaration of " & "ma_ios_session_category_option" &
            " exists but with different size")
    ma_ios_session_category_option
   else:
    ma_ios_session_category_option_536871919)
  ma_engine_config_536872310 = (when declared(ma_engine_config):
    when ownSizeof(ma_engine_config) != ownSizeof(ma_engine_config_536872309):
      static :
        warning("Declaration of " & "ma_engine_config" &
            " exists but with different size")
    ma_engine_config
   else:
    ma_engine_config_536872309)
  ma_hpf2_536871576 = (when declared(ma_hpf2):
    when ownSizeof(ma_hpf2) != ownSizeof(ma_hpf2_536871575):
      static :
        warning("Declaration of " & "ma_hpf2" &
            " exists but with different size")
    ma_hpf2
   else:
    ma_hpf2_536871575)
  struct_ma_engine_536872270 = (when declared(struct_ma_engine):
    when ownSizeof(struct_ma_engine) != ownSizeof(struct_ma_engine_536872269):
      static :
        warning("Declaration of " & "struct_ma_engine" &
            " exists but with different size")
    struct_ma_engine
   else:
    struct_ma_engine_536872269)
  ma_resample_algorithm_536871734 = (when declared(ma_resample_algorithm):
    when ownSizeof(ma_resample_algorithm) != ownSizeof(ma_resample_algorithm_536871733):
      static :
        warning("Declaration of " & "ma_resample_algorithm" &
            " exists but with different size")
    ma_resample_algorithm
   else:
    ma_resample_algorithm_536871733)
  ma_noise_536872088 = (when declared(ma_noise):
    when ownSizeof(ma_noise) != ownSizeof(ma_noise_536872087):
      static :
        warning("Declaration of " & "ma_noise" &
            " exists but with different size")
    ma_noise
   else:
    ma_noise_536872087)
  ma_uint8_536871369 = (when declared(ma_uint8):
    when ownSizeof(ma_uint8) != ownSizeof(ma_uint8_536871368):
      static :
        warning("Declaration of " & "ma_uint8" &
            " exists but with different size")
    ma_uint8
   else:
    ma_uint8_536871368)
  struct_ma_log_536871526 = (when declared(struct_ma_log):
    when ownSizeof(struct_ma_log) != ownSizeof(struct_ma_log_536871525):
      static :
        warning("Declaration of " & "struct_ma_log" &
            " exists but with different size")
    struct_ma_log
   else:
    struct_ma_log_536871525)
  ma_audio_buffer_536871794 = (when declared(ma_audio_buffer):
    when ownSizeof(ma_audio_buffer) != ownSizeof(ma_audio_buffer_536871793):
      static :
        warning("Declaration of " & "ma_audio_buffer" &
            " exists but with different size")
    ma_audio_buffer
   else:
    ma_audio_buffer_536871793)
  struct_ma_noise_config_536872082 = (when declared(struct_ma_noise_config):
    when ownSizeof(struct_ma_noise_config) != ownSizeof(struct_ma_noise_config_536872081):
      static :
        warning("Declaration of " & "struct_ma_noise_config" &
            " exists but with different size")
    struct_ma_noise_config
   else:
    struct_ma_noise_config_536872081)
  enum_ma_standard_sample_rate_536871458 = (when declared(
      enum_ma_standard_sample_rate):
    when ownSizeof(enum_ma_standard_sample_rate) !=
        ownSizeof(enum_ma_standard_sample_rate_536871457):
      static :
        warning("Declaration of " & "enum_ma_standard_sample_rate" &
            " exists but with different size")
    enum_ma_standard_sample_rate
   else:
    enum_ma_standard_sample_rate_536871457)
  struct_ma_atomic_float_536871494 = (when declared(struct_ma_atomic_float):
    when ownSizeof(struct_ma_atomic_float) != ownSizeof(struct_ma_atomic_float_536871493):
      static :
        warning("Declaration of " & "struct_ma_atomic_float" &
            " exists but with different size")
    struct_ma_atomic_float
   else:
    struct_ma_atomic_float_536871493)
  ma_wchar_win32_536871411 = (when declared(ma_wchar_win32):
    when ownSizeof(ma_wchar_win32) != ownSizeof(ma_wchar_win32_536871410):
      static :
        warning("Declaration of " & "ma_wchar_win32" &
            " exists but with different size")
    ma_wchar_win32
   else:
    ma_wchar_win32_536871410)
  struct_ma_loshelf_node_536872248 = (when declared(struct_ma_loshelf_node):
    when ownSizeof(struct_ma_loshelf_node) != ownSizeof(struct_ma_loshelf_node_536872247):
      static :
        warning("Declaration of " & "struct_ma_loshelf_node" &
            " exists but with different size")
    struct_ma_loshelf_node
   else:
    struct_ma_loshelf_node_536872247)
  enum_ma_device_type_536871906 = (when declared(enum_ma_device_type):
    when ownSizeof(enum_ma_device_type) != ownSizeof(enum_ma_device_type_536871905):
      static :
        warning("Declaration of " & "enum_ma_device_type" &
            " exists but with different size")
    enum_ma_device_type
   else:
    enum_ma_device_type_536871905)
  struct_ma_sound_config_536872294 = (when declared(struct_ma_sound_config):
    when ownSizeof(struct_ma_sound_config) != ownSizeof(struct_ma_sound_config_536872293):
      static :
        warning("Declaration of " & "struct_ma_sound_config" &
            " exists but with different size")
    struct_ma_sound_config
   else:
    struct_ma_sound_config_536872293)
  ma_atomic_vec3f_536871684 = (when declared(ma_atomic_vec3f):
    when ownSizeof(ma_atomic_vec3f) != ownSizeof(ma_atomic_vec3f_536871683):
      static :
        warning("Declaration of " & "ma_atomic_vec3f" &
            " exists but with different size")
    ma_atomic_vec3f
   else:
    ma_atomic_vec3f_536871683)
  struct_ma_hishelf2_config_536871632 = (when declared(struct_ma_hishelf2_config):
    when ownSizeof(struct_ma_hishelf2_config) !=
        ownSizeof(struct_ma_hishelf2_config_536871631):
      static :
        warning("Declaration of " & "struct_ma_hishelf2_config" &
            " exists but with different size")
    struct_ma_hishelf2_config
   else:
    struct_ma_hishelf2_config_536871631)
  struct_ma_fader_config_536871670 = (when declared(struct_ma_fader_config):
    when ownSizeof(struct_ma_fader_config) != ownSizeof(struct_ma_fader_config_536871669):
      static :
        warning("Declaration of " & "struct_ma_fader_config" &
            " exists but with different size")
    struct_ma_fader_config
   else:
    struct_ma_fader_config_536871669)
  ma_standard_channel_map_536871468 = (when declared(ma_standard_channel_map):
    when ownSizeof(ma_standard_channel_map) !=
        ownSizeof(ma_standard_channel_map_536871467):
      static :
        warning("Declaration of " & "ma_standard_channel_map" &
            " exists but with different size")
    ma_standard_channel_map
   else:
    ma_standard_channel_map_536871467)
  struct_ma_node_config_536872160 = (when declared(struct_ma_node_config):
    when ownSizeof(struct_ma_node_config) != ownSizeof(struct_ma_node_config_536872159):
      static :
        warning("Declaration of " & "struct_ma_node_config" &
            " exists but with different size")
    struct_ma_node_config
   else:
    struct_ma_node_config_536872159)
  ma_vec3f_536871680 = (when declared(ma_vec3f):
    when ownSizeof(ma_vec3f) != ownSizeof(ma_vec3f_536871679):
      static :
        warning("Declaration of " & "ma_vec3f" &
            " exists but with different size")
    ma_vec3f
   else:
    ma_vec3f_536871679)
  struct_ma_resource_manager_data_supply_536872134 = (when declared(
      struct_ma_resource_manager_data_supply):
    when ownSizeof(struct_ma_resource_manager_data_supply) !=
        ownSizeof(struct_ma_resource_manager_data_supply_536872133):
      static :
        warning("Declaration of " & "struct_ma_resource_manager_data_supply" &
            " exists but with different size")
    struct_ma_resource_manager_data_supply
   else:
    struct_ma_resource_manager_data_supply_536872133)
  ma_event_536871514 = (when declared(ma_event):
    when ownSizeof(ma_event) != ownSizeof(ma_event_536871513):
      static :
        warning("Declaration of " & "ma_event" &
            " exists but with different size")
    ma_event
   else:
    ma_event_536871513)
  ma_bpf_config_536871596 = (when declared(ma_bpf_config):
    when ownSizeof(ma_bpf_config) != ownSizeof(ma_bpf_config_536871595):
      static :
        warning("Declaration of " & "ma_bpf_config" &
            " exists but with different size")
    ma_bpf_config
   else:
    ma_bpf_config_536871595)
  enum_ma_pan_mode_536871658 = (when declared(enum_ma_pan_mode):
    when ownSizeof(enum_ma_pan_mode) != ownSizeof(enum_ma_pan_mode_536871657):
      static :
        warning("Declaration of " & "enum_ma_pan_mode" &
            " exists but with different size")
    enum_ma_pan_mode
   else:
    enum_ma_pan_mode_536871657)
  ma_waveform_536872068 = (when declared(ma_waveform):
    when ownSizeof(ma_waveform) != ownSizeof(ma_waveform_536872067):
      static :
        warning("Declaration of " & "ma_waveform" &
            " exists but with different size")
    ma_waveform
   else:
    ma_waveform_536872067)
  ma_open_mode_flags_536871990 = (when declared(ma_open_mode_flags):
    when ownSizeof(ma_open_mode_flags) != ownSizeof(ma_open_mode_flags_536871989):
      static :
        warning("Declaration of " & "ma_open_mode_flags" &
            " exists but with different size")
    ma_open_mode_flags
   else:
    ma_open_mode_flags_536871989)
  struct_ma_lpf_config_536871556 = (when declared(struct_ma_lpf_config):
    when ownSizeof(struct_ma_lpf_config) != ownSizeof(struct_ma_lpf_config_536871555):
      static :
        warning("Declaration of " & "struct_ma_lpf_config" &
            " exists but with different size")
    struct_ma_lpf_config
   else:
    struct_ma_lpf_config_536871555)
  struct_ma_bpf2_536871590 = (when declared(struct_ma_bpf2):
    when ownSizeof(struct_ma_bpf2) != ownSizeof(struct_ma_bpf2_536871589):
      static :
        warning("Declaration of " & "struct_ma_bpf2" &
            " exists but with different size")
    struct_ma_bpf2
   else:
    struct_ma_bpf2_536871589)
  ma_engine_process_proc_536872306 = (when declared(ma_engine_process_proc):
    when ownSizeof(ma_engine_process_proc) != ownSizeof(ma_engine_process_proc_536872305):
      static :
        warning("Declaration of " & "ma_engine_process_proc" &
            " exists but with different size")
    ma_engine_process_proc
   else:
    ma_engine_process_proc_536872305)
  struct_ma_biquad_config_536871534 = (when declared(struct_ma_biquad_config):
    when ownSizeof(struct_ma_biquad_config) !=
        ownSizeof(struct_ma_biquad_config_536871533):
      static :
        warning("Declaration of " & "struct_ma_biquad_config" &
            " exists but with different size")
    struct_ma_biquad_config
   else:
    struct_ma_biquad_config_536871533)
  struct_ma_file_info_536871996 = (when declared(struct_ma_file_info):
    when ownSizeof(struct_ma_file_info) != ownSizeof(struct_ma_file_info_536871995):
      static :
        warning("Declaration of " & "struct_ma_file_info" &
            " exists but with different size")
    struct_ma_file_info
   else:
    struct_ma_file_info_536871995)
  ma_data_converter_config_536871758 = (when declared(ma_data_converter_config):
    when ownSizeof(ma_data_converter_config) !=
        ownSizeof(ma_data_converter_config_536871757):
      static :
        warning("Declaration of " & "ma_data_converter_config" &
            " exists but with different size")
    ma_data_converter_config
   else:
    ma_data_converter_config_536871757)
  struct_ma_bpf_config_536871594 = (when declared(struct_ma_bpf_config):
    when ownSizeof(struct_ma_bpf_config) != ownSizeof(struct_ma_bpf_config_536871593):
      static :
        warning("Declaration of " & "struct_ma_bpf_config" &
            " exists but with different size")
    struct_ma_bpf_config
   else:
    struct_ma_bpf_config_536871593)
  union_ma_timer_536871950 = (when declared(union_ma_timer):
    when ownSizeof(union_ma_timer) != ownSizeof(union_ma_timer_536871949):
      static :
        warning("Declaration of " & "union_ma_timer" &
            " exists but with different size")
    union_ma_timer
   else:
    union_ma_timer_536871949)
  ma_linear_resampler_536871720 = (when declared(ma_linear_resampler):
    when ownSizeof(ma_linear_resampler) != ownSizeof(ma_linear_resampler_536871719):
      static :
        warning("Declaration of " & "ma_linear_resampler" &
            " exists but with different size")
    ma_linear_resampler
   else:
    ma_linear_resampler_536871719)
  struct_ma_spatializer_listener_536871702 = (when declared(
      struct_ma_spatializer_listener):
    when ownSizeof(struct_ma_spatializer_listener) !=
        ownSizeof(struct_ma_spatializer_listener_536871701):
      static :
        warning("Declaration of " & "struct_ma_spatializer_listener" &
            " exists but with different size")
    struct_ma_spatializer_listener
   else:
    struct_ma_spatializer_listener_536871701)
  enum_ma_opensl_recording_preset_536871926 = (when declared(
      enum_ma_opensl_recording_preset):
    when ownSizeof(enum_ma_opensl_recording_preset) !=
        ownSizeof(enum_ma_opensl_recording_preset_536871925):
      static :
        warning("Declaration of " & "enum_ma_opensl_recording_preset" &
            " exists but with different size")
    enum_ma_opensl_recording_preset
   else:
    enum_ma_opensl_recording_preset_536871925)
  union_pthread_cond_t_536872314 = (when declared(union_pthread_cond_t):
    when ownSizeof(union_pthread_cond_t) != ownSizeof(union_pthread_cond_t_536872313):
      static :
        warning("Declaration of " & "union_pthread_cond_t" &
            " exists but with different size")
    union_pthread_cond_t
   else:
    union_pthread_cond_t_536872313)
  enum_ma_attenuation_model_536871686 = (when declared(enum_ma_attenuation_model):
    when ownSizeof(enum_ma_attenuation_model) !=
        ownSizeof(enum_ma_attenuation_model_536871685):
      static :
        warning("Declaration of " & "enum_ma_attenuation_model" &
            " exists but with different size")
    enum_ma_attenuation_model
   else:
    enum_ma_attenuation_model_536871685)
  struct_ma_slot_allocator_536871850 = (when declared(struct_ma_slot_allocator):
    when ownSizeof(struct_ma_slot_allocator) !=
        ownSizeof(struct_ma_slot_allocator_536871849):
      static :
        warning("Declaration of " & "struct_ma_slot_allocator" &
            " exists but with different size")
    struct_ma_slot_allocator
   else:
    struct_ma_slot_allocator_536871849)
  ma_spinlock_536871502 = (when declared(ma_spinlock):
    when ownSizeof(ma_spinlock) != ownSizeof(ma_spinlock_536871501):
      static :
        warning("Declaration of " & "ma_spinlock" &
            " exists but with different size")
    ma_spinlock
   else:
    ma_spinlock_536871501)
  ma_notch2_config_536871604 = (when declared(ma_notch2_config):
    when ownSizeof(ma_notch2_config) != ownSizeof(ma_notch2_config_536871603):
      static :
        warning("Declaration of " & "ma_notch2_config" &
            " exists but with different size")
    ma_notch2_config
   else:
    ma_notch2_config_536871603)
  ma_decoding_backend_config_536872024 = (when declared(
      ma_decoding_backend_config):
    when ownSizeof(ma_decoding_backend_config) !=
        ownSizeof(ma_decoding_backend_config_536872023):
      static :
        warning("Declaration of " & "ma_decoding_backend_config" &
            " exists but with different size")
    ma_decoding_backend_config
   else:
    ma_decoding_backend_config_536872023)
  ma_device_notification_type_536871894 = (when declared(
      ma_device_notification_type):
    when ownSizeof(ma_device_notification_type) !=
        ownSizeof(ma_device_notification_type_536871893):
      static :
        warning("Declaration of " & "ma_device_notification_type" &
            " exists but with different size")
    ma_device_notification_type
   else:
    ma_device_notification_type_536871893)
  ma_aaudio_allowed_capture_policy_536871948 = (when declared(
      ma_aaudio_allowed_capture_policy):
    when ownSizeof(ma_aaudio_allowed_capture_policy) !=
        ownSizeof(ma_aaudio_allowed_capture_policy_536871947):
      static :
        warning("Declaration of " & "ma_aaudio_allowed_capture_policy" &
            " exists but with different size")
    ma_aaudio_allowed_capture_policy
   else:
    ma_aaudio_allowed_capture_policy_536871947)
  struct_ma_hishelf_node_config_536872252 = (when declared(
      struct_ma_hishelf_node_config):
    when ownSizeof(struct_ma_hishelf_node_config) !=
        ownSizeof(struct_ma_hishelf_node_config_536872251):
      static :
        warning("Declaration of " & "struct_ma_hishelf_node_config" &
            " exists but with different size")
    struct_ma_hishelf_node_config
   else:
    struct_ma_hishelf_node_config_536872251)
when not declared(ma_pulsewave):
  type
    ma_pulsewave* = ma_pulsewave_536872075
else:
  static :
    hint("Declaration of " & "ma_pulsewave" & " already exists, not redeclaring")
when not declared(ma_waveform_config):
  type
    ma_waveform_config* = ma_waveform_config_536872063
else:
  static :
    hint("Declaration of " & "ma_waveform_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_resource_manager_data_supply_type):
  type
    enum_ma_resource_manager_data_supply_type* = enum_ma_resource_manager_data_supply_type_536872129
else:
  static :
    hint("Declaration of " & "enum_ma_resource_manager_data_supply_type" &
        " already exists, not redeclaring")
when not declared(struct_ma_data_converter_config):
  type
    struct_ma_data_converter_config* = struct_ma_data_converter_config_536871755
else:
  static :
    hint("Declaration of " & "struct_ma_data_converter_config" &
        " already exists, not redeclaring")
when not declared(ma_bpf2):
  type
    ma_bpf2* = ma_bpf2_536871591
else:
  static :
    hint("Declaration of " & "ma_bpf2" & " already exists, not redeclaring")
when not declared(union_ma_device_id):
  type
    union_ma_device_id* = union_ma_device_id_536871953
else:
  static :
    hint("Declaration of " & "union_ma_device_id" &
        " already exists, not redeclaring")
when not declared(ma_device_descriptor):
  type
    ma_device_descriptor* = ma_device_descriptor_536871977
else:
  static :
    hint("Declaration of " & "ma_device_descriptor" &
        " already exists, not redeclaring")
when not declared(struct_ma_event):
  type
    struct_ma_event* = struct_ma_event_536871511
else:
  static :
    hint("Declaration of " & "struct_ma_event" &
        " already exists, not redeclaring")
when not declared(struct_pthread_cond_s):
  type
    struct_pthread_cond_s* = struct_pthread_cond_s_536872317
else:
  static :
    hint("Declaration of " & "struct_pthread_cond_s" &
        " already exists, not redeclaring")
when not declared(ma_read_proc):
  type
    ma_read_proc* = ma_read_proc_536872007
else:
  static :
    hint("Declaration of " & "ma_read_proc" & " already exists, not redeclaring")
when not declared(ma_ptr):
  type
    ma_ptr* = ma_ptr_536871394
else:
  static :
    hint("Declaration of " & "ma_ptr" & " already exists, not redeclaring")
when not declared(struct_ma_lpf1_config):
  type
    struct_ma_lpf1_config* = struct_ma_lpf1_config_536871541
else:
  static :
    hint("Declaration of " & "struct_ma_lpf1_config" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter):
  type
    ma_channel_converter* = ma_channel_converter_536871753
else:
  static :
    hint("Declaration of " & "ma_channel_converter" &
        " already exists, not redeclaring")
when not declared(ma_log):
  type
    ma_log* = ma_log_536871527
else:
  static :
    hint("Declaration of " & "ma_log" & " already exists, not redeclaring")
when not declared(ma_fader):
  type
    ma_fader* = ma_fader_536871675
else:
  static :
    hint("Declaration of " & "ma_fader" & " already exists, not redeclaring")
when not declared(struct_ma_lpf):
  type
    struct_ma_lpf* = struct_ma_lpf_536871559
else:
  static :
    hint("Declaration of " & "struct_ma_lpf" &
        " already exists, not redeclaring")
when not declared(struct_ma_lpf_node_config):
  type
    struct_ma_lpf_node_config* = struct_ma_lpf_node_config_536872203
else:
  static :
    hint("Declaration of " & "struct_ma_lpf_node_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_panner_config):
  type
    struct_ma_panner_config* = struct_ma_panner_config_536871661
else:
  static :
    hint("Declaration of " & "struct_ma_panner_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_sound_inlined):
  type
    struct_ma_sound_inlined* = struct_ma_sound_inlined_536872299
else:
  static :
    hint("Declaration of " & "struct_ma_sound_inlined" &
        " already exists, not redeclaring")
when not declared(ma_job):
  type
    ma_job* = ma_job_536871360
else:
  static :
    hint("Declaration of " & "ma_job" & " already exists, not redeclaring")
when not declared(ma_slot_allocator):
  type
    ma_slot_allocator* = ma_slot_allocator_536871851
else:
  static :
    hint("Declaration of " & "ma_slot_allocator" &
        " already exists, not redeclaring")
when not declared(struct_ma_gainer):
  type
    struct_ma_gainer* = struct_ma_gainer_536871653
else:
  static :
    hint("Declaration of " & "struct_ma_gainer" &
        " already exists, not redeclaring")
when not declared(ma_proc):
  type
    ma_proc* = ma_proc_536871396
else:
  static :
    hint("Declaration of " & "ma_proc" & " already exists, not redeclaring")
when not declared(ma_node_graph_config):
  type
    ma_node_graph_config* = ma_node_graph_config_536872177
else:
  static :
    hint("Declaration of " & "ma_node_graph_config" &
        " already exists, not redeclaring")
when not declared(ma_biquad_node):
  type
    ma_biquad_node* = ma_biquad_node_536872201
else:
  static :
    hint("Declaration of " & "ma_biquad_node" &
        " already exists, not redeclaring")
when not declared(enum_ma_seek_origin):
  type
    enum_ma_seek_origin* = enum_ma_seek_origin_536871991
else:
  static :
    hint("Declaration of " & "enum_ma_seek_origin" &
        " already exists, not redeclaring")
when not declared(enum_ma_noise_type):
  type
    enum_ma_noise_type* = enum_ma_noise_type_536872077
else:
  static :
    hint("Declaration of " & "enum_ma_noise_type" &
        " already exists, not redeclaring")
when not declared(struct_ma_engine_node_config):
  type
    struct_ma_engine_node_config* = struct_ma_engine_node_config_536872283
else:
  static :
    hint("Declaration of " & "struct_ma_engine_node_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_standard_channel_map):
  type
    enum_ma_standard_channel_map* = enum_ma_standard_channel_map_536871465
else:
  static :
    hint("Declaration of " & "enum_ma_standard_channel_map" &
        " already exists, not redeclaring")
when not declared(struct_ma_hpf1):
  type
    struct_ma_hpf1* = struct_ma_hpf1_536871569
else:
  static :
    hint("Declaration of " & "struct_ma_hpf1" &
        " already exists, not redeclaring")
when not declared(struct_ma_data_source_config):
  type
    struct_ma_data_source_config* = struct_ma_data_source_config_536871775
else:
  static :
    hint("Declaration of " & "struct_ma_data_source_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_channel_mix_mode):
  type
    enum_ma_channel_mix_mode* = enum_ma_channel_mix_mode_536871461
else:
  static :
    hint("Declaration of " & "enum_ma_channel_mix_mode" &
        " already exists, not redeclaring")
when not declared(struct_ma_delay_config):
  type
    struct_ma_delay_config* = struct_ma_delay_config_536871641
else:
  static :
    hint("Declaration of " & "struct_ma_delay_config" &
        " already exists, not redeclaring")
when not declared(ma_panner_config):
  type
    ma_panner_config* = ma_panner_config_536871663
else:
  static :
    hint("Declaration of " & "ma_panner_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_positioning):
  type
    enum_ma_positioning* = enum_ma_positioning_536871689
else:
  static :
    hint("Declaration of " & "enum_ma_positioning" &
        " already exists, not redeclaring")
when not declared(struct_ma_audio_buffer_config):
  type
    struct_ma_audio_buffer_config* = struct_ma_audio_buffer_config_536871787
else:
  static :
    hint("Declaration of " & "struct_ma_audio_buffer_config" &
        " already exists, not redeclaring")
when not declared(ma_atomic_device_state):
  type
    ma_atomic_device_state* = ma_atomic_device_state_536871877
else:
  static :
    hint("Declaration of " & "ma_atomic_device_state" &
        " already exists, not redeclaring")
when not declared(ma_device_info):
  type
    ma_device_info* = ma_device_info_536871971
else:
  static :
    hint("Declaration of " & "ma_device_info" &
        " already exists, not redeclaring")
when not declared(ma_encoder_uninit_proc):
  type
    ma_encoder_uninit_proc* = ma_encoder_uninit_proc_536872049
else:
  static :
    hint("Declaration of " & "ma_encoder_uninit_proc" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_config):
  type
    ma_hpf2_config* = ma_hpf2_config_536871567
else:
  static :
    hint("Declaration of " & "ma_hpf2_config" &
        " already exists, not redeclaring")
when not declared(ma_job_proc):
  type
    ma_job_proc* = ma_job_proc_536871855
else:
  static :
    hint("Declaration of " & "ma_job_proc" & " already exists, not redeclaring")
when not declared(ma_uint64):
  type
    ma_uint64* = ma_uint64_536871380
else:
  static :
    hint("Declaration of " & "ma_uint64" & " already exists, not redeclaring")
when not declared(struct_ma_fader):
  type
    struct_ma_fader* = struct_ma_fader_536871673
else:
  static :
    hint("Declaration of " & "struct_ma_fader" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_config):
  type
    ma_audio_buffer_config* = ma_audio_buffer_config_536871789
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_hpf_node):
  type
    struct_ma_hpf_node* = struct_ma_hpf_node_536872215
else:
  static :
    hint("Declaration of " & "struct_ma_hpf_node" &
        " already exists, not redeclaring")
when not declared(ma_int16):
  type
    ma_int16* = ma_int16_536871370
else:
  static :
    hint("Declaration of " & "ma_int16" & " already exists, not redeclaring")
when not declared(ma_channel_converter_config):
  type
    ma_channel_converter_config* = ma_channel_converter_config_536871749
else:
  static :
    hint("Declaration of " & "ma_channel_converter_config" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref):
  type
    ma_audio_buffer_ref* = ma_audio_buffer_ref_536871785
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref" &
        " already exists, not redeclaring")
when not declared(struct_ma_fence):
  type
    struct_ma_fence* = struct_ma_fence_536871823
else:
  static :
    hint("Declaration of " & "struct_ma_fence" &
        " already exists, not redeclaring")
when not declared(struct_ma_hpf_config):
  type
    struct_ma_hpf_config* = struct_ma_hpf_config_536871577
else:
  static :
    hint("Declaration of " & "struct_ma_hpf_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_default_vfs):
  type
    struct_ma_default_vfs* = struct_ma_default_vfs_536872003
else:
  static :
    hint("Declaration of " & "struct_ma_default_vfs" &
        " already exists, not redeclaring")
when not declared(ma_stream_layout):
  type
    ma_stream_layout* = ma_stream_layout_536871440
else:
  static :
    hint("Declaration of " & "ma_stream_layout" &
        " already exists, not redeclaring")
when not declared(ma_decoder_read_proc):
  type
    ma_decoder_read_proc* = ma_decoder_read_proc_536872029
else:
  static :
    hint("Declaration of " & "ma_decoder_read_proc" &
        " already exists, not redeclaring")
when not declared(struct_ma_atomic_vec3f):
  type
    struct_ma_atomic_vec3f* = struct_ma_atomic_vec3f_536871681
else:
  static :
    hint("Declaration of " & "struct_ma_atomic_vec3f" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2):
  type
    ma_loshelf2* = ma_loshelf2_536871629
else:
  static :
    hint("Declaration of " & "ma_loshelf2" & " already exists, not redeclaring")
when not declared(struct_ma_slot_allocator_config):
  type
    struct_ma_slot_allocator_config* = struct_ma_slot_allocator_config_536871841
else:
  static :
    hint("Declaration of " & "struct_ma_slot_allocator_config" &
        " already exists, not redeclaring")
when not declared(ma_decoder_config):
  type
    ma_decoder_config* = ma_decoder_config_536872037
else:
  static :
    hint("Declaration of " & "ma_decoder_config" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_flags):
  type
    ma_resource_manager_flags* = ma_resource_manager_flags_536872123
else:
  static :
    hint("Declaration of " & "ma_resource_manager_flags" &
        " already exists, not redeclaring")
when not declared(ma_lpf_config):
  type
    ma_lpf_config* = ma_lpf_config_536871557
else:
  static :
    hint("Declaration of " & "ma_lpf_config" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_config):
  type
    ma_resource_manager_config* = ma_resource_manager_config_536872139
else:
  static :
    hint("Declaration of " & "ma_resource_manager_config" &
        " already exists, not redeclaring")
when not declared(ma_node_flags):
  type
    ma_node_flags* = ma_node_flags_536872149
else:
  static :
    hint("Declaration of " & "ma_node_flags" &
        " already exists, not redeclaring")
when not declared(ma_semaphore):
  type
    ma_semaphore* = ma_semaphore_536871517
else:
  static :
    hint("Declaration of " & "ma_semaphore" & " already exists, not redeclaring")
when not declared(struct_ma_context_command_wasapi):
  type
    struct_ma_context_command_wasapi* = struct_ma_context_command_wasapi_536871979
else:
  static :
    hint("Declaration of " & "struct_ma_context_command_wasapi" &
        " already exists, not redeclaring")
when not declared(ma_loshelf_node_config):
  type
    ma_loshelf_node_config* = ma_loshelf_node_config_536872245
else:
  static :
    hint("Declaration of " & "ma_loshelf_node_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_resource_manager):
  type
    struct_ma_resource_manager* = struct_ma_resource_manager_536872091
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_node):
  type
    ma_resource_manager_data_buffer_node* = ma_resource_manager_data_buffer_node_536872093
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_node" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_pipeline_notifications):
  type
    ma_resource_manager_pipeline_notifications* = ma_resource_manager_pipeline_notifications_536872119
else:
  static :
    hint("Declaration of " & "ma_resource_manager_pipeline_notifications" &
        " already exists, not redeclaring")
when not declared(ma_pthread_mutex_t):
  type
    ma_pthread_mutex_t* = ma_pthread_mutex_t_536871402
else:
  static :
    hint("Declaration of " & "ma_pthread_mutex_t" &
        " already exists, not redeclaring")
when not declared(ma_atomic_uint32):
  type
    ma_atomic_uint32* = ma_atomic_uint32_536871483
else:
  static :
    hint("Declaration of " & "ma_atomic_uint32" &
        " already exists, not redeclaring")
when not declared(struct_ma_node_vtable):
  type
    struct_ma_node_vtable* = struct_ma_node_vtable_536872155
else:
  static :
    hint("Declaration of " & "struct_ma_node_vtable" &
        " already exists, not redeclaring")
when not declared(struct_ma_engine_node):
  type
    struct_ma_engine_node* = struct_ma_engine_node_536872287
else:
  static :
    hint("Declaration of " & "struct_ma_engine_node" &
        " already exists, not redeclaring")
when not declared(ma_backend_callbacks):
  type
    ma_backend_callbacks* = ma_backend_callbacks_536871965
else:
  static :
    hint("Declaration of " & "ma_backend_callbacks" &
        " already exists, not redeclaring")
when not declared(ma_context_config):
  type
    ma_context_config* = ma_context_config_536871957
else:
  static :
    hint("Declaration of " & "ma_context_config" &
        " already exists, not redeclaring")
when not declared(ma_uint32):
  type
    ma_uint32* = ma_uint32_536871376
else:
  static :
    hint("Declaration of " & "ma_uint32" & " already exists, not redeclaring")
when not declared(ma_hishelf2):
  type
    ma_hishelf2* = ma_hishelf2_536871639
else:
  static :
    hint("Declaration of " & "ma_hishelf2" & " already exists, not redeclaring")
when not declared(struct_ma_paged_audio_buffer_config):
  type
    struct_ma_paged_audio_buffer_config* = struct_ma_paged_audio_buffer_config_536871803
else:
  static :
    hint("Declaration of " & "struct_ma_paged_audio_buffer_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_pulsewave):
  type
    struct_ma_pulsewave* = struct_ma_pulsewave_536872073
else:
  static :
    hint("Declaration of " & "struct_ma_pulsewave" &
        " already exists, not redeclaring")
when not declared(ma_decoder):
  type
    ma_decoder* = ma_decoder_536872017
else:
  static :
    hint("Declaration of " & "ma_decoder" & " already exists, not redeclaring")
when not declared(pthread_t):
  type
    pthread_t* = pthread_t_536871400
else:
  static :
    hint("Declaration of " & "pthread_t" & " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_data_stream):
  type
    struct_ma_resource_manager_data_stream* = struct_ma_resource_manager_data_stream_536872103
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_stream" &
        " already exists, not redeclaring")
when not declared(ma_loshelf_node):
  type
    ma_loshelf_node* = ma_loshelf_node_536872249
else:
  static :
    hint("Declaration of " & "ma_loshelf_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_async_notification_poll):
  type
    struct_ma_async_notification_poll* = struct_ma_async_notification_poll_536871833
else:
  static :
    hint("Declaration of " & "struct_ma_async_notification_poll" &
        " already exists, not redeclaring")
when not declared(ma_sound_flags):
  type
    ma_sound_flags* = ma_sound_flags_536872277
else:
  static :
    hint("Declaration of " & "ma_sound_flags" &
        " already exists, not redeclaring")
when not declared(ma_device_notification):
  type
    ma_device_notification* = ma_device_notification_536871897
else:
  static :
    hint("Declaration of " & "ma_device_notification" &
        " already exists, not redeclaring")
when not declared(ma_fader_config):
  type
    ma_fader_config* = ma_fader_config_536871671
else:
  static :
    hint("Declaration of " & "ma_fader_config" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_config):
  type
    ma_loshelf2_config* = ma_loshelf2_config_536871623
else:
  static :
    hint("Declaration of " & "ma_loshelf2_config" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer):
  type
    ma_paged_audio_buffer* = ma_paged_audio_buffer_536871809
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer" &
        " already exists, not redeclaring")
when not declared(ma_atomic_int32):
  type
    ma_atomic_int32* = ma_atomic_int32_536871487
else:
  static :
    hint("Declaration of " & "ma_atomic_int32" &
        " already exists, not redeclaring")
when not declared(ma_pthread_cond_t):
  type
    ma_pthread_cond_t* = ma_pthread_cond_t_536871406
else:
  static :
    hint("Declaration of " & "ma_pthread_cond_t" &
        " already exists, not redeclaring")
when not declared(struct_ma_biquad):
  type
    struct_ma_biquad* = struct_ma_biquad_536871537
else:
  static :
    hint("Declaration of " & "struct_ma_biquad" &
        " already exists, not redeclaring")
when not declared(struct_ma_lpf2):
  type
    struct_ma_lpf2* = struct_ma_lpf2_536871551
else:
  static :
    hint("Declaration of " & "struct_ma_lpf2" &
        " already exists, not redeclaring")
when not declared(struct_ma_atomic_uint32):
  type
    struct_ma_atomic_uint32* = struct_ma_atomic_uint32_536871481
else:
  static :
    hint("Declaration of " & "struct_ma_atomic_uint32" &
        " already exists, not redeclaring")
when not declared(struct_ma_hishelf2):
  type
    struct_ma_hishelf2* = struct_ma_hishelf2_536871637
else:
  static :
    hint("Declaration of " & "struct_ma_hishelf2" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_event):
  type
    ma_async_notification_event* = ma_async_notification_event_536871839
else:
  static :
    hint("Declaration of " & "ma_async_notification_event" &
        " already exists, not redeclaring")
when not declared(ma_delay_node):
  type
    ma_delay_node* = ma_delay_node_536872265
else:
  static :
    hint("Declaration of " & "ma_delay_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_hishelf_node):
  type
    struct_ma_hishelf_node* = struct_ma_hishelf_node_536872255
else:
  static :
    hint("Declaration of " & "struct_ma_hishelf_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_loshelf2):
  type
    struct_ma_loshelf2* = struct_ma_loshelf2_536871627
else:
  static :
    hint("Declaration of " & "struct_ma_loshelf2" &
        " already exists, not redeclaring")
when not declared(ma_device_type):
  type
    ma_device_type* = ma_device_type_536871907
else:
  static :
    hint("Declaration of " & "ma_device_type" &
        " already exists, not redeclaring")
when not declared(enum_ma_resample_algorithm):
  type
    enum_ma_resample_algorithm* = enum_ma_resample_algorithm_536871731
else:
  static :
    hint("Declaration of " & "enum_ma_resample_algorithm" &
        " already exists, not redeclaring")
when not declared(ma_panner):
  type
    ma_panner* = ma_panner_536871667
else:
  static :
    hint("Declaration of " & "ma_panner" & " already exists, not redeclaring")
when not declared(ma_resource_manager_pipeline_stage_notification):
  type
    ma_resource_manager_pipeline_stage_notification* = ma_resource_manager_pipeline_stage_notification_536872115
else:
  static :
    hint("Declaration of " & "ma_resource_manager_pipeline_stage_notification" &
        " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_data_source_config):
  type
    struct_ma_resource_manager_data_source_config* = struct_ma_resource_manager_data_source_config_536872125
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_source_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_linear_resampler_config):
  type
    struct_ma_linear_resampler_config* = struct_ma_linear_resampler_config_536871713
else:
  static :
    hint("Declaration of " & "struct_ma_linear_resampler_config" &
        " already exists, not redeclaring")
when not declared(ma_rb):
  type
    ma_rb* = ma_rb_536871813
else:
  static :
    hint("Declaration of " & "ma_rb" & " already exists, not redeclaring")
when not declared(ma_hpf_config):
  type
    ma_hpf_config* = ma_hpf_config_536871579
else:
  static :
    hint("Declaration of " & "ma_hpf_config" &
        " already exists, not redeclaring")
when not declared(ma_peak_node_config):
  type
    ma_peak_node_config* = ma_peak_node_config_536872237
else:
  static :
    hint("Declaration of " & "ma_peak_node_config" &
        " already exists, not redeclaring")
when not declared(ma_device_state):
  type
    ma_device_state* = ma_device_state_536871873
else:
  static :
    hint("Declaration of " & "ma_device_state" &
        " already exists, not redeclaring")
when not declared(ma_log_level):
  type
    ma_log_level* = ma_log_level_536871414
else:
  static :
    hint("Declaration of " & "ma_log_level" & " already exists, not redeclaring")
when not declared(enum_ma_resource_manager_data_source_flags):
  type
    enum_ma_resource_manager_data_source_flags* = enum_ma_resource_manager_data_source_flags_536872109
else:
  static :
    hint("Declaration of " & "enum_ma_resource_manager_data_source_flags" &
        " already exists, not redeclaring")
when not declared(ma_data_source_vtable):
  type
    ma_data_source_vtable* = ma_data_source_vtable_536871771
else:
  static :
    hint("Declaration of " & "ma_data_source_vtable" &
        " already exists, not redeclaring")
when not declared(enum_ma_sound_flags):
  type
    enum_ma_sound_flags* = enum_ma_sound_flags_536872275
else:
  static :
    hint("Declaration of " & "enum_ma_sound_flags" &
        " already exists, not redeclaring")
when not declared(struct_ma_bpf):
  type
    struct_ma_bpf* = struct_ma_bpf_536871597
else:
  static :
    hint("Declaration of " & "struct_ma_bpf" &
        " already exists, not redeclaring")
when not declared(struct_ma_pulsewave_config):
  type
    struct_ma_pulsewave_config* = struct_ma_pulsewave_config_536872069
else:
  static :
    hint("Declaration of " & "struct_ma_pulsewave_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_aaudio_content_type):
  type
    enum_ma_aaudio_content_type* = enum_ma_aaudio_content_type_536871937
else:
  static :
    hint("Declaration of " & "enum_ma_aaudio_content_type" &
        " already exists, not redeclaring")
when not declared(ma_peak_config):
  type
    ma_peak_config* = ma_peak_config_536871615
else:
  static :
    hint("Declaration of " & "ma_peak_config" &
        " already exists, not redeclaring")
when not declared(ma_noise_config):
  type
    ma_noise_config* = ma_noise_config_536872083
else:
  static :
    hint("Declaration of " & "ma_noise_config" &
        " already exists, not redeclaring")
when not declared(union_pthread_mutex_t):
  type
    union_pthread_mutex_t* = union_pthread_mutex_t_536872311
else:
  static :
    hint("Declaration of " & "union_pthread_mutex_t" &
        " already exists, not redeclaring")
when not declared(ma_context_command_wasapi):
  type
    ma_context_command_wasapi* = ma_context_command_wasapi_536871981
else:
  static :
    hint("Declaration of " & "ma_context_command_wasapi" &
        " already exists, not redeclaring")
when not declared(struct_ma_job_queue):
  type
    struct_ma_job_queue* = struct_ma_job_queue_536871869
else:
  static :
    hint("Declaration of " & "struct_ma_job_queue" &
        " already exists, not redeclaring")
when not declared(struct_pthread_internal_list):
  type
    struct_pthread_internal_list* = struct_pthread_internal_list_536872323
else:
  static :
    hint("Declaration of " & "struct_pthread_internal_list" &
        " already exists, not redeclaring")
when not declared(ma_data_source_node_config):
  type
    ma_data_source_node_config* = ma_data_source_node_config_536872181
else:
  static :
    hint("Declaration of " & "ma_data_source_node_config" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_flags):
  type
    ma_resource_manager_data_source_flags* = ma_resource_manager_data_source_flags_536872111
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_flags" &
        " already exists, not redeclaring")
when not declared(struct_ma_atomic_device_state):
  type
    struct_ma_atomic_device_state* = struct_ma_atomic_device_state_536871875
else:
  static :
    hint("Declaration of " & "struct_ma_atomic_device_state" &
        " already exists, not redeclaring")
when not declared(ma_sound):
  type
    ma_sound* = ma_sound_536872271
else:
  static :
    hint("Declaration of " & "ma_sound" & " already exists, not redeclaring")
when not declared(struct_ma_notch_node_config):
  type
    struct_ma_notch_node_config* = struct_ma_notch_node_config_536872227
else:
  static :
    hint("Declaration of " & "struct_ma_notch_node_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_result):
  type
    enum_ma_result* = enum_ma_result_536871430
else:
  static :
    hint("Declaration of " & "enum_ma_result" &
        " already exists, not redeclaring")
when not declared(enum_ma_share_mode):
  type
    enum_ma_share_mode* = enum_ma_share_mode_536871909
else:
  static :
    hint("Declaration of " & "enum_ma_share_mode" &
        " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_data_buffer):
  type
    struct_ma_resource_manager_data_buffer* = struct_ma_resource_manager_data_buffer_536872099
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_buffer" &
        " already exists, not redeclaring")
when not declared(ma_gainer_config):
  type
    ma_gainer_config* = ma_gainer_config_536871651
else:
  static :
    hint("Declaration of " & "ma_gainer_config" &
        " already exists, not redeclaring")
when not declared(ma_notch_config):
  type
    ma_notch_config* = ma_notch_config_536871605
else:
  static :
    hint("Declaration of " & "ma_notch_config" &
        " already exists, not redeclaring")
when not declared(ma_lpf_node):
  type
    ma_lpf_node* = ma_lpf_node_536872209
else:
  static :
    hint("Declaration of " & "ma_lpf_node" & " already exists, not redeclaring")
when not declared(enum_ma_performance_profile):
  type
    enum_ma_performance_profile* = enum_ma_performance_profile_536871469
else:
  static :
    hint("Declaration of " & "enum_ma_performance_profile" &
        " already exists, not redeclaring")
when not declared(ma_aaudio_input_preset):
  type
    ma_aaudio_input_preset* = ma_aaudio_input_preset_536871943
else:
  static :
    hint("Declaration of " & "ma_aaudio_input_preset" &
        " already exists, not redeclaring")
when not declared(enum_ma_device_state):
  type
    enum_ma_device_state* = enum_ma_device_state_536871871
else:
  static :
    hint("Declaration of " & "enum_ma_device_state" &
        " already exists, not redeclaring")
when not declared(ma_enum_devices_callback_proc):
  type
    ma_enum_devices_callback_proc* = ma_enum_devices_callback_proc_536871973
else:
  static :
    hint("Declaration of " & "ma_enum_devices_callback_proc" &
        " already exists, not redeclaring")
when not declared(struct_ma_lpf1):
  type
    struct_ma_lpf1* = struct_ma_lpf1_536871547
else:
  static :
    hint("Declaration of " & "struct_ma_lpf1" &
        " already exists, not redeclaring")
when not declared(enum_ma_channel_position):
  type
    enum_ma_channel_position* = enum_ma_channel_position_536871426
else:
  static :
    hint("Declaration of " & "enum_ma_channel_position" &
        " already exists, not redeclaring")
when not declared(ma_opensl_recording_preset):
  type
    ma_opensl_recording_preset* = ma_opensl_recording_preset_536871927
else:
  static :
    hint("Declaration of " & "ma_opensl_recording_preset" &
        " already exists, not redeclaring")
when not declared(ma_resampling_backend_vtable):
  type
    ma_resampling_backend_vtable* = ma_resampling_backend_vtable_536871729
else:
  static :
    hint("Declaration of " & "ma_resampling_backend_vtable" &
        " already exists, not redeclaring")
when not declared(struct_ma_spatializer):
  type
    struct_ma_spatializer* = struct_ma_spatializer_536871709
else:
  static :
    hint("Declaration of " & "struct_ma_spatializer" &
        " already exists, not redeclaring")
when not declared(ma_float):
  type
    ma_float* = ma_float_536871388
else:
  static :
    hint("Declaration of " & "ma_float" & " already exists, not redeclaring")
when not declared(ma_mutex):
  type
    ma_mutex* = ma_mutex_536871509
else:
  static :
    hint("Declaration of " & "ma_mutex" & " already exists, not redeclaring")
when not declared(ma_log_callback_proc):
  type
    ma_log_callback_proc* = ma_log_callback_proc_536871519
else:
  static :
    hint("Declaration of " & "ma_log_callback_proc" &
        " already exists, not redeclaring")
when not declared(ma_pthread_t):
  type
    ma_pthread_t* = ma_pthread_t_536871398
else:
  static :
    hint("Declaration of " & "ma_pthread_t" & " already exists, not redeclaring")
when not declared(pthread_cond_t):
  type
    pthread_cond_t* = pthread_cond_t_536871408
else:
  static :
    hint("Declaration of " & "pthread_cond_t" &
        " already exists, not redeclaring")
when not declared(ma_handedness):
  type
    ma_handedness* = ma_handedness_536871695
else:
  static :
    hint("Declaration of " & "ma_handedness" &
        " already exists, not redeclaring")
when not declared(ma_channel_conversion_path):
  type
    ma_channel_conversion_path* = ma_channel_conversion_path_536871741
else:
  static :
    hint("Declaration of " & "ma_channel_conversion_path" &
        " already exists, not redeclaring")
when not declared(ma_data_source_config):
  type
    ma_data_source_config* = ma_data_source_config_536871777
else:
  static :
    hint("Declaration of " & "ma_data_source_config" &
        " already exists, not redeclaring")
when not declared(ma_standard_sample_rate):
  type
    ma_standard_sample_rate* = ma_standard_sample_rate_536871459
else:
  static :
    hint("Declaration of " & "ma_standard_sample_rate" &
        " already exists, not redeclaring")
when not declared(struct_ma_linear_resampler):
  type
    struct_ma_linear_resampler* = struct_ma_linear_resampler_536871717
else:
  static :
    hint("Declaration of " & "struct_ma_linear_resampler" &
        " already exists, not redeclaring")
when not declared(struct_ma_rb):
  type
    struct_ma_rb* = struct_ma_rb_536871811
else:
  static :
    hint("Declaration of " & "struct_ma_rb" & " already exists, not redeclaring")
when not declared(struct_ma_encoder_config):
  type
    struct_ma_encoder_config* = struct_ma_encoder_config_536872053
else:
  static :
    hint("Declaration of " & "struct_ma_encoder_config" &
        " already exists, not redeclaring")
when not declared(ma_bpf):
  type
    ma_bpf* = ma_bpf_536871599
else:
  static :
    hint("Declaration of " & "ma_bpf" & " already exists, not redeclaring")
when not declared(struct_ma_sound):
  type
    struct_ma_sound* = struct_ma_sound_536872273
else:
  static :
    hint("Declaration of " & "struct_ma_sound" &
        " already exists, not redeclaring")
when not declared(enum_ma_open_mode_flags):
  type
    enum_ma_open_mode_flags* = enum_ma_open_mode_flags_536871987
else:
  static :
    hint("Declaration of " & "enum_ma_open_mode_flags" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_config):
  type
    ma_spatializer_config* = ma_spatializer_config_536871707
else:
  static :
    hint("Declaration of " & "ma_spatializer_config" &
        " already exists, not redeclaring")
when not declared(ma_double):
  type
    ma_double* = ma_double_536871390
else:
  static :
    hint("Declaration of " & "ma_double" & " already exists, not redeclaring")
when not declared(enum_ma_aaudio_input_preset):
  type
    enum_ma_aaudio_input_preset* = enum_ma_aaudio_input_preset_536871941
else:
  static :
    hint("Declaration of " & "enum_ma_aaudio_input_preset" &
        " already exists, not redeclaring")
when not declared(struct_ma_splitter_node):
  type
    struct_ma_splitter_node* = struct_ma_splitter_node_536872191
else:
  static :
    hint("Declaration of " & "struct_ma_splitter_node" &
        " already exists, not redeclaring")
when not declared(ma_int8):
  type
    ma_int8* = ma_int8_536871366
else:
  static :
    hint("Declaration of " & "ma_int8" & " already exists, not redeclaring")
when not declared(ma_hpf1_config):
  type
    ma_hpf1_config* = ma_hpf1_config_536871565
else:
  static :
    hint("Declaration of " & "ma_hpf1_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_peak_node_config):
  type
    struct_ma_peak_node_config* = struct_ma_peak_node_config_536872235
else:
  static :
    hint("Declaration of " & "struct_ma_peak_node_config" &
        " already exists, not redeclaring")
when not declared(ma_atomic_bool32):
  type
    ma_atomic_bool32* = ma_atomic_bool32_536871499
else:
  static :
    hint("Declaration of " & "ma_atomic_bool32" &
        " already exists, not redeclaring")
when not declared(enum_ma_node_state):
  type
    enum_ma_node_state* = enum_ma_node_state_536872151
else:
  static :
    hint("Declaration of " & "enum_ma_node_state" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_info):
  type
    struct_ma_device_info* = struct_ma_device_info_536871969
else:
  static :
    hint("Declaration of " & "struct_ma_device_info" &
        " already exists, not redeclaring")
when not declared(ma_file_info):
  type
    ma_file_info* = ma_file_info_536871997
else:
  static :
    hint("Declaration of " & "ma_file_info" & " already exists, not redeclaring")
when not declared(struct_ma_job):
  type
    struct_ma_job* = struct_ma_job_536871853
else:
  static :
    hint("Declaration of " & "struct_ma_job" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_config):
  type
    ma_bpf2_config* = ma_bpf2_config_536871587
else:
  static :
    hint("Declaration of " & "ma_bpf2_config" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_next_proc):
  type
    ma_data_source_get_next_proc* = ma_data_source_get_next_proc_536871773
else:
  static :
    hint("Declaration of " & "ma_data_source_get_next_proc" &
        " already exists, not redeclaring")
when not declared(struct_ma_splitter_node_config):
  type
    struct_ma_splitter_node_config* = struct_ma_splitter_node_config_536872187
else:
  static :
    hint("Declaration of " & "struct_ma_splitter_node_config" &
        " already exists, not redeclaring")
when not declared(ma_uintptr):
  type
    ma_uintptr* = ma_uintptr_536871382
else:
  static :
    hint("Declaration of " & "ma_uintptr" & " already exists, not redeclaring")
when not declared(ma_seek_proc):
  type
    ma_seek_proc* = ma_seek_proc_536872009
else:
  static :
    hint("Declaration of " & "ma_seek_proc" & " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data):
  type
    ma_paged_audio_buffer_data* = ma_paged_audio_buffer_data_536871801
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data" &
        " already exists, not redeclaring")
when not declared(struct_ma_noise):
  type
    struct_ma_noise* = struct_ma_noise_536872085
else:
  static :
    hint("Declaration of " & "struct_ma_noise" &
        " already exists, not redeclaring")
when not declared(struct_ma_notch2):
  type
    struct_ma_notch2* = struct_ma_notch2_536871607
else:
  static :
    hint("Declaration of " & "struct_ma_notch2" &
        " already exists, not redeclaring")
when not declared(enum_ma_opensl_stream_type):
  type
    enum_ma_opensl_stream_type* = enum_ma_opensl_stream_type_536871921
else:
  static :
    hint("Declaration of " & "enum_ma_opensl_stream_type" &
        " already exists, not redeclaring")
when not declared(union_ma_biquad_coefficient):
  type
    union_ma_biquad_coefficient* = union_ma_biquad_coefficient_536871529
else:
  static :
    hint("Declaration of " & "union_ma_biquad_coefficient" &
        " already exists, not redeclaring")
when not declared(ma_data_source_node):
  type
    ma_data_source_node* = ma_data_source_node_536872185
else:
  static :
    hint("Declaration of " & "ma_data_source_node" &
        " already exists, not redeclaring")
when not declared(ma_notch_node_config):
  type
    ma_notch_node_config* = ma_notch_node_config_536872229
else:
  static :
    hint("Declaration of " & "ma_notch_node_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_spatializer_config):
  type
    struct_ma_spatializer_config* = struct_ma_spatializer_config_536871705
else:
  static :
    hint("Declaration of " & "struct_ma_spatializer_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_channel_converter_config):
  type
    struct_ma_channel_converter_config* = struct_ma_channel_converter_config_536871747
else:
  static :
    hint("Declaration of " & "struct_ma_channel_converter_config" &
        " already exists, not redeclaring")
when not declared(ma_sound_config):
  type
    ma_sound_config* = ma_sound_config_536872295
else:
  static :
    hint("Declaration of " & "ma_sound_config" &
        " already exists, not redeclaring")
when not declared(ma_backend):
  type
    ma_backend* = ma_backend_536871881
else:
  static :
    hint("Declaration of " & "ma_backend" & " already exists, not redeclaring")
when not declared(ma_wasapi_usage):
  type
    ma_wasapi_usage* = ma_wasapi_usage_536871931
else:
  static :
    hint("Declaration of " & "ma_wasapi_usage" &
        " already exists, not redeclaring")
when not declared(ma_biquad):
  type
    ma_biquad* = ma_biquad_536871539
else:
  static :
    hint("Declaration of " & "ma_biquad" & " already exists, not redeclaring")
when not declared(struct_ma_hpf_node_config):
  type
    struct_ma_hpf_node_config* = struct_ma_hpf_node_config_536872211
else:
  static :
    hint("Declaration of " & "struct_ma_hpf_node_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_peak_node):
  type
    struct_ma_peak_node* = struct_ma_peak_node_536872239
else:
  static :
    hint("Declaration of " & "struct_ma_peak_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_data_buffer_node):
  type
    struct_ma_resource_manager_data_buffer_node* = struct_ma_resource_manager_data_buffer_node_536872095
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_buffer_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_node_input_bus):
  type
    struct_ma_node_input_bus* = struct_ma_node_input_bus_536872169
else:
  static :
    hint("Declaration of " & "struct_ma_node_input_bus" &
        " already exists, not redeclaring")
when not declared(ma_resampler):
  type
    ma_resampler* = ma_resampler_536871737
else:
  static :
    hint("Declaration of " & "ma_resampler" & " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_config):
  type
    ma_paged_audio_buffer_config* = ma_paged_audio_buffer_config_536871805
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_config" &
        " already exists, not redeclaring")
when not declared(ma_data_source_base):
  type
    ma_data_source_base* = ma_data_source_base_536871781
else:
  static :
    hint("Declaration of " & "ma_data_source_base" &
        " already exists, not redeclaring")
when not declared(ma_job_type):
  type
    ma_job_type* = ma_job_type_536871859
else:
  static :
    hint("Declaration of " & "ma_job_type" & " already exists, not redeclaring")
when not declared(ma_slot_allocator_group):
  type
    ma_slot_allocator_group* = ma_slot_allocator_group_536871847
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_group" &
        " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_config):
  type
    struct_ma_resource_manager_config* = struct_ma_resource_manager_config_536872137
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_node_graph):
  type
    struct_ma_node_graph* = struct_ma_node_graph_536872143
else:
  static :
    hint("Declaration of " & "struct_ma_node_graph" &
        " already exists, not redeclaring")
when not declared(enum_ma_job_queue_flags):
  type
    enum_ma_job_queue_flags* = enum_ma_job_queue_flags_536871863
else:
  static :
    hint("Declaration of " & "enum_ma_job_queue_flags" &
        " already exists, not redeclaring")
when not declared(struct_ma_peak2):
  type
    struct_ma_peak2* = struct_ma_peak2_536871617
else:
  static :
    hint("Declaration of " & "struct_ma_peak2" &
        " already exists, not redeclaring")
when not declared(ma_share_mode):
  type
    ma_share_mode* = ma_share_mode_536871911
else:
  static :
    hint("Declaration of " & "ma_share_mode" &
        " already exists, not redeclaring")
when not declared(ma_ios_session_category):
  type
    ma_ios_session_category* = ma_ios_session_category_536871915
else:
  static :
    hint("Declaration of " & "ma_ios_session_category" &
        " already exists, not redeclaring")
when not declared(ma_loshelf_config):
  type
    ma_loshelf_config* = ma_loshelf_config_536871625
else:
  static :
    hint("Declaration of " & "ma_loshelf_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_duplex_rb):
  type
    struct_ma_duplex_rb* = struct_ma_duplex_rb_536871819
else:
  static :
    hint("Declaration of " & "struct_ma_duplex_rb" &
        " already exists, not redeclaring")
when not declared(struct_ma_semaphore):
  type
    struct_ma_semaphore* = struct_ma_semaphore_536871515
else:
  static :
    hint("Declaration of " & "struct_ma_semaphore" &
        " already exists, not redeclaring")
when not declared(ma_node_graph):
  type
    ma_node_graph* = ma_node_graph_536872141
else:
  static :
    hint("Declaration of " & "ma_node_graph" &
        " already exists, not redeclaring")
when not declared(struct_ma_bpf_node_config):
  type
    struct_ma_bpf_node_config* = struct_ma_bpf_node_config_536872219
else:
  static :
    hint("Declaration of " & "struct_ma_bpf_node_config" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_flags):
  type
    ma_job_queue_flags* = ma_job_queue_flags_536871865
else:
  static :
    hint("Declaration of " & "ma_job_queue_flags" &
        " already exists, not redeclaring")
when not declared(struct_ma_resampling_backend_vtable):
  type
    struct_ma_resampling_backend_vtable* = struct_ma_resampling_backend_vtable_536871727
else:
  static :
    hint("Declaration of " & "struct_ma_resampling_backend_vtable" &
        " already exists, not redeclaring")
when not declared(enum_ma_backend):
  type
    enum_ma_backend* = enum_ma_backend_536871879
else:
  static :
    hint("Declaration of " & "enum_ma_backend" &
        " already exists, not redeclaring")
when not declared(struct_ma_gainer_config):
  type
    struct_ma_gainer_config* = struct_ma_gainer_config_536871649
else:
  static :
    hint("Declaration of " & "struct_ma_gainer_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_device_notification_type):
  type
    enum_ma_device_notification_type* = enum_ma_device_notification_type_536871891
else:
  static :
    hint("Declaration of " & "enum_ma_device_notification_type" &
        " already exists, not redeclaring")
when not declared(ma_biquad_coefficient):
  type
    ma_biquad_coefficient* = ma_biquad_coefficient_536871531
else:
  static :
    hint("Declaration of " & "ma_biquad_coefficient" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_supply):
  type
    ma_resource_manager_data_supply* = ma_resource_manager_data_supply_536872135
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_supply" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_callbacks):
  type
    ma_async_notification_callbacks* = ma_async_notification_callbacks_536871831
else:
  static :
    hint("Declaration of " & "ma_async_notification_callbacks" &
        " already exists, not redeclaring")
when not declared(ma_device):
  type
    ma_device* = ma_device_536871420
else:
  static :
    hint("Declaration of " & "ma_device" & " already exists, not redeclaring")
when not declared(ma_engine_node_type):
  type
    ma_engine_node_type* = ma_engine_node_type_536872281
else:
  static :
    hint("Declaration of " & "ma_engine_node_type" &
        " already exists, not redeclaring")
when not declared(enum_ma_wasapi_usage):
  type
    enum_ma_wasapi_usage* = enum_ma_wasapi_usage_536871929
else:
  static :
    hint("Declaration of " & "enum_ma_wasapi_usage" &
        " already exists, not redeclaring")
when not declared(struct_ma_bpf2_config):
  type
    struct_ma_bpf2_config* = struct_ma_bpf2_config_536871585
else:
  static :
    hint("Declaration of " & "struct_ma_bpf2_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_decoding_backend_config):
  type
    struct_ma_decoding_backend_config* = struct_ma_decoding_backend_config_536872021
else:
  static :
    hint("Declaration of " & "struct_ma_decoding_backend_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_ios_session_category):
  type
    enum_ma_ios_session_category* = enum_ma_ios_session_category_536871913
else:
  static :
    hint("Declaration of " & "enum_ma_ios_session_category" &
        " already exists, not redeclaring")
when not declared(struct_ma_atomic_uint64):
  type
    struct_ma_atomic_uint64* = struct_ma_atomic_uint64_536871489
else:
  static :
    hint("Declaration of " & "struct_ma_atomic_uint64" &
        " already exists, not redeclaring")
when not declared(struct_ma_vfs_callbacks):
  type
    struct_ma_vfs_callbacks* = struct_ma_vfs_callbacks_536871999
else:
  static :
    hint("Declaration of " & "struct_ma_vfs_callbacks" &
        " already exists, not redeclaring")
when not declared(struct_ma_audio_buffer):
  type
    struct_ma_audio_buffer* = struct_ma_audio_buffer_536871791
else:
  static :
    hint("Declaration of " & "struct_ma_audio_buffer" &
        " already exists, not redeclaring")
when not declared(struct_ma_paged_audio_buffer_data):
  type
    struct_ma_paged_audio_buffer_data* = struct_ma_paged_audio_buffer_data_536871799
else:
  static :
    hint("Declaration of " & "struct_ma_paged_audio_buffer_data" &
        " already exists, not redeclaring")
when not declared(ma_handle):
  type
    ma_handle* = ma_handle_536871392
else:
  static :
    hint("Declaration of " & "ma_handle" & " already exists, not redeclaring")
when not declared(enum_ma_resource_manager_flags):
  type
    enum_ma_resource_manager_flags* = enum_ma_resource_manager_flags_536872121
else:
  static :
    hint("Declaration of " & "enum_ma_resource_manager_flags" &
        " already exists, not redeclaring")
when not declared(struct_ma_waveform_config):
  type
    struct_ma_waveform_config* = struct_ma_waveform_config_536872061
else:
  static :
    hint("Declaration of " & "struct_ma_waveform_config" &
        " already exists, not redeclaring")
when not declared(ma_format):
  type
    ma_format* = ma_format_536871455
else:
  static :
    hint("Declaration of " & "ma_format" & " already exists, not redeclaring")
when not declared(ma_decoding_backend_vtable):
  type
    ma_decoding_backend_vtable* = ma_decoding_backend_vtable_536872027
else:
  static :
    hint("Declaration of " & "ma_decoding_backend_vtable" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream):
  type
    ma_resource_manager_data_stream* = ma_resource_manager_data_stream_536872101
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream" &
        " already exists, not redeclaring")
when not declared(ma_channel_mix_mode):
  type
    ma_channel_mix_mode* = ma_channel_mix_mode_536871463
else:
  static :
    hint("Declaration of " & "ma_channel_mix_mode" &
        " already exists, not redeclaring")
when not declared(struct_ma_peak2_config):
  type
    struct_ma_peak2_config* = struct_ma_peak2_config_536871611
else:
  static :
    hint("Declaration of " & "struct_ma_peak2_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_panner):
  type
    struct_ma_panner* = struct_ma_panner_536871665
else:
  static :
    hint("Declaration of " & "struct_ma_panner" &
        " already exists, not redeclaring")
when not declared(enum_ma_data_converter_execution_path):
  type
    enum_ma_data_converter_execution_path* = enum_ma_data_converter_execution_path_536871759
else:
  static :
    hint("Declaration of " & "enum_ma_data_converter_execution_path" &
        " already exists, not redeclaring")
when not declared(struct_ma_loshelf_node_config):
  type
    struct_ma_loshelf_node_config* = struct_ma_loshelf_node_config_536872243
else:
  static :
    hint("Declaration of " & "struct_ma_loshelf_node_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_stream_layout):
  type
    enum_ma_stream_layout* = enum_ma_stream_layout_536871438
else:
  static :
    hint("Declaration of " & "enum_ma_stream_layout" &
        " already exists, not redeclaring")
when not declared(ma_performance_profile):
  type
    ma_performance_profile* = ma_performance_profile_536871471
else:
  static :
    hint("Declaration of " & "ma_performance_profile" &
        " already exists, not redeclaring")
when not declared(ma_encoder_init_proc):
  type
    ma_encoder_init_proc* = ma_encoder_init_proc_536872047
else:
  static :
    hint("Declaration of " & "ma_encoder_init_proc" &
        " already exists, not redeclaring")
when not declared(enum_ma_waveform_type):
  type
    enum_ma_waveform_type* = enum_ma_waveform_type_536872057
else:
  static :
    hint("Declaration of " & "enum_ma_waveform_type" &
        " already exists, not redeclaring")
when not declared(ma_int64):
  type
    ma_int64* = ma_int64_536871378
else:
  static :
    hint("Declaration of " & "ma_int64" & " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_data_source):
  type
    struct_ma_resource_manager_data_source* = struct_ma_resource_manager_data_source_536872107
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_source" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_supply_type):
  type
    ma_resource_manager_data_supply_type* = ma_resource_manager_data_supply_type_536872131
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_supply_type" &
        " already exists, not redeclaring")
when not declared(ma_node_input_bus):
  type
    ma_node_input_bus* = ma_node_input_bus_536872167
else:
  static :
    hint("Declaration of " & "ma_node_input_bus" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_poll):
  type
    ma_async_notification_poll* = ma_async_notification_poll_536871835
else:
  static :
    hint("Declaration of " & "ma_async_notification_poll" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_config):
  type
    struct_ma_device_config* = struct_ma_device_config_536871963
else:
  static :
    hint("Declaration of " & "struct_ma_device_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_lpf_node):
  type
    struct_ma_lpf_node* = struct_ma_lpf_node_536872207
else:
  static :
    hint("Declaration of " & "struct_ma_lpf_node" &
        " already exists, not redeclaring")
when not declared(enum_ma_handedness):
  type
    enum_ma_handedness* = enum_ma_handedness_536871693
else:
  static :
    hint("Declaration of " & "enum_ma_handedness" &
        " already exists, not redeclaring")
when not declared(struct_ma_bpf_node):
  type
    struct_ma_bpf_node* = struct_ma_bpf_node_536872223
else:
  static :
    hint("Declaration of " & "struct_ma_bpf_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_device):
  type
    struct_ma_device* = struct_ma_device_536871422
else:
  static :
    hint("Declaration of " & "struct_ma_device" &
        " already exists, not redeclaring")
when not declared(ma_dither_mode):
  type
    ma_dither_mode* = ma_dither_mode_536871451
else:
  static :
    hint("Declaration of " & "ma_dither_mode" &
        " already exists, not redeclaring")
when not declared(struct_ma_channel_converter):
  type
    struct_ma_channel_converter* = struct_ma_channel_converter_536871751
else:
  static :
    hint("Declaration of " & "struct_ma_channel_converter" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_execution_path):
  type
    ma_data_converter_execution_path* = ma_data_converter_execution_path_536871761
else:
  static :
    hint("Declaration of " & "ma_data_converter_execution_path" &
        " already exists, not redeclaring")
when not declared(ma_tell_proc):
  type
    ma_tell_proc* = ma_tell_proc_536872011
else:
  static :
    hint("Declaration of " & "ma_tell_proc" & " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_config):
  type
    ma_resource_manager_data_source_config* = ma_resource_manager_data_source_config_536872127
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_config" &
        " already exists, not redeclaring")
when not declared(ma_thread_priority):
  type
    ma_thread_priority* = ma_thread_priority_536871505
else:
  static :
    hint("Declaration of " & "ma_thread_priority" &
        " already exists, not redeclaring")
when not declared(struct_ma_data_source_base):
  type
    struct_ma_data_source_base* = struct_ma_data_source_base_536871779
else:
  static :
    hint("Declaration of " & "struct_ma_data_source_base" &
        " already exists, not redeclaring")
when not declared(struct_ma_paged_audio_buffer):
  type
    struct_ma_paged_audio_buffer* = struct_ma_paged_audio_buffer_536871807
else:
  static :
    hint("Declaration of " & "struct_ma_paged_audio_buffer" &
        " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_pipeline_stage_notification):
  type
    struct_ma_resource_manager_pipeline_stage_notification* = struct_ma_resource_manager_pipeline_stage_notification_536872113
else:
  static :
    hint("Declaration of " &
        "struct_ma_resource_manager_pipeline_stage_notification" &
        " already exists, not redeclaring")
when not declared(struct_ma_data_source_vtable):
  type
    struct_ma_data_source_vtable* = struct_ma_data_source_vtable_536871769
else:
  static :
    hint("Declaration of " & "struct_ma_data_source_vtable" &
        " already exists, not redeclaring")
when not declared(ma_positioning):
  type
    ma_positioning* = ma_positioning_536871691
else:
  static :
    hint("Declaration of " & "ma_positioning" &
        " already exists, not redeclaring")
when not declared(ma_log_callback):
  type
    ma_log_callback* = ma_log_callback_536871523
else:
  static :
    hint("Declaration of " & "ma_log_callback" &
        " already exists, not redeclaring")
when not declared(ma_device_id):
  type
    ma_device_id* = ma_device_id_536871955
else:
  static :
    hint("Declaration of " & "ma_device_id" & " already exists, not redeclaring")
when not declared(ma_node_state):
  type
    ma_node_state* = ma_node_state_536872153
else:
  static :
    hint("Declaration of " & "ma_node_state" &
        " already exists, not redeclaring")
when not declared(struct_ma_spatializer_listener_config):
  type
    struct_ma_spatializer_listener_config* = struct_ma_spatializer_listener_config_536871697
else:
  static :
    hint("Declaration of " & "struct_ma_spatializer_listener_config" &
        " already exists, not redeclaring")
when not declared(ma_delay):
  type
    ma_delay* = ma_delay_536871647
else:
  static :
    hint("Declaration of " & "ma_delay" & " already exists, not redeclaring")
when not declared(struct_ma_device_notification):
  type
    struct_ma_device_notification* = struct_ma_device_notification_536871895
else:
  static :
    hint("Declaration of " & "struct_ma_device_notification" &
        " already exists, not redeclaring")
when not declared(ma_encoding_format):
  type
    ma_encoding_format* = ma_encoding_format_536872015
else:
  static :
    hint("Declaration of " & "ma_encoding_format" &
        " already exists, not redeclaring")
when not declared(ma_int32):
  type
    ma_int32* = ma_int32_536871374
else:
  static :
    hint("Declaration of " & "ma_int32" & " already exists, not redeclaring")
when not declared(struct_ma_engine_config):
  type
    struct_ma_engine_config* = struct_ma_engine_config_536872307
else:
  static :
    hint("Declaration of " & "struct_ma_engine_config" &
        " already exists, not redeclaring")
when not declared(ma_node_output_bus):
  type
    ma_node_output_bus* = ma_node_output_bus_536872163
else:
  static :
    hint("Declaration of " & "ma_node_output_bus" &
        " already exists, not redeclaring")
when not declared(enum_ma_thread_priority):
  type
    enum_ma_thread_priority* = enum_ma_thread_priority_536871503
else:
  static :
    hint("Declaration of " & "enum_ma_thread_priority" &
        " already exists, not redeclaring")
when not declared(ma_peak2_config):
  type
    ma_peak2_config* = ma_peak2_config_536871613
else:
  static :
    hint("Declaration of " & "ma_peak2_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_job_thread_config):
  type
    struct_ma_device_job_thread_config* = struct_ma_device_job_thread_config_536871883
else:
  static :
    hint("Declaration of " & "struct_ma_device_job_thread_config" &
        " already exists, not redeclaring")
when not declared(ma_decoder_tell_proc):
  type
    ma_decoder_tell_proc* = ma_decoder_tell_proc_536872033
else:
  static :
    hint("Declaration of " & "ma_decoder_tell_proc" &
        " already exists, not redeclaring")
when not declared(enum_ma_engine_node_type):
  type
    enum_ma_engine_node_type* = enum_ma_engine_node_type_536872279
else:
  static :
    hint("Declaration of " & "enum_ma_engine_node_type" &
        " already exists, not redeclaring")
when not declared(struct_ma_atomic_bool32):
  type
    struct_ma_atomic_bool32* = struct_ma_atomic_bool32_536871497
else:
  static :
    hint("Declaration of " & "struct_ma_atomic_bool32" &
        " already exists, not redeclaring")
when not declared(ma_duplex_rb):
  type
    ma_duplex_rb* = ma_duplex_rb_536871821
else:
  static :
    hint("Declaration of " & "ma_duplex_rb" & " already exists, not redeclaring")
when not declared(ma_vfs_file):
  type
    ma_vfs_file* = ma_vfs_file_536871985
else:
  static :
    hint("Declaration of " & "ma_vfs_file" & " already exists, not redeclaring")
when not declared(ma_encoder_config):
  type
    ma_encoder_config* = ma_encoder_config_536872055
else:
  static :
    hint("Declaration of " & "ma_encoder_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_node_output_bus):
  type
    struct_ma_node_output_bus* = struct_ma_node_output_bus_536872165
else:
  static :
    hint("Declaration of " & "struct_ma_node_output_bus" &
        " already exists, not redeclaring")
when not declared(ma_lpf):
  type
    ma_lpf* = ma_lpf_536871561
else:
  static :
    hint("Declaration of " & "ma_lpf" & " already exists, not redeclaring")
when not declared(ma_hpf_node):
  type
    ma_hpf_node* = ma_hpf_node_536872217
else:
  static :
    hint("Declaration of " & "ma_hpf_node" & " already exists, not redeclaring")
when not declared(ma_pulsewave_config):
  type
    ma_pulsewave_config* = ma_pulsewave_config_536872071
else:
  static :
    hint("Declaration of " & "ma_pulsewave_config" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_config):
  type
    ma_job_queue_config* = ma_job_queue_config_536871362
else:
  static :
    hint("Declaration of " & "ma_job_queue_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_decoder_config):
  type
    struct_ma_decoder_config* = struct_ma_decoder_config_536872035
else:
  static :
    hint("Declaration of " & "struct_ma_decoder_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_hpf2):
  type
    struct_ma_hpf2* = struct_ma_hpf2_536871573
else:
  static :
    hint("Declaration of " & "struct_ma_hpf2" &
        " already exists, not redeclaring")
when not declared(struct_ma_pcm_rb):
  type
    struct_ma_pcm_rb* = struct_ma_pcm_rb_536871815
else:
  static :
    hint("Declaration of " & "struct_ma_pcm_rb" &
        " already exists, not redeclaring")
when not declared(struct_ma_decoder):
  type
    struct_ma_decoder* = struct_ma_decoder_536872019
else:
  static :
    hint("Declaration of " & "struct_ma_decoder" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager):
  type
    ma_resource_manager* = ma_resource_manager_536872089
else:
  static :
    hint("Declaration of " & "ma_resource_manager" &
        " already exists, not redeclaring")
when not declared(ma_spatializer):
  type
    ma_spatializer* = ma_spatializer_536871711
else:
  static :
    hint("Declaration of " & "ma_spatializer" &
        " already exists, not redeclaring")
when not declared(ma_channel):
  type
    ma_channel* = ma_channel_536871424
else:
  static :
    hint("Declaration of " & "ma_channel" & " already exists, not redeclaring")
when not declared(struct_ma_resampler):
  type
    struct_ma_resampler* = struct_ma_resampler_536871735
else:
  static :
    hint("Declaration of " & "struct_ma_resampler" &
        " already exists, not redeclaring")
when not declared(struct_ma_audio_buffer_ref):
  type
    struct_ma_audio_buffer_ref* = struct_ma_audio_buffer_ref_536871783
else:
  static :
    hint("Declaration of " & "struct_ma_audio_buffer_ref" &
        " already exists, not redeclaring")
when not declared(ma_splitter_node):
  type
    ma_splitter_node* = ma_splitter_node_536872193
else:
  static :
    hint("Declaration of " & "ma_splitter_node" &
        " already exists, not redeclaring")
when not declared(ma_engine_node_config):
  type
    ma_engine_node_config* = ma_engine_node_config_536872285
else:
  static :
    hint("Declaration of " & "ma_engine_node_config" &
        " already exists, not redeclaring")
when not declared(ma_result):
  type
    ma_result* = ma_result_536871432
else:
  static :
    hint("Declaration of " & "ma_result" & " already exists, not redeclaring")
when not declared(ma_sound_end_proc):
  type
    ma_sound_end_proc* = ma_sound_end_proc_536872291
else:
  static :
    hint("Declaration of " & "ma_sound_end_proc" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_config):
  type
    ma_spatializer_listener_config* = ma_spatializer_listener_config_536871699
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_format):
  type
    enum_ma_format* = enum_ma_format_536871453
else:
  static :
    hint("Declaration of " & "enum_ma_format" &
        " already exists, not redeclaring")
when not declared(compiler_atomic_wide_counter):
  type
    compiler_atomic_wide_counter* = compiler_atomic_wide_counter_536872321
else:
  static :
    hint("Declaration of " & "compiler_atomic_wide_counter" &
        " already exists, not redeclaring")
when not declared(ma_gainer):
  type
    ma_gainer* = ma_gainer_536871655
else:
  static :
    hint("Declaration of " & "ma_gainer" & " already exists, not redeclaring")
when not declared(ma_notch_node):
  type
    ma_notch_node* = ma_notch_node_536872233
else:
  static :
    hint("Declaration of " & "ma_notch_node" &
        " already exists, not redeclaring")
when not declared(enum_ma_encoding_format):
  type
    enum_ma_encoding_format* = enum_ma_encoding_format_536872013
else:
  static :
    hint("Declaration of " & "enum_ma_encoding_format" &
        " already exists, not redeclaring")
when not declared(ma_splitter_node_config):
  type
    ma_splitter_node_config* = ma_splitter_node_config_536872189
else:
  static :
    hint("Declaration of " & "ma_splitter_node_config" &
        " already exists, not redeclaring")
when not declared(ma_delay_config):
  type
    ma_delay_config* = ma_delay_config_536871643
else:
  static :
    hint("Declaration of " & "ma_delay_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_channel_conversion_path):
  type
    enum_ma_channel_conversion_path* = enum_ma_channel_conversion_path_536871739
else:
  static :
    hint("Declaration of " & "enum_ma_channel_conversion_path" &
        " already exists, not redeclaring")
when not declared(struct_ma_context_config):
  type
    struct_ma_context_config* = struct_ma_context_config_536871959
else:
  static :
    hint("Declaration of " & "struct_ma_context_config" &
        " already exists, not redeclaring")
when not declared(ma_stop_proc):
  type
    ma_stop_proc* = ma_stop_proc_536871903
else:
  static :
    hint("Declaration of " & "ma_stop_proc" & " already exists, not redeclaring")
when not declared(ma_bool32):
  type
    ma_bool32* = ma_bool32_536871386
else:
  static :
    hint("Declaration of " & "ma_bool32" & " already exists, not redeclaring")
when not declared(ma_context):
  type
    ma_context* = ma_context_536871416
else:
  static :
    hint("Declaration of " & "ma_context" & " already exists, not redeclaring")
when not declared(ma_biquad_config):
  type
    ma_biquad_config* = ma_biquad_config_536871535
else:
  static :
    hint("Declaration of " & "ma_biquad_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_hpf1_config):
  type
    struct_ma_hpf1_config* = struct_ma_hpf1_config_536871563
else:
  static :
    hint("Declaration of " & "struct_ma_hpf1_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_job_queue_config):
  type
    struct_ma_job_queue_config* = struct_ma_job_queue_config_536871867
else:
  static :
    hint("Declaration of " & "struct_ma_job_queue_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_decoding_backend_vtable):
  type
    struct_ma_decoding_backend_vtable* = struct_ma_decoding_backend_vtable_536872025
else:
  static :
    hint("Declaration of " & "struct_ma_decoding_backend_vtable" &
        " already exists, not redeclaring")
when not declared(struct_ma_node_graph_config):
  type
    struct_ma_node_graph_config* = struct_ma_node_graph_config_536872175
else:
  static :
    hint("Declaration of " & "struct_ma_node_graph_config" &
        " already exists, not redeclaring")
when not declared(ma_peak_node):
  type
    ma_peak_node* = ma_peak_node_536872241
else:
  static :
    hint("Declaration of " & "ma_peak_node" & " already exists, not redeclaring")
when not declared(ma_resampler_config):
  type
    ma_resampler_config* = ma_resampler_config_536871721
else:
  static :
    hint("Declaration of " & "ma_resampler_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_notch2_config):
  type
    struct_ma_notch2_config* = struct_ma_notch2_config_536871601
else:
  static :
    hint("Declaration of " & "struct_ma_notch2_config" &
        " already exists, not redeclaring")
when not declared(ma_notch2):
  type
    ma_notch2* = ma_notch2_536871609
else:
  static :
    hint("Declaration of " & "ma_notch2" & " already exists, not redeclaring")
when not declared(ma_hpf_node_config):
  type
    ma_hpf_node_config* = ma_hpf_node_config_536872213
else:
  static :
    hint("Declaration of " & "ma_hpf_node_config" &
        " already exists, not redeclaring")
when not declared(ma_device_config):
  type
    ma_device_config* = ma_device_config_536871961
else:
  static :
    hint("Declaration of " & "ma_device_config" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_config):
  type
    ma_sound_group_config* = ma_sound_group_config_536872301
else:
  static :
    hint("Declaration of " & "ma_sound_group_config" &
        " already exists, not redeclaring")
when not declared(pthread_mutex_t):
  type
    pthread_mutex_t* = pthread_mutex_t_536871404
else:
  static :
    hint("Declaration of " & "pthread_mutex_t" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_config):
  type
    ma_lpf1_config* = ma_lpf1_config_536871543
else:
  static :
    hint("Declaration of " & "ma_lpf1_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_biquad_node):
  type
    struct_ma_biquad_node* = struct_ma_biquad_node_536872199
else:
  static :
    hint("Declaration of " & "struct_ma_biquad_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_node_base):
  type
    struct_ma_node_base* = struct_ma_node_base_536872173
else:
  static :
    hint("Declaration of " & "struct_ma_node_base" &
        " already exists, not redeclaring")
when not declared(union_atomic_wide_counter):
  type
    union_atomic_wide_counter* = union_atomic_wide_counter_536872325
else:
  static :
    hint("Declaration of " & "union_atomic_wide_counter" &
        " already exists, not redeclaring")
when not declared(ma_fence):
  type
    ma_fence* = ma_fence_536871825
else:
  static :
    hint("Declaration of " & "ma_fence" & " already exists, not redeclaring")
when not declared(ma_hpf1):
  type
    ma_hpf1* = ma_hpf1_536871571
else:
  static :
    hint("Declaration of " & "ma_hpf1" & " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_pipeline_notifications):
  type
    struct_ma_resource_manager_pipeline_notifications* = struct_ma_resource_manager_pipeline_notifications_536872117
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_pipeline_notifications" &
        " already exists, not redeclaring")
when not declared(ma_device_data_proc):
  type
    ma_device_data_proc* = ma_device_data_proc_536871901
else:
  static :
    hint("Declaration of " & "ma_device_data_proc" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_config):
  type
    ma_hishelf2_config* = ma_hishelf2_config_536871633
else:
  static :
    hint("Declaration of " & "ma_hishelf2_config" &
        " already exists, not redeclaring")
when not declared(ma_device_job_thread):
  type
    ma_device_job_thread* = ma_device_job_thread_536871889
else:
  static :
    hint("Declaration of " & "ma_device_job_thread" &
        " already exists, not redeclaring")
when not declared(ma_bool8):
  type
    ma_bool8* = ma_bool8_536871384
else:
  static :
    hint("Declaration of " & "ma_bool8" & " already exists, not redeclaring")
when not declared(ma_aaudio_usage):
  type
    ma_aaudio_usage* = ma_aaudio_usage_536871935
else:
  static :
    hint("Declaration of " & "ma_aaudio_usage" &
        " already exists, not redeclaring")
when not declared(ma_node_config):
  type
    ma_node_config* = ma_node_config_536872161
else:
  static :
    hint("Declaration of " & "ma_node_config" &
        " already exists, not redeclaring")
when not declared(ma_lpf_node_config):
  type
    ma_lpf_node_config* = ma_lpf_node_config_536872205
else:
  static :
    hint("Declaration of " & "ma_lpf_node_config" &
        " already exists, not redeclaring")
when not declared(ma_uint16):
  type
    ma_uint16* = ma_uint16_536871372
else:
  static :
    hint("Declaration of " & "ma_uint16" & " already exists, not redeclaring")
when not declared(ma_lpf2):
  type
    ma_lpf2* = ma_lpf2_536871553
else:
  static :
    hint("Declaration of " & "ma_lpf2" & " already exists, not redeclaring")
when not declared(struct_ma_notch_node):
  type
    struct_ma_notch_node* = struct_ma_notch_node_536872231
else:
  static :
    hint("Declaration of " & "struct_ma_notch_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_atomic_int32):
  type
    struct_ma_atomic_int32* = struct_ma_atomic_int32_536871485
else:
  static :
    hint("Declaration of " & "struct_ma_atomic_int32" &
        " already exists, not redeclaring")
when not declared(ma_data_converter):
  type
    ma_data_converter* = ma_data_converter_536871765
else:
  static :
    hint("Declaration of " & "ma_data_converter" &
        " already exists, not redeclaring")
when not declared(ma_atomic_uint64):
  type
    ma_atomic_uint64* = ma_atomic_uint64_536871491
else:
  static :
    hint("Declaration of " & "ma_atomic_uint64" &
        " already exists, not redeclaring")
when not declared(ma_hishelf_node_config):
  type
    ma_hishelf_node_config* = ma_hishelf_node_config_536872253
else:
  static :
    hint("Declaration of " & "ma_hishelf_node_config" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb):
  type
    ma_pcm_rb* = ma_pcm_rb_536871817
else:
  static :
    hint("Declaration of " & "ma_pcm_rb" & " already exists, not redeclaring")
when not declared(ma_thread):
  type
    ma_thread* = ma_thread_536871507
else:
  static :
    hint("Declaration of " & "ma_thread" & " already exists, not redeclaring")
when not declared(struct_ma_async_notification_callbacks):
  type
    struct_ma_async_notification_callbacks* = struct_ma_async_notification_callbacks_536871829
else:
  static :
    hint("Declaration of " & "struct_ma_async_notification_callbacks" &
        " already exists, not redeclaring")
when not declared(struct_ma_async_notification_event):
  type
    struct_ma_async_notification_event* = struct_ma_async_notification_event_536871837
else:
  static :
    hint("Declaration of " & "struct_ma_async_notification_event" &
        " already exists, not redeclaring")
when not declared(ma_decoder_seek_proc):
  type
    ma_decoder_seek_proc* = ma_decoder_seek_proc_536872031
else:
  static :
    hint("Declaration of " & "ma_decoder_seek_proc" &
        " already exists, not redeclaring")
when not declared(struct_ma_allocation_callbacks):
  type
    struct_ma_allocation_callbacks* = struct_ma_allocation_callbacks_536871473
else:
  static :
    hint("Declaration of " & "struct_ma_allocation_callbacks" &
        " already exists, not redeclaring")
when not declared(struct_ma_waveform):
  type
    struct_ma_waveform* = struct_ma_waveform_536872065
else:
  static :
    hint("Declaration of " & "struct_ma_waveform" &
        " already exists, not redeclaring")
when not declared(compiler_pthread_list_t):
  type
    compiler_pthread_list_t* = compiler_pthread_list_t_536872319
else:
  static :
    hint("Declaration of " & "compiler_pthread_list_t" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_config):
  type
    ma_lpf2_config* = ma_lpf2_config_536871545
else:
  static :
    hint("Declaration of " & "ma_lpf2_config" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source):
  type
    ma_resource_manager_data_source* = ma_resource_manager_data_source_536872105
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source" &
        " already exists, not redeclaring")
when not declared(ma_encoder_write_proc):
  type
    ma_encoder_write_proc* = ma_encoder_write_proc_536872043
else:
  static :
    hint("Declaration of " & "ma_encoder_write_proc" &
        " already exists, not redeclaring")
when not declared(ma_timer):
  type
    ma_timer* = ma_timer_536871951
else:
  static :
    hint("Declaration of " & "ma_timer" & " already exists, not redeclaring")
when not declared(ma_opensl_stream_type):
  type
    ma_opensl_stream_type* = ma_opensl_stream_type_536871923
else:
  static :
    hint("Declaration of " & "ma_opensl_stream_type" &
        " already exists, not redeclaring")
when not declared(ma_vfs_callbacks):
  type
    ma_vfs_callbacks* = ma_vfs_callbacks_536872001
else:
  static :
    hint("Declaration of " & "ma_vfs_callbacks" &
        " already exists, not redeclaring")
when not declared(struct_ma_paged_audio_buffer_page):
  type
    struct_ma_paged_audio_buffer_page* = struct_ma_paged_audio_buffer_page_536871797
else:
  static :
    hint("Declaration of " & "struct_ma_paged_audio_buffer_page" &
        " already exists, not redeclaring")
when not declared(ma_aaudio_content_type):
  type
    ma_aaudio_content_type* = ma_aaudio_content_type_536871939
else:
  static :
    hint("Declaration of " & "ma_aaudio_content_type" &
        " already exists, not redeclaring")
when not declared(enum_ma_node_flags):
  type
    enum_ma_node_flags* = enum_ma_node_flags_536872147
else:
  static :
    hint("Declaration of " & "enum_ma_node_flags" &
        " already exists, not redeclaring")
when not declared(struct_ma_encoder):
  type
    struct_ma_encoder* = struct_ma_encoder_536872041
else:
  static :
    hint("Declaration of " & "struct_ma_encoder" &
        " already exists, not redeclaring")
when not declared(enum_ma_stream_format):
  type
    enum_ma_stream_format* = enum_ma_stream_format_536871434
else:
  static :
    hint("Declaration of " & "enum_ma_stream_format" &
        " already exists, not redeclaring")
when not declared(struct_ma_hpf):
  type
    struct_ma_hpf* = struct_ma_hpf_536871581
else:
  static :
    hint("Declaration of " & "struct_ma_hpf" &
        " already exists, not redeclaring")
when not declared(ma_pan_mode):
  type
    ma_pan_mode* = ma_pan_mode_536871659
else:
  static :
    hint("Declaration of " & "ma_pan_mode" & " already exists, not redeclaring")
when not declared(internal_ma_channel_position):
  type
    internal_ma_channel_position* = internal_ma_channel_position_536871428
else:
  static :
    hint("Declaration of " & "internal_ma_channel_position" &
        " already exists, not redeclaring")
when not declared(struct_ma_context):
  type
    struct_ma_context* = struct_ma_context_536871418
else:
  static :
    hint("Declaration of " & "struct_ma_context" &
        " already exists, not redeclaring")
when not declared(struct_ma_data_source_node):
  type
    struct_ma_data_source_node* = struct_ma_data_source_node_536872183
else:
  static :
    hint("Declaration of " & "struct_ma_data_source_node" &
        " already exists, not redeclaring")
when not declared(ma_hishelf_node):
  type
    ma_hishelf_node* = ma_hishelf_node_536872257
else:
  static :
    hint("Declaration of " & "ma_hishelf_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_delay):
  type
    struct_ma_delay* = struct_ma_delay_536871645
else:
  static :
    hint("Declaration of " & "struct_ma_delay" &
        " already exists, not redeclaring")
when not declared(ma_engine):
  type
    ma_engine* = ma_engine_536872267
else:
  static :
    hint("Declaration of " & "ma_engine" & " already exists, not redeclaring")
when not declared(ma_engine_node):
  type
    ma_engine_node* = ma_engine_node_536872289
else:
  static :
    hint("Declaration of " & "ma_engine_node" &
        " already exists, not redeclaring")
when not declared(ma_allocation_callbacks):
  type
    ma_allocation_callbacks* = ma_allocation_callbacks_536871475
else:
  static :
    hint("Declaration of " & "ma_allocation_callbacks" &
        " already exists, not redeclaring")
when not declared(ma_mono_expansion_mode):
  type
    ma_mono_expansion_mode* = ma_mono_expansion_mode_536871745
else:
  static :
    hint("Declaration of " & "ma_mono_expansion_mode" &
        " already exists, not redeclaring")
when not declared(ma_encoder_seek_proc):
  type
    ma_encoder_seek_proc* = ma_encoder_seek_proc_536872045
else:
  static :
    hint("Declaration of " & "ma_encoder_seek_proc" &
        " already exists, not redeclaring")
when not declared(ma_job_queue):
  type
    ma_job_queue* = ma_job_queue_536871364
else:
  static :
    hint("Declaration of " & "ma_job_queue" & " already exists, not redeclaring")
when not declared(ma_lcg):
  type
    ma_lcg* = ma_lcg_536871479
else:
  static :
    hint("Declaration of " & "ma_lcg" & " already exists, not redeclaring")
when not declared(enum_ma_ios_session_category_option):
  type
    enum_ma_ios_session_category_option* = enum_ma_ios_session_category_option_536871917
else:
  static :
    hint("Declaration of " & "enum_ma_ios_session_category_option" &
        " already exists, not redeclaring")
when not declared(ma_encoder_write_pcm_frames_proc):
  type
    ma_encoder_write_pcm_frames_proc* = ma_encoder_write_pcm_frames_proc_536872051
else:
  static :
    hint("Declaration of " & "ma_encoder_write_pcm_frames_proc" &
        " already exists, not redeclaring")
when not declared(ma_default_vfs):
  type
    ma_default_vfs* = ma_default_vfs_536872005
else:
  static :
    hint("Declaration of " & "ma_default_vfs" &
        " already exists, not redeclaring")
when not declared(struct_ma_backend_callbacks):
  type
    struct_ma_backend_callbacks* = struct_ma_backend_callbacks_536871967
else:
  static :
    hint("Declaration of " & "struct_ma_backend_callbacks" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer):
  type
    ma_resource_manager_data_buffer* = ma_resource_manager_data_buffer_536872097
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer" &
        " already exists, not redeclaring")
when not declared(struct_ma_delay_node_config):
  type
    struct_ma_delay_node_config* = struct_ma_delay_node_config_536872259
else:
  static :
    hint("Declaration of " & "struct_ma_delay_node_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_resampler_config):
  type
    struct_ma_resampler_config* = struct_ma_resampler_config_536871723
else:
  static :
    hint("Declaration of " & "struct_ma_resampler_config" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_config):
  type
    ma_linear_resampler_config* = ma_linear_resampler_config_536871715
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_config" &
        " already exists, not redeclaring")
when not declared(ma_lpf1):
  type
    ma_lpf1* = ma_lpf1_536871549
else:
  static :
    hint("Declaration of " & "ma_lpf1" & " already exists, not redeclaring")
when not declared(enum_ma_dither_mode):
  type
    enum_ma_dither_mode* = enum_ma_dither_mode_536871449
else:
  static :
    hint("Declaration of " & "enum_ma_dither_mode" &
        " already exists, not redeclaring")
when not declared(enum_ma_log_level):
  type
    enum_ma_log_level* = enum_ma_log_level_536871412
else:
  static :
    hint("Declaration of " & "enum_ma_log_level" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_job_thread):
  type
    struct_ma_device_job_thread* = struct_ma_device_job_thread_536871887
else:
  static :
    hint("Declaration of " & "struct_ma_device_job_thread" &
        " already exists, not redeclaring")
when not declared(struct_ma_log_callback):
  type
    struct_ma_log_callback* = struct_ma_log_callback_536871521
else:
  static :
    hint("Declaration of " & "struct_ma_log_callback" &
        " already exists, not redeclaring")
when not declared(ma_peak2):
  type
    ma_peak2* = ma_peak2_536871619
else:
  static :
    hint("Declaration of " & "ma_peak2" & " already exists, not redeclaring")
when not declared(ma_sound_inlined):
  type
    ma_sound_inlined* = ma_sound_inlined_536872297
else:
  static :
    hint("Declaration of " & "ma_sound_inlined" &
        " already exists, not redeclaring")
when not declared(struct_ma_vec3f):
  type
    struct_ma_vec3f* = struct_ma_vec3f_536871677
else:
  static :
    hint("Declaration of " & "struct_ma_vec3f" &
        " already exists, not redeclaring")
when not declared(ma_device_job_thread_config):
  type
    ma_device_job_thread_config* = ma_device_job_thread_config_536871885
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_config" &
        " already exists, not redeclaring")
when not declared(ma_encoder):
  type
    ma_encoder* = ma_encoder_536872039
else:
  static :
    hint("Declaration of " & "ma_encoder" & " already exists, not redeclaring")
when not declared(ma_delay_node_config):
  type
    ma_delay_node_config* = ma_delay_node_config_536872261
else:
  static :
    hint("Declaration of " & "ma_delay_node_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_job_type):
  type
    enum_ma_job_type* = enum_ma_job_type_536871857
else:
  static :
    hint("Declaration of " & "enum_ma_job_type" &
        " already exists, not redeclaring")
when not declared(enum_ma_aaudio_allowed_capture_policy):
  type
    enum_ma_aaudio_allowed_capture_policy* = enum_ma_aaudio_allowed_capture_policy_536871945
else:
  static :
    hint("Declaration of " & "enum_ma_aaudio_allowed_capture_policy" &
        " already exists, not redeclaring")
when not declared(enum_ma_aaudio_usage):
  type
    enum_ma_aaudio_usage* = enum_ma_aaudio_usage_536871933
else:
  static :
    hint("Declaration of " & "enum_ma_aaudio_usage" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener):
  type
    ma_spatializer_listener* = ma_spatializer_listener_536871703
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener" &
        " already exists, not redeclaring")
when not declared(struct_ma_data_source_node_config):
  type
    struct_ma_data_source_node_config* = struct_ma_data_source_node_config_536872179
else:
  static :
    hint("Declaration of " & "struct_ma_data_source_node_config" &
        " already exists, not redeclaring")
when not declared(ma_bpf_node_config):
  type
    ma_bpf_node_config* = ma_bpf_node_config_536872221
else:
  static :
    hint("Declaration of " & "ma_bpf_node_config" &
        " already exists, not redeclaring")
when not declared(ma_device_notification_proc):
  type
    ma_device_notification_proc* = ma_device_notification_proc_536871899
else:
  static :
    hint("Declaration of " & "ma_device_notification_proc" &
        " already exists, not redeclaring")
when not declared(ma_node_vtable):
  type
    ma_node_vtable* = ma_node_vtable_536872157
else:
  static :
    hint("Declaration of " & "ma_node_vtable" &
        " already exists, not redeclaring")
when not declared(ma_waveform_type):
  type
    ma_waveform_type* = ma_waveform_type_536872059
else:
  static :
    hint("Declaration of " & "ma_waveform_type" &
        " already exists, not redeclaring")
when not declared(ma_bpf_node):
  type
    ma_bpf_node* = ma_bpf_node_536872225
else:
  static :
    hint("Declaration of " & "ma_bpf_node" & " already exists, not redeclaring")
when not declared(ma_slot_allocator_config):
  type
    ma_slot_allocator_config* = ma_slot_allocator_config_536871843
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_loshelf2_config):
  type
    struct_ma_loshelf2_config* = struct_ma_loshelf2_config_536871621
else:
  static :
    hint("Declaration of " & "struct_ma_loshelf2_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_lcg):
  type
    struct_ma_lcg* = struct_ma_lcg_536871477
else:
  static :
    hint("Declaration of " & "struct_ma_lcg" &
        " already exists, not redeclaring")
when not declared(ma_atomic_float):
  type
    ma_atomic_float* = ma_atomic_float_536871495
else:
  static :
    hint("Declaration of " & "ma_atomic_float" &
        " already exists, not redeclaring")
when not declared(struct_ma_data_converter):
  type
    struct_ma_data_converter* = struct_ma_data_converter_536871763
else:
  static :
    hint("Declaration of " & "struct_ma_data_converter" &
        " already exists, not redeclaring")
when not declared(struct_ma_biquad_node_config):
  type
    struct_ma_biquad_node_config* = struct_ma_biquad_node_config_536872195
else:
  static :
    hint("Declaration of " & "struct_ma_biquad_node_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_delay_node):
  type
    struct_ma_delay_node* = struct_ma_delay_node_536872263
else:
  static :
    hint("Declaration of " & "struct_ma_delay_node" &
        " already exists, not redeclaring")
when not declared(struct_ma_device_descriptor):
  type
    struct_ma_device_descriptor* = struct_ma_device_descriptor_536871975
else:
  static :
    hint("Declaration of " & "struct_ma_device_descriptor" &
        " already exists, not redeclaring")
when not declared(ma_hpf):
  type
    ma_hpf* = ma_hpf_536871583
else:
  static :
    hint("Declaration of " & "ma_hpf" & " already exists, not redeclaring")
when not declared(ma_noise_type):
  type
    ma_noise_type* = ma_noise_type_536872079
else:
  static :
    hint("Declaration of " & "ma_noise_type" &
        " already exists, not redeclaring")
when not declared(ma_stream_format):
  type
    ma_stream_format* = ma_stream_format_536871436
else:
  static :
    hint("Declaration of " & "ma_stream_format" &
        " already exists, not redeclaring")
when not declared(ma_hishelf_config):
  type
    ma_hishelf_config* = ma_hishelf_config_536871635
else:
  static :
    hint("Declaration of " & "ma_hishelf_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_mono_expansion_mode):
  type
    enum_ma_mono_expansion_mode* = enum_ma_mono_expansion_mode_536871743
else:
  static :
    hint("Declaration of " & "enum_ma_mono_expansion_mode" &
        " already exists, not redeclaring")
when not declared(ma_sound_group):
  type
    ma_sound_group* = ma_sound_group_536872303
else:
  static :
    hint("Declaration of " & "ma_sound_group" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_page):
  type
    ma_paged_audio_buffer_page* = ma_paged_audio_buffer_page_536871795
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_page" &
        " already exists, not redeclaring")
when not declared(wchar_t):
  type
    wchar_t* = wchar_t_536871861
else:
  static :
    hint("Declaration of " & "wchar_t" & " already exists, not redeclaring")
when not declared(struct_ma_slot_allocator_group):
  type
    struct_ma_slot_allocator_group* = struct_ma_slot_allocator_group_536871845
else:
  static :
    hint("Declaration of " & "struct_ma_slot_allocator_group" &
        " already exists, not redeclaring")
when not declared(ma_seek_origin):
  type
    ma_seek_origin* = ma_seek_origin_536871993
else:
  static :
    hint("Declaration of " & "ma_seek_origin" &
        " already exists, not redeclaring")
when not declared(ma_biquad_node_config):
  type
    ma_biquad_node_config* = ma_biquad_node_config_536872197
else:
  static :
    hint("Declaration of " & "ma_biquad_node_config" &
        " already exists, not redeclaring")
when not declared(struct_pthread_mutex_s):
  type
    struct_pthread_mutex_s* = struct_pthread_mutex_s_536872315
else:
  static :
    hint("Declaration of " & "struct_pthread_mutex_s" &
        " already exists, not redeclaring")
when not declared(ma_node_base):
  type
    ma_node_base* = ma_node_base_536872171
else:
  static :
    hint("Declaration of " & "ma_node_base" & " already exists, not redeclaring")
when not declared(ma_attenuation_model):
  type
    ma_attenuation_model* = ma_attenuation_model_536871687
else:
  static :
    hint("Declaration of " & "ma_attenuation_model" &
        " already exists, not redeclaring")
when not declared(ma_ios_session_category_option):
  type
    ma_ios_session_category_option* = ma_ios_session_category_option_536871919
else:
  static :
    hint("Declaration of " & "ma_ios_session_category_option" &
        " already exists, not redeclaring")
when not declared(ma_engine_config):
  type
    ma_engine_config* = ma_engine_config_536872309
else:
  static :
    hint("Declaration of " & "ma_engine_config" &
        " already exists, not redeclaring")
when not declared(ma_hpf2):
  type
    ma_hpf2* = ma_hpf2_536871575
else:
  static :
    hint("Declaration of " & "ma_hpf2" & " already exists, not redeclaring")
when not declared(struct_ma_engine):
  type
    struct_ma_engine* = struct_ma_engine_536872269
else:
  static :
    hint("Declaration of " & "struct_ma_engine" &
        " already exists, not redeclaring")
when not declared(ma_resample_algorithm):
  type
    ma_resample_algorithm* = ma_resample_algorithm_536871733
else:
  static :
    hint("Declaration of " & "ma_resample_algorithm" &
        " already exists, not redeclaring")
when not declared(ma_noise):
  type
    ma_noise* = ma_noise_536872087
else:
  static :
    hint("Declaration of " & "ma_noise" & " already exists, not redeclaring")
when not declared(ma_uint8):
  type
    ma_uint8* = ma_uint8_536871368
else:
  static :
    hint("Declaration of " & "ma_uint8" & " already exists, not redeclaring")
when not declared(struct_ma_log):
  type
    struct_ma_log* = struct_ma_log_536871525
else:
  static :
    hint("Declaration of " & "struct_ma_log" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer):
  type
    ma_audio_buffer* = ma_audio_buffer_536871793
else:
  static :
    hint("Declaration of " & "ma_audio_buffer" &
        " already exists, not redeclaring")
when not declared(struct_ma_noise_config):
  type
    struct_ma_noise_config* = struct_ma_noise_config_536872081
else:
  static :
    hint("Declaration of " & "struct_ma_noise_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_standard_sample_rate):
  type
    enum_ma_standard_sample_rate* = enum_ma_standard_sample_rate_536871457
else:
  static :
    hint("Declaration of " & "enum_ma_standard_sample_rate" &
        " already exists, not redeclaring")
when not declared(struct_ma_atomic_float):
  type
    struct_ma_atomic_float* = struct_ma_atomic_float_536871493
else:
  static :
    hint("Declaration of " & "struct_ma_atomic_float" &
        " already exists, not redeclaring")
when not declared(ma_wchar_win32):
  type
    ma_wchar_win32* = ma_wchar_win32_536871410
else:
  static :
    hint("Declaration of " & "ma_wchar_win32" &
        " already exists, not redeclaring")
when not declared(struct_ma_loshelf_node):
  type
    struct_ma_loshelf_node* = struct_ma_loshelf_node_536872247
else:
  static :
    hint("Declaration of " & "struct_ma_loshelf_node" &
        " already exists, not redeclaring")
when not declared(enum_ma_device_type):
  type
    enum_ma_device_type* = enum_ma_device_type_536871905
else:
  static :
    hint("Declaration of " & "enum_ma_device_type" &
        " already exists, not redeclaring")
when not declared(struct_ma_sound_config):
  type
    struct_ma_sound_config* = struct_ma_sound_config_536872293
else:
  static :
    hint("Declaration of " & "struct_ma_sound_config" &
        " already exists, not redeclaring")
when not declared(ma_atomic_vec3f):
  type
    ma_atomic_vec3f* = ma_atomic_vec3f_536871683
else:
  static :
    hint("Declaration of " & "ma_atomic_vec3f" &
        " already exists, not redeclaring")
when not declared(struct_ma_hishelf2_config):
  type
    struct_ma_hishelf2_config* = struct_ma_hishelf2_config_536871631
else:
  static :
    hint("Declaration of " & "struct_ma_hishelf2_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_fader_config):
  type
    struct_ma_fader_config* = struct_ma_fader_config_536871669
else:
  static :
    hint("Declaration of " & "struct_ma_fader_config" &
        " already exists, not redeclaring")
when not declared(ma_standard_channel_map):
  type
    ma_standard_channel_map* = ma_standard_channel_map_536871467
else:
  static :
    hint("Declaration of " & "ma_standard_channel_map" &
        " already exists, not redeclaring")
when not declared(struct_ma_node_config):
  type
    struct_ma_node_config* = struct_ma_node_config_536872159
else:
  static :
    hint("Declaration of " & "struct_ma_node_config" &
        " already exists, not redeclaring")
when not declared(ma_vec3f):
  type
    ma_vec3f* = ma_vec3f_536871679
else:
  static :
    hint("Declaration of " & "ma_vec3f" & " already exists, not redeclaring")
when not declared(struct_ma_resource_manager_data_supply):
  type
    struct_ma_resource_manager_data_supply* = struct_ma_resource_manager_data_supply_536872133
else:
  static :
    hint("Declaration of " & "struct_ma_resource_manager_data_supply" &
        " already exists, not redeclaring")
when not declared(ma_event):
  type
    ma_event* = ma_event_536871513
else:
  static :
    hint("Declaration of " & "ma_event" & " already exists, not redeclaring")
when not declared(ma_bpf_config):
  type
    ma_bpf_config* = ma_bpf_config_536871595
else:
  static :
    hint("Declaration of " & "ma_bpf_config" &
        " already exists, not redeclaring")
when not declared(enum_ma_pan_mode):
  type
    enum_ma_pan_mode* = enum_ma_pan_mode_536871657
else:
  static :
    hint("Declaration of " & "enum_ma_pan_mode" &
        " already exists, not redeclaring")
when not declared(ma_waveform):
  type
    ma_waveform* = ma_waveform_536872067
else:
  static :
    hint("Declaration of " & "ma_waveform" & " already exists, not redeclaring")
when not declared(ma_open_mode_flags):
  type
    ma_open_mode_flags* = ma_open_mode_flags_536871989
else:
  static :
    hint("Declaration of " & "ma_open_mode_flags" &
        " already exists, not redeclaring")
when not declared(struct_ma_lpf_config):
  type
    struct_ma_lpf_config* = struct_ma_lpf_config_536871555
else:
  static :
    hint("Declaration of " & "struct_ma_lpf_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_bpf2):
  type
    struct_ma_bpf2* = struct_ma_bpf2_536871589
else:
  static :
    hint("Declaration of " & "struct_ma_bpf2" &
        " already exists, not redeclaring")
when not declared(ma_engine_process_proc):
  type
    ma_engine_process_proc* = ma_engine_process_proc_536872305
else:
  static :
    hint("Declaration of " & "ma_engine_process_proc" &
        " already exists, not redeclaring")
when not declared(struct_ma_biquad_config):
  type
    struct_ma_biquad_config* = struct_ma_biquad_config_536871533
else:
  static :
    hint("Declaration of " & "struct_ma_biquad_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_file_info):
  type
    struct_ma_file_info* = struct_ma_file_info_536871995
else:
  static :
    hint("Declaration of " & "struct_ma_file_info" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_config):
  type
    ma_data_converter_config* = ma_data_converter_config_536871757
else:
  static :
    hint("Declaration of " & "ma_data_converter_config" &
        " already exists, not redeclaring")
when not declared(struct_ma_bpf_config):
  type
    struct_ma_bpf_config* = struct_ma_bpf_config_536871593
else:
  static :
    hint("Declaration of " & "struct_ma_bpf_config" &
        " already exists, not redeclaring")
when not declared(union_ma_timer):
  type
    union_ma_timer* = union_ma_timer_536871949
else:
  static :
    hint("Declaration of " & "union_ma_timer" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler):
  type
    ma_linear_resampler* = ma_linear_resampler_536871719
else:
  static :
    hint("Declaration of " & "ma_linear_resampler" &
        " already exists, not redeclaring")
when not declared(struct_ma_spatializer_listener):
  type
    struct_ma_spatializer_listener* = struct_ma_spatializer_listener_536871701
else:
  static :
    hint("Declaration of " & "struct_ma_spatializer_listener" &
        " already exists, not redeclaring")
when not declared(enum_ma_opensl_recording_preset):
  type
    enum_ma_opensl_recording_preset* = enum_ma_opensl_recording_preset_536871925
else:
  static :
    hint("Declaration of " & "enum_ma_opensl_recording_preset" &
        " already exists, not redeclaring")
when not declared(union_pthread_cond_t):
  type
    union_pthread_cond_t* = union_pthread_cond_t_536872313
else:
  static :
    hint("Declaration of " & "union_pthread_cond_t" &
        " already exists, not redeclaring")
when not declared(enum_ma_attenuation_model):
  type
    enum_ma_attenuation_model* = enum_ma_attenuation_model_536871685
else:
  static :
    hint("Declaration of " & "enum_ma_attenuation_model" &
        " already exists, not redeclaring")
when not declared(struct_ma_slot_allocator):
  type
    struct_ma_slot_allocator* = struct_ma_slot_allocator_536871849
else:
  static :
    hint("Declaration of " & "struct_ma_slot_allocator" &
        " already exists, not redeclaring")
when not declared(ma_spinlock):
  type
    ma_spinlock* = ma_spinlock_536871501
else:
  static :
    hint("Declaration of " & "ma_spinlock" & " already exists, not redeclaring")
when not declared(ma_notch2_config):
  type
    ma_notch2_config* = ma_notch2_config_536871603
else:
  static :
    hint("Declaration of " & "ma_notch2_config" &
        " already exists, not redeclaring")
when not declared(ma_decoding_backend_config):
  type
    ma_decoding_backend_config* = ma_decoding_backend_config_536872023
else:
  static :
    hint("Declaration of " & "ma_decoding_backend_config" &
        " already exists, not redeclaring")
when not declared(ma_device_notification_type):
  type
    ma_device_notification_type* = ma_device_notification_type_536871893
else:
  static :
    hint("Declaration of " & "ma_device_notification_type" &
        " already exists, not redeclaring")
when not declared(ma_aaudio_allowed_capture_policy):
  type
    ma_aaudio_allowed_capture_policy* = ma_aaudio_allowed_capture_policy_536871947
else:
  static :
    hint("Declaration of " & "ma_aaudio_allowed_capture_policy" &
        " already exists, not redeclaring")
when not declared(struct_ma_hishelf_node_config):
  type
    struct_ma_hishelf_node_config* = struct_ma_hishelf_node_config_536872251
else:
  static :
    hint("Declaration of " & "struct_ma_hishelf_node_config" &
        " already exists, not redeclaring")
when not declared(MA_VERSION_MAJOR):
  when 0 is static:
    const
      MA_VERSION_MAJOR* = 0  ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3724:9
  else:
    let MA_VERSION_MAJOR* = 0 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3724:9
else:
  static :
    hint("Declaration of " & "MA_VERSION_MAJOR" &
        " already exists, not redeclaring")
when not declared(MA_VERSION_MINOR):
  when 11 is static:
    const
      MA_VERSION_MINOR* = 11 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3725:9
  else:
    let MA_VERSION_MINOR* = 11 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3725:9
else:
  static :
    hint("Declaration of " & "MA_VERSION_MINOR" &
        " already exists, not redeclaring")
when not declared(MA_VERSION_REVISION):
  when 21 is static:
    const
      MA_VERSION_REVISION* = 21 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3726:9
  else:
    let MA_VERSION_REVISION* = 21 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3726:9
else:
  static :
    hint("Declaration of " & "MA_VERSION_REVISION" &
        " already exists, not redeclaring")
when not declared(MA_SIZEOF_PTR):
  when 8 is static:
    const
      MA_SIZEOF_PTR* = 8     ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3745:13
  else:
    let MA_SIZEOF_PTR* = 8   ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3745:13
else:
  static :
    hint("Declaration of " & "MA_SIZEOF_PTR" &
        " already exists, not redeclaring")
when not declared(MA_TRUE):
  when 1 is static:
    const
      MA_TRUE* = 1           ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3797:9
  else:
    let MA_TRUE* = 1         ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3797:9
else:
  static :
    hint("Declaration of " & "MA_TRUE" & " already exists, not redeclaring")
when not declared(MA_FALSE):
  when 0 is static:
    const
      MA_FALSE* = 0          ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3798:9
  else:
    let MA_FALSE* = 0        ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3798:9
else:
  static :
    hint("Declaration of " & "MA_FALSE" & " already exists, not redeclaring")
when not declared(MA_SIZE_MAX):
  when 4294967295 is static:
    const
      MA_SIZE_MAX* = 4294967295'i64 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3831:13
  else:
    let MA_SIZE_MAX* = 4294967295'i64 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3831:13
else:
  static :
    hint("Declaration of " & "MA_SIZE_MAX" & " already exists, not redeclaring")
when not declared(MA_GNUC_INLINE_HINT):
  when inline is typedesc:
    type
      MA_GNUC_INLINE_HINT* = inline ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3936:17
  else:
    when inline is static:
      const
        MA_GNUC_INLINE_HINT* = inline ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3936:17
    else:
      let MA_GNUC_INLINE_HINT* = inline ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3936:17
else:
  static :
    hint("Declaration of " & "MA_GNUC_INLINE_HINT" &
        " already exists, not redeclaring")
when not declared(MA_API):
  when extern is typedesc:
    type
      MA_API* = extern       ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3981:17
  else:
    when extern is static:
      const
        MA_API* = extern     ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3981:17
    else:
      let MA_API* = extern   ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3981:17
else:
  static :
    hint("Declaration of " & "MA_API" & " already exists, not redeclaring")
when not declared(MA_SIMD_ALIGNMENT):
  when 32 is static:
    const
      MA_SIMD_ALIGNMENT* = 32 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3995:9
  else:
    let MA_SIMD_ALIGNMENT* = 32 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:3995:9
else:
  static :
    hint("Declaration of " & "MA_SIMD_ALIGNMENT" &
        " already exists, not redeclaring")
when not declared(MA_MIN_CHANNELS):
  when 1 is static:
    const
      MA_MIN_CHANNELS* = 1   ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4219:9
  else:
    let MA_MIN_CHANNELS* = 1 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4219:9
else:
  static :
    hint("Declaration of " & "MA_MIN_CHANNELS" &
        " already exists, not redeclaring")
when not declared(MA_MAX_CHANNELS):
  when 254 is static:
    const
      MA_MAX_CHANNELS* = 254 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4221:9
  else:
    let MA_MAX_CHANNELS* = 254 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4221:9
else:
  static :
    hint("Declaration of " & "MA_MAX_CHANNELS" &
        " already exists, not redeclaring")
when not declared(MA_MAX_FILTER_ORDER):
  when 8 is static:
    const
      MA_MAX_FILTER_ORDER* = 8 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4225:9
  else:
    let MA_MAX_FILTER_ORDER* = 8 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4225:9
else:
  static :
    hint("Declaration of " & "MA_MAX_FILTER_ORDER" &
        " already exists, not redeclaring")
when not declared(MA_MAX_LOG_CALLBACKS):
  when 4 is static:
    const
      MA_MAX_LOG_CALLBACKS* = 4 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4474:9
  else:
    let MA_MAX_LOG_CALLBACKS* = 4 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:4474:9
else:
  static :
    hint("Declaration of " & "MA_MAX_LOG_CALLBACKS" &
        " already exists, not redeclaring")
when not declared(MA_CHANNEL_INDEX_NULL):
  when 255 is static:
    const
      MA_CHANNEL_INDEX_NULL* = 255 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5655:9
  else:
    let MA_CHANNEL_INDEX_NULL* = 255 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5655:9
else:
  static :
    hint("Declaration of " & "MA_CHANNEL_INDEX_NULL" &
        " already exists, not redeclaring")
when not declared(MA_DATA_SOURCE_SELF_MANAGED_RANGE_AND_LOOP_POINT):
  when 1 is static:
    const
      MA_DATA_SOURCE_SELF_MANAGED_RANGE_AND_LOOP_POINT* = 1 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5779:9
  else:
    let MA_DATA_SOURCE_SELF_MANAGED_RANGE_AND_LOOP_POINT* = 1 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:5779:9
else:
  static :
    hint("Declaration of " & "MA_DATA_SOURCE_SELF_MANAGED_RANGE_AND_LOOP_POINT" &
        " already exists, not redeclaring")
when not declared(MA_MAX_DEVICE_NAME_LENGTH):
  when 255 is static:
    const
      MA_MAX_DEVICE_NAME_LENGTH* = 255 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:7017:9
  else:
    let MA_MAX_DEVICE_NAME_LENGTH* = 255 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:7017:9
else:
  static :
    hint("Declaration of " & "MA_MAX_DEVICE_NAME_LENGTH" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_job):
  when ma_job_536871361 is typedesc:
    type
      ma_resource_manager_job* = ma_job_536871361 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10264:9
  else:
    when ma_job_536871361 is static:
      const
        ma_resource_manager_job* = ma_job_536871361 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10264:9
    else:
      let ma_resource_manager_job* = ma_job_536871361 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10264:9
else:
  static :
    hint("Declaration of " & "ma_resource_manager_job" &
        " already exists, not redeclaring")
when not declared(ma_job_init):
  proc ma_job_init*(code: ma_uint16_536871373): ma_job_536871361 {.cdecl,
      importc: "ma_job_init".}
else:
  static :
    hint("Declaration of " & "ma_job_init" & " already exists, not redeclaring")
when not declared(MA_JOB_TYPE_RESOURCE_MANAGER_QUEUE_FLAG_NON_BLOCKING):
  when MA_JOB_QUEUE_FLAG_NON_BLOCKING is typedesc:
    type
      MA_JOB_TYPE_RESOURCE_MANAGER_QUEUE_FLAG_NON_BLOCKING* = MA_JOB_QUEUE_FLAG_NON_BLOCKING ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10266:9
  else:
    when MA_JOB_QUEUE_FLAG_NON_BLOCKING is static:
      const
        MA_JOB_TYPE_RESOURCE_MANAGER_QUEUE_FLAG_NON_BLOCKING* = MA_JOB_QUEUE_FLAG_NON_BLOCKING ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10266:9
    else:
      let MA_JOB_TYPE_RESOURCE_MANAGER_QUEUE_FLAG_NON_BLOCKING* = MA_JOB_QUEUE_FLAG_NON_BLOCKING ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10266:9
else:
  static :
    hint("Declaration of " &
        "MA_JOB_TYPE_RESOURCE_MANAGER_QUEUE_FLAG_NON_BLOCKING" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_job_queue_config):
  when ma_job_queue_config_536871363 is typedesc:
    type
      ma_resource_manager_job_queue_config* = ma_job_queue_config_536871363 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10267:9
  else:
    when ma_job_queue_config_536871363 is static:
      const
        ma_resource_manager_job_queue_config* = ma_job_queue_config_536871363 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10267:9
    else:
      let ma_resource_manager_job_queue_config* = ma_job_queue_config_536871363 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10267:9
else:
  static :
    hint("Declaration of " & "ma_resource_manager_job_queue_config" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_config_init):
  proc ma_job_queue_config_init*(flags: ma_uint32_536871377; capacity: ma_uint32_536871377): ma_job_queue_config_536871363 {.
      cdecl, importc: "ma_job_queue_config_init".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_config_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_job_queue):
  when ma_job_queue_536871365 is typedesc:
    type
      ma_resource_manager_job_queue* = ma_job_queue_536871365 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10269:9
  else:
    when ma_job_queue_536871365 is static:
      const
        ma_resource_manager_job_queue* = ma_job_queue_536871365 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10269:9
    else:
      let ma_resource_manager_job_queue* = ma_job_queue_536871365 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10269:9
else:
  static :
    hint("Declaration of " & "ma_resource_manager_job_queue" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_get_heap_size):
  proc ma_job_queue_get_heap_size*(pConfig: ptr ma_job_queue_config_536871363;
                                   pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_job_queue_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_init_preallocated):
  proc ma_job_queue_init_preallocated*(pConfig: ptr ma_job_queue_config_536871363;
                                       pHeap: pointer; pQueue: ptr ma_job_queue_536871365): ma_result_536871433 {.
      cdecl, importc: "ma_job_queue_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_init):
  proc ma_job_queue_init*(pConfig: ptr ma_job_queue_config_536871363;
                          pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                          pQueue: ptr ma_job_queue_536871365): ma_result_536871433 {.
      cdecl, importc: "ma_job_queue_init".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_init" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_uninit):
  proc ma_job_queue_uninit*(pQueue: ptr ma_job_queue_536871365;
                            pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_job_queue_uninit".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_uninit" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_post):
  proc ma_job_queue_post*(pQueue: ptr ma_job_queue_536871365; pJob: ptr ma_job_536871361): ma_result_536871433 {.
      cdecl, importc: "ma_job_queue_post".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_post" &
        " already exists, not redeclaring")
when not declared(ma_job_queue_next):
  proc ma_job_queue_next*(pQueue: ptr ma_job_queue_536871365; pJob: ptr ma_job_536871361): ma_result_536871433 {.
      cdecl, importc: "ma_job_queue_next".}
else:
  static :
    hint("Declaration of " & "ma_job_queue_next" &
        " already exists, not redeclaring")
when not declared(MA_RESOURCE_MANAGER_MAX_JOB_THREAD_COUNT):
  when 64 is static:
    const
      MA_RESOURCE_MANAGER_MAX_JOB_THREAD_COUNT* = 64 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10284:9
  else:
    let MA_RESOURCE_MANAGER_MAX_JOB_THREAD_COUNT* = 64 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10284:9
else:
  static :
    hint("Declaration of " & "MA_RESOURCE_MANAGER_MAX_JOB_THREAD_COUNT" &
        " already exists, not redeclaring")
when not declared(MA_MAX_NODE_BUS_COUNT):
  when 254 is static:
    const
      MA_MAX_NODE_BUS_COUNT* = 254 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10539:9
  else:
    let MA_MAX_NODE_BUS_COUNT* = 254 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10539:9
else:
  static :
    hint("Declaration of " & "MA_MAX_NODE_BUS_COUNT" &
        " already exists, not redeclaring")
when not declared(MA_MAX_NODE_LOCAL_BUS_COUNT):
  when 2 is static:
    const
      MA_MAX_NODE_LOCAL_BUS_COUNT* = 2 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10544:9
  else:
    let MA_MAX_NODE_LOCAL_BUS_COUNT* = 2 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10544:9
else:
  static :
    hint("Declaration of " & "MA_MAX_NODE_LOCAL_BUS_COUNT" &
        " already exists, not redeclaring")
when not declared(MA_NODE_BUS_COUNT_UNKNOWN):
  when 255 is static:
    const
      MA_NODE_BUS_COUNT_UNKNOWN* = 255 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10548:9
  else:
    let MA_NODE_BUS_COUNT_UNKNOWN* = 255 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:10548:9
else:
  static :
    hint("Declaration of " & "MA_NODE_BUS_COUNT_UNKNOWN" &
        " already exists, not redeclaring")
when not declared(MA_ENGINE_MAX_LISTENERS):
  when 4 is static:
    const
      MA_ENGINE_MAX_LISTENERS* = 4 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11034:9
  else:
    let MA_ENGINE_MAX_LISTENERS* = 4 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11034:9
else:
  static :
    hint("Declaration of " & "MA_ENGINE_MAX_LISTENERS" &
        " already exists, not redeclaring")
when not declared(MA_SOUND_SOURCE_CHANNEL_COUNT):
  when 4294967295 is static:
    const
      MA_SOUND_SOURCE_CHANNEL_COUNT* = 4294967295'i64 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11103:9
  else:
    let MA_SOUND_SOURCE_CHANNEL_COUNT* = 4294967295'i64 ## Generated based on /home/esteban/AtomProjects/nim-stt-whisper/src/miniaudio/miniaudio.h:11103:9
else:
  static :
    hint("Declaration of " & "MA_SOUND_SOURCE_CHANNEL_COUNT" &
        " already exists, not redeclaring")
when not declared(ma_version):
  proc ma_version*(pMajor: ptr ma_uint32_536871377; pMinor: ptr ma_uint32_536871377;
                   pRevision: ptr ma_uint32_536871377): void {.cdecl,
      importc: "ma_version".}
else:
  static :
    hint("Declaration of " & "ma_version" & " already exists, not redeclaring")
when not declared(ma_version_string):
  proc ma_version_string*(): cstring {.cdecl, importc: "ma_version_string".}
else:
  static :
    hint("Declaration of " & "ma_version_string" &
        " already exists, not redeclaring")
when not declared(ma_log_callback_init):
  proc ma_log_callback_init*(onLog: ma_log_callback_proc_536871520;
                             pUserData: pointer): ma_log_callback_536871524 {.
      cdecl, importc: "ma_log_callback_init".}
else:
  static :
    hint("Declaration of " & "ma_log_callback_init" &
        " already exists, not redeclaring")
when not declared(ma_log_init):
  proc ma_log_init*(pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                    pLog: ptr ma_log_536871528): ma_result_536871433 {.cdecl,
      importc: "ma_log_init".}
else:
  static :
    hint("Declaration of " & "ma_log_init" & " already exists, not redeclaring")
when not declared(ma_log_uninit):
  proc ma_log_uninit*(pLog: ptr ma_log_536871528): void {.cdecl,
      importc: "ma_log_uninit".}
else:
  static :
    hint("Declaration of " & "ma_log_uninit" &
        " already exists, not redeclaring")
when not declared(ma_log_register_callback):
  proc ma_log_register_callback*(pLog: ptr ma_log_536871528;
                                 callback: ma_log_callback_536871524): ma_result_536871433 {.
      cdecl, importc: "ma_log_register_callback".}
else:
  static :
    hint("Declaration of " & "ma_log_register_callback" &
        " already exists, not redeclaring")
when not declared(ma_log_unregister_callback):
  proc ma_log_unregister_callback*(pLog: ptr ma_log_536871528;
                                   callback: ma_log_callback_536871524): ma_result_536871433 {.
      cdecl, importc: "ma_log_unregister_callback".}
else:
  static :
    hint("Declaration of " & "ma_log_unregister_callback" &
        " already exists, not redeclaring")
when not declared(ma_log_post):
  proc ma_log_post*(pLog: ptr ma_log_536871528; level: ma_uint32_536871377;
                    pMessage: cstring): ma_result_536871433 {.cdecl,
      importc: "ma_log_post".}
else:
  static :
    hint("Declaration of " & "ma_log_post" & " already exists, not redeclaring")
when not declared(ma_log_postv):
  proc ma_log_postv*(pLog: ptr ma_log_536871528; level: ma_uint32_536871377;
                     pFormat: cstring): ma_result_536871433 {.cdecl, varargs,
      importc: "ma_log_postv".}
else:
  static :
    hint("Declaration of " & "ma_log_postv" & " already exists, not redeclaring")
when not declared(ma_log_postf):
  proc ma_log_postf*(pLog: ptr ma_log_536871528; level: ma_uint32_536871377;
                     pFormat: cstring): ma_result_536871433 {.cdecl, varargs,
      importc: "ma_log_postf".}
else:
  static :
    hint("Declaration of " & "ma_log_postf" & " already exists, not redeclaring")
when not declared(ma_biquad_config_init):
  proc ma_biquad_config_init*(format: ma_format_536871456; channels: ma_uint32_536871377;
                              b0: cdouble; b1: cdouble; b2: cdouble;
                              a0: cdouble; a1: cdouble; a2: cdouble): ma_biquad_config_536871536 {.
      cdecl, importc: "ma_biquad_config_init".}
else:
  static :
    hint("Declaration of " & "ma_biquad_config_init" &
        " already exists, not redeclaring")
when not declared(ma_biquad_get_heap_size):
  proc ma_biquad_get_heap_size*(pConfig: ptr ma_biquad_config_536871536;
                                pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_biquad_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_biquad_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_biquad_init_preallocated):
  proc ma_biquad_init_preallocated*(pConfig: ptr ma_biquad_config_536871536;
                                    pHeap: pointer; pBQ: ptr ma_biquad_536871540): ma_result_536871433 {.
      cdecl, importc: "ma_biquad_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_biquad_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_biquad_init):
  proc ma_biquad_init*(pConfig: ptr ma_biquad_config_536871536;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                       pBQ: ptr ma_biquad_536871540): ma_result_536871433 {.
      cdecl, importc: "ma_biquad_init".}
else:
  static :
    hint("Declaration of " & "ma_biquad_init" &
        " already exists, not redeclaring")
when not declared(ma_biquad_uninit):
  proc ma_biquad_uninit*(pBQ: ptr ma_biquad_536871540;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_biquad_uninit".}
else:
  static :
    hint("Declaration of " & "ma_biquad_uninit" &
        " already exists, not redeclaring")
when not declared(ma_biquad_reinit):
  proc ma_biquad_reinit*(pConfig: ptr ma_biquad_config_536871536;
                         pBQ: ptr ma_biquad_536871540): ma_result_536871433 {.
      cdecl, importc: "ma_biquad_reinit".}
else:
  static :
    hint("Declaration of " & "ma_biquad_reinit" &
        " already exists, not redeclaring")
when not declared(ma_biquad_clear_cache):
  proc ma_biquad_clear_cache*(pBQ: ptr ma_biquad_536871540): ma_result_536871433 {.
      cdecl, importc: "ma_biquad_clear_cache".}
else:
  static :
    hint("Declaration of " & "ma_biquad_clear_cache" &
        " already exists, not redeclaring")
when not declared(ma_biquad_process_pcm_frames):
  proc ma_biquad_process_pcm_frames*(pBQ: ptr ma_biquad_536871540;
                                     pFramesOut: pointer; pFramesIn: pointer;
                                     frameCount: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_biquad_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_biquad_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_biquad_get_latency):
  proc ma_biquad_get_latency*(pBQ: ptr ma_biquad_536871540): ma_uint32_536871377 {.
      cdecl, importc: "ma_biquad_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_biquad_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_config_init):
  proc ma_lpf1_config_init*(format: ma_format_536871456; channels: ma_uint32_536871377;
                            sampleRate: ma_uint32_536871377;
                            cutoffFrequency: cdouble): ma_lpf1_config_536871544 {.
      cdecl, importc: "ma_lpf1_config_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_config_init" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_config_init):
  proc ma_lpf2_config_init*(format: ma_format_536871456; channels: ma_uint32_536871377;
                            sampleRate: ma_uint32_536871377;
                            cutoffFrequency: cdouble; q: cdouble): ma_lpf2_config_536871546 {.
      cdecl, importc: "ma_lpf2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_config_init" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_get_heap_size):
  proc ma_lpf1_get_heap_size*(pConfig: ptr ma_lpf1_config_536871544;
                              pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_lpf1_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_init_preallocated):
  proc ma_lpf1_init_preallocated*(pConfig: ptr ma_lpf1_config_536871544;
                                  pHeap: pointer; pLPF: ptr ma_lpf1_536871550): ma_result_536871433 {.
      cdecl, importc: "ma_lpf1_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_init):
  proc ma_lpf1_init*(pConfig: ptr ma_lpf1_config_536871544;
                     pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                     pLPF: ptr ma_lpf1_536871550): ma_result_536871433 {.cdecl,
      importc: "ma_lpf1_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_init" & " already exists, not redeclaring")
when not declared(ma_lpf1_uninit):
  proc ma_lpf1_uninit*(pLPF: ptr ma_lpf1_536871550;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_lpf1_uninit".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_uninit" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_reinit):
  proc ma_lpf1_reinit*(pConfig: ptr ma_lpf1_config_536871544; pLPF: ptr ma_lpf1_536871550): ma_result_536871433 {.
      cdecl, importc: "ma_lpf1_reinit".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_reinit" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_clear_cache):
  proc ma_lpf1_clear_cache*(pLPF: ptr ma_lpf1_536871550): ma_result_536871433 {.
      cdecl, importc: "ma_lpf1_clear_cache".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_clear_cache" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_process_pcm_frames):
  proc ma_lpf1_process_pcm_frames*(pLPF: ptr ma_lpf1_536871550;
                                   pFramesOut: pointer; pFramesIn: pointer;
                                   frameCount: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_lpf1_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_lpf1_get_latency):
  proc ma_lpf1_get_latency*(pLPF: ptr ma_lpf1_536871550): ma_uint32_536871377 {.
      cdecl, importc: "ma_lpf1_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_lpf1_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_get_heap_size):
  proc ma_lpf2_get_heap_size*(pConfig: ptr ma_lpf2_config_536871546;
                              pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_lpf2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_init_preallocated):
  proc ma_lpf2_init_preallocated*(pConfig: ptr ma_lpf2_config_536871546;
                                  pHeap: pointer; pHPF: ptr ma_lpf2_536871554): ma_result_536871433 {.
      cdecl, importc: "ma_lpf2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_init):
  proc ma_lpf2_init*(pConfig: ptr ma_lpf2_config_536871546;
                     pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                     pLPF: ptr ma_lpf2_536871554): ma_result_536871433 {.cdecl,
      importc: "ma_lpf2_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_init" & " already exists, not redeclaring")
when not declared(ma_lpf2_uninit):
  proc ma_lpf2_uninit*(pLPF: ptr ma_lpf2_536871554;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_lpf2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_uninit" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_reinit):
  proc ma_lpf2_reinit*(pConfig: ptr ma_lpf2_config_536871546; pLPF: ptr ma_lpf2_536871554): ma_result_536871433 {.
      cdecl, importc: "ma_lpf2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_reinit" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_clear_cache):
  proc ma_lpf2_clear_cache*(pLPF: ptr ma_lpf2_536871554): ma_result_536871433 {.
      cdecl, importc: "ma_lpf2_clear_cache".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_clear_cache" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_process_pcm_frames):
  proc ma_lpf2_process_pcm_frames*(pLPF: ptr ma_lpf2_536871554;
                                   pFramesOut: pointer; pFramesIn: pointer;
                                   frameCount: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_lpf2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_lpf2_get_latency):
  proc ma_lpf2_get_latency*(pLPF: ptr ma_lpf2_536871554): ma_uint32_536871377 {.
      cdecl, importc: "ma_lpf2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_lpf2_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_lpf_config_init):
  proc ma_lpf_config_init*(format: ma_format_536871456; channels: ma_uint32_536871377;
                           sampleRate: ma_uint32_536871377;
                           cutoffFrequency: cdouble; order: ma_uint32_536871377): ma_lpf_config_536871558 {.
      cdecl, importc: "ma_lpf_config_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf_config_init" &
        " already exists, not redeclaring")
when not declared(ma_lpf_get_heap_size):
  proc ma_lpf_get_heap_size*(pConfig: ptr ma_lpf_config_536871558;
                             pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_lpf_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_lpf_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_lpf_init_preallocated):
  proc ma_lpf_init_preallocated*(pConfig: ptr ma_lpf_config_536871558;
                                 pHeap: pointer; pLPF: ptr ma_lpf_536871562): ma_result_536871433 {.
      cdecl, importc: "ma_lpf_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_lpf_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_lpf_init):
  proc ma_lpf_init*(pConfig: ptr ma_lpf_config_536871558;
                    pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                    pLPF: ptr ma_lpf_536871562): ma_result_536871433 {.cdecl,
      importc: "ma_lpf_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf_init" & " already exists, not redeclaring")
when not declared(ma_lpf_uninit):
  proc ma_lpf_uninit*(pLPF: ptr ma_lpf_536871562;
                      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_lpf_uninit".}
else:
  static :
    hint("Declaration of " & "ma_lpf_uninit" &
        " already exists, not redeclaring")
when not declared(ma_lpf_reinit):
  proc ma_lpf_reinit*(pConfig: ptr ma_lpf_config_536871558; pLPF: ptr ma_lpf_536871562): ma_result_536871433 {.
      cdecl, importc: "ma_lpf_reinit".}
else:
  static :
    hint("Declaration of " & "ma_lpf_reinit" &
        " already exists, not redeclaring")
when not declared(ma_lpf_clear_cache):
  proc ma_lpf_clear_cache*(pLPF: ptr ma_lpf_536871562): ma_result_536871433 {.
      cdecl, importc: "ma_lpf_clear_cache".}
else:
  static :
    hint("Declaration of " & "ma_lpf_clear_cache" &
        " already exists, not redeclaring")
when not declared(ma_lpf_process_pcm_frames):
  proc ma_lpf_process_pcm_frames*(pLPF: ptr ma_lpf_536871562;
                                  pFramesOut: pointer; pFramesIn: pointer;
                                  frameCount: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_lpf_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_lpf_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_lpf_get_latency):
  proc ma_lpf_get_latency*(pLPF: ptr ma_lpf_536871562): ma_uint32_536871377 {.
      cdecl, importc: "ma_lpf_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_lpf_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_hpf1_config_init):
  proc ma_hpf1_config_init*(format: ma_format_536871456; channels: ma_uint32_536871377;
                            sampleRate: ma_uint32_536871377;
                            cutoffFrequency: cdouble): ma_hpf1_config_536871566 {.
      cdecl, importc: "ma_hpf1_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_config_init" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_config_init):
  proc ma_hpf2_config_init*(format: ma_format_536871456; channels: ma_uint32_536871377;
                            sampleRate: ma_uint32_536871377;
                            cutoffFrequency: cdouble; q: cdouble): ma_hpf2_config_536871568 {.
      cdecl, importc: "ma_hpf2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_config_init" &
        " already exists, not redeclaring")
when not declared(ma_hpf1_get_heap_size):
  proc ma_hpf1_get_heap_size*(pConfig: ptr ma_hpf1_config_536871566;
                              pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_hpf1_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_hpf1_init_preallocated):
  proc ma_hpf1_init_preallocated*(pConfig: ptr ma_hpf1_config_536871566;
                                  pHeap: pointer; pLPF: ptr ma_hpf1_536871572): ma_result_536871433 {.
      cdecl, importc: "ma_hpf1_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_hpf1_init):
  proc ma_hpf1_init*(pConfig: ptr ma_hpf1_config_536871566;
                     pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                     pHPF: ptr ma_hpf1_536871572): ma_result_536871433 {.cdecl,
      importc: "ma_hpf1_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_init" & " already exists, not redeclaring")
when not declared(ma_hpf1_uninit):
  proc ma_hpf1_uninit*(pHPF: ptr ma_hpf1_536871572;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_hpf1_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_uninit" &
        " already exists, not redeclaring")
when not declared(ma_hpf1_reinit):
  proc ma_hpf1_reinit*(pConfig: ptr ma_hpf1_config_536871566; pHPF: ptr ma_hpf1_536871572): ma_result_536871433 {.
      cdecl, importc: "ma_hpf1_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_reinit" &
        " already exists, not redeclaring")
when not declared(ma_hpf1_process_pcm_frames):
  proc ma_hpf1_process_pcm_frames*(pHPF: ptr ma_hpf1_536871572;
                                   pFramesOut: pointer; pFramesIn: pointer;
                                   frameCount: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_hpf1_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_hpf1_get_latency):
  proc ma_hpf1_get_latency*(pHPF: ptr ma_hpf1_536871572): ma_uint32_536871377 {.
      cdecl, importc: "ma_hpf1_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_hpf1_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_get_heap_size):
  proc ma_hpf2_get_heap_size*(pConfig: ptr ma_hpf2_config_536871568;
                              pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_hpf2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_init_preallocated):
  proc ma_hpf2_init_preallocated*(pConfig: ptr ma_hpf2_config_536871568;
                                  pHeap: pointer; pHPF: ptr ma_hpf2_536871576): ma_result_536871433 {.
      cdecl, importc: "ma_hpf2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_init):
  proc ma_hpf2_init*(pConfig: ptr ma_hpf2_config_536871568;
                     pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                     pHPF: ptr ma_hpf2_536871576): ma_result_536871433 {.cdecl,
      importc: "ma_hpf2_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_init" & " already exists, not redeclaring")
when not declared(ma_hpf2_uninit):
  proc ma_hpf2_uninit*(pHPF: ptr ma_hpf2_536871576;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_hpf2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_uninit" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_reinit):
  proc ma_hpf2_reinit*(pConfig: ptr ma_hpf2_config_536871568; pHPF: ptr ma_hpf2_536871576): ma_result_536871433 {.
      cdecl, importc: "ma_hpf2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_reinit" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_process_pcm_frames):
  proc ma_hpf2_process_pcm_frames*(pHPF: ptr ma_hpf2_536871576;
                                   pFramesOut: pointer; pFramesIn: pointer;
                                   frameCount: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_hpf2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_hpf2_get_latency):
  proc ma_hpf2_get_latency*(pHPF: ptr ma_hpf2_536871576): ma_uint32_536871377 {.
      cdecl, importc: "ma_hpf2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_hpf2_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_hpf_config_init):
  proc ma_hpf_config_init*(format: ma_format_536871456; channels: ma_uint32_536871377;
                           sampleRate: ma_uint32_536871377;
                           cutoffFrequency: cdouble; order: ma_uint32_536871377): ma_hpf_config_536871580 {.
      cdecl, importc: "ma_hpf_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf_config_init" &
        " already exists, not redeclaring")
when not declared(ma_hpf_get_heap_size):
  proc ma_hpf_get_heap_size*(pConfig: ptr ma_hpf_config_536871580;
                             pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_hpf_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_hpf_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_hpf_init_preallocated):
  proc ma_hpf_init_preallocated*(pConfig: ptr ma_hpf_config_536871580;
                                 pHeap: pointer; pLPF: ptr ma_hpf_536871584): ma_result_536871433 {.
      cdecl, importc: "ma_hpf_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_hpf_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_hpf_init):
  proc ma_hpf_init*(pConfig: ptr ma_hpf_config_536871580;
                    pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                    pHPF: ptr ma_hpf_536871584): ma_result_536871433 {.cdecl,
      importc: "ma_hpf_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf_init" & " already exists, not redeclaring")
when not declared(ma_hpf_uninit):
  proc ma_hpf_uninit*(pHPF: ptr ma_hpf_536871584;
                      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_hpf_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hpf_uninit" &
        " already exists, not redeclaring")
when not declared(ma_hpf_reinit):
  proc ma_hpf_reinit*(pConfig: ptr ma_hpf_config_536871580; pHPF: ptr ma_hpf_536871584): ma_result_536871433 {.
      cdecl, importc: "ma_hpf_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hpf_reinit" &
        " already exists, not redeclaring")
when not declared(ma_hpf_process_pcm_frames):
  proc ma_hpf_process_pcm_frames*(pHPF: ptr ma_hpf_536871584;
                                  pFramesOut: pointer; pFramesIn: pointer;
                                  frameCount: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_hpf_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_hpf_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_hpf_get_latency):
  proc ma_hpf_get_latency*(pHPF: ptr ma_hpf_536871584): ma_uint32_536871377 {.
      cdecl, importc: "ma_hpf_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_hpf_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_config_init):
  proc ma_bpf2_config_init*(format: ma_format_536871456; channels: ma_uint32_536871377;
                            sampleRate: ma_uint32_536871377;
                            cutoffFrequency: cdouble; q: cdouble): ma_bpf2_config_536871588 {.
      cdecl, importc: "ma_bpf2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_config_init" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_get_heap_size):
  proc ma_bpf2_get_heap_size*(pConfig: ptr ma_bpf2_config_536871588;
                              pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_bpf2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_init_preallocated):
  proc ma_bpf2_init_preallocated*(pConfig: ptr ma_bpf2_config_536871588;
                                  pHeap: pointer; pBPF: ptr ma_bpf2_536871592): ma_result_536871433 {.
      cdecl, importc: "ma_bpf2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_init):
  proc ma_bpf2_init*(pConfig: ptr ma_bpf2_config_536871588;
                     pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                     pBPF: ptr ma_bpf2_536871592): ma_result_536871433 {.cdecl,
      importc: "ma_bpf2_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_init" & " already exists, not redeclaring")
when not declared(ma_bpf2_uninit):
  proc ma_bpf2_uninit*(pBPF: ptr ma_bpf2_536871592;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_bpf2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_uninit" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_reinit):
  proc ma_bpf2_reinit*(pConfig: ptr ma_bpf2_config_536871588; pBPF: ptr ma_bpf2_536871592): ma_result_536871433 {.
      cdecl, importc: "ma_bpf2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_reinit" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_process_pcm_frames):
  proc ma_bpf2_process_pcm_frames*(pBPF: ptr ma_bpf2_536871592;
                                   pFramesOut: pointer; pFramesIn: pointer;
                                   frameCount: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_bpf2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_bpf2_get_latency):
  proc ma_bpf2_get_latency*(pBPF: ptr ma_bpf2_536871592): ma_uint32_536871377 {.
      cdecl, importc: "ma_bpf2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_bpf2_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_bpf_config_init):
  proc ma_bpf_config_init*(format: ma_format_536871456; channels: ma_uint32_536871377;
                           sampleRate: ma_uint32_536871377;
                           cutoffFrequency: cdouble; order: ma_uint32_536871377): ma_bpf_config_536871596 {.
      cdecl, importc: "ma_bpf_config_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf_config_init" &
        " already exists, not redeclaring")
when not declared(ma_bpf_get_heap_size):
  proc ma_bpf_get_heap_size*(pConfig: ptr ma_bpf_config_536871596;
                             pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_bpf_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_bpf_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_bpf_init_preallocated):
  proc ma_bpf_init_preallocated*(pConfig: ptr ma_bpf_config_536871596;
                                 pHeap: pointer; pBPF: ptr ma_bpf_536871600): ma_result_536871433 {.
      cdecl, importc: "ma_bpf_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_bpf_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_bpf_init):
  proc ma_bpf_init*(pConfig: ptr ma_bpf_config_536871596;
                    pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                    pBPF: ptr ma_bpf_536871600): ma_result_536871433 {.cdecl,
      importc: "ma_bpf_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf_init" & " already exists, not redeclaring")
when not declared(ma_bpf_uninit):
  proc ma_bpf_uninit*(pBPF: ptr ma_bpf_536871600;
                      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_bpf_uninit".}
else:
  static :
    hint("Declaration of " & "ma_bpf_uninit" &
        " already exists, not redeclaring")
when not declared(ma_bpf_reinit):
  proc ma_bpf_reinit*(pConfig: ptr ma_bpf_config_536871596; pBPF: ptr ma_bpf_536871600): ma_result_536871433 {.
      cdecl, importc: "ma_bpf_reinit".}
else:
  static :
    hint("Declaration of " & "ma_bpf_reinit" &
        " already exists, not redeclaring")
when not declared(ma_bpf_process_pcm_frames):
  proc ma_bpf_process_pcm_frames*(pBPF: ptr ma_bpf_536871600;
                                  pFramesOut: pointer; pFramesIn: pointer;
                                  frameCount: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_bpf_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_bpf_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_bpf_get_latency):
  proc ma_bpf_get_latency*(pBPF: ptr ma_bpf_536871600): ma_uint32_536871377 {.
      cdecl, importc: "ma_bpf_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_bpf_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_notch2_config_init):
  proc ma_notch2_config_init*(format: ma_format_536871456; channels: ma_uint32_536871377;
                              sampleRate: ma_uint32_536871377; q: cdouble;
                              frequency: cdouble): ma_notch2_config_536871604 {.
      cdecl, importc: "ma_notch2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_notch2_config_init" &
        " already exists, not redeclaring")
when not declared(ma_notch2_get_heap_size):
  proc ma_notch2_get_heap_size*(pConfig: ptr ma_notch2_config_536871604;
                                pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_notch2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_notch2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_notch2_init_preallocated):
  proc ma_notch2_init_preallocated*(pConfig: ptr ma_notch2_config_536871604;
                                    pHeap: pointer; pFilter: ptr ma_notch2_536871610): ma_result_536871433 {.
      cdecl, importc: "ma_notch2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_notch2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_notch2_init):
  proc ma_notch2_init*(pConfig: ptr ma_notch2_config_536871604;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                       pFilter: ptr ma_notch2_536871610): ma_result_536871433 {.
      cdecl, importc: "ma_notch2_init".}
else:
  static :
    hint("Declaration of " & "ma_notch2_init" &
        " already exists, not redeclaring")
when not declared(ma_notch2_uninit):
  proc ma_notch2_uninit*(pFilter: ptr ma_notch2_536871610;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_notch2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_notch2_uninit" &
        " already exists, not redeclaring")
when not declared(ma_notch2_reinit):
  proc ma_notch2_reinit*(pConfig: ptr ma_notch2_config_536871604;
                         pFilter: ptr ma_notch2_536871610): ma_result_536871433 {.
      cdecl, importc: "ma_notch2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_notch2_reinit" &
        " already exists, not redeclaring")
when not declared(ma_notch2_process_pcm_frames):
  proc ma_notch2_process_pcm_frames*(pFilter: ptr ma_notch2_536871610;
                                     pFramesOut: pointer; pFramesIn: pointer;
                                     frameCount: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_notch2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_notch2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_notch2_get_latency):
  proc ma_notch2_get_latency*(pFilter: ptr ma_notch2_536871610): ma_uint32_536871377 {.
      cdecl, importc: "ma_notch2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_notch2_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_peak2_config_init):
  proc ma_peak2_config_init*(format: ma_format_536871456; channels: ma_uint32_536871377;
                             sampleRate: ma_uint32_536871377; gainDB: cdouble;
                             q: cdouble; frequency: cdouble): ma_peak2_config_536871614 {.
      cdecl, importc: "ma_peak2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_peak2_config_init" &
        " already exists, not redeclaring")
when not declared(ma_peak2_get_heap_size):
  proc ma_peak2_get_heap_size*(pConfig: ptr ma_peak2_config_536871614;
                               pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_peak2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_peak2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_peak2_init_preallocated):
  proc ma_peak2_init_preallocated*(pConfig: ptr ma_peak2_config_536871614;
                                   pHeap: pointer; pFilter: ptr ma_peak2_536871620): ma_result_536871433 {.
      cdecl, importc: "ma_peak2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_peak2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_peak2_init):
  proc ma_peak2_init*(pConfig: ptr ma_peak2_config_536871614;
                      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                      pFilter: ptr ma_peak2_536871620): ma_result_536871433 {.
      cdecl, importc: "ma_peak2_init".}
else:
  static :
    hint("Declaration of " & "ma_peak2_init" &
        " already exists, not redeclaring")
when not declared(ma_peak2_uninit):
  proc ma_peak2_uninit*(pFilter: ptr ma_peak2_536871620;
                        pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_peak2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_peak2_uninit" &
        " already exists, not redeclaring")
when not declared(ma_peak2_reinit):
  proc ma_peak2_reinit*(pConfig: ptr ma_peak2_config_536871614;
                        pFilter: ptr ma_peak2_536871620): ma_result_536871433 {.
      cdecl, importc: "ma_peak2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_peak2_reinit" &
        " already exists, not redeclaring")
when not declared(ma_peak2_process_pcm_frames):
  proc ma_peak2_process_pcm_frames*(pFilter: ptr ma_peak2_536871620;
                                    pFramesOut: pointer; pFramesIn: pointer;
                                    frameCount: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_peak2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_peak2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_peak2_get_latency):
  proc ma_peak2_get_latency*(pFilter: ptr ma_peak2_536871620): ma_uint32_536871377 {.
      cdecl, importc: "ma_peak2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_peak2_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_config_init):
  proc ma_loshelf2_config_init*(format: ma_format_536871456;
                                channels: ma_uint32_536871377;
                                sampleRate: ma_uint32_536871377;
                                gainDB: cdouble; shelfSlope: cdouble;
                                frequency: cdouble): ma_loshelf2_config_536871624 {.
      cdecl, importc: "ma_loshelf2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_config_init" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_get_heap_size):
  proc ma_loshelf2_get_heap_size*(pConfig: ptr ma_loshelf2_config_536871624;
                                  pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_loshelf2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_init_preallocated):
  proc ma_loshelf2_init_preallocated*(pConfig: ptr ma_loshelf2_config_536871624;
                                      pHeap: pointer; pFilter: ptr ma_loshelf2_536871630): ma_result_536871433 {.
      cdecl, importc: "ma_loshelf2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_init):
  proc ma_loshelf2_init*(pConfig: ptr ma_loshelf2_config_536871624;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                         pFilter: ptr ma_loshelf2_536871630): ma_result_536871433 {.
      cdecl, importc: "ma_loshelf2_init".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_init" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_uninit):
  proc ma_loshelf2_uninit*(pFilter: ptr ma_loshelf2_536871630;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_loshelf2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_uninit" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_reinit):
  proc ma_loshelf2_reinit*(pConfig: ptr ma_loshelf2_config_536871624;
                           pFilter: ptr ma_loshelf2_536871630): ma_result_536871433 {.
      cdecl, importc: "ma_loshelf2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_reinit" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_process_pcm_frames):
  proc ma_loshelf2_process_pcm_frames*(pFilter: ptr ma_loshelf2_536871630;
                                       pFramesOut: pointer; pFramesIn: pointer;
                                       frameCount: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_loshelf2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_loshelf2_get_latency):
  proc ma_loshelf2_get_latency*(pFilter: ptr ma_loshelf2_536871630): ma_uint32_536871377 {.
      cdecl, importc: "ma_loshelf2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_loshelf2_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_config_init):
  proc ma_hishelf2_config_init*(format: ma_format_536871456;
                                channels: ma_uint32_536871377;
                                sampleRate: ma_uint32_536871377;
                                gainDB: cdouble; shelfSlope: cdouble;
                                frequency: cdouble): ma_hishelf2_config_536871634 {.
      cdecl, importc: "ma_hishelf2_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_config_init" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_get_heap_size):
  proc ma_hishelf2_get_heap_size*(pConfig: ptr ma_hishelf2_config_536871634;
                                  pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_hishelf2_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_init_preallocated):
  proc ma_hishelf2_init_preallocated*(pConfig: ptr ma_hishelf2_config_536871634;
                                      pHeap: pointer; pFilter: ptr ma_hishelf2_536871640): ma_result_536871433 {.
      cdecl, importc: "ma_hishelf2_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_init):
  proc ma_hishelf2_init*(pConfig: ptr ma_hishelf2_config_536871634;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                         pFilter: ptr ma_hishelf2_536871640): ma_result_536871433 {.
      cdecl, importc: "ma_hishelf2_init".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_init" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_uninit):
  proc ma_hishelf2_uninit*(pFilter: ptr ma_hishelf2_536871640;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_hishelf2_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_uninit" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_reinit):
  proc ma_hishelf2_reinit*(pConfig: ptr ma_hishelf2_config_536871634;
                           pFilter: ptr ma_hishelf2_536871640): ma_result_536871433 {.
      cdecl, importc: "ma_hishelf2_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_reinit" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_process_pcm_frames):
  proc ma_hishelf2_process_pcm_frames*(pFilter: ptr ma_hishelf2_536871640;
                                       pFramesOut: pointer; pFramesIn: pointer;
                                       frameCount: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_hishelf2_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_hishelf2_get_latency):
  proc ma_hishelf2_get_latency*(pFilter: ptr ma_hishelf2_536871640): ma_uint32_536871377 {.
      cdecl, importc: "ma_hishelf2_get_latency".}
else:
  static :
    hint("Declaration of " & "ma_hishelf2_get_latency" &
        " already exists, not redeclaring")
when not declared(ma_delay_config_init):
  proc ma_delay_config_init*(channels: ma_uint32_536871377;
                             sampleRate: ma_uint32_536871377;
                             delayInFrames: ma_uint32_536871377; decay: cfloat): ma_delay_config_536871644 {.
      cdecl, importc: "ma_delay_config_init".}
else:
  static :
    hint("Declaration of " & "ma_delay_config_init" &
        " already exists, not redeclaring")
when not declared(ma_delay_init):
  proc ma_delay_init*(pConfig: ptr ma_delay_config_536871644;
                      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                      pDelay: ptr ma_delay_536871648): ma_result_536871433 {.
      cdecl, importc: "ma_delay_init".}
else:
  static :
    hint("Declaration of " & "ma_delay_init" &
        " already exists, not redeclaring")
when not declared(ma_delay_uninit):
  proc ma_delay_uninit*(pDelay: ptr ma_delay_536871648;
                        pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_delay_uninit".}
else:
  static :
    hint("Declaration of " & "ma_delay_uninit" &
        " already exists, not redeclaring")
when not declared(ma_delay_process_pcm_frames):
  proc ma_delay_process_pcm_frames*(pDelay: ptr ma_delay_536871648;
                                    pFramesOut: pointer; pFramesIn: pointer;
                                    frameCount: ma_uint32_536871377): ma_result_536871433 {.
      cdecl, importc: "ma_delay_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_delay_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_delay_set_wet):
  proc ma_delay_set_wet*(pDelay: ptr ma_delay_536871648; value: cfloat): void {.
      cdecl, importc: "ma_delay_set_wet".}
else:
  static :
    hint("Declaration of " & "ma_delay_set_wet" &
        " already exists, not redeclaring")
when not declared(ma_delay_get_wet):
  proc ma_delay_get_wet*(pDelay: ptr ma_delay_536871648): cfloat {.cdecl,
      importc: "ma_delay_get_wet".}
else:
  static :
    hint("Declaration of " & "ma_delay_get_wet" &
        " already exists, not redeclaring")
when not declared(ma_delay_set_dry):
  proc ma_delay_set_dry*(pDelay: ptr ma_delay_536871648; value: cfloat): void {.
      cdecl, importc: "ma_delay_set_dry".}
else:
  static :
    hint("Declaration of " & "ma_delay_set_dry" &
        " already exists, not redeclaring")
when not declared(ma_delay_get_dry):
  proc ma_delay_get_dry*(pDelay: ptr ma_delay_536871648): cfloat {.cdecl,
      importc: "ma_delay_get_dry".}
else:
  static :
    hint("Declaration of " & "ma_delay_get_dry" &
        " already exists, not redeclaring")
when not declared(ma_delay_set_decay):
  proc ma_delay_set_decay*(pDelay: ptr ma_delay_536871648; value: cfloat): void {.
      cdecl, importc: "ma_delay_set_decay".}
else:
  static :
    hint("Declaration of " & "ma_delay_set_decay" &
        " already exists, not redeclaring")
when not declared(ma_delay_get_decay):
  proc ma_delay_get_decay*(pDelay: ptr ma_delay_536871648): cfloat {.cdecl,
      importc: "ma_delay_get_decay".}
else:
  static :
    hint("Declaration of " & "ma_delay_get_decay" &
        " already exists, not redeclaring")
when not declared(ma_gainer_config_init):
  proc ma_gainer_config_init*(channels: ma_uint32_536871377;
                              smoothTimeInFrames: ma_uint32_536871377): ma_gainer_config_536871652 {.
      cdecl, importc: "ma_gainer_config_init".}
else:
  static :
    hint("Declaration of " & "ma_gainer_config_init" &
        " already exists, not redeclaring")
when not declared(ma_gainer_get_heap_size):
  proc ma_gainer_get_heap_size*(pConfig: ptr ma_gainer_config_536871652;
                                pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_gainer_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_gainer_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_gainer_init_preallocated):
  proc ma_gainer_init_preallocated*(pConfig: ptr ma_gainer_config_536871652;
                                    pHeap: pointer; pGainer: ptr ma_gainer_536871656): ma_result_536871433 {.
      cdecl, importc: "ma_gainer_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_gainer_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_gainer_init):
  proc ma_gainer_init*(pConfig: ptr ma_gainer_config_536871652;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                       pGainer: ptr ma_gainer_536871656): ma_result_536871433 {.
      cdecl, importc: "ma_gainer_init".}
else:
  static :
    hint("Declaration of " & "ma_gainer_init" &
        " already exists, not redeclaring")
when not declared(ma_gainer_uninit):
  proc ma_gainer_uninit*(pGainer: ptr ma_gainer_536871656;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_gainer_uninit".}
else:
  static :
    hint("Declaration of " & "ma_gainer_uninit" &
        " already exists, not redeclaring")
when not declared(ma_gainer_process_pcm_frames):
  proc ma_gainer_process_pcm_frames*(pGainer: ptr ma_gainer_536871656;
                                     pFramesOut: pointer; pFramesIn: pointer;
                                     frameCount: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_gainer_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_gainer_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_gainer_set_gain):
  proc ma_gainer_set_gain*(pGainer: ptr ma_gainer_536871656; newGain: cfloat): ma_result_536871433 {.
      cdecl, importc: "ma_gainer_set_gain".}
else:
  static :
    hint("Declaration of " & "ma_gainer_set_gain" &
        " already exists, not redeclaring")
when not declared(ma_gainer_set_gains):
  proc ma_gainer_set_gains*(pGainer: ptr ma_gainer_536871656;
                            pNewGains: ptr cfloat): ma_result_536871433 {.cdecl,
      importc: "ma_gainer_set_gains".}
else:
  static :
    hint("Declaration of " & "ma_gainer_set_gains" &
        " already exists, not redeclaring")
when not declared(ma_gainer_set_master_volume):
  proc ma_gainer_set_master_volume*(pGainer: ptr ma_gainer_536871656;
                                    volume: cfloat): ma_result_536871433 {.
      cdecl, importc: "ma_gainer_set_master_volume".}
else:
  static :
    hint("Declaration of " & "ma_gainer_set_master_volume" &
        " already exists, not redeclaring")
when not declared(ma_gainer_get_master_volume):
  proc ma_gainer_get_master_volume*(pGainer: ptr ma_gainer_536871656;
                                    pVolume: ptr cfloat): ma_result_536871433 {.
      cdecl, importc: "ma_gainer_get_master_volume".}
else:
  static :
    hint("Declaration of " & "ma_gainer_get_master_volume" &
        " already exists, not redeclaring")
when not declared(ma_panner_config_init):
  proc ma_panner_config_init*(format: ma_format_536871456; channels: ma_uint32_536871377): ma_panner_config_536871664 {.
      cdecl, importc: "ma_panner_config_init".}
else:
  static :
    hint("Declaration of " & "ma_panner_config_init" &
        " already exists, not redeclaring")
when not declared(ma_panner_init):
  proc ma_panner_init*(pConfig: ptr ma_panner_config_536871664;
                       pPanner: ptr ma_panner_536871668): ma_result_536871433 {.
      cdecl, importc: "ma_panner_init".}
else:
  static :
    hint("Declaration of " & "ma_panner_init" &
        " already exists, not redeclaring")
when not declared(ma_panner_process_pcm_frames):
  proc ma_panner_process_pcm_frames*(pPanner: ptr ma_panner_536871668;
                                     pFramesOut: pointer; pFramesIn: pointer;
                                     frameCount: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_panner_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_panner_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_panner_set_mode):
  proc ma_panner_set_mode*(pPanner: ptr ma_panner_536871668; mode: ma_pan_mode_536871660): void {.
      cdecl, importc: "ma_panner_set_mode".}
else:
  static :
    hint("Declaration of " & "ma_panner_set_mode" &
        " already exists, not redeclaring")
when not declared(ma_panner_get_mode):
  proc ma_panner_get_mode*(pPanner: ptr ma_panner_536871668): ma_pan_mode_536871660 {.
      cdecl, importc: "ma_panner_get_mode".}
else:
  static :
    hint("Declaration of " & "ma_panner_get_mode" &
        " already exists, not redeclaring")
when not declared(ma_panner_set_pan):
  proc ma_panner_set_pan*(pPanner: ptr ma_panner_536871668; pan: cfloat): void {.
      cdecl, importc: "ma_panner_set_pan".}
else:
  static :
    hint("Declaration of " & "ma_panner_set_pan" &
        " already exists, not redeclaring")
when not declared(ma_panner_get_pan):
  proc ma_panner_get_pan*(pPanner: ptr ma_panner_536871668): cfloat {.cdecl,
      importc: "ma_panner_get_pan".}
else:
  static :
    hint("Declaration of " & "ma_panner_get_pan" &
        " already exists, not redeclaring")
when not declared(ma_fader_config_init):
  proc ma_fader_config_init*(format: ma_format_536871456; channels: ma_uint32_536871377;
                             sampleRate: ma_uint32_536871377): ma_fader_config_536871672 {.
      cdecl, importc: "ma_fader_config_init".}
else:
  static :
    hint("Declaration of " & "ma_fader_config_init" &
        " already exists, not redeclaring")
when not declared(ma_fader_init):
  proc ma_fader_init*(pConfig: ptr ma_fader_config_536871672;
                      pFader: ptr ma_fader_536871676): ma_result_536871433 {.
      cdecl, importc: "ma_fader_init".}
else:
  static :
    hint("Declaration of " & "ma_fader_init" &
        " already exists, not redeclaring")
when not declared(ma_fader_process_pcm_frames):
  proc ma_fader_process_pcm_frames*(pFader: ptr ma_fader_536871676;
                                    pFramesOut: pointer; pFramesIn: pointer;
                                    frameCount: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_fader_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_fader_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_fader_get_data_format):
  proc ma_fader_get_data_format*(pFader: ptr ma_fader_536871676;
                                 pFormat: ptr ma_format_536871456;
                                 pChannels: ptr ma_uint32_536871377;
                                 pSampleRate: ptr ma_uint32_536871377): void {.
      cdecl, importc: "ma_fader_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_fader_get_data_format" &
        " already exists, not redeclaring")
when not declared(ma_fader_set_fade):
  proc ma_fader_set_fade*(pFader: ptr ma_fader_536871676; volumeBeg: cfloat;
                          volumeEnd: cfloat; lengthInFrames: ma_uint64_536871381): void {.
      cdecl, importc: "ma_fader_set_fade".}
else:
  static :
    hint("Declaration of " & "ma_fader_set_fade" &
        " already exists, not redeclaring")
when not declared(ma_fader_set_fade_ex):
  proc ma_fader_set_fade_ex*(pFader: ptr ma_fader_536871676; volumeBeg: cfloat;
                             volumeEnd: cfloat; lengthInFrames: ma_uint64_536871381;
                             startOffsetInFrames: ma_int64_536871379): void {.
      cdecl, importc: "ma_fader_set_fade_ex".}
else:
  static :
    hint("Declaration of " & "ma_fader_set_fade_ex" &
        " already exists, not redeclaring")
when not declared(ma_fader_get_current_volume):
  proc ma_fader_get_current_volume*(pFader: ptr ma_fader_536871676): cfloat {.
      cdecl, importc: "ma_fader_get_current_volume".}
else:
  static :
    hint("Declaration of " & "ma_fader_get_current_volume" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_config_init):
  proc ma_spatializer_listener_config_init*(channelsOut: ma_uint32_536871377): ma_spatializer_listener_config_536871700 {.
      cdecl, importc: "ma_spatializer_listener_config_init".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_config_init" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_heap_size):
  proc ma_spatializer_listener_get_heap_size*(
      pConfig: ptr ma_spatializer_listener_config_536871700;
      pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.cdecl,
      importc: "ma_spatializer_listener_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_init_preallocated):
  proc ma_spatializer_listener_init_preallocated*(
      pConfig: ptr ma_spatializer_listener_config_536871700; pHeap: pointer;
      pListener: ptr ma_spatializer_listener_536871704): ma_result_536871433 {.
      cdecl, importc: "ma_spatializer_listener_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_init):
  proc ma_spatializer_listener_init*(pConfig: ptr ma_spatializer_listener_config_536871700;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                                     pListener: ptr ma_spatializer_listener_536871704): ma_result_536871433 {.
      cdecl, importc: "ma_spatializer_listener_init".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_init" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_uninit):
  proc ma_spatializer_listener_uninit*(pListener: ptr ma_spatializer_listener_536871704;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_spatializer_listener_uninit".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_uninit" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_channel_map):
  proc ma_spatializer_listener_get_channel_map*(
      pListener: ptr ma_spatializer_listener_536871704): ptr ma_channel_536871425 {.
      cdecl, importc: "ma_spatializer_listener_get_channel_map".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_channel_map" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_set_cone):
  proc ma_spatializer_listener_set_cone*(pListener: ptr ma_spatializer_listener_536871704;
      innerAngleInRadians: cfloat; outerAngleInRadians: cfloat;
      outerGain: cfloat): void {.cdecl,
                                 importc: "ma_spatializer_listener_set_cone".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_cone" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_cone):
  proc ma_spatializer_listener_get_cone*(pListener: ptr ma_spatializer_listener_536871704;
      pInnerAngleInRadians: ptr cfloat; pOuterAngleInRadians: ptr cfloat;
      pOuterGain: ptr cfloat): void {.cdecl, importc: "ma_spatializer_listener_get_cone".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_cone" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_set_position):
  proc ma_spatializer_listener_set_position*(
      pListener: ptr ma_spatializer_listener_536871704; x: cfloat; y: cfloat;
      z: cfloat): void {.cdecl, importc: "ma_spatializer_listener_set_position".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_position" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_position):
  proc ma_spatializer_listener_get_position*(
      pListener: ptr ma_spatializer_listener_536871704): ma_vec3f_536871680 {.
      cdecl, importc: "ma_spatializer_listener_get_position".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_position" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_set_direction):
  proc ma_spatializer_listener_set_direction*(
      pListener: ptr ma_spatializer_listener_536871704; x: cfloat; y: cfloat;
      z: cfloat): void {.cdecl, importc: "ma_spatializer_listener_set_direction".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_direction" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_direction):
  proc ma_spatializer_listener_get_direction*(
      pListener: ptr ma_spatializer_listener_536871704): ma_vec3f_536871680 {.
      cdecl, importc: "ma_spatializer_listener_get_direction".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_direction" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_set_velocity):
  proc ma_spatializer_listener_set_velocity*(
      pListener: ptr ma_spatializer_listener_536871704; x: cfloat; y: cfloat;
      z: cfloat): void {.cdecl, importc: "ma_spatializer_listener_set_velocity".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_velocity" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_velocity):
  proc ma_spatializer_listener_get_velocity*(
      pListener: ptr ma_spatializer_listener_536871704): ma_vec3f_536871680 {.
      cdecl, importc: "ma_spatializer_listener_get_velocity".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_velocity" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_set_speed_of_sound):
  proc ma_spatializer_listener_set_speed_of_sound*(
      pListener: ptr ma_spatializer_listener_536871704; speedOfSound: cfloat): void {.
      cdecl, importc: "ma_spatializer_listener_set_speed_of_sound".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_speed_of_sound" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_speed_of_sound):
  proc ma_spatializer_listener_get_speed_of_sound*(
      pListener: ptr ma_spatializer_listener_536871704): cfloat {.cdecl,
      importc: "ma_spatializer_listener_get_speed_of_sound".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_speed_of_sound" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_set_world_up):
  proc ma_spatializer_listener_set_world_up*(
      pListener: ptr ma_spatializer_listener_536871704; x: cfloat; y: cfloat;
      z: cfloat): void {.cdecl, importc: "ma_spatializer_listener_set_world_up".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_world_up" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_get_world_up):
  proc ma_spatializer_listener_get_world_up*(
      pListener: ptr ma_spatializer_listener_536871704): ma_vec3f_536871680 {.
      cdecl, importc: "ma_spatializer_listener_get_world_up".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_get_world_up" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_set_enabled):
  proc ma_spatializer_listener_set_enabled*(
      pListener: ptr ma_spatializer_listener_536871704; isEnabled: ma_bool32_536871387): void {.
      cdecl, importc: "ma_spatializer_listener_set_enabled".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_set_enabled" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_listener_is_enabled):
  proc ma_spatializer_listener_is_enabled*(
      pListener: ptr ma_spatializer_listener_536871704): ma_bool32_536871387 {.
      cdecl, importc: "ma_spatializer_listener_is_enabled".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_listener_is_enabled" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_config_init):
  proc ma_spatializer_config_init*(channelsIn: ma_uint32_536871377;
                                   channelsOut: ma_uint32_536871377): ma_spatializer_config_536871708 {.
      cdecl, importc: "ma_spatializer_config_init".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_config_init" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_heap_size):
  proc ma_spatializer_get_heap_size*(pConfig: ptr ma_spatializer_config_536871708;
                                     pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_spatializer_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_init_preallocated):
  proc ma_spatializer_init_preallocated*(pConfig: ptr ma_spatializer_config_536871708;
      pHeap: pointer; pSpatializer: ptr ma_spatializer_536871712): ma_result_536871433 {.
      cdecl, importc: "ma_spatializer_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_init):
  proc ma_spatializer_init*(pConfig: ptr ma_spatializer_config_536871708;
                            pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                            pSpatializer: ptr ma_spatializer_536871712): ma_result_536871433 {.
      cdecl, importc: "ma_spatializer_init".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_init" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_uninit):
  proc ma_spatializer_uninit*(pSpatializer: ptr ma_spatializer_536871712;
                              pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_spatializer_uninit".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_uninit" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_process_pcm_frames):
  proc ma_spatializer_process_pcm_frames*(pSpatializer: ptr ma_spatializer_536871712;
      pListener: ptr ma_spatializer_listener_536871704; pFramesOut: pointer;
      pFramesIn: pointer; frameCount: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_spatializer_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_master_volume):
  proc ma_spatializer_set_master_volume*(pSpatializer: ptr ma_spatializer_536871712;
      volume: cfloat): ma_result_536871433 {.cdecl,
      importc: "ma_spatializer_set_master_volume".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_master_volume" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_master_volume):
  proc ma_spatializer_get_master_volume*(pSpatializer: ptr ma_spatializer_536871712;
      pVolume: ptr cfloat): ma_result_536871433 {.cdecl,
      importc: "ma_spatializer_get_master_volume".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_master_volume" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_input_channels):
  proc ma_spatializer_get_input_channels*(pSpatializer: ptr ma_spatializer_536871712): ma_uint32_536871377 {.
      cdecl, importc: "ma_spatializer_get_input_channels".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_input_channels" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_output_channels):
  proc ma_spatializer_get_output_channels*(pSpatializer: ptr ma_spatializer_536871712): ma_uint32_536871377 {.
      cdecl, importc: "ma_spatializer_get_output_channels".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_output_channels" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_attenuation_model):
  proc ma_spatializer_set_attenuation_model*(pSpatializer: ptr ma_spatializer_536871712;
      attenuationModel: ma_attenuation_model_536871688): void {.cdecl,
      importc: "ma_spatializer_set_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_attenuation_model" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_attenuation_model):
  proc ma_spatializer_get_attenuation_model*(pSpatializer: ptr ma_spatializer_536871712): ma_attenuation_model_536871688 {.
      cdecl, importc: "ma_spatializer_get_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_attenuation_model" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_positioning):
  proc ma_spatializer_set_positioning*(pSpatializer: ptr ma_spatializer_536871712;
                                       positioning: ma_positioning_536871692): void {.
      cdecl, importc: "ma_spatializer_set_positioning".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_positioning" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_positioning):
  proc ma_spatializer_get_positioning*(pSpatializer: ptr ma_spatializer_536871712): ma_positioning_536871692 {.
      cdecl, importc: "ma_spatializer_get_positioning".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_positioning" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_rolloff):
  proc ma_spatializer_set_rolloff*(pSpatializer: ptr ma_spatializer_536871712;
                                   rolloff: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_rolloff" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_rolloff):
  proc ma_spatializer_get_rolloff*(pSpatializer: ptr ma_spatializer_536871712): cfloat {.
      cdecl, importc: "ma_spatializer_get_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_rolloff" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_min_gain):
  proc ma_spatializer_set_min_gain*(pSpatializer: ptr ma_spatializer_536871712;
                                    minGain: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_min_gain" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_min_gain):
  proc ma_spatializer_get_min_gain*(pSpatializer: ptr ma_spatializer_536871712): cfloat {.
      cdecl, importc: "ma_spatializer_get_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_min_gain" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_max_gain):
  proc ma_spatializer_set_max_gain*(pSpatializer: ptr ma_spatializer_536871712;
                                    maxGain: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_max_gain" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_max_gain):
  proc ma_spatializer_get_max_gain*(pSpatializer: ptr ma_spatializer_536871712): cfloat {.
      cdecl, importc: "ma_spatializer_get_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_max_gain" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_min_distance):
  proc ma_spatializer_set_min_distance*(pSpatializer: ptr ma_spatializer_536871712;
                                        minDistance: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_min_distance" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_min_distance):
  proc ma_spatializer_get_min_distance*(pSpatializer: ptr ma_spatializer_536871712): cfloat {.
      cdecl, importc: "ma_spatializer_get_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_min_distance" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_max_distance):
  proc ma_spatializer_set_max_distance*(pSpatializer: ptr ma_spatializer_536871712;
                                        maxDistance: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_max_distance" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_max_distance):
  proc ma_spatializer_get_max_distance*(pSpatializer: ptr ma_spatializer_536871712): cfloat {.
      cdecl, importc: "ma_spatializer_get_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_max_distance" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_cone):
  proc ma_spatializer_set_cone*(pSpatializer: ptr ma_spatializer_536871712;
                                innerAngleInRadians: cfloat;
                                outerAngleInRadians: cfloat; outerGain: cfloat): void {.
      cdecl, importc: "ma_spatializer_set_cone".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_cone" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_cone):
  proc ma_spatializer_get_cone*(pSpatializer: ptr ma_spatializer_536871712;
                                pInnerAngleInRadians: ptr cfloat;
                                pOuterAngleInRadians: ptr cfloat;
                                pOuterGain: ptr cfloat): void {.cdecl,
      importc: "ma_spatializer_get_cone".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_cone" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_doppler_factor):
  proc ma_spatializer_set_doppler_factor*(pSpatializer: ptr ma_spatializer_536871712;
      dopplerFactor: cfloat): void {.cdecl, importc: "ma_spatializer_set_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_doppler_factor" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_doppler_factor):
  proc ma_spatializer_get_doppler_factor*(pSpatializer: ptr ma_spatializer_536871712): cfloat {.
      cdecl, importc: "ma_spatializer_get_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_doppler_factor" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_directional_attenuation_factor):
  proc ma_spatializer_set_directional_attenuation_factor*(
      pSpatializer: ptr ma_spatializer_536871712;
      directionalAttenuationFactor: cfloat): void {.cdecl,
      importc: "ma_spatializer_set_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_directional_attenuation_factor):
  proc ma_spatializer_get_directional_attenuation_factor*(
      pSpatializer: ptr ma_spatializer_536871712): cfloat {.cdecl,
      importc: "ma_spatializer_get_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_position):
  proc ma_spatializer_set_position*(pSpatializer: ptr ma_spatializer_536871712;
                                    x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_spatializer_set_position".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_position" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_position):
  proc ma_spatializer_get_position*(pSpatializer: ptr ma_spatializer_536871712): ma_vec3f_536871680 {.
      cdecl, importc: "ma_spatializer_get_position".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_position" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_direction):
  proc ma_spatializer_set_direction*(pSpatializer: ptr ma_spatializer_536871712;
                                     x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_spatializer_set_direction".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_direction" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_direction):
  proc ma_spatializer_get_direction*(pSpatializer: ptr ma_spatializer_536871712): ma_vec3f_536871680 {.
      cdecl, importc: "ma_spatializer_get_direction".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_direction" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_set_velocity):
  proc ma_spatializer_set_velocity*(pSpatializer: ptr ma_spatializer_536871712;
                                    x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_spatializer_set_velocity".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_set_velocity" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_velocity):
  proc ma_spatializer_get_velocity*(pSpatializer: ptr ma_spatializer_536871712): ma_vec3f_536871680 {.
      cdecl, importc: "ma_spatializer_get_velocity".}
else:
  static :
    hint("Declaration of " & "ma_spatializer_get_velocity" &
        " already exists, not redeclaring")
when not declared(ma_spatializer_get_relative_position_and_direction):
  proc ma_spatializer_get_relative_position_and_direction*(
      pSpatializer: ptr ma_spatializer_536871712;
      pListener: ptr ma_spatializer_listener_536871704;
      pRelativePos: ptr ma_vec3f_536871680; pRelativeDir: ptr ma_vec3f_536871680): void {.
      cdecl, importc: "ma_spatializer_get_relative_position_and_direction".}
else:
  static :
    hint("Declaration of " &
        "ma_spatializer_get_relative_position_and_direction" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_config_init):
  proc ma_linear_resampler_config_init*(format: ma_format_536871456;
                                        channels: ma_uint32_536871377;
                                        sampleRateIn: ma_uint32_536871377;
                                        sampleRateOut: ma_uint32_536871377): ma_linear_resampler_config_536871716 {.
      cdecl, importc: "ma_linear_resampler_config_init".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_config_init" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_get_heap_size):
  proc ma_linear_resampler_get_heap_size*(
      pConfig: ptr ma_linear_resampler_config_536871716;
      pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.cdecl,
      importc: "ma_linear_resampler_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_init_preallocated):
  proc ma_linear_resampler_init_preallocated*(
      pConfig: ptr ma_linear_resampler_config_536871716; pHeap: pointer;
      pResampler: ptr ma_linear_resampler_536871720): ma_result_536871433 {.
      cdecl, importc: "ma_linear_resampler_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_init):
  proc ma_linear_resampler_init*(pConfig: ptr ma_linear_resampler_config_536871716;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                                 pResampler: ptr ma_linear_resampler_536871720): ma_result_536871433 {.
      cdecl, importc: "ma_linear_resampler_init".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_init" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_uninit):
  proc ma_linear_resampler_uninit*(pResampler: ptr ma_linear_resampler_536871720;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_linear_resampler_uninit".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_uninit" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_process_pcm_frames):
  proc ma_linear_resampler_process_pcm_frames*(
      pResampler: ptr ma_linear_resampler_536871720; pFramesIn: pointer;
      pFrameCountIn: ptr ma_uint64_536871381; pFramesOut: pointer;
      pFrameCountOut: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_linear_resampler_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_set_rate):
  proc ma_linear_resampler_set_rate*(pResampler: ptr ma_linear_resampler_536871720;
                                     sampleRateIn: ma_uint32_536871377;
                                     sampleRateOut: ma_uint32_536871377): ma_result_536871433 {.
      cdecl, importc: "ma_linear_resampler_set_rate".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_set_rate" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_set_rate_ratio):
  proc ma_linear_resampler_set_rate_ratio*(pResampler: ptr ma_linear_resampler_536871720;
      ratioInOut: cfloat): ma_result_536871433 {.cdecl,
      importc: "ma_linear_resampler_set_rate_ratio".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_set_rate_ratio" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_get_input_latency):
  proc ma_linear_resampler_get_input_latency*(
      pResampler: ptr ma_linear_resampler_536871720): ma_uint64_536871381 {.
      cdecl, importc: "ma_linear_resampler_get_input_latency".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_get_input_latency" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_get_output_latency):
  proc ma_linear_resampler_get_output_latency*(
      pResampler: ptr ma_linear_resampler_536871720): ma_uint64_536871381 {.
      cdecl, importc: "ma_linear_resampler_get_output_latency".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_get_output_latency" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_get_required_input_frame_count):
  proc ma_linear_resampler_get_required_input_frame_count*(
      pResampler: ptr ma_linear_resampler_536871720;
      outputFrameCount: ma_uint64_536871381; pInputFrameCount: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_linear_resampler_get_required_input_frame_count".}
else:
  static :
    hint("Declaration of " &
        "ma_linear_resampler_get_required_input_frame_count" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_get_expected_output_frame_count):
  proc ma_linear_resampler_get_expected_output_frame_count*(
      pResampler: ptr ma_linear_resampler_536871720; inputFrameCount: ma_uint64_536871381;
      pOutputFrameCount: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_linear_resampler_get_expected_output_frame_count".}
else:
  static :
    hint("Declaration of " &
        "ma_linear_resampler_get_expected_output_frame_count" &
        " already exists, not redeclaring")
when not declared(ma_linear_resampler_reset):
  proc ma_linear_resampler_reset*(pResampler: ptr ma_linear_resampler_536871720): ma_result_536871433 {.
      cdecl, importc: "ma_linear_resampler_reset".}
else:
  static :
    hint("Declaration of " & "ma_linear_resampler_reset" &
        " already exists, not redeclaring")
when not declared(ma_resampler_config_init):
  proc ma_resampler_config_init*(format: ma_format_536871456;
                                 channels: ma_uint32_536871377;
                                 sampleRateIn: ma_uint32_536871377;
                                 sampleRateOut: ma_uint32_536871377;
                                 algorithm: ma_resample_algorithm_536871734): ma_resampler_config_536871722 {.
      cdecl, importc: "ma_resampler_config_init".}
else:
  static :
    hint("Declaration of " & "ma_resampler_config_init" &
        " already exists, not redeclaring")
when not declared(ma_resampler_get_heap_size):
  proc ma_resampler_get_heap_size*(pConfig: ptr ma_resampler_config_536871722;
                                   pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_resampler_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_resampler_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_resampler_init_preallocated):
  proc ma_resampler_init_preallocated*(pConfig: ptr ma_resampler_config_536871722;
                                       pHeap: pointer;
                                       pResampler: ptr ma_resampler_536871738): ma_result_536871433 {.
      cdecl, importc: "ma_resampler_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_resampler_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_resampler_init):
  proc ma_resampler_init*(pConfig: ptr ma_resampler_config_536871722;
                          pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                          pResampler: ptr ma_resampler_536871738): ma_result_536871433 {.
      cdecl, importc: "ma_resampler_init".}
else:
  static :
    hint("Declaration of " & "ma_resampler_init" &
        " already exists, not redeclaring")
when not declared(ma_resampler_uninit):
  proc ma_resampler_uninit*(pResampler: ptr ma_resampler_536871738;
                            pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_resampler_uninit".}
else:
  static :
    hint("Declaration of " & "ma_resampler_uninit" &
        " already exists, not redeclaring")
when not declared(ma_resampler_process_pcm_frames):
  proc ma_resampler_process_pcm_frames*(pResampler: ptr ma_resampler_536871738;
                                        pFramesIn: pointer;
                                        pFrameCountIn: ptr ma_uint64_536871381;
                                        pFramesOut: pointer;
                                        pFrameCountOut: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_resampler_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_resampler_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resampler_set_rate):
  proc ma_resampler_set_rate*(pResampler: ptr ma_resampler_536871738;
                              sampleRateIn: ma_uint32_536871377;
                              sampleRateOut: ma_uint32_536871377): ma_result_536871433 {.
      cdecl, importc: "ma_resampler_set_rate".}
else:
  static :
    hint("Declaration of " & "ma_resampler_set_rate" &
        " already exists, not redeclaring")
when not declared(ma_resampler_set_rate_ratio):
  proc ma_resampler_set_rate_ratio*(pResampler: ptr ma_resampler_536871738;
                                    ratio: cfloat): ma_result_536871433 {.cdecl,
      importc: "ma_resampler_set_rate_ratio".}
else:
  static :
    hint("Declaration of " & "ma_resampler_set_rate_ratio" &
        " already exists, not redeclaring")
when not declared(ma_resampler_get_input_latency):
  proc ma_resampler_get_input_latency*(pResampler: ptr ma_resampler_536871738): ma_uint64_536871381 {.
      cdecl, importc: "ma_resampler_get_input_latency".}
else:
  static :
    hint("Declaration of " & "ma_resampler_get_input_latency" &
        " already exists, not redeclaring")
when not declared(ma_resampler_get_output_latency):
  proc ma_resampler_get_output_latency*(pResampler: ptr ma_resampler_536871738): ma_uint64_536871381 {.
      cdecl, importc: "ma_resampler_get_output_latency".}
else:
  static :
    hint("Declaration of " & "ma_resampler_get_output_latency" &
        " already exists, not redeclaring")
when not declared(ma_resampler_get_required_input_frame_count):
  proc ma_resampler_get_required_input_frame_count*(
      pResampler: ptr ma_resampler_536871738; outputFrameCount: ma_uint64_536871381;
      pInputFrameCount: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_resampler_get_required_input_frame_count".}
else:
  static :
    hint("Declaration of " & "ma_resampler_get_required_input_frame_count" &
        " already exists, not redeclaring")
when not declared(ma_resampler_get_expected_output_frame_count):
  proc ma_resampler_get_expected_output_frame_count*(
      pResampler: ptr ma_resampler_536871738; inputFrameCount: ma_uint64_536871381;
      pOutputFrameCount: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_resampler_get_expected_output_frame_count".}
else:
  static :
    hint("Declaration of " & "ma_resampler_get_expected_output_frame_count" &
        " already exists, not redeclaring")
when not declared(ma_resampler_reset):
  proc ma_resampler_reset*(pResampler: ptr ma_resampler_536871738): ma_result_536871433 {.
      cdecl, importc: "ma_resampler_reset".}
else:
  static :
    hint("Declaration of " & "ma_resampler_reset" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_config_init):
  proc ma_channel_converter_config_init*(format: ma_format_536871456;
      channelsIn: ma_uint32_536871377; pChannelMapIn: ptr ma_channel_536871425;
      channelsOut: ma_uint32_536871377; pChannelMapOut: ptr ma_channel_536871425;
      mixingMode: ma_channel_mix_mode_536871464): ma_channel_converter_config_536871750 {.
      cdecl, importc: "ma_channel_converter_config_init".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_config_init" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_get_heap_size):
  proc ma_channel_converter_get_heap_size*(
      pConfig: ptr ma_channel_converter_config_536871750;
      pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.cdecl,
      importc: "ma_channel_converter_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_init_preallocated):
  proc ma_channel_converter_init_preallocated*(
      pConfig: ptr ma_channel_converter_config_536871750; pHeap: pointer;
      pConverter: ptr ma_channel_converter_536871754): ma_result_536871433 {.
      cdecl, importc: "ma_channel_converter_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_init):
  proc ma_channel_converter_init*(pConfig: ptr ma_channel_converter_config_536871750;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                                  pConverter: ptr ma_channel_converter_536871754): ma_result_536871433 {.
      cdecl, importc: "ma_channel_converter_init".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_init" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_uninit):
  proc ma_channel_converter_uninit*(pConverter: ptr ma_channel_converter_536871754;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_channel_converter_uninit".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_uninit" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_process_pcm_frames):
  proc ma_channel_converter_process_pcm_frames*(
      pConverter: ptr ma_channel_converter_536871754; pFramesOut: pointer;
      pFramesIn: pointer; frameCount: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_channel_converter_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_get_input_channel_map):
  proc ma_channel_converter_get_input_channel_map*(
      pConverter: ptr ma_channel_converter_536871754;
      pChannelMap: ptr ma_channel_536871425; channelMapCap: csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_channel_converter_get_input_channel_map".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_get_input_channel_map" &
        " already exists, not redeclaring")
when not declared(ma_channel_converter_get_output_channel_map):
  proc ma_channel_converter_get_output_channel_map*(
      pConverter: ptr ma_channel_converter_536871754;
      pChannelMap: ptr ma_channel_536871425; channelMapCap: csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_channel_converter_get_output_channel_map".}
else:
  static :
    hint("Declaration of " & "ma_channel_converter_get_output_channel_map" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_config_init_default):
  proc ma_data_converter_config_init_default*(): ma_data_converter_config_536871758 {.
      cdecl, importc: "ma_data_converter_config_init_default".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_config_init_default" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_config_init):
  proc ma_data_converter_config_init*(formatIn: ma_format_536871456;
                                      formatOut: ma_format_536871456;
                                      channelsIn: ma_uint32_536871377;
                                      channelsOut: ma_uint32_536871377;
                                      sampleRateIn: ma_uint32_536871377;
                                      sampleRateOut: ma_uint32_536871377): ma_data_converter_config_536871758 {.
      cdecl, importc: "ma_data_converter_config_init".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_config_init" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_get_heap_size):
  proc ma_data_converter_get_heap_size*(pConfig: ptr ma_data_converter_config_536871758;
                                        pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_data_converter_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_init_preallocated):
  proc ma_data_converter_init_preallocated*(
      pConfig: ptr ma_data_converter_config_536871758; pHeap: pointer;
      pConverter: ptr ma_data_converter_536871766): ma_result_536871433 {.cdecl,
      importc: "ma_data_converter_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_init):
  proc ma_data_converter_init*(pConfig: ptr ma_data_converter_config_536871758;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                               pConverter: ptr ma_data_converter_536871766): ma_result_536871433 {.
      cdecl, importc: "ma_data_converter_init".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_init" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_uninit):
  proc ma_data_converter_uninit*(pConverter: ptr ma_data_converter_536871766;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_data_converter_uninit".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_uninit" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_process_pcm_frames):
  proc ma_data_converter_process_pcm_frames*(pConverter: ptr ma_data_converter_536871766;
      pFramesIn: pointer; pFrameCountIn: ptr ma_uint64_536871381;
      pFramesOut: pointer; pFrameCountOut: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_data_converter_process_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_process_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_set_rate):
  proc ma_data_converter_set_rate*(pConverter: ptr ma_data_converter_536871766;
                                   sampleRateIn: ma_uint32_536871377;
                                   sampleRateOut: ma_uint32_536871377): ma_result_536871433 {.
      cdecl, importc: "ma_data_converter_set_rate".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_set_rate" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_set_rate_ratio):
  proc ma_data_converter_set_rate_ratio*(pConverter: ptr ma_data_converter_536871766;
      ratioInOut: cfloat): ma_result_536871433 {.cdecl,
      importc: "ma_data_converter_set_rate_ratio".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_set_rate_ratio" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_get_input_latency):
  proc ma_data_converter_get_input_latency*(pConverter: ptr ma_data_converter_536871766): ma_uint64_536871381 {.
      cdecl, importc: "ma_data_converter_get_input_latency".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_input_latency" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_get_output_latency):
  proc ma_data_converter_get_output_latency*(pConverter: ptr ma_data_converter_536871766): ma_uint64_536871381 {.
      cdecl, importc: "ma_data_converter_get_output_latency".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_output_latency" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_get_required_input_frame_count):
  proc ma_data_converter_get_required_input_frame_count*(
      pConverter: ptr ma_data_converter_536871766; outputFrameCount: ma_uint64_536871381;
      pInputFrameCount: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_data_converter_get_required_input_frame_count".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_required_input_frame_count" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_get_expected_output_frame_count):
  proc ma_data_converter_get_expected_output_frame_count*(
      pConverter: ptr ma_data_converter_536871766; inputFrameCount: ma_uint64_536871381;
      pOutputFrameCount: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_data_converter_get_expected_output_frame_count".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_expected_output_frame_count" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_get_input_channel_map):
  proc ma_data_converter_get_input_channel_map*(
      pConverter: ptr ma_data_converter_536871766; pChannelMap: ptr ma_channel_536871425;
      channelMapCap: csize_t): ma_result_536871433 {.cdecl,
      importc: "ma_data_converter_get_input_channel_map".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_input_channel_map" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_get_output_channel_map):
  proc ma_data_converter_get_output_channel_map*(
      pConverter: ptr ma_data_converter_536871766; pChannelMap: ptr ma_channel_536871425;
      channelMapCap: csize_t): ma_result_536871433 {.cdecl,
      importc: "ma_data_converter_get_output_channel_map".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_get_output_channel_map" &
        " already exists, not redeclaring")
when not declared(ma_data_converter_reset):
  proc ma_data_converter_reset*(pConverter: ptr ma_data_converter_536871766): ma_result_536871433 {.
      cdecl, importc: "ma_data_converter_reset".}
else:
  static :
    hint("Declaration of " & "ma_data_converter_reset" &
        " already exists, not redeclaring")
when not declared(ma_pcm_u8_to_s16):
  proc ma_pcm_u8_to_s16*(pOut: pointer; pIn: pointer; count: ma_uint64_536871381;
                         ditherMode: ma_dither_mode_536871452): void {.cdecl,
      importc: "ma_pcm_u8_to_s16".}
else:
  static :
    hint("Declaration of " & "ma_pcm_u8_to_s16" &
        " already exists, not redeclaring")
when not declared(ma_pcm_u8_to_s24):
  proc ma_pcm_u8_to_s24*(pOut: pointer; pIn: pointer; count: ma_uint64_536871381;
                         ditherMode: ma_dither_mode_536871452): void {.cdecl,
      importc: "ma_pcm_u8_to_s24".}
else:
  static :
    hint("Declaration of " & "ma_pcm_u8_to_s24" &
        " already exists, not redeclaring")
when not declared(ma_pcm_u8_to_s32):
  proc ma_pcm_u8_to_s32*(pOut: pointer; pIn: pointer; count: ma_uint64_536871381;
                         ditherMode: ma_dither_mode_536871452): void {.cdecl,
      importc: "ma_pcm_u8_to_s32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_u8_to_s32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_u8_to_f32):
  proc ma_pcm_u8_to_f32*(pOut: pointer; pIn: pointer; count: ma_uint64_536871381;
                         ditherMode: ma_dither_mode_536871452): void {.cdecl,
      importc: "ma_pcm_u8_to_f32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_u8_to_f32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s16_to_u8):
  proc ma_pcm_s16_to_u8*(pOut: pointer; pIn: pointer; count: ma_uint64_536871381;
                         ditherMode: ma_dither_mode_536871452): void {.cdecl,
      importc: "ma_pcm_s16_to_u8".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s16_to_u8" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s16_to_s24):
  proc ma_pcm_s16_to_s24*(pOut: pointer; pIn: pointer; count: ma_uint64_536871381;
                          ditherMode: ma_dither_mode_536871452): void {.cdecl,
      importc: "ma_pcm_s16_to_s24".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s16_to_s24" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s16_to_s32):
  proc ma_pcm_s16_to_s32*(pOut: pointer; pIn: pointer; count: ma_uint64_536871381;
                          ditherMode: ma_dither_mode_536871452): void {.cdecl,
      importc: "ma_pcm_s16_to_s32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s16_to_s32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s16_to_f32):
  proc ma_pcm_s16_to_f32*(pOut: pointer; pIn: pointer; count: ma_uint64_536871381;
                          ditherMode: ma_dither_mode_536871452): void {.cdecl,
      importc: "ma_pcm_s16_to_f32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s16_to_f32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s24_to_u8):
  proc ma_pcm_s24_to_u8*(pOut: pointer; pIn: pointer; count: ma_uint64_536871381;
                         ditherMode: ma_dither_mode_536871452): void {.cdecl,
      importc: "ma_pcm_s24_to_u8".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s24_to_u8" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s24_to_s16):
  proc ma_pcm_s24_to_s16*(pOut: pointer; pIn: pointer; count: ma_uint64_536871381;
                          ditherMode: ma_dither_mode_536871452): void {.cdecl,
      importc: "ma_pcm_s24_to_s16".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s24_to_s16" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s24_to_s32):
  proc ma_pcm_s24_to_s32*(pOut: pointer; pIn: pointer; count: ma_uint64_536871381;
                          ditherMode: ma_dither_mode_536871452): void {.cdecl,
      importc: "ma_pcm_s24_to_s32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s24_to_s32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s24_to_f32):
  proc ma_pcm_s24_to_f32*(pOut: pointer; pIn: pointer; count: ma_uint64_536871381;
                          ditherMode: ma_dither_mode_536871452): void {.cdecl,
      importc: "ma_pcm_s24_to_f32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s24_to_f32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s32_to_u8):
  proc ma_pcm_s32_to_u8*(pOut: pointer; pIn: pointer; count: ma_uint64_536871381;
                         ditherMode: ma_dither_mode_536871452): void {.cdecl,
      importc: "ma_pcm_s32_to_u8".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s32_to_u8" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s32_to_s16):
  proc ma_pcm_s32_to_s16*(pOut: pointer; pIn: pointer; count: ma_uint64_536871381;
                          ditherMode: ma_dither_mode_536871452): void {.cdecl,
      importc: "ma_pcm_s32_to_s16".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s32_to_s16" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s32_to_s24):
  proc ma_pcm_s32_to_s24*(pOut: pointer; pIn: pointer; count: ma_uint64_536871381;
                          ditherMode: ma_dither_mode_536871452): void {.cdecl,
      importc: "ma_pcm_s32_to_s24".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s32_to_s24" &
        " already exists, not redeclaring")
when not declared(ma_pcm_s32_to_f32):
  proc ma_pcm_s32_to_f32*(pOut: pointer; pIn: pointer; count: ma_uint64_536871381;
                          ditherMode: ma_dither_mode_536871452): void {.cdecl,
      importc: "ma_pcm_s32_to_f32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_s32_to_f32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_f32_to_u8):
  proc ma_pcm_f32_to_u8*(pOut: pointer; pIn: pointer; count: ma_uint64_536871381;
                         ditherMode: ma_dither_mode_536871452): void {.cdecl,
      importc: "ma_pcm_f32_to_u8".}
else:
  static :
    hint("Declaration of " & "ma_pcm_f32_to_u8" &
        " already exists, not redeclaring")
when not declared(ma_pcm_f32_to_s16):
  proc ma_pcm_f32_to_s16*(pOut: pointer; pIn: pointer; count: ma_uint64_536871381;
                          ditherMode: ma_dither_mode_536871452): void {.cdecl,
      importc: "ma_pcm_f32_to_s16".}
else:
  static :
    hint("Declaration of " & "ma_pcm_f32_to_s16" &
        " already exists, not redeclaring")
when not declared(ma_pcm_f32_to_s24):
  proc ma_pcm_f32_to_s24*(pOut: pointer; pIn: pointer; count: ma_uint64_536871381;
                          ditherMode: ma_dither_mode_536871452): void {.cdecl,
      importc: "ma_pcm_f32_to_s24".}
else:
  static :
    hint("Declaration of " & "ma_pcm_f32_to_s24" &
        " already exists, not redeclaring")
when not declared(ma_pcm_f32_to_s32):
  proc ma_pcm_f32_to_s32*(pOut: pointer; pIn: pointer; count: ma_uint64_536871381;
                          ditherMode: ma_dither_mode_536871452): void {.cdecl,
      importc: "ma_pcm_f32_to_s32".}
else:
  static :
    hint("Declaration of " & "ma_pcm_f32_to_s32" &
        " already exists, not redeclaring")
when not declared(ma_pcm_convert):
  proc ma_pcm_convert*(pOut: pointer; formatOut: ma_format_536871456;
                       pIn: pointer; formatIn: ma_format_536871456;
                       sampleCount: ma_uint64_536871381;
                       ditherMode: ma_dither_mode_536871452): void {.cdecl,
      importc: "ma_pcm_convert".}
else:
  static :
    hint("Declaration of " & "ma_pcm_convert" &
        " already exists, not redeclaring")
when not declared(ma_convert_pcm_frames_format):
  proc ma_convert_pcm_frames_format*(pOut: pointer; formatOut: ma_format_536871456;
                                     pIn: pointer; formatIn: ma_format_536871456;
                                     frameCount: ma_uint64_536871381;
                                     channels: ma_uint32_536871377;
                                     ditherMode: ma_dither_mode_536871452): void {.
      cdecl, importc: "ma_convert_pcm_frames_format".}
else:
  static :
    hint("Declaration of " & "ma_convert_pcm_frames_format" &
        " already exists, not redeclaring")
when not declared(ma_deinterleave_pcm_frames):
  proc ma_deinterleave_pcm_frames*(format: ma_format_536871456;
                                   channels: ma_uint32_536871377;
                                   frameCount: ma_uint64_536871381;
                                   pInterleavedPCMFrames: pointer;
                                   ppDeinterleavedPCMFrames: ptr pointer): void {.
      cdecl, importc: "ma_deinterleave_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_deinterleave_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_interleave_pcm_frames):
  proc ma_interleave_pcm_frames*(format: ma_format_536871456;
                                 channels: ma_uint32_536871377;
                                 frameCount: ma_uint64_536871381;
                                 ppDeinterleavedPCMFrames: ptr pointer;
                                 pInterleavedPCMFrames: pointer): void {.cdecl,
      importc: "ma_interleave_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_interleave_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_get_channel):
  proc ma_channel_map_get_channel*(pChannelMap: ptr ma_channel_536871425;
                                   channelCount: ma_uint32_536871377;
                                   channelIndex: ma_uint32_536871377): ma_channel_536871425 {.
      cdecl, importc: "ma_channel_map_get_channel".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_get_channel" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_init_blank):
  proc ma_channel_map_init_blank*(pChannelMap: ptr ma_channel_536871425;
                                  channels: ma_uint32_536871377): void {.cdecl,
      importc: "ma_channel_map_init_blank".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_init_blank" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_init_standard):
  proc ma_channel_map_init_standard*(standardChannelMap: ma_standard_channel_map_536871468;
                                     pChannelMap: ptr ma_channel_536871425;
                                     channelMapCap: csize_t; channels: ma_uint32_536871377): void {.
      cdecl, importc: "ma_channel_map_init_standard".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_init_standard" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_copy):
  proc ma_channel_map_copy*(pOut: ptr ma_channel_536871425; pIn: ptr ma_channel_536871425;
                            channels: ma_uint32_536871377): void {.cdecl,
      importc: "ma_channel_map_copy".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_copy" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_copy_or_default):
  proc ma_channel_map_copy_or_default*(pOut: ptr ma_channel_536871425;
                                       channelMapCapOut: csize_t;
                                       pIn: ptr ma_channel_536871425;
                                       channels: ma_uint32_536871377): void {.
      cdecl, importc: "ma_channel_map_copy_or_default".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_copy_or_default" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_is_valid):
  proc ma_channel_map_is_valid*(pChannelMap: ptr ma_channel_536871425;
                                channels: ma_uint32_536871377): ma_bool32_536871387 {.
      cdecl, importc: "ma_channel_map_is_valid".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_is_valid" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_is_equal):
  proc ma_channel_map_is_equal*(pChannelMapA: ptr ma_channel_536871425;
                                pChannelMapB: ptr ma_channel_536871425;
                                channels: ma_uint32_536871377): ma_bool32_536871387 {.
      cdecl, importc: "ma_channel_map_is_equal".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_is_equal" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_is_blank):
  proc ma_channel_map_is_blank*(pChannelMap: ptr ma_channel_536871425;
                                channels: ma_uint32_536871377): ma_bool32_536871387 {.
      cdecl, importc: "ma_channel_map_is_blank".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_is_blank" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_contains_channel_position):
  proc ma_channel_map_contains_channel_position*(channels: ma_uint32_536871377;
      pChannelMap: ptr ma_channel_536871425; channelPosition: ma_channel_536871425): ma_bool32_536871387 {.
      cdecl, importc: "ma_channel_map_contains_channel_position".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_contains_channel_position" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_find_channel_position):
  proc ma_channel_map_find_channel_position*(channels: ma_uint32_536871377;
      pChannelMap: ptr ma_channel_536871425; channelPosition: ma_channel_536871425;
      pChannelIndex: ptr ma_uint32_536871377): ma_bool32_536871387 {.cdecl,
      importc: "ma_channel_map_find_channel_position".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_find_channel_position" &
        " already exists, not redeclaring")
when not declared(ma_channel_map_to_string):
  proc ma_channel_map_to_string*(pChannelMap: ptr ma_channel_536871425;
                                 channels: ma_uint32_536871377;
                                 pBufferOut: cstring; bufferCap: csize_t): csize_t {.
      cdecl, importc: "ma_channel_map_to_string".}
else:
  static :
    hint("Declaration of " & "ma_channel_map_to_string" &
        " already exists, not redeclaring")
when not declared(ma_channel_position_to_string):
  proc ma_channel_position_to_string*(channel: ma_channel_536871425): cstring {.
      cdecl, importc: "ma_channel_position_to_string".}
else:
  static :
    hint("Declaration of " & "ma_channel_position_to_string" &
        " already exists, not redeclaring")
when not declared(ma_convert_frames):
  proc ma_convert_frames*(pOut: pointer; frameCountOut: ma_uint64_536871381;
                          formatOut: ma_format_536871456;
                          channelsOut: ma_uint32_536871377;
                          sampleRateOut: ma_uint32_536871377; pIn: pointer;
                          frameCountIn: ma_uint64_536871381;
                          formatIn: ma_format_536871456; channelsIn: ma_uint32_536871377;
                          sampleRateIn: ma_uint32_536871377): ma_uint64_536871381 {.
      cdecl, importc: "ma_convert_frames".}
else:
  static :
    hint("Declaration of " & "ma_convert_frames" &
        " already exists, not redeclaring")
when not declared(ma_convert_frames_ex):
  proc ma_convert_frames_ex*(pOut: pointer; frameCountOut: ma_uint64_536871381;
                             pIn: pointer; frameCountIn: ma_uint64_536871381;
                             pConfig: ptr ma_data_converter_config_536871758): ma_uint64_536871381 {.
      cdecl, importc: "ma_convert_frames_ex".}
else:
  static :
    hint("Declaration of " & "ma_convert_frames_ex" &
        " already exists, not redeclaring")
when not declared(ma_data_source_config_init):
  proc ma_data_source_config_init*(): ma_data_source_config_536871778 {.cdecl,
      importc: "ma_data_source_config_init".}
else:
  static :
    hint("Declaration of " & "ma_data_source_config_init" &
        " already exists, not redeclaring")
when not declared(ma_data_source_init):
  proc ma_data_source_init*(pConfig: ptr ma_data_source_config_536871778;
                            pDataSource: pointer): ma_result_536871433 {.cdecl,
      importc: "ma_data_source_init".}
else:
  static :
    hint("Declaration of " & "ma_data_source_init" &
        " already exists, not redeclaring")
when not declared(ma_data_source_uninit):
  proc ma_data_source_uninit*(pDataSource: pointer): void {.cdecl,
      importc: "ma_data_source_uninit".}
else:
  static :
    hint("Declaration of " & "ma_data_source_uninit" &
        " already exists, not redeclaring")
when not declared(ma_data_source_read_pcm_frames):
  proc ma_data_source_read_pcm_frames*(pDataSource: pointer;
                                       pFramesOut: pointer;
                                       frameCount: ma_uint64_536871381;
                                       pFramesRead: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_data_source_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_seek_pcm_frames):
  proc ma_data_source_seek_pcm_frames*(pDataSource: pointer;
                                       frameCount: ma_uint64_536871381;
                                       pFramesSeeked: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_data_source_seek_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_seek_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_seek_to_pcm_frame):
  proc ma_data_source_seek_to_pcm_frame*(pDataSource: pointer;
      frameIndex: ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_data_source_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_data_source_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_data_format):
  proc ma_data_source_get_data_format*(pDataSource: pointer;
                                       pFormat: ptr ma_format_536871456;
                                       pChannels: ptr ma_uint32_536871377;
                                       pSampleRate: ptr ma_uint32_536871377;
                                       pChannelMap: ptr ma_channel_536871425;
                                       channelMapCap: csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_data_source_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_data_format" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_cursor_in_pcm_frames):
  proc ma_data_source_get_cursor_in_pcm_frames*(pDataSource: pointer;
      pCursor: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_data_source_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_length_in_pcm_frames):
  proc ma_data_source_get_length_in_pcm_frames*(pDataSource: pointer;
      pLength: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_data_source_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_cursor_in_seconds):
  proc ma_data_source_get_cursor_in_seconds*(pDataSource: pointer;
      pCursor: ptr cfloat): ma_result_536871433 {.cdecl,
      importc: "ma_data_source_get_cursor_in_seconds".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_cursor_in_seconds" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_length_in_seconds):
  proc ma_data_source_get_length_in_seconds*(pDataSource: pointer;
      pLength: ptr cfloat): ma_result_536871433 {.cdecl,
      importc: "ma_data_source_get_length_in_seconds".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_length_in_seconds" &
        " already exists, not redeclaring")
when not declared(ma_data_source_set_looping):
  proc ma_data_source_set_looping*(pDataSource: pointer; isLooping: ma_bool32_536871387): ma_result_536871433 {.
      cdecl, importc: "ma_data_source_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_looping" &
        " already exists, not redeclaring")
when not declared(ma_data_source_is_looping):
  proc ma_data_source_is_looping*(pDataSource: pointer): ma_bool32_536871387 {.
      cdecl, importc: "ma_data_source_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_data_source_is_looping" &
        " already exists, not redeclaring")
when not declared(ma_data_source_set_range_in_pcm_frames):
  proc ma_data_source_set_range_in_pcm_frames*(pDataSource: pointer;
      rangeBegInFrames: ma_uint64_536871381; rangeEndInFrames: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_data_source_set_range_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_range_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_range_in_pcm_frames):
  proc ma_data_source_get_range_in_pcm_frames*(pDataSource: pointer;
      pRangeBegInFrames: ptr ma_uint64_536871381;
      pRangeEndInFrames: ptr ma_uint64_536871381): void {.cdecl,
      importc: "ma_data_source_get_range_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_range_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_set_loop_point_in_pcm_frames):
  proc ma_data_source_set_loop_point_in_pcm_frames*(pDataSource: pointer;
      loopBegInFrames: ma_uint64_536871381; loopEndInFrames: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_data_source_set_loop_point_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_loop_point_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_loop_point_in_pcm_frames):
  proc ma_data_source_get_loop_point_in_pcm_frames*(pDataSource: pointer;
      pLoopBegInFrames: ptr ma_uint64_536871381; pLoopEndInFrames: ptr ma_uint64_536871381): void {.
      cdecl, importc: "ma_data_source_get_loop_point_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_loop_point_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_data_source_set_current):
  proc ma_data_source_set_current*(pDataSource: pointer;
                                   pCurrentDataSource: pointer): ma_result_536871433 {.
      cdecl, importc: "ma_data_source_set_current".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_current" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_current):
  proc ma_data_source_get_current*(pDataSource: pointer): pointer {.cdecl,
      importc: "ma_data_source_get_current".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_current" &
        " already exists, not redeclaring")
when not declared(ma_data_source_set_next):
  proc ma_data_source_set_next*(pDataSource: pointer; pNextDataSource: pointer): ma_result_536871433 {.
      cdecl, importc: "ma_data_source_set_next".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_next" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_next):
  proc ma_data_source_get_next*(pDataSource: pointer): pointer {.cdecl,
      importc: "ma_data_source_get_next".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_next" &
        " already exists, not redeclaring")
when not declared(ma_data_source_set_next_callback):
  proc ma_data_source_set_next_callback*(pDataSource: pointer;
      onGetNext: ma_data_source_get_next_proc_536871774): ma_result_536871433 {.
      cdecl, importc: "ma_data_source_set_next_callback".}
else:
  static :
    hint("Declaration of " & "ma_data_source_set_next_callback" &
        " already exists, not redeclaring")
when not declared(ma_data_source_get_next_callback):
  proc ma_data_source_get_next_callback*(pDataSource: pointer): ma_data_source_get_next_proc_536871774 {.
      cdecl, importc: "ma_data_source_get_next_callback".}
else:
  static :
    hint("Declaration of " & "ma_data_source_get_next_callback" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_init):
  proc ma_audio_buffer_ref_init*(format: ma_format_536871456;
                                 channels: ma_uint32_536871377; pData: pointer;
                                 sizeInFrames: ma_uint64_536871381;
                                 pAudioBufferRef: ptr ma_audio_buffer_ref_536871786): ma_result_536871433 {.
      cdecl, importc: "ma_audio_buffer_ref_init".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_init" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_uninit):
  proc ma_audio_buffer_ref_uninit*(pAudioBufferRef: ptr ma_audio_buffer_ref_536871786): void {.
      cdecl, importc: "ma_audio_buffer_ref_uninit".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_uninit" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_set_data):
  proc ma_audio_buffer_ref_set_data*(pAudioBufferRef: ptr ma_audio_buffer_ref_536871786;
                                     pData: pointer; sizeInFrames: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_audio_buffer_ref_set_data".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_set_data" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_read_pcm_frames):
  proc ma_audio_buffer_ref_read_pcm_frames*(
      pAudioBufferRef: ptr ma_audio_buffer_ref_536871786; pFramesOut: pointer;
      frameCount: ma_uint64_536871381; loop: ma_bool32_536871387): ma_uint64_536871381 {.
      cdecl, importc: "ma_audio_buffer_ref_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_seek_to_pcm_frame):
  proc ma_audio_buffer_ref_seek_to_pcm_frame*(
      pAudioBufferRef: ptr ma_audio_buffer_ref_536871786; frameIndex: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_audio_buffer_ref_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_map):
  proc ma_audio_buffer_ref_map*(pAudioBufferRef: ptr ma_audio_buffer_ref_536871786;
                                ppFramesOut: ptr pointer;
                                pFrameCount: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_audio_buffer_ref_map".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_map" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_unmap):
  proc ma_audio_buffer_ref_unmap*(pAudioBufferRef: ptr ma_audio_buffer_ref_536871786;
                                  frameCount: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_audio_buffer_ref_unmap".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_unmap" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_at_end):
  proc ma_audio_buffer_ref_at_end*(pAudioBufferRef: ptr ma_audio_buffer_ref_536871786): ma_bool32_536871387 {.
      cdecl, importc: "ma_audio_buffer_ref_at_end".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_at_end" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_get_cursor_in_pcm_frames):
  proc ma_audio_buffer_ref_get_cursor_in_pcm_frames*(
      pAudioBufferRef: ptr ma_audio_buffer_ref_536871786; pCursor: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_audio_buffer_ref_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_get_length_in_pcm_frames):
  proc ma_audio_buffer_ref_get_length_in_pcm_frames*(
      pAudioBufferRef: ptr ma_audio_buffer_ref_536871786; pLength: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_audio_buffer_ref_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_ref_get_available_frames):
  proc ma_audio_buffer_ref_get_available_frames*(
      pAudioBufferRef: ptr ma_audio_buffer_ref_536871786;
      pAvailableFrames: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_audio_buffer_ref_get_available_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_ref_get_available_frames" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_config_init):
  proc ma_audio_buffer_config_init*(format: ma_format_536871456;
                                    channels: ma_uint32_536871377;
                                    sizeInFrames: ma_uint64_536871381;
                                    pData: pointer; pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): ma_audio_buffer_config_536871790 {.
      cdecl, importc: "ma_audio_buffer_config_init".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_config_init" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_init):
  proc ma_audio_buffer_init*(pConfig: ptr ma_audio_buffer_config_536871790;
                             pAudioBuffer: ptr ma_audio_buffer_536871794): ma_result_536871433 {.
      cdecl, importc: "ma_audio_buffer_init".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_init" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_init_copy):
  proc ma_audio_buffer_init_copy*(pConfig: ptr ma_audio_buffer_config_536871790;
                                  pAudioBuffer: ptr ma_audio_buffer_536871794): ma_result_536871433 {.
      cdecl, importc: "ma_audio_buffer_init_copy".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_init_copy" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_alloc_and_init):
  proc ma_audio_buffer_alloc_and_init*(pConfig: ptr ma_audio_buffer_config_536871790;
                                       ppAudioBuffer: ptr ptr ma_audio_buffer_536871794): ma_result_536871433 {.
      cdecl, importc: "ma_audio_buffer_alloc_and_init".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_alloc_and_init" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_uninit):
  proc ma_audio_buffer_uninit*(pAudioBuffer: ptr ma_audio_buffer_536871794): void {.
      cdecl, importc: "ma_audio_buffer_uninit".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_uninit" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_uninit_and_free):
  proc ma_audio_buffer_uninit_and_free*(pAudioBuffer: ptr ma_audio_buffer_536871794): void {.
      cdecl, importc: "ma_audio_buffer_uninit_and_free".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_uninit_and_free" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_read_pcm_frames):
  proc ma_audio_buffer_read_pcm_frames*(pAudioBuffer: ptr ma_audio_buffer_536871794;
                                        pFramesOut: pointer;
                                        frameCount: ma_uint64_536871381;
                                        loop: ma_bool32_536871387): ma_uint64_536871381 {.
      cdecl, importc: "ma_audio_buffer_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_seek_to_pcm_frame):
  proc ma_audio_buffer_seek_to_pcm_frame*(pAudioBuffer: ptr ma_audio_buffer_536871794;
      frameIndex: ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_audio_buffer_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_map):
  proc ma_audio_buffer_map*(pAudioBuffer: ptr ma_audio_buffer_536871794;
                            ppFramesOut: ptr pointer; pFrameCount: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_audio_buffer_map".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_map" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_unmap):
  proc ma_audio_buffer_unmap*(pAudioBuffer: ptr ma_audio_buffer_536871794;
                              frameCount: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_audio_buffer_unmap".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_unmap" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_at_end):
  proc ma_audio_buffer_at_end*(pAudioBuffer: ptr ma_audio_buffer_536871794): ma_bool32_536871387 {.
      cdecl, importc: "ma_audio_buffer_at_end".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_at_end" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_get_cursor_in_pcm_frames):
  proc ma_audio_buffer_get_cursor_in_pcm_frames*(
      pAudioBuffer: ptr ma_audio_buffer_536871794; pCursor: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_audio_buffer_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_get_length_in_pcm_frames):
  proc ma_audio_buffer_get_length_in_pcm_frames*(
      pAudioBuffer: ptr ma_audio_buffer_536871794; pLength: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_audio_buffer_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_audio_buffer_get_available_frames):
  proc ma_audio_buffer_get_available_frames*(pAudioBuffer: ptr ma_audio_buffer_536871794;
      pAvailableFrames: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_audio_buffer_get_available_frames".}
else:
  static :
    hint("Declaration of " & "ma_audio_buffer_get_available_frames" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_init):
  proc ma_paged_audio_buffer_data_init*(format: ma_format_536871456;
                                        channels: ma_uint32_536871377;
                                        pData: ptr ma_paged_audio_buffer_data_536871802): ma_result_536871433 {.
      cdecl, importc: "ma_paged_audio_buffer_data_init".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_init" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_uninit):
  proc ma_paged_audio_buffer_data_uninit*(pData: ptr ma_paged_audio_buffer_data_536871802;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_paged_audio_buffer_data_uninit".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_uninit" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_get_head):
  proc ma_paged_audio_buffer_data_get_head*(
      pData: ptr ma_paged_audio_buffer_data_536871802): ptr ma_paged_audio_buffer_page_536871796 {.
      cdecl, importc: "ma_paged_audio_buffer_data_get_head".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_get_head" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_get_tail):
  proc ma_paged_audio_buffer_data_get_tail*(
      pData: ptr ma_paged_audio_buffer_data_536871802): ptr ma_paged_audio_buffer_page_536871796 {.
      cdecl, importc: "ma_paged_audio_buffer_data_get_tail".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_get_tail" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_get_length_in_pcm_frames):
  proc ma_paged_audio_buffer_data_get_length_in_pcm_frames*(
      pData: ptr ma_paged_audio_buffer_data_536871802; pLength: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_paged_audio_buffer_data_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_paged_audio_buffer_data_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_allocate_page):
  proc ma_paged_audio_buffer_data_allocate_page*(
      pData: ptr ma_paged_audio_buffer_data_536871802;
      pageSizeInFrames: ma_uint64_536871381; pInitialData: pointer;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
      ppPage: ptr ptr ma_paged_audio_buffer_page_536871796): ma_result_536871433 {.
      cdecl, importc: "ma_paged_audio_buffer_data_allocate_page".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_allocate_page" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_free_page):
  proc ma_paged_audio_buffer_data_free_page*(
      pData: ptr ma_paged_audio_buffer_data_536871802;
      pPage: ptr ma_paged_audio_buffer_page_536871796;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): ma_result_536871433 {.
      cdecl, importc: "ma_paged_audio_buffer_data_free_page".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_free_page" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_append_page):
  proc ma_paged_audio_buffer_data_append_page*(
      pData: ptr ma_paged_audio_buffer_data_536871802;
      pPage: ptr ma_paged_audio_buffer_page_536871796): ma_result_536871433 {.
      cdecl, importc: "ma_paged_audio_buffer_data_append_page".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_data_append_page" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_data_allocate_and_append_page):
  proc ma_paged_audio_buffer_data_allocate_and_append_page*(
      pData: ptr ma_paged_audio_buffer_data_536871802;
      pageSizeInFrames: ma_uint32_536871377; pInitialData: pointer;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): ma_result_536871433 {.
      cdecl, importc: "ma_paged_audio_buffer_data_allocate_and_append_page".}
else:
  static :
    hint("Declaration of " &
        "ma_paged_audio_buffer_data_allocate_and_append_page" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_config_init):
  proc ma_paged_audio_buffer_config_init*(pData: ptr ma_paged_audio_buffer_data_536871802): ma_paged_audio_buffer_config_536871806 {.
      cdecl, importc: "ma_paged_audio_buffer_config_init".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_config_init" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_init):
  proc ma_paged_audio_buffer_init*(pConfig: ptr ma_paged_audio_buffer_config_536871806;
                                   pPagedAudioBuffer: ptr ma_paged_audio_buffer_536871810): ma_result_536871433 {.
      cdecl, importc: "ma_paged_audio_buffer_init".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_init" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_uninit):
  proc ma_paged_audio_buffer_uninit*(pPagedAudioBuffer: ptr ma_paged_audio_buffer_536871810): void {.
      cdecl, importc: "ma_paged_audio_buffer_uninit".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_uninit" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_read_pcm_frames):
  proc ma_paged_audio_buffer_read_pcm_frames*(
      pPagedAudioBuffer: ptr ma_paged_audio_buffer_536871810;
      pFramesOut: pointer; frameCount: ma_uint64_536871381;
      pFramesRead: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_paged_audio_buffer_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_seek_to_pcm_frame):
  proc ma_paged_audio_buffer_seek_to_pcm_frame*(
      pPagedAudioBuffer: ptr ma_paged_audio_buffer_536871810;
      frameIndex: ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_paged_audio_buffer_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_get_cursor_in_pcm_frames):
  proc ma_paged_audio_buffer_get_cursor_in_pcm_frames*(
      pPagedAudioBuffer: ptr ma_paged_audio_buffer_536871810;
      pCursor: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_paged_audio_buffer_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_paged_audio_buffer_get_length_in_pcm_frames):
  proc ma_paged_audio_buffer_get_length_in_pcm_frames*(
      pPagedAudioBuffer: ptr ma_paged_audio_buffer_536871810;
      pLength: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_paged_audio_buffer_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_paged_audio_buffer_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_rb_init_ex):
  proc ma_rb_init_ex*(subbufferSizeInBytes: csize_t; subbufferCount: csize_t;
                      subbufferStrideInBytes: csize_t;
                      pOptionalPreallocatedBuffer: pointer;
                      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                      pRB: ptr ma_rb_536871814): ma_result_536871433 {.cdecl,
      importc: "ma_rb_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_rb_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_rb_init):
  proc ma_rb_init*(bufferSizeInBytes: csize_t;
                   pOptionalPreallocatedBuffer: pointer;
                   pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                   pRB: ptr ma_rb_536871814): ma_result_536871433 {.cdecl,
      importc: "ma_rb_init".}
else:
  static :
    hint("Declaration of " & "ma_rb_init" & " already exists, not redeclaring")
when not declared(ma_rb_uninit):
  proc ma_rb_uninit*(pRB: ptr ma_rb_536871814): void {.cdecl,
      importc: "ma_rb_uninit".}
else:
  static :
    hint("Declaration of " & "ma_rb_uninit" & " already exists, not redeclaring")
when not declared(ma_rb_reset):
  proc ma_rb_reset*(pRB: ptr ma_rb_536871814): void {.cdecl,
      importc: "ma_rb_reset".}
else:
  static :
    hint("Declaration of " & "ma_rb_reset" & " already exists, not redeclaring")
when not declared(ma_rb_acquire_read):
  proc ma_rb_acquire_read*(pRB: ptr ma_rb_536871814; pSizeInBytes: ptr csize_t;
                           ppBufferOut: ptr pointer): ma_result_536871433 {.
      cdecl, importc: "ma_rb_acquire_read".}
else:
  static :
    hint("Declaration of " & "ma_rb_acquire_read" &
        " already exists, not redeclaring")
when not declared(ma_rb_commit_read):
  proc ma_rb_commit_read*(pRB: ptr ma_rb_536871814; sizeInBytes: csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_rb_commit_read".}
else:
  static :
    hint("Declaration of " & "ma_rb_commit_read" &
        " already exists, not redeclaring")
when not declared(ma_rb_acquire_write):
  proc ma_rb_acquire_write*(pRB: ptr ma_rb_536871814; pSizeInBytes: ptr csize_t;
                            ppBufferOut: ptr pointer): ma_result_536871433 {.
      cdecl, importc: "ma_rb_acquire_write".}
else:
  static :
    hint("Declaration of " & "ma_rb_acquire_write" &
        " already exists, not redeclaring")
when not declared(ma_rb_commit_write):
  proc ma_rb_commit_write*(pRB: ptr ma_rb_536871814; sizeInBytes: csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_rb_commit_write".}
else:
  static :
    hint("Declaration of " & "ma_rb_commit_write" &
        " already exists, not redeclaring")
when not declared(ma_rb_seek_read):
  proc ma_rb_seek_read*(pRB: ptr ma_rb_536871814; offsetInBytes: csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_rb_seek_read".}
else:
  static :
    hint("Declaration of " & "ma_rb_seek_read" &
        " already exists, not redeclaring")
when not declared(ma_rb_seek_write):
  proc ma_rb_seek_write*(pRB: ptr ma_rb_536871814; offsetInBytes: csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_rb_seek_write".}
else:
  static :
    hint("Declaration of " & "ma_rb_seek_write" &
        " already exists, not redeclaring")
when not declared(ma_rb_pointer_distance):
  proc ma_rb_pointer_distance*(pRB: ptr ma_rb_536871814): ma_int32_536871375 {.
      cdecl, importc: "ma_rb_pointer_distance".}
else:
  static :
    hint("Declaration of " & "ma_rb_pointer_distance" &
        " already exists, not redeclaring")
when not declared(ma_rb_available_read):
  proc ma_rb_available_read*(pRB: ptr ma_rb_536871814): ma_uint32_536871377 {.
      cdecl, importc: "ma_rb_available_read".}
else:
  static :
    hint("Declaration of " & "ma_rb_available_read" &
        " already exists, not redeclaring")
when not declared(ma_rb_available_write):
  proc ma_rb_available_write*(pRB: ptr ma_rb_536871814): ma_uint32_536871377 {.
      cdecl, importc: "ma_rb_available_write".}
else:
  static :
    hint("Declaration of " & "ma_rb_available_write" &
        " already exists, not redeclaring")
when not declared(ma_rb_get_subbuffer_size):
  proc ma_rb_get_subbuffer_size*(pRB: ptr ma_rb_536871814): csize_t {.cdecl,
      importc: "ma_rb_get_subbuffer_size".}
else:
  static :
    hint("Declaration of " & "ma_rb_get_subbuffer_size" &
        " already exists, not redeclaring")
when not declared(ma_rb_get_subbuffer_stride):
  proc ma_rb_get_subbuffer_stride*(pRB: ptr ma_rb_536871814): csize_t {.cdecl,
      importc: "ma_rb_get_subbuffer_stride".}
else:
  static :
    hint("Declaration of " & "ma_rb_get_subbuffer_stride" &
        " already exists, not redeclaring")
when not declared(ma_rb_get_subbuffer_offset):
  proc ma_rb_get_subbuffer_offset*(pRB: ptr ma_rb_536871814;
                                   subbufferIndex: csize_t): csize_t {.cdecl,
      importc: "ma_rb_get_subbuffer_offset".}
else:
  static :
    hint("Declaration of " & "ma_rb_get_subbuffer_offset" &
        " already exists, not redeclaring")
when not declared(ma_rb_get_subbuffer_ptr):
  proc ma_rb_get_subbuffer_ptr*(pRB: ptr ma_rb_536871814;
                                subbufferIndex: csize_t; pBuffer: pointer): pointer {.
      cdecl, importc: "ma_rb_get_subbuffer_ptr".}
else:
  static :
    hint("Declaration of " & "ma_rb_get_subbuffer_ptr" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_init_ex):
  proc ma_pcm_rb_init_ex*(format: ma_format_536871456; channels: ma_uint32_536871377;
                          subbufferSizeInFrames: ma_uint32_536871377;
                          subbufferCount: ma_uint32_536871377;
                          subbufferStrideInFrames: ma_uint32_536871377;
                          pOptionalPreallocatedBuffer: pointer;
                          pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                          pRB: ptr ma_pcm_rb_536871818): ma_result_536871433 {.
      cdecl, importc: "ma_pcm_rb_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_init):
  proc ma_pcm_rb_init*(format: ma_format_536871456; channels: ma_uint32_536871377;
                       bufferSizeInFrames: ma_uint32_536871377;
                       pOptionalPreallocatedBuffer: pointer;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                       pRB: ptr ma_pcm_rb_536871818): ma_result_536871433 {.
      cdecl, importc: "ma_pcm_rb_init".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_init" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_uninit):
  proc ma_pcm_rb_uninit*(pRB: ptr ma_pcm_rb_536871818): void {.cdecl,
      importc: "ma_pcm_rb_uninit".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_uninit" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_reset):
  proc ma_pcm_rb_reset*(pRB: ptr ma_pcm_rb_536871818): void {.cdecl,
      importc: "ma_pcm_rb_reset".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_reset" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_acquire_read):
  proc ma_pcm_rb_acquire_read*(pRB: ptr ma_pcm_rb_536871818;
                               pSizeInFrames: ptr ma_uint32_536871377;
                               ppBufferOut: ptr pointer): ma_result_536871433 {.
      cdecl, importc: "ma_pcm_rb_acquire_read".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_acquire_read" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_commit_read):
  proc ma_pcm_rb_commit_read*(pRB: ptr ma_pcm_rb_536871818;
                              sizeInFrames: ma_uint32_536871377): ma_result_536871433 {.
      cdecl, importc: "ma_pcm_rb_commit_read".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_commit_read" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_acquire_write):
  proc ma_pcm_rb_acquire_write*(pRB: ptr ma_pcm_rb_536871818;
                                pSizeInFrames: ptr ma_uint32_536871377;
                                ppBufferOut: ptr pointer): ma_result_536871433 {.
      cdecl, importc: "ma_pcm_rb_acquire_write".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_acquire_write" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_commit_write):
  proc ma_pcm_rb_commit_write*(pRB: ptr ma_pcm_rb_536871818;
                               sizeInFrames: ma_uint32_536871377): ma_result_536871433 {.
      cdecl, importc: "ma_pcm_rb_commit_write".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_commit_write" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_seek_read):
  proc ma_pcm_rb_seek_read*(pRB: ptr ma_pcm_rb_536871818;
                            offsetInFrames: ma_uint32_536871377): ma_result_536871433 {.
      cdecl, importc: "ma_pcm_rb_seek_read".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_seek_read" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_seek_write):
  proc ma_pcm_rb_seek_write*(pRB: ptr ma_pcm_rb_536871818;
                             offsetInFrames: ma_uint32_536871377): ma_result_536871433 {.
      cdecl, importc: "ma_pcm_rb_seek_write".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_seek_write" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_pointer_distance):
  proc ma_pcm_rb_pointer_distance*(pRB: ptr ma_pcm_rb_536871818): ma_int32_536871375 {.
      cdecl, importc: "ma_pcm_rb_pointer_distance".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_pointer_distance" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_available_read):
  proc ma_pcm_rb_available_read*(pRB: ptr ma_pcm_rb_536871818): ma_uint32_536871377 {.
      cdecl, importc: "ma_pcm_rb_available_read".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_available_read" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_available_write):
  proc ma_pcm_rb_available_write*(pRB: ptr ma_pcm_rb_536871818): ma_uint32_536871377 {.
      cdecl, importc: "ma_pcm_rb_available_write".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_available_write" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_get_subbuffer_size):
  proc ma_pcm_rb_get_subbuffer_size*(pRB: ptr ma_pcm_rb_536871818): ma_uint32_536871377 {.
      cdecl, importc: "ma_pcm_rb_get_subbuffer_size".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_subbuffer_size" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_get_subbuffer_stride):
  proc ma_pcm_rb_get_subbuffer_stride*(pRB: ptr ma_pcm_rb_536871818): ma_uint32_536871377 {.
      cdecl, importc: "ma_pcm_rb_get_subbuffer_stride".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_subbuffer_stride" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_get_subbuffer_offset):
  proc ma_pcm_rb_get_subbuffer_offset*(pRB: ptr ma_pcm_rb_536871818;
                                       subbufferIndex: ma_uint32_536871377): ma_uint32_536871377 {.
      cdecl, importc: "ma_pcm_rb_get_subbuffer_offset".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_subbuffer_offset" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_get_subbuffer_ptr):
  proc ma_pcm_rb_get_subbuffer_ptr*(pRB: ptr ma_pcm_rb_536871818;
                                    subbufferIndex: ma_uint32_536871377;
                                    pBuffer: pointer): pointer {.cdecl,
      importc: "ma_pcm_rb_get_subbuffer_ptr".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_subbuffer_ptr" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_get_format):
  proc ma_pcm_rb_get_format*(pRB: ptr ma_pcm_rb_536871818): ma_format_536871456 {.
      cdecl, importc: "ma_pcm_rb_get_format".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_format" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_get_channels):
  proc ma_pcm_rb_get_channels*(pRB: ptr ma_pcm_rb_536871818): ma_uint32_536871377 {.
      cdecl, importc: "ma_pcm_rb_get_channels".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_channels" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_get_sample_rate):
  proc ma_pcm_rb_get_sample_rate*(pRB: ptr ma_pcm_rb_536871818): ma_uint32_536871377 {.
      cdecl, importc: "ma_pcm_rb_get_sample_rate".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_get_sample_rate" &
        " already exists, not redeclaring")
when not declared(ma_pcm_rb_set_sample_rate):
  proc ma_pcm_rb_set_sample_rate*(pRB: ptr ma_pcm_rb_536871818;
                                  sampleRate: ma_uint32_536871377): void {.
      cdecl, importc: "ma_pcm_rb_set_sample_rate".}
else:
  static :
    hint("Declaration of " & "ma_pcm_rb_set_sample_rate" &
        " already exists, not redeclaring")
when not declared(ma_duplex_rb_init):
  proc ma_duplex_rb_init*(captureFormat: ma_format_536871456;
                          captureChannels: ma_uint32_536871377;
                          sampleRate: ma_uint32_536871377;
                          captureInternalSampleRate: ma_uint32_536871377;
                          captureInternalPeriodSizeInFrames: ma_uint32_536871377;
                          pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                          pRB: ptr ma_duplex_rb_536871822): ma_result_536871433 {.
      cdecl, importc: "ma_duplex_rb_init".}
else:
  static :
    hint("Declaration of " & "ma_duplex_rb_init" &
        " already exists, not redeclaring")
when not declared(ma_duplex_rb_uninit):
  proc ma_duplex_rb_uninit*(pRB: ptr ma_duplex_rb_536871822): ma_result_536871433 {.
      cdecl, importc: "ma_duplex_rb_uninit".}
else:
  static :
    hint("Declaration of " & "ma_duplex_rb_uninit" &
        " already exists, not redeclaring")
when not declared(ma_result_description):
  proc ma_result_description*(result: ma_result_536871433): cstring {.cdecl,
      importc: "ma_result_description".}
else:
  static :
    hint("Declaration of " & "ma_result_description" &
        " already exists, not redeclaring")
when not declared(ma_malloc):
  proc ma_malloc*(sz: csize_t; pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): pointer {.
      cdecl, importc: "ma_malloc".}
else:
  static :
    hint("Declaration of " & "ma_malloc" & " already exists, not redeclaring")
when not declared(ma_calloc):
  proc ma_calloc*(sz: csize_t; pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): pointer {.
      cdecl, importc: "ma_calloc".}
else:
  static :
    hint("Declaration of " & "ma_calloc" & " already exists, not redeclaring")
when not declared(ma_realloc):
  proc ma_realloc*(p: pointer; sz: csize_t;
                   pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): pointer {.
      cdecl, importc: "ma_realloc".}
else:
  static :
    hint("Declaration of " & "ma_realloc" & " already exists, not redeclaring")
when not declared(ma_free):
  proc ma_free*(p: pointer; pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_free".}
else:
  static :
    hint("Declaration of " & "ma_free" & " already exists, not redeclaring")
when not declared(ma_aligned_malloc):
  proc ma_aligned_malloc*(sz: csize_t; alignment: csize_t;
                          pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): pointer {.
      cdecl, importc: "ma_aligned_malloc".}
else:
  static :
    hint("Declaration of " & "ma_aligned_malloc" &
        " already exists, not redeclaring")
when not declared(ma_aligned_free):
  proc ma_aligned_free*(p: pointer;
                        pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_aligned_free".}
else:
  static :
    hint("Declaration of " & "ma_aligned_free" &
        " already exists, not redeclaring")
when not declared(ma_get_format_name):
  proc ma_get_format_name*(format: ma_format_536871456): cstring {.cdecl,
      importc: "ma_get_format_name".}
else:
  static :
    hint("Declaration of " & "ma_get_format_name" &
        " already exists, not redeclaring")
when not declared(ma_blend_f32):
  proc ma_blend_f32*(pOut: ptr cfloat; pInA: ptr cfloat; pInB: ptr cfloat;
                     factor: cfloat; channels: ma_uint32_536871377): void {.
      cdecl, importc: "ma_blend_f32".}
else:
  static :
    hint("Declaration of " & "ma_blend_f32" & " already exists, not redeclaring")
when not declared(ma_get_bytes_per_sample):
  proc ma_get_bytes_per_sample*(format: ma_format_536871456): ma_uint32_536871377 {.
      cdecl, importc: "ma_get_bytes_per_sample".}
else:
  static :
    hint("Declaration of " & "ma_get_bytes_per_sample" &
        " already exists, not redeclaring")
when not declared(ma_log_level_to_string):
  proc ma_log_level_to_string*(logLevel: ma_uint32_536871377): cstring {.cdecl,
      importc: "ma_log_level_to_string".}
else:
  static :
    hint("Declaration of " & "ma_log_level_to_string" &
        " already exists, not redeclaring")
when not declared(ma_spinlock_lock):
  proc ma_spinlock_lock*(pSpinlock: ptr ma_spinlock_536871502): ma_result_536871433 {.
      cdecl, importc: "ma_spinlock_lock".}
else:
  static :
    hint("Declaration of " & "ma_spinlock_lock" &
        " already exists, not redeclaring")
when not declared(ma_spinlock_lock_noyield):
  proc ma_spinlock_lock_noyield*(pSpinlock: ptr ma_spinlock_536871502): ma_result_536871433 {.
      cdecl, importc: "ma_spinlock_lock_noyield".}
else:
  static :
    hint("Declaration of " & "ma_spinlock_lock_noyield" &
        " already exists, not redeclaring")
when not declared(ma_spinlock_unlock):
  proc ma_spinlock_unlock*(pSpinlock: ptr ma_spinlock_536871502): ma_result_536871433 {.
      cdecl, importc: "ma_spinlock_unlock".}
else:
  static :
    hint("Declaration of " & "ma_spinlock_unlock" &
        " already exists, not redeclaring")
when not declared(ma_mutex_init):
  proc ma_mutex_init*(pMutex: ptr ma_mutex_536871510): ma_result_536871433 {.
      cdecl, importc: "ma_mutex_init".}
else:
  static :
    hint("Declaration of " & "ma_mutex_init" &
        " already exists, not redeclaring")
when not declared(ma_mutex_uninit):
  proc ma_mutex_uninit*(pMutex: ptr ma_mutex_536871510): void {.cdecl,
      importc: "ma_mutex_uninit".}
else:
  static :
    hint("Declaration of " & "ma_mutex_uninit" &
        " already exists, not redeclaring")
when not declared(ma_mutex_lock):
  proc ma_mutex_lock*(pMutex: ptr ma_mutex_536871510): void {.cdecl,
      importc: "ma_mutex_lock".}
else:
  static :
    hint("Declaration of " & "ma_mutex_lock" &
        " already exists, not redeclaring")
when not declared(ma_mutex_unlock):
  proc ma_mutex_unlock*(pMutex: ptr ma_mutex_536871510): void {.cdecl,
      importc: "ma_mutex_unlock".}
else:
  static :
    hint("Declaration of " & "ma_mutex_unlock" &
        " already exists, not redeclaring")
when not declared(ma_event_init):
  proc ma_event_init*(pEvent: ptr ma_event_536871514): ma_result_536871433 {.
      cdecl, importc: "ma_event_init".}
else:
  static :
    hint("Declaration of " & "ma_event_init" &
        " already exists, not redeclaring")
when not declared(ma_event_uninit):
  proc ma_event_uninit*(pEvent: ptr ma_event_536871514): void {.cdecl,
      importc: "ma_event_uninit".}
else:
  static :
    hint("Declaration of " & "ma_event_uninit" &
        " already exists, not redeclaring")
when not declared(ma_event_wait):
  proc ma_event_wait*(pEvent: ptr ma_event_536871514): ma_result_536871433 {.
      cdecl, importc: "ma_event_wait".}
else:
  static :
    hint("Declaration of " & "ma_event_wait" &
        " already exists, not redeclaring")
when not declared(ma_event_signal):
  proc ma_event_signal*(pEvent: ptr ma_event_536871514): ma_result_536871433 {.
      cdecl, importc: "ma_event_signal".}
else:
  static :
    hint("Declaration of " & "ma_event_signal" &
        " already exists, not redeclaring")
when not declared(ma_fence_init):
  proc ma_fence_init*(pFence: ptr ma_fence_536871826): ma_result_536871433 {.
      cdecl, importc: "ma_fence_init".}
else:
  static :
    hint("Declaration of " & "ma_fence_init" &
        " already exists, not redeclaring")
when not declared(ma_fence_uninit):
  proc ma_fence_uninit*(pFence: ptr ma_fence_536871826): void {.cdecl,
      importc: "ma_fence_uninit".}
else:
  static :
    hint("Declaration of " & "ma_fence_uninit" &
        " already exists, not redeclaring")
when not declared(ma_fence_acquire):
  proc ma_fence_acquire*(pFence: ptr ma_fence_536871826): ma_result_536871433 {.
      cdecl, importc: "ma_fence_acquire".}
else:
  static :
    hint("Declaration of " & "ma_fence_acquire" &
        " already exists, not redeclaring")
when not declared(ma_fence_release):
  proc ma_fence_release*(pFence: ptr ma_fence_536871826): ma_result_536871433 {.
      cdecl, importc: "ma_fence_release".}
else:
  static :
    hint("Declaration of " & "ma_fence_release" &
        " already exists, not redeclaring")
when not declared(ma_fence_wait):
  proc ma_fence_wait*(pFence: ptr ma_fence_536871826): ma_result_536871433 {.
      cdecl, importc: "ma_fence_wait".}
else:
  static :
    hint("Declaration of " & "ma_fence_wait" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_signal):
  proc ma_async_notification_signal*(pNotification: pointer): ma_result_536871433 {.
      cdecl, importc: "ma_async_notification_signal".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_signal" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_poll_init):
  proc ma_async_notification_poll_init*(pNotificationPoll: ptr ma_async_notification_poll_536871836): ma_result_536871433 {.
      cdecl, importc: "ma_async_notification_poll_init".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_poll_init" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_poll_is_signalled):
  proc ma_async_notification_poll_is_signalled*(
      pNotificationPoll: ptr ma_async_notification_poll_536871836): ma_bool32_536871387 {.
      cdecl, importc: "ma_async_notification_poll_is_signalled".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_poll_is_signalled" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_event_init):
  proc ma_async_notification_event_init*(
      pNotificationEvent: ptr ma_async_notification_event_536871840): ma_result_536871433 {.
      cdecl, importc: "ma_async_notification_event_init".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_event_init" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_event_uninit):
  proc ma_async_notification_event_uninit*(
      pNotificationEvent: ptr ma_async_notification_event_536871840): ma_result_536871433 {.
      cdecl, importc: "ma_async_notification_event_uninit".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_event_uninit" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_event_wait):
  proc ma_async_notification_event_wait*(
      pNotificationEvent: ptr ma_async_notification_event_536871840): ma_result_536871433 {.
      cdecl, importc: "ma_async_notification_event_wait".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_event_wait" &
        " already exists, not redeclaring")
when not declared(ma_async_notification_event_signal):
  proc ma_async_notification_event_signal*(
      pNotificationEvent: ptr ma_async_notification_event_536871840): ma_result_536871433 {.
      cdecl, importc: "ma_async_notification_event_signal".}
else:
  static :
    hint("Declaration of " & "ma_async_notification_event_signal" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator_config_init):
  proc ma_slot_allocator_config_init*(capacity: ma_uint32_536871377): ma_slot_allocator_config_536871844 {.
      cdecl, importc: "ma_slot_allocator_config_init".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_config_init" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator_get_heap_size):
  proc ma_slot_allocator_get_heap_size*(pConfig: ptr ma_slot_allocator_config_536871844;
                                        pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_slot_allocator_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator_init_preallocated):
  proc ma_slot_allocator_init_preallocated*(
      pConfig: ptr ma_slot_allocator_config_536871844; pHeap: pointer;
      pAllocator: ptr ma_slot_allocator_536871852): ma_result_536871433 {.cdecl,
      importc: "ma_slot_allocator_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator_init):
  proc ma_slot_allocator_init*(pConfig: ptr ma_slot_allocator_config_536871844;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                               pAllocator: ptr ma_slot_allocator_536871852): ma_result_536871433 {.
      cdecl, importc: "ma_slot_allocator_init".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_init" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator_uninit):
  proc ma_slot_allocator_uninit*(pAllocator: ptr ma_slot_allocator_536871852;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_slot_allocator_uninit".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_uninit" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator_alloc):
  proc ma_slot_allocator_alloc*(pAllocator: ptr ma_slot_allocator_536871852;
                                pSlot: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_slot_allocator_alloc".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_alloc" &
        " already exists, not redeclaring")
when not declared(ma_slot_allocator_free):
  proc ma_slot_allocator_free*(pAllocator: ptr ma_slot_allocator_536871852;
                               slot: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_slot_allocator_free".}
else:
  static :
    hint("Declaration of " & "ma_slot_allocator_free" &
        " already exists, not redeclaring")
when not declared(ma_job_process):
  proc ma_job_process*(pJob: ptr ma_job_536871361): ma_result_536871433 {.cdecl,
      importc: "ma_job_process".}
else:
  static :
    hint("Declaration of " & "ma_job_process" &
        " already exists, not redeclaring")
when not declared(ma_device_job_thread_config_init):
  proc ma_device_job_thread_config_init*(): ma_device_job_thread_config_536871886 {.
      cdecl, importc: "ma_device_job_thread_config_init".}
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_config_init" &
        " already exists, not redeclaring")
when not declared(ma_device_job_thread_init):
  proc ma_device_job_thread_init*(pConfig: ptr ma_device_job_thread_config_536871886;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                                  pJobThread: ptr ma_device_job_thread_536871890): ma_result_536871433 {.
      cdecl, importc: "ma_device_job_thread_init".}
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_init" &
        " already exists, not redeclaring")
when not declared(ma_device_job_thread_uninit):
  proc ma_device_job_thread_uninit*(pJobThread: ptr ma_device_job_thread_536871890;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_device_job_thread_uninit".}
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_uninit" &
        " already exists, not redeclaring")
when not declared(ma_device_job_thread_post):
  proc ma_device_job_thread_post*(pJobThread: ptr ma_device_job_thread_536871890;
                                  pJob: ptr ma_job_536871361): ma_result_536871433 {.
      cdecl, importc: "ma_device_job_thread_post".}
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_post" &
        " already exists, not redeclaring")
when not declared(ma_device_job_thread_next):
  proc ma_device_job_thread_next*(pJobThread: ptr ma_device_job_thread_536871890;
                                  pJob: ptr ma_job_536871361): ma_result_536871433 {.
      cdecl, importc: "ma_device_job_thread_next".}
else:
  static :
    hint("Declaration of " & "ma_device_job_thread_next" &
        " already exists, not redeclaring")
when not declared(ma_context_config_init):
  proc ma_context_config_init*(): ma_context_config_536871958 {.cdecl,
      importc: "ma_context_config_init".}
else:
  static :
    hint("Declaration of " & "ma_context_config_init" &
        " already exists, not redeclaring")
when not declared(ma_context_init):
  proc ma_context_init*(backends: ptr UncheckedArray[ma_backend_536871882];
                        backendCount: ma_uint32_536871377;
                        pConfig: ptr ma_context_config_536871958;
                        pContext: ptr ma_context_536871417): ma_result_536871433 {.
      cdecl, importc: "ma_context_init".}
else:
  static :
    hint("Declaration of " & "ma_context_init" &
        " already exists, not redeclaring")
when not declared(ma_context_uninit):
  proc ma_context_uninit*(pContext: ptr ma_context_536871417): ma_result_536871433 {.
      cdecl, importc: "ma_context_uninit".}
else:
  static :
    hint("Declaration of " & "ma_context_uninit" &
        " already exists, not redeclaring")
when not declared(ma_context_sizeof):
  proc ma_context_sizeof*(): csize_t {.cdecl, importc: "ma_context_sizeof".}
else:
  static :
    hint("Declaration of " & "ma_context_sizeof" &
        " already exists, not redeclaring")
when not declared(ma_context_get_log):
  proc ma_context_get_log*(pContext: ptr ma_context_536871417): ptr ma_log_536871528 {.
      cdecl, importc: "ma_context_get_log".}
else:
  static :
    hint("Declaration of " & "ma_context_get_log" &
        " already exists, not redeclaring")
when not declared(ma_context_enumerate_devices):
  proc ma_context_enumerate_devices*(pContext: ptr ma_context_536871417;
                                     callback: ma_enum_devices_callback_proc_536871974;
                                     pUserData: pointer): ma_result_536871433 {.
      cdecl, importc: "ma_context_enumerate_devices".}
else:
  static :
    hint("Declaration of " & "ma_context_enumerate_devices" &
        " already exists, not redeclaring")
when not declared(ma_context_get_devices):
  proc ma_context_get_devices*(pContext: ptr ma_context_536871417;
                               ppPlaybackDeviceInfos: ptr ptr ma_device_info_536871972;
                               pPlaybackDeviceCount: ptr ma_uint32_536871377;
                               ppCaptureDeviceInfos: ptr ptr ma_device_info_536871972;
                               pCaptureDeviceCount: ptr ma_uint32_536871377): ma_result_536871433 {.
      cdecl, importc: "ma_context_get_devices".}
else:
  static :
    hint("Declaration of " & "ma_context_get_devices" &
        " already exists, not redeclaring")
when not declared(ma_context_get_device_info):
  proc ma_context_get_device_info*(pContext: ptr ma_context_536871417;
                                   deviceType: ma_device_type_536871908;
                                   pDeviceID: ptr ma_device_id_536871956;
                                   pDeviceInfo: ptr ma_device_info_536871972): ma_result_536871433 {.
      cdecl, importc: "ma_context_get_device_info".}
else:
  static :
    hint("Declaration of " & "ma_context_get_device_info" &
        " already exists, not redeclaring")
when not declared(ma_context_is_loopback_supported):
  proc ma_context_is_loopback_supported*(pContext: ptr ma_context_536871417): ma_bool32_536871387 {.
      cdecl, importc: "ma_context_is_loopback_supported".}
else:
  static :
    hint("Declaration of " & "ma_context_is_loopback_supported" &
        " already exists, not redeclaring")
when not declared(ma_device_config_init):
  proc ma_device_config_init*(deviceType: ma_device_type_536871908): ma_device_config_536871962 {.
      cdecl, importc: "ma_device_config_init".}
else:
  static :
    hint("Declaration of " & "ma_device_config_init" &
        " already exists, not redeclaring")
when not declared(ma_device_init):
  proc ma_device_init*(pContext: ptr ma_context_536871417;
                       pConfig: ptr ma_device_config_536871962;
                       pDevice: ptr ma_device_536871421): ma_result_536871433 {.
      cdecl, importc: "ma_device_init".}
else:
  static :
    hint("Declaration of " & "ma_device_init" &
        " already exists, not redeclaring")
when not declared(ma_device_init_ex):
  proc ma_device_init_ex*(backends: ptr UncheckedArray[ma_backend_536871882];
                          backendCount: ma_uint32_536871377;
                          pContextConfig: ptr ma_context_config_536871958;
                          pConfig: ptr ma_device_config_536871962;
                          pDevice: ptr ma_device_536871421): ma_result_536871433 {.
      cdecl, importc: "ma_device_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_device_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_device_uninit):
  proc ma_device_uninit*(pDevice: ptr ma_device_536871421): void {.cdecl,
      importc: "ma_device_uninit".}
else:
  static :
    hint("Declaration of " & "ma_device_uninit" &
        " already exists, not redeclaring")
when not declared(ma_device_get_context):
  proc ma_device_get_context*(pDevice: ptr ma_device_536871421): ptr ma_context_536871417 {.
      cdecl, importc: "ma_device_get_context".}
else:
  static :
    hint("Declaration of " & "ma_device_get_context" &
        " already exists, not redeclaring")
when not declared(ma_device_get_log):
  proc ma_device_get_log*(pDevice: ptr ma_device_536871421): ptr ma_log_536871528 {.
      cdecl, importc: "ma_device_get_log".}
else:
  static :
    hint("Declaration of " & "ma_device_get_log" &
        " already exists, not redeclaring")
when not declared(ma_device_get_info):
  proc ma_device_get_info*(pDevice: ptr ma_device_536871421;
                           type_arg: ma_device_type_536871908;
                           pDeviceInfo: ptr ma_device_info_536871972): ma_result_536871433 {.
      cdecl, importc: "ma_device_get_info".}
else:
  static :
    hint("Declaration of " & "ma_device_get_info" &
        " already exists, not redeclaring")
when not declared(ma_device_get_name):
  proc ma_device_get_name*(pDevice: ptr ma_device_536871421;
                           type_arg: ma_device_type_536871908; pName: cstring;
                           nameCap: csize_t;
                           pLengthNotIncludingNullTerminator: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_device_get_name".}
else:
  static :
    hint("Declaration of " & "ma_device_get_name" &
        " already exists, not redeclaring")
when not declared(ma_device_start):
  proc ma_device_start*(pDevice: ptr ma_device_536871421): ma_result_536871433 {.
      cdecl, importc: "ma_device_start".}
else:
  static :
    hint("Declaration of " & "ma_device_start" &
        " already exists, not redeclaring")
when not declared(ma_device_stop):
  proc ma_device_stop*(pDevice: ptr ma_device_536871421): ma_result_536871433 {.
      cdecl, importc: "ma_device_stop".}
else:
  static :
    hint("Declaration of " & "ma_device_stop" &
        " already exists, not redeclaring")
when not declared(ma_device_is_started):
  proc ma_device_is_started*(pDevice: ptr ma_device_536871421): ma_bool32_536871387 {.
      cdecl, importc: "ma_device_is_started".}
else:
  static :
    hint("Declaration of " & "ma_device_is_started" &
        " already exists, not redeclaring")
when not declared(ma_device_get_state):
  proc ma_device_get_state*(pDevice: ptr ma_device_536871421): ma_device_state_536871874 {.
      cdecl, importc: "ma_device_get_state".}
else:
  static :
    hint("Declaration of " & "ma_device_get_state" &
        " already exists, not redeclaring")
when not declared(ma_device_post_init):
  proc ma_device_post_init*(pDevice: ptr ma_device_536871421;
                            deviceType: ma_device_type_536871908;
                            pPlaybackDescriptor: ptr ma_device_descriptor_536871978;
                            pCaptureDescriptor: ptr ma_device_descriptor_536871978): ma_result_536871433 {.
      cdecl, importc: "ma_device_post_init".}
else:
  static :
    hint("Declaration of " & "ma_device_post_init" &
        " already exists, not redeclaring")
when not declared(ma_device_set_master_volume):
  proc ma_device_set_master_volume*(pDevice: ptr ma_device_536871421;
                                    volume: cfloat): ma_result_536871433 {.
      cdecl, importc: "ma_device_set_master_volume".}
else:
  static :
    hint("Declaration of " & "ma_device_set_master_volume" &
        " already exists, not redeclaring")
when not declared(ma_device_get_master_volume):
  proc ma_device_get_master_volume*(pDevice: ptr ma_device_536871421;
                                    pVolume: ptr cfloat): ma_result_536871433 {.
      cdecl, importc: "ma_device_get_master_volume".}
else:
  static :
    hint("Declaration of " & "ma_device_get_master_volume" &
        " already exists, not redeclaring")
when not declared(ma_device_set_master_volume_db):
  proc ma_device_set_master_volume_db*(pDevice: ptr ma_device_536871421;
                                       gainDB: cfloat): ma_result_536871433 {.
      cdecl, importc: "ma_device_set_master_volume_db".}
else:
  static :
    hint("Declaration of " & "ma_device_set_master_volume_db" &
        " already exists, not redeclaring")
when not declared(ma_device_get_master_volume_db):
  proc ma_device_get_master_volume_db*(pDevice: ptr ma_device_536871421;
                                       pGainDB: ptr cfloat): ma_result_536871433 {.
      cdecl, importc: "ma_device_get_master_volume_db".}
else:
  static :
    hint("Declaration of " & "ma_device_get_master_volume_db" &
        " already exists, not redeclaring")
when not declared(ma_device_handle_backend_data_callback):
  proc ma_device_handle_backend_data_callback*(pDevice: ptr ma_device_536871421;
      pOutput: pointer; pInput: pointer; frameCount: ma_uint32_536871377): ma_result_536871433 {.
      cdecl, importc: "ma_device_handle_backend_data_callback".}
else:
  static :
    hint("Declaration of " & "ma_device_handle_backend_data_callback" &
        " already exists, not redeclaring")
when not declared(ma_calculate_buffer_size_in_frames_from_descriptor):
  proc ma_calculate_buffer_size_in_frames_from_descriptor*(
      pDescriptor: ptr ma_device_descriptor_536871978;
      nativeSampleRate: ma_uint32_536871377;
      performanceProfile: ma_performance_profile_536871472): ma_uint32_536871377 {.
      cdecl, importc: "ma_calculate_buffer_size_in_frames_from_descriptor".}
else:
  static :
    hint("Declaration of " &
        "ma_calculate_buffer_size_in_frames_from_descriptor" &
        " already exists, not redeclaring")
when not declared(ma_get_backend_name):
  proc ma_get_backend_name*(backend: ma_backend_536871882): cstring {.cdecl,
      importc: "ma_get_backend_name".}
else:
  static :
    hint("Declaration of " & "ma_get_backend_name" &
        " already exists, not redeclaring")
when not declared(ma_get_backend_from_name):
  proc ma_get_backend_from_name*(pBackendName: cstring; pBackend: ptr ma_backend_536871882): ma_result_536871433 {.
      cdecl, importc: "ma_get_backend_from_name".}
else:
  static :
    hint("Declaration of " & "ma_get_backend_from_name" &
        " already exists, not redeclaring")
when not declared(ma_is_backend_enabled):
  proc ma_is_backend_enabled*(backend: ma_backend_536871882): ma_bool32_536871387 {.
      cdecl, importc: "ma_is_backend_enabled".}
else:
  static :
    hint("Declaration of " & "ma_is_backend_enabled" &
        " already exists, not redeclaring")
when not declared(ma_get_enabled_backends):
  proc ma_get_enabled_backends*(pBackends: ptr ma_backend_536871882;
                                backendCap: csize_t; pBackendCount: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_get_enabled_backends".}
else:
  static :
    hint("Declaration of " & "ma_get_enabled_backends" &
        " already exists, not redeclaring")
when not declared(ma_is_loopback_supported):
  proc ma_is_loopback_supported*(backend: ma_backend_536871882): ma_bool32_536871387 {.
      cdecl, importc: "ma_is_loopback_supported".}
else:
  static :
    hint("Declaration of " & "ma_is_loopback_supported" &
        " already exists, not redeclaring")
when not declared(ma_calculate_buffer_size_in_milliseconds_from_frames):
  proc ma_calculate_buffer_size_in_milliseconds_from_frames*(
      bufferSizeInFrames: ma_uint32_536871377; sampleRate: ma_uint32_536871377): ma_uint32_536871377 {.
      cdecl, importc: "ma_calculate_buffer_size_in_milliseconds_from_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_calculate_buffer_size_in_milliseconds_from_frames" &
        " already exists, not redeclaring")
when not declared(ma_calculate_buffer_size_in_frames_from_milliseconds):
  proc ma_calculate_buffer_size_in_frames_from_milliseconds*(
      bufferSizeInMilliseconds: ma_uint32_536871377; sampleRate: ma_uint32_536871377): ma_uint32_536871377 {.
      cdecl, importc: "ma_calculate_buffer_size_in_frames_from_milliseconds".}
else:
  static :
    hint("Declaration of " &
        "ma_calculate_buffer_size_in_frames_from_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_copy_pcm_frames):
  proc ma_copy_pcm_frames*(dst: pointer; src: pointer; frameCount: ma_uint64_536871381;
                           format: ma_format_536871456; channels: ma_uint32_536871377): void {.
      cdecl, importc: "ma_copy_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_copy_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_silence_pcm_frames):
  proc ma_silence_pcm_frames*(p: pointer; frameCount: ma_uint64_536871381;
                              format: ma_format_536871456; channels: ma_uint32_536871377): void {.
      cdecl, importc: "ma_silence_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_silence_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_offset_pcm_frames_ptr):
  proc ma_offset_pcm_frames_ptr*(p: pointer; offsetInFrames: ma_uint64_536871381;
                                 format: ma_format_536871456;
                                 channels: ma_uint32_536871377): pointer {.
      cdecl, importc: "ma_offset_pcm_frames_ptr".}
else:
  static :
    hint("Declaration of " & "ma_offset_pcm_frames_ptr" &
        " already exists, not redeclaring")
when not declared(ma_offset_pcm_frames_const_ptr):
  proc ma_offset_pcm_frames_const_ptr*(p: pointer; offsetInFrames: ma_uint64_536871381;
                                       format: ma_format_536871456;
                                       channels: ma_uint32_536871377): pointer {.
      cdecl, importc: "ma_offset_pcm_frames_const_ptr".}
else:
  static :
    hint("Declaration of " & "ma_offset_pcm_frames_const_ptr" &
        " already exists, not redeclaring")
when not declared(ma_clip_samples_u8):
  proc ma_clip_samples_u8*(pDst: ptr ma_uint8_536871369; pSrc: ptr ma_int16_536871371;
                           count: ma_uint64_536871381): void {.cdecl,
      importc: "ma_clip_samples_u8".}
else:
  static :
    hint("Declaration of " & "ma_clip_samples_u8" &
        " already exists, not redeclaring")
when not declared(ma_clip_samples_s16):
  proc ma_clip_samples_s16*(pDst: ptr ma_int16_536871371; pSrc: ptr ma_int32_536871375;
                            count: ma_uint64_536871381): void {.cdecl,
      importc: "ma_clip_samples_s16".}
else:
  static :
    hint("Declaration of " & "ma_clip_samples_s16" &
        " already exists, not redeclaring")
when not declared(ma_clip_samples_s24):
  proc ma_clip_samples_s24*(pDst: ptr ma_uint8_536871369; pSrc: ptr ma_int64_536871379;
                            count: ma_uint64_536871381): void {.cdecl,
      importc: "ma_clip_samples_s24".}
else:
  static :
    hint("Declaration of " & "ma_clip_samples_s24" &
        " already exists, not redeclaring")
when not declared(ma_clip_samples_s32):
  proc ma_clip_samples_s32*(pDst: ptr ma_int32_536871375; pSrc: ptr ma_int64_536871379;
                            count: ma_uint64_536871381): void {.cdecl,
      importc: "ma_clip_samples_s32".}
else:
  static :
    hint("Declaration of " & "ma_clip_samples_s32" &
        " already exists, not redeclaring")
when not declared(ma_clip_samples_f32):
  proc ma_clip_samples_f32*(pDst: ptr cfloat; pSrc: ptr cfloat; count: ma_uint64_536871381): void {.
      cdecl, importc: "ma_clip_samples_f32".}
else:
  static :
    hint("Declaration of " & "ma_clip_samples_f32" &
        " already exists, not redeclaring")
when not declared(ma_clip_pcm_frames):
  proc ma_clip_pcm_frames*(pDst: pointer; pSrc: pointer; frameCount: ma_uint64_536871381;
                           format: ma_format_536871456; channels: ma_uint32_536871377): void {.
      cdecl, importc: "ma_clip_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_clip_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_u8):
  proc ma_copy_and_apply_volume_factor_u8*(pSamplesOut: ptr ma_uint8_536871369;
      pSamplesIn: ptr ma_uint8_536871369; sampleCount: ma_uint64_536871381;
      factor: cfloat): void {.cdecl,
                              importc: "ma_copy_and_apply_volume_factor_u8".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_u8" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_s16):
  proc ma_copy_and_apply_volume_factor_s16*(pSamplesOut: ptr ma_int16_536871371;
      pSamplesIn: ptr ma_int16_536871371; sampleCount: ma_uint64_536871381;
      factor: cfloat): void {.cdecl,
                              importc: "ma_copy_and_apply_volume_factor_s16".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_s16" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_s24):
  proc ma_copy_and_apply_volume_factor_s24*(pSamplesOut: pointer;
      pSamplesIn: pointer; sampleCount: ma_uint64_536871381; factor: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_factor_s24".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_s24" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_s32):
  proc ma_copy_and_apply_volume_factor_s32*(pSamplesOut: ptr ma_int32_536871375;
      pSamplesIn: ptr ma_int32_536871375; sampleCount: ma_uint64_536871381;
      factor: cfloat): void {.cdecl,
                              importc: "ma_copy_and_apply_volume_factor_s32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_s32" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_f32):
  proc ma_copy_and_apply_volume_factor_f32*(pSamplesOut: ptr cfloat;
      pSamplesIn: ptr cfloat; sampleCount: ma_uint64_536871381; factor: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_factor_f32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_f32" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_u8):
  proc ma_apply_volume_factor_u8*(pSamples: ptr ma_uint8_536871369;
                                  sampleCount: ma_uint64_536871381;
                                  factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_u8".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_u8" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_s16):
  proc ma_apply_volume_factor_s16*(pSamples: ptr ma_int16_536871371;
                                   sampleCount: ma_uint64_536871381;
                                   factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_s16".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_s16" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_s24):
  proc ma_apply_volume_factor_s24*(pSamples: pointer; sampleCount: ma_uint64_536871381;
                                   factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_s24".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_s24" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_s32):
  proc ma_apply_volume_factor_s32*(pSamples: ptr ma_int32_536871375;
                                   sampleCount: ma_uint64_536871381;
                                   factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_s32".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_s32" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_f32):
  proc ma_apply_volume_factor_f32*(pSamples: ptr cfloat; sampleCount: ma_uint64_536871381;
                                   factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_f32".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_f32" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_pcm_frames_u8):
  proc ma_copy_and_apply_volume_factor_pcm_frames_u8*(pFramesOut: ptr ma_uint8_536871369;
      pFramesIn: ptr ma_uint8_536871369; frameCount: ma_uint64_536871381;
      channels: ma_uint32_536871377; factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_pcm_frames_u8".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames_u8" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_pcm_frames_s16):
  proc ma_copy_and_apply_volume_factor_pcm_frames_s16*(pFramesOut: ptr ma_int16_536871371;
      pFramesIn: ptr ma_int16_536871371; frameCount: ma_uint64_536871381;
      channels: ma_uint32_536871377; factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_pcm_frames_s16".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames_s16" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_pcm_frames_s24):
  proc ma_copy_and_apply_volume_factor_pcm_frames_s24*(pFramesOut: pointer;
      pFramesIn: pointer; frameCount: ma_uint64_536871381; channels: ma_uint32_536871377;
      factor: cfloat): void {.cdecl, importc: "ma_copy_and_apply_volume_factor_pcm_frames_s24".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames_s24" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_pcm_frames_s32):
  proc ma_copy_and_apply_volume_factor_pcm_frames_s32*(pFramesOut: ptr ma_int32_536871375;
      pFramesIn: ptr ma_int32_536871375; frameCount: ma_uint64_536871381;
      channels: ma_uint32_536871377; factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_pcm_frames_s32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames_s32" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_pcm_frames_f32):
  proc ma_copy_and_apply_volume_factor_pcm_frames_f32*(pFramesOut: ptr cfloat;
      pFramesIn: ptr cfloat; frameCount: ma_uint64_536871381;
      channels: ma_uint32_536871377; factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_pcm_frames_f32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames_f32" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_pcm_frames):
  proc ma_copy_and_apply_volume_factor_pcm_frames*(pFramesOut: pointer;
      pFramesIn: pointer; frameCount: ma_uint64_536871381; format: ma_format_536871456;
      channels: ma_uint32_536871377; factor: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_pcm_frames_u8):
  proc ma_apply_volume_factor_pcm_frames_u8*(pFrames: ptr ma_uint8_536871369;
      frameCount: ma_uint64_536871381; channels: ma_uint32_536871377;
      factor: cfloat): void {.cdecl,
                              importc: "ma_apply_volume_factor_pcm_frames_u8".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames_u8" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_pcm_frames_s16):
  proc ma_apply_volume_factor_pcm_frames_s16*(pFrames: ptr ma_int16_536871371;
      frameCount: ma_uint64_536871381; channels: ma_uint32_536871377;
      factor: cfloat): void {.cdecl,
                              importc: "ma_apply_volume_factor_pcm_frames_s16".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames_s16" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_pcm_frames_s24):
  proc ma_apply_volume_factor_pcm_frames_s24*(pFrames: pointer;
      frameCount: ma_uint64_536871381; channels: ma_uint32_536871377;
      factor: cfloat): void {.cdecl,
                              importc: "ma_apply_volume_factor_pcm_frames_s24".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames_s24" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_pcm_frames_s32):
  proc ma_apply_volume_factor_pcm_frames_s32*(pFrames: ptr ma_int32_536871375;
      frameCount: ma_uint64_536871381; channels: ma_uint32_536871377;
      factor: cfloat): void {.cdecl,
                              importc: "ma_apply_volume_factor_pcm_frames_s32".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames_s32" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_pcm_frames_f32):
  proc ma_apply_volume_factor_pcm_frames_f32*(pFrames: ptr cfloat;
      frameCount: ma_uint64_536871381; channels: ma_uint32_536871377;
      factor: cfloat): void {.cdecl,
                              importc: "ma_apply_volume_factor_pcm_frames_f32".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames_f32" &
        " already exists, not redeclaring")
when not declared(ma_apply_volume_factor_pcm_frames):
  proc ma_apply_volume_factor_pcm_frames*(pFrames: pointer;
      frameCount: ma_uint64_536871381; format: ma_format_536871456;
      channels: ma_uint32_536871377; factor: cfloat): void {.cdecl,
      importc: "ma_apply_volume_factor_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_apply_volume_factor_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_factor_per_channel_f32):
  proc ma_copy_and_apply_volume_factor_per_channel_f32*(pFramesOut: ptr cfloat;
      pFramesIn: ptr cfloat; frameCount: ma_uint64_536871381;
      channels: ma_uint32_536871377; pChannelGains: ptr cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_factor_per_channel_f32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_factor_per_channel_f32" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_and_clip_samples_u8):
  proc ma_copy_and_apply_volume_and_clip_samples_u8*(pDst: ptr ma_uint8_536871369;
      pSrc: ptr ma_int16_536871371; count: ma_uint64_536871381; volume: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_and_clip_samples_u8".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_samples_u8" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_and_clip_samples_s16):
  proc ma_copy_and_apply_volume_and_clip_samples_s16*(pDst: ptr ma_int16_536871371;
      pSrc: ptr ma_int32_536871375; count: ma_uint64_536871381; volume: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_and_clip_samples_s16".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_samples_s16" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_and_clip_samples_s24):
  proc ma_copy_and_apply_volume_and_clip_samples_s24*(pDst: ptr ma_uint8_536871369;
      pSrc: ptr ma_int64_536871379; count: ma_uint64_536871381; volume: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_and_clip_samples_s24".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_samples_s24" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_and_clip_samples_s32):
  proc ma_copy_and_apply_volume_and_clip_samples_s32*(pDst: ptr ma_int32_536871375;
      pSrc: ptr ma_int64_536871379; count: ma_uint64_536871381; volume: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_and_clip_samples_s32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_samples_s32" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_and_clip_samples_f32):
  proc ma_copy_and_apply_volume_and_clip_samples_f32*(pDst: ptr cfloat;
      pSrc: ptr cfloat; count: ma_uint64_536871381; volume: cfloat): void {.
      cdecl, importc: "ma_copy_and_apply_volume_and_clip_samples_f32".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_samples_f32" &
        " already exists, not redeclaring")
when not declared(ma_copy_and_apply_volume_and_clip_pcm_frames):
  proc ma_copy_and_apply_volume_and_clip_pcm_frames*(pDst: pointer;
      pSrc: pointer; frameCount: ma_uint64_536871381; format: ma_format_536871456;
      channels: ma_uint32_536871377; volume: cfloat): void {.cdecl,
      importc: "ma_copy_and_apply_volume_and_clip_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_copy_and_apply_volume_and_clip_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_volume_linear_to_db):
  proc ma_volume_linear_to_db*(factor: cfloat): cfloat {.cdecl,
      importc: "ma_volume_linear_to_db".}
else:
  static :
    hint("Declaration of " & "ma_volume_linear_to_db" &
        " already exists, not redeclaring")
when not declared(ma_volume_db_to_linear):
  proc ma_volume_db_to_linear*(gain: cfloat): cfloat {.cdecl,
      importc: "ma_volume_db_to_linear".}
else:
  static :
    hint("Declaration of " & "ma_volume_db_to_linear" &
        " already exists, not redeclaring")
when not declared(ma_mix_pcm_frames_f32):
  proc ma_mix_pcm_frames_f32*(pDst: ptr cfloat; pSrc: ptr cfloat;
                              frameCount: ma_uint64_536871381;
                              channels: ma_uint32_536871377; volume: cfloat): ma_result_536871433 {.
      cdecl, importc: "ma_mix_pcm_frames_f32".}
else:
  static :
    hint("Declaration of " & "ma_mix_pcm_frames_f32" &
        " already exists, not redeclaring")
when not declared(ma_vfs_open):
  proc ma_vfs_open*(pVFS: pointer; pFilePath: cstring; openMode: ma_uint32_536871377;
                    pFile: ptr ma_vfs_file_536871986): ma_result_536871433 {.
      cdecl, importc: "ma_vfs_open".}
else:
  static :
    hint("Declaration of " & "ma_vfs_open" & " already exists, not redeclaring")
when not declared(ma_vfs_open_w):
  proc ma_vfs_open_w*(pVFS: pointer; pFilePath: ptr wchar_t_536871862;
                      openMode: ma_uint32_536871377; pFile: ptr ma_vfs_file_536871986): ma_result_536871433 {.
      cdecl, importc: "ma_vfs_open_w".}
else:
  static :
    hint("Declaration of " & "ma_vfs_open_w" &
        " already exists, not redeclaring")
when not declared(ma_vfs_close):
  proc ma_vfs_close*(pVFS: pointer; file: ma_vfs_file_536871986): ma_result_536871433 {.
      cdecl, importc: "ma_vfs_close".}
else:
  static :
    hint("Declaration of " & "ma_vfs_close" & " already exists, not redeclaring")
when not declared(ma_vfs_read):
  proc ma_vfs_read*(pVFS: pointer; file: ma_vfs_file_536871986; pDst: pointer;
                    sizeInBytes: csize_t; pBytesRead: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_vfs_read".}
else:
  static :
    hint("Declaration of " & "ma_vfs_read" & " already exists, not redeclaring")
when not declared(ma_vfs_write):
  proc ma_vfs_write*(pVFS: pointer; file: ma_vfs_file_536871986; pSrc: pointer;
                     sizeInBytes: csize_t; pBytesWritten: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_vfs_write".}
else:
  static :
    hint("Declaration of " & "ma_vfs_write" & " already exists, not redeclaring")
when not declared(ma_vfs_seek):
  proc ma_vfs_seek*(pVFS: pointer; file: ma_vfs_file_536871986;
                    offset: ma_int64_536871379; origin: ma_seek_origin_536871994): ma_result_536871433 {.
      cdecl, importc: "ma_vfs_seek".}
else:
  static :
    hint("Declaration of " & "ma_vfs_seek" & " already exists, not redeclaring")
when not declared(ma_vfs_tell):
  proc ma_vfs_tell*(pVFS: pointer; file: ma_vfs_file_536871986;
                    pCursor: ptr ma_int64_536871379): ma_result_536871433 {.
      cdecl, importc: "ma_vfs_tell".}
else:
  static :
    hint("Declaration of " & "ma_vfs_tell" & " already exists, not redeclaring")
when not declared(ma_vfs_info):
  proc ma_vfs_info*(pVFS: pointer; file: ma_vfs_file_536871986;
                    pInfo: ptr ma_file_info_536871998): ma_result_536871433 {.
      cdecl, importc: "ma_vfs_info".}
else:
  static :
    hint("Declaration of " & "ma_vfs_info" & " already exists, not redeclaring")
when not declared(ma_vfs_open_and_read_file):
  proc ma_vfs_open_and_read_file*(pVFS: pointer; pFilePath: cstring;
                                  ppData: ptr pointer; pSize: ptr csize_t;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): ma_result_536871433 {.
      cdecl, importc: "ma_vfs_open_and_read_file".}
else:
  static :
    hint("Declaration of " & "ma_vfs_open_and_read_file" &
        " already exists, not redeclaring")
when not declared(ma_default_vfs_init):
  proc ma_default_vfs_init*(pVFS: ptr ma_default_vfs_536872006;
                            pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): ma_result_536871433 {.
      cdecl, importc: "ma_default_vfs_init".}
else:
  static :
    hint("Declaration of " & "ma_default_vfs_init" &
        " already exists, not redeclaring")
when not declared(ma_decoding_backend_config_init):
  proc ma_decoding_backend_config_init*(preferredFormat: ma_format_536871456;
                                        seekPointCount: ma_uint32_536871377): ma_decoding_backend_config_536872024 {.
      cdecl, importc: "ma_decoding_backend_config_init".}
else:
  static :
    hint("Declaration of " & "ma_decoding_backend_config_init" &
        " already exists, not redeclaring")
when not declared(ma_decoder_config_init):
  proc ma_decoder_config_init*(outputFormat: ma_format_536871456;
                               outputChannels: ma_uint32_536871377;
                               outputSampleRate: ma_uint32_536871377): ma_decoder_config_536872038 {.
      cdecl, importc: "ma_decoder_config_init".}
else:
  static :
    hint("Declaration of " & "ma_decoder_config_init" &
        " already exists, not redeclaring")
when not declared(ma_decoder_config_init_default):
  proc ma_decoder_config_init_default*(): ma_decoder_config_536872038 {.cdecl,
      importc: "ma_decoder_config_init_default".}
else:
  static :
    hint("Declaration of " & "ma_decoder_config_init_default" &
        " already exists, not redeclaring")
when not declared(ma_decoder_init):
  proc ma_decoder_init*(onRead: ma_decoder_read_proc_536872030;
                        onSeek: ma_decoder_seek_proc_536872032;
                        pUserData: pointer; pConfig: ptr ma_decoder_config_536872038;
                        pDecoder: ptr ma_decoder_536872018): ma_result_536871433 {.
      cdecl, importc: "ma_decoder_init".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init" &
        " already exists, not redeclaring")
when not declared(ma_decoder_init_memory):
  proc ma_decoder_init_memory*(pData: pointer; dataSize: csize_t;
                               pConfig: ptr ma_decoder_config_536872038;
                               pDecoder: ptr ma_decoder_536872018): ma_result_536871433 {.
      cdecl, importc: "ma_decoder_init_memory".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init_memory" &
        " already exists, not redeclaring")
when not declared(ma_decoder_init_vfs):
  proc ma_decoder_init_vfs*(pVFS: pointer; pFilePath: cstring;
                            pConfig: ptr ma_decoder_config_536872038;
                            pDecoder: ptr ma_decoder_536872018): ma_result_536871433 {.
      cdecl, importc: "ma_decoder_init_vfs".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init_vfs" &
        " already exists, not redeclaring")
when not declared(ma_decoder_init_vfs_w):
  proc ma_decoder_init_vfs_w*(pVFS: pointer; pFilePath: ptr wchar_t_536871862;
                              pConfig: ptr ma_decoder_config_536872038;
                              pDecoder: ptr ma_decoder_536872018): ma_result_536871433 {.
      cdecl, importc: "ma_decoder_init_vfs_w".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init_vfs_w" &
        " already exists, not redeclaring")
when not declared(ma_decoder_init_file):
  proc ma_decoder_init_file*(pFilePath: cstring; pConfig: ptr ma_decoder_config_536872038;
                             pDecoder: ptr ma_decoder_536872018): ma_result_536871433 {.
      cdecl, importc: "ma_decoder_init_file".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init_file" &
        " already exists, not redeclaring")
when not declared(ma_decoder_init_file_w):
  proc ma_decoder_init_file_w*(pFilePath: ptr wchar_t_536871862;
                               pConfig: ptr ma_decoder_config_536872038;
                               pDecoder: ptr ma_decoder_536872018): ma_result_536871433 {.
      cdecl, importc: "ma_decoder_init_file_w".}
else:
  static :
    hint("Declaration of " & "ma_decoder_init_file_w" &
        " already exists, not redeclaring")
when not declared(ma_decoder_uninit):
  proc ma_decoder_uninit*(pDecoder: ptr ma_decoder_536872018): ma_result_536871433 {.
      cdecl, importc: "ma_decoder_uninit".}
else:
  static :
    hint("Declaration of " & "ma_decoder_uninit" &
        " already exists, not redeclaring")
when not declared(ma_decoder_read_pcm_frames):
  proc ma_decoder_read_pcm_frames*(pDecoder: ptr ma_decoder_536872018;
                                   pFramesOut: pointer; frameCount: ma_uint64_536871381;
                                   pFramesRead: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_decoder_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_decoder_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_decoder_seek_to_pcm_frame):
  proc ma_decoder_seek_to_pcm_frame*(pDecoder: ptr ma_decoder_536872018;
                                     frameIndex: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_decoder_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_decoder_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_decoder_get_data_format):
  proc ma_decoder_get_data_format*(pDecoder: ptr ma_decoder_536872018;
                                   pFormat: ptr ma_format_536871456;
                                   pChannels: ptr ma_uint32_536871377;
                                   pSampleRate: ptr ma_uint32_536871377;
                                   pChannelMap: ptr ma_channel_536871425;
                                   channelMapCap: csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_decoder_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_decoder_get_data_format" &
        " already exists, not redeclaring")
when not declared(ma_decoder_get_cursor_in_pcm_frames):
  proc ma_decoder_get_cursor_in_pcm_frames*(pDecoder: ptr ma_decoder_536872018;
      pCursor: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_decoder_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_decoder_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_decoder_get_length_in_pcm_frames):
  proc ma_decoder_get_length_in_pcm_frames*(pDecoder: ptr ma_decoder_536872018;
      pLength: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_decoder_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_decoder_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_decoder_get_available_frames):
  proc ma_decoder_get_available_frames*(pDecoder: ptr ma_decoder_536872018;
                                        pAvailableFrames: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_decoder_get_available_frames".}
else:
  static :
    hint("Declaration of " & "ma_decoder_get_available_frames" &
        " already exists, not redeclaring")
when not declared(ma_decode_from_vfs):
  proc ma_decode_from_vfs*(pVFS: pointer; pFilePath: cstring;
                           pConfig: ptr ma_decoder_config_536872038;
                           pFrameCountOut: ptr ma_uint64_536871381;
                           ppPCMFramesOut: ptr pointer): ma_result_536871433 {.
      cdecl, importc: "ma_decode_from_vfs".}
else:
  static :
    hint("Declaration of " & "ma_decode_from_vfs" &
        " already exists, not redeclaring")
when not declared(ma_decode_file):
  proc ma_decode_file*(pFilePath: cstring; pConfig: ptr ma_decoder_config_536872038;
                       pFrameCountOut: ptr ma_uint64_536871381;
                       ppPCMFramesOut: ptr pointer): ma_result_536871433 {.
      cdecl, importc: "ma_decode_file".}
else:
  static :
    hint("Declaration of " & "ma_decode_file" &
        " already exists, not redeclaring")
when not declared(ma_decode_memory):
  proc ma_decode_memory*(pData: pointer; dataSize: csize_t;
                         pConfig: ptr ma_decoder_config_536872038;
                         pFrameCountOut: ptr ma_uint64_536871381;
                         ppPCMFramesOut: ptr pointer): ma_result_536871433 {.
      cdecl, importc: "ma_decode_memory".}
else:
  static :
    hint("Declaration of " & "ma_decode_memory" &
        " already exists, not redeclaring")
when not declared(ma_encoder_config_init):
  proc ma_encoder_config_init*(encodingFormat: ma_encoding_format_536872016;
                               format: ma_format_536871456; channels: ma_uint32_536871377;
                               sampleRate: ma_uint32_536871377): ma_encoder_config_536872056 {.
      cdecl, importc: "ma_encoder_config_init".}
else:
  static :
    hint("Declaration of " & "ma_encoder_config_init" &
        " already exists, not redeclaring")
when not declared(ma_encoder_init):
  proc ma_encoder_init*(onWrite: ma_encoder_write_proc_536872044;
                        onSeek: ma_encoder_seek_proc_536872046;
                        pUserData: pointer; pConfig: ptr ma_encoder_config_536872056;
                        pEncoder: ptr ma_encoder_536872040): ma_result_536871433 {.
      cdecl, importc: "ma_encoder_init".}
else:
  static :
    hint("Declaration of " & "ma_encoder_init" &
        " already exists, not redeclaring")
when not declared(ma_encoder_init_vfs):
  proc ma_encoder_init_vfs*(pVFS: pointer; pFilePath: cstring;
                            pConfig: ptr ma_encoder_config_536872056;
                            pEncoder: ptr ma_encoder_536872040): ma_result_536871433 {.
      cdecl, importc: "ma_encoder_init_vfs".}
else:
  static :
    hint("Declaration of " & "ma_encoder_init_vfs" &
        " already exists, not redeclaring")
when not declared(ma_encoder_init_vfs_w):
  proc ma_encoder_init_vfs_w*(pVFS: pointer; pFilePath: ptr wchar_t_536871862;
                              pConfig: ptr ma_encoder_config_536872056;
                              pEncoder: ptr ma_encoder_536872040): ma_result_536871433 {.
      cdecl, importc: "ma_encoder_init_vfs_w".}
else:
  static :
    hint("Declaration of " & "ma_encoder_init_vfs_w" &
        " already exists, not redeclaring")
when not declared(ma_encoder_init_file):
  proc ma_encoder_init_file*(pFilePath: cstring; pConfig: ptr ma_encoder_config_536872056;
                             pEncoder: ptr ma_encoder_536872040): ma_result_536871433 {.
      cdecl, importc: "ma_encoder_init_file".}
else:
  static :
    hint("Declaration of " & "ma_encoder_init_file" &
        " already exists, not redeclaring")
when not declared(ma_encoder_init_file_w):
  proc ma_encoder_init_file_w*(pFilePath: ptr wchar_t_536871862;
                               pConfig: ptr ma_encoder_config_536872056;
                               pEncoder: ptr ma_encoder_536872040): ma_result_536871433 {.
      cdecl, importc: "ma_encoder_init_file_w".}
else:
  static :
    hint("Declaration of " & "ma_encoder_init_file_w" &
        " already exists, not redeclaring")
when not declared(ma_encoder_uninit):
  proc ma_encoder_uninit*(pEncoder: ptr ma_encoder_536872040): void {.cdecl,
      importc: "ma_encoder_uninit".}
else:
  static :
    hint("Declaration of " & "ma_encoder_uninit" &
        " already exists, not redeclaring")
when not declared(ma_encoder_write_pcm_frames):
  proc ma_encoder_write_pcm_frames*(pEncoder: ptr ma_encoder_536872040;
                                    pFramesIn: pointer; frameCount: ma_uint64_536871381;
                                    pFramesWritten: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_encoder_write_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_encoder_write_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_waveform_config_init):
  proc ma_waveform_config_init*(format: ma_format_536871456;
                                channels: ma_uint32_536871377;
                                sampleRate: ma_uint32_536871377;
                                type_arg: ma_waveform_type_536872060;
                                amplitude: cdouble; frequency: cdouble): ma_waveform_config_536872064 {.
      cdecl, importc: "ma_waveform_config_init".}
else:
  static :
    hint("Declaration of " & "ma_waveform_config_init" &
        " already exists, not redeclaring")
when not declared(ma_waveform_init):
  proc ma_waveform_init*(pConfig: ptr ma_waveform_config_536872064;
                         pWaveform: ptr ma_waveform_536872068): ma_result_536871433 {.
      cdecl, importc: "ma_waveform_init".}
else:
  static :
    hint("Declaration of " & "ma_waveform_init" &
        " already exists, not redeclaring")
when not declared(ma_waveform_uninit):
  proc ma_waveform_uninit*(pWaveform: ptr ma_waveform_536872068): void {.cdecl,
      importc: "ma_waveform_uninit".}
else:
  static :
    hint("Declaration of " & "ma_waveform_uninit" &
        " already exists, not redeclaring")
when not declared(ma_waveform_read_pcm_frames):
  proc ma_waveform_read_pcm_frames*(pWaveform: ptr ma_waveform_536872068;
                                    pFramesOut: pointer; frameCount: ma_uint64_536871381;
                                    pFramesRead: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_waveform_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_waveform_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_waveform_seek_to_pcm_frame):
  proc ma_waveform_seek_to_pcm_frame*(pWaveform: ptr ma_waveform_536872068;
                                      frameIndex: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_waveform_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_waveform_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_waveform_set_amplitude):
  proc ma_waveform_set_amplitude*(pWaveform: ptr ma_waveform_536872068;
                                  amplitude: cdouble): ma_result_536871433 {.
      cdecl, importc: "ma_waveform_set_amplitude".}
else:
  static :
    hint("Declaration of " & "ma_waveform_set_amplitude" &
        " already exists, not redeclaring")
when not declared(ma_waveform_set_frequency):
  proc ma_waveform_set_frequency*(pWaveform: ptr ma_waveform_536872068;
                                  frequency: cdouble): ma_result_536871433 {.
      cdecl, importc: "ma_waveform_set_frequency".}
else:
  static :
    hint("Declaration of " & "ma_waveform_set_frequency" &
        " already exists, not redeclaring")
when not declared(ma_waveform_set_type):
  proc ma_waveform_set_type*(pWaveform: ptr ma_waveform_536872068;
                             type_arg: ma_waveform_type_536872060): ma_result_536871433 {.
      cdecl, importc: "ma_waveform_set_type".}
else:
  static :
    hint("Declaration of " & "ma_waveform_set_type" &
        " already exists, not redeclaring")
when not declared(ma_waveform_set_sample_rate):
  proc ma_waveform_set_sample_rate*(pWaveform: ptr ma_waveform_536872068;
                                    sampleRate: ma_uint32_536871377): ma_result_536871433 {.
      cdecl, importc: "ma_waveform_set_sample_rate".}
else:
  static :
    hint("Declaration of " & "ma_waveform_set_sample_rate" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_config_init):
  proc ma_pulsewave_config_init*(format: ma_format_536871456;
                                 channels: ma_uint32_536871377;
                                 sampleRate: ma_uint32_536871377;
                                 dutyCycle: cdouble; amplitude: cdouble;
                                 frequency: cdouble): ma_pulsewave_config_536872072 {.
      cdecl, importc: "ma_pulsewave_config_init".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_config_init" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_init):
  proc ma_pulsewave_init*(pConfig: ptr ma_pulsewave_config_536872072;
                          pWaveform: ptr ma_pulsewave_536872076): ma_result_536871433 {.
      cdecl, importc: "ma_pulsewave_init".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_init" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_uninit):
  proc ma_pulsewave_uninit*(pWaveform: ptr ma_pulsewave_536872076): void {.
      cdecl, importc: "ma_pulsewave_uninit".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_uninit" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_read_pcm_frames):
  proc ma_pulsewave_read_pcm_frames*(pWaveform: ptr ma_pulsewave_536872076;
                                     pFramesOut: pointer; frameCount: ma_uint64_536871381;
                                     pFramesRead: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_pulsewave_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_seek_to_pcm_frame):
  proc ma_pulsewave_seek_to_pcm_frame*(pWaveform: ptr ma_pulsewave_536872076;
                                       frameIndex: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_pulsewave_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_set_amplitude):
  proc ma_pulsewave_set_amplitude*(pWaveform: ptr ma_pulsewave_536872076;
                                   amplitude: cdouble): ma_result_536871433 {.
      cdecl, importc: "ma_pulsewave_set_amplitude".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_set_amplitude" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_set_frequency):
  proc ma_pulsewave_set_frequency*(pWaveform: ptr ma_pulsewave_536872076;
                                   frequency: cdouble): ma_result_536871433 {.
      cdecl, importc: "ma_pulsewave_set_frequency".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_set_frequency" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_set_sample_rate):
  proc ma_pulsewave_set_sample_rate*(pWaveform: ptr ma_pulsewave_536872076;
                                     sampleRate: ma_uint32_536871377): ma_result_536871433 {.
      cdecl, importc: "ma_pulsewave_set_sample_rate".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_set_sample_rate" &
        " already exists, not redeclaring")
when not declared(ma_pulsewave_set_duty_cycle):
  proc ma_pulsewave_set_duty_cycle*(pWaveform: ptr ma_pulsewave_536872076;
                                    dutyCycle: cdouble): ma_result_536871433 {.
      cdecl, importc: "ma_pulsewave_set_duty_cycle".}
else:
  static :
    hint("Declaration of " & "ma_pulsewave_set_duty_cycle" &
        " already exists, not redeclaring")
when not declared(ma_noise_config_init):
  proc ma_noise_config_init*(format: ma_format_536871456; channels: ma_uint32_536871377;
                             type_arg: ma_noise_type_536872080; seed: ma_int32_536871375;
                             amplitude: cdouble): ma_noise_config_536872084 {.
      cdecl, importc: "ma_noise_config_init".}
else:
  static :
    hint("Declaration of " & "ma_noise_config_init" &
        " already exists, not redeclaring")
when not declared(ma_noise_get_heap_size):
  proc ma_noise_get_heap_size*(pConfig: ptr ma_noise_config_536872084;
                               pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_noise_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_noise_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_noise_init_preallocated):
  proc ma_noise_init_preallocated*(pConfig: ptr ma_noise_config_536872084;
                                   pHeap: pointer; pNoise: ptr ma_noise_536872088): ma_result_536871433 {.
      cdecl, importc: "ma_noise_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_noise_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_noise_init):
  proc ma_noise_init*(pConfig: ptr ma_noise_config_536872084;
                      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                      pNoise: ptr ma_noise_536872088): ma_result_536871433 {.
      cdecl, importc: "ma_noise_init".}
else:
  static :
    hint("Declaration of " & "ma_noise_init" &
        " already exists, not redeclaring")
when not declared(ma_noise_uninit):
  proc ma_noise_uninit*(pNoise: ptr ma_noise_536872088;
                        pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_noise_uninit".}
else:
  static :
    hint("Declaration of " & "ma_noise_uninit" &
        " already exists, not redeclaring")
when not declared(ma_noise_read_pcm_frames):
  proc ma_noise_read_pcm_frames*(pNoise: ptr ma_noise_536872088;
                                 pFramesOut: pointer; frameCount: ma_uint64_536871381;
                                 pFramesRead: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_noise_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_noise_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_noise_set_amplitude):
  proc ma_noise_set_amplitude*(pNoise: ptr ma_noise_536872088;
                               amplitude: cdouble): ma_result_536871433 {.cdecl,
      importc: "ma_noise_set_amplitude".}
else:
  static :
    hint("Declaration of " & "ma_noise_set_amplitude" &
        " already exists, not redeclaring")
when not declared(ma_noise_set_seed):
  proc ma_noise_set_seed*(pNoise: ptr ma_noise_536872088; seed: ma_int32_536871375): ma_result_536871433 {.
      cdecl, importc: "ma_noise_set_seed".}
else:
  static :
    hint("Declaration of " & "ma_noise_set_seed" &
        " already exists, not redeclaring")
when not declared(ma_noise_set_type):
  proc ma_noise_set_type*(pNoise: ptr ma_noise_536872088;
                          type_arg: ma_noise_type_536872080): ma_result_536871433 {.
      cdecl, importc: "ma_noise_set_type".}
else:
  static :
    hint("Declaration of " & "ma_noise_set_type" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_pipeline_notifications_init):
  proc ma_resource_manager_pipeline_notifications_init*(): ma_resource_manager_pipeline_notifications_536872120 {.
      cdecl, importc: "ma_resource_manager_pipeline_notifications_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_pipeline_notifications_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_config_init):
  proc ma_resource_manager_data_source_config_init*(): ma_resource_manager_data_source_config_536872128 {.
      cdecl, importc: "ma_resource_manager_data_source_config_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_config_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_config_init):
  proc ma_resource_manager_config_init*(): ma_resource_manager_config_536872140 {.
      cdecl, importc: "ma_resource_manager_config_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_config_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_init):
  proc ma_resource_manager_init*(pConfig: ptr ma_resource_manager_config_536872140;
                                 pResourceManager: ptr ma_resource_manager_536872090): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_uninit):
  proc ma_resource_manager_uninit*(pResourceManager: ptr ma_resource_manager_536872090): void {.
      cdecl, importc: "ma_resource_manager_uninit".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_uninit" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_get_log):
  proc ma_resource_manager_get_log*(pResourceManager: ptr ma_resource_manager_536872090): ptr ma_log_536871528 {.
      cdecl, importc: "ma_resource_manager_get_log".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_get_log" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_register_file):
  proc ma_resource_manager_register_file*(
      pResourceManager: ptr ma_resource_manager_536872090; pFilePath: cstring;
      flags: ma_uint32_536871377): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_register_file".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_file" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_register_file_w):
  proc ma_resource_manager_register_file_w*(
      pResourceManager: ptr ma_resource_manager_536872090;
      pFilePath: ptr wchar_t_536871862; flags: ma_uint32_536871377): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_register_file_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_file_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_register_decoded_data):
  proc ma_resource_manager_register_decoded_data*(
      pResourceManager: ptr ma_resource_manager_536872090; pName: cstring;
      pData: pointer; frameCount: ma_uint64_536871381; format: ma_format_536871456;
      channels: ma_uint32_536871377; sampleRate: ma_uint32_536871377): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_register_decoded_data".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_decoded_data" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_register_decoded_data_w):
  proc ma_resource_manager_register_decoded_data_w*(
      pResourceManager: ptr ma_resource_manager_536872090; pName: ptr wchar_t_536871862;
      pData: pointer; frameCount: ma_uint64_536871381; format: ma_format_536871456;
      channels: ma_uint32_536871377; sampleRate: ma_uint32_536871377): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_register_decoded_data_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_decoded_data_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_register_encoded_data):
  proc ma_resource_manager_register_encoded_data*(
      pResourceManager: ptr ma_resource_manager_536872090; pName: cstring;
      pData: pointer; sizeInBytes: csize_t): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_register_encoded_data".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_encoded_data" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_register_encoded_data_w):
  proc ma_resource_manager_register_encoded_data_w*(
      pResourceManager: ptr ma_resource_manager_536872090; pName: ptr wchar_t_536871862;
      pData: pointer; sizeInBytes: csize_t): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_register_encoded_data_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_register_encoded_data_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_unregister_file):
  proc ma_resource_manager_unregister_file*(
      pResourceManager: ptr ma_resource_manager_536872090; pFilePath: cstring): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_unregister_file".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_unregister_file" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_unregister_file_w):
  proc ma_resource_manager_unregister_file_w*(
      pResourceManager: ptr ma_resource_manager_536872090;
      pFilePath: ptr wchar_t_536871862): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_unregister_file_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_unregister_file_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_unregister_data):
  proc ma_resource_manager_unregister_data*(
      pResourceManager: ptr ma_resource_manager_536872090; pName: cstring): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_unregister_data".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_unregister_data" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_unregister_data_w):
  proc ma_resource_manager_unregister_data_w*(
      pResourceManager: ptr ma_resource_manager_536872090; pName: ptr wchar_t_536871862): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_unregister_data_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_unregister_data_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_init_ex):
  proc ma_resource_manager_data_buffer_init_ex*(
      pResourceManager: ptr ma_resource_manager_536872090;
      pConfig: ptr ma_resource_manager_data_source_config_536872128;
      pDataBuffer: ptr ma_resource_manager_data_buffer_536872098): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_data_buffer_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_init):
  proc ma_resource_manager_data_buffer_init*(
      pResourceManager: ptr ma_resource_manager_536872090; pFilePath: cstring;
      flags: ma_uint32_536871377;
      pNotifications: ptr ma_resource_manager_pipeline_notifications_536872120;
      pDataBuffer: ptr ma_resource_manager_data_buffer_536872098): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_data_buffer_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_init_w):
  proc ma_resource_manager_data_buffer_init_w*(
      pResourceManager: ptr ma_resource_manager_536872090;
      pFilePath: ptr wchar_t_536871862; flags: ma_uint32_536871377;
      pNotifications: ptr ma_resource_manager_pipeline_notifications_536872120;
      pDataBuffer: ptr ma_resource_manager_data_buffer_536872098): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_data_buffer_init_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_init_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_init_copy):
  proc ma_resource_manager_data_buffer_init_copy*(
      pResourceManager: ptr ma_resource_manager_536872090;
      pExistingDataBuffer: ptr ma_resource_manager_data_buffer_536872098;
      pDataBuffer: ptr ma_resource_manager_data_buffer_536872098): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_data_buffer_init_copy".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_init_copy" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_uninit):
  proc ma_resource_manager_data_buffer_uninit*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_536872098): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_data_buffer_uninit".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_uninit" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_read_pcm_frames):
  proc ma_resource_manager_data_buffer_read_pcm_frames*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_536872098;
      pFramesOut: pointer; frameCount: ma_uint64_536871381;
      pFramesRead: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_data_buffer_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_seek_to_pcm_frame):
  proc ma_resource_manager_data_buffer_seek_to_pcm_frame*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_536872098;
      frameIndex: ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_data_buffer_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_get_data_format):
  proc ma_resource_manager_data_buffer_get_data_format*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_536872098;
      pFormat: ptr ma_format_536871456; pChannels: ptr ma_uint32_536871377;
      pSampleRate: ptr ma_uint32_536871377; pChannelMap: ptr ma_channel_536871425;
      channelMapCap: csize_t): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_data_buffer_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_get_data_format" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_get_cursor_in_pcm_frames):
  proc ma_resource_manager_data_buffer_get_cursor_in_pcm_frames*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_536872098;
      pCursor: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_data_buffer_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_buffer_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_get_length_in_pcm_frames):
  proc ma_resource_manager_data_buffer_get_length_in_pcm_frames*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_536872098;
      pLength: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_data_buffer_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_buffer_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_result):
  proc ma_resource_manager_data_buffer_result*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_536872098): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_data_buffer_result".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_result" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_set_looping):
  proc ma_resource_manager_data_buffer_set_looping*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_536872098;
      isLooping: ma_bool32_536871387): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_data_buffer_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_set_looping" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_is_looping):
  proc ma_resource_manager_data_buffer_is_looping*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_536872098): ma_bool32_536871387 {.
      cdecl, importc: "ma_resource_manager_data_buffer_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_buffer_is_looping" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_buffer_get_available_frames):
  proc ma_resource_manager_data_buffer_get_available_frames*(
      pDataBuffer: ptr ma_resource_manager_data_buffer_536872098;
      pAvailableFrames: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_data_buffer_get_available_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_buffer_get_available_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_init_ex):
  proc ma_resource_manager_data_stream_init_ex*(
      pResourceManager: ptr ma_resource_manager_536872090;
      pConfig: ptr ma_resource_manager_data_source_config_536872128;
      pDataStream: ptr ma_resource_manager_data_stream_536872102): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_data_stream_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_init):
  proc ma_resource_manager_data_stream_init*(
      pResourceManager: ptr ma_resource_manager_536872090; pFilePath: cstring;
      flags: ma_uint32_536871377;
      pNotifications: ptr ma_resource_manager_pipeline_notifications_536872120;
      pDataStream: ptr ma_resource_manager_data_stream_536872102): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_data_stream_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_init_w):
  proc ma_resource_manager_data_stream_init_w*(
      pResourceManager: ptr ma_resource_manager_536872090;
      pFilePath: ptr wchar_t_536871862; flags: ma_uint32_536871377;
      pNotifications: ptr ma_resource_manager_pipeline_notifications_536872120;
      pDataStream: ptr ma_resource_manager_data_stream_536872102): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_data_stream_init_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_init_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_uninit):
  proc ma_resource_manager_data_stream_uninit*(
      pDataStream: ptr ma_resource_manager_data_stream_536872102): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_data_stream_uninit".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_uninit" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_read_pcm_frames):
  proc ma_resource_manager_data_stream_read_pcm_frames*(
      pDataStream: ptr ma_resource_manager_data_stream_536872102;
      pFramesOut: pointer; frameCount: ma_uint64_536871381;
      pFramesRead: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_data_stream_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_seek_to_pcm_frame):
  proc ma_resource_manager_data_stream_seek_to_pcm_frame*(
      pDataStream: ptr ma_resource_manager_data_stream_536872102;
      frameIndex: ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_data_stream_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_get_data_format):
  proc ma_resource_manager_data_stream_get_data_format*(
      pDataStream: ptr ma_resource_manager_data_stream_536872102;
      pFormat: ptr ma_format_536871456; pChannels: ptr ma_uint32_536871377;
      pSampleRate: ptr ma_uint32_536871377; pChannelMap: ptr ma_channel_536871425;
      channelMapCap: csize_t): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_data_stream_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_get_data_format" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_get_cursor_in_pcm_frames):
  proc ma_resource_manager_data_stream_get_cursor_in_pcm_frames*(
      pDataStream: ptr ma_resource_manager_data_stream_536872102;
      pCursor: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_data_stream_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_stream_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_get_length_in_pcm_frames):
  proc ma_resource_manager_data_stream_get_length_in_pcm_frames*(
      pDataStream: ptr ma_resource_manager_data_stream_536872102;
      pLength: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_data_stream_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_stream_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_result):
  proc ma_resource_manager_data_stream_result*(
      pDataStream: ptr ma_resource_manager_data_stream_536872102): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_data_stream_result".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_result" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_set_looping):
  proc ma_resource_manager_data_stream_set_looping*(
      pDataStream: ptr ma_resource_manager_data_stream_536872102;
      isLooping: ma_bool32_536871387): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_data_stream_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_set_looping" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_is_looping):
  proc ma_resource_manager_data_stream_is_looping*(
      pDataStream: ptr ma_resource_manager_data_stream_536872102): ma_bool32_536871387 {.
      cdecl, importc: "ma_resource_manager_data_stream_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_stream_is_looping" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_stream_get_available_frames):
  proc ma_resource_manager_data_stream_get_available_frames*(
      pDataStream: ptr ma_resource_manager_data_stream_536872102;
      pAvailableFrames: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_data_stream_get_available_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_stream_get_available_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_init_ex):
  proc ma_resource_manager_data_source_init_ex*(
      pResourceManager: ptr ma_resource_manager_536872090;
      pConfig: ptr ma_resource_manager_data_source_config_536872128;
      pDataSource: ptr ma_resource_manager_data_source_536872106): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_data_source_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_init):
  proc ma_resource_manager_data_source_init*(
      pResourceManager: ptr ma_resource_manager_536872090; pName: cstring;
      flags: ma_uint32_536871377;
      pNotifications: ptr ma_resource_manager_pipeline_notifications_536872120;
      pDataSource: ptr ma_resource_manager_data_source_536872106): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_data_source_init".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_init" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_init_w):
  proc ma_resource_manager_data_source_init_w*(
      pResourceManager: ptr ma_resource_manager_536872090; pName: ptr wchar_t_536871862;
      flags: ma_uint32_536871377;
      pNotifications: ptr ma_resource_manager_pipeline_notifications_536872120;
      pDataSource: ptr ma_resource_manager_data_source_536872106): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_data_source_init_w".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_init_w" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_init_copy):
  proc ma_resource_manager_data_source_init_copy*(
      pResourceManager: ptr ma_resource_manager_536872090;
      pExistingDataSource: ptr ma_resource_manager_data_source_536872106;
      pDataSource: ptr ma_resource_manager_data_source_536872106): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_data_source_init_copy".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_init_copy" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_uninit):
  proc ma_resource_manager_data_source_uninit*(
      pDataSource: ptr ma_resource_manager_data_source_536872106): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_data_source_uninit".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_uninit" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_read_pcm_frames):
  proc ma_resource_manager_data_source_read_pcm_frames*(
      pDataSource: ptr ma_resource_manager_data_source_536872106;
      pFramesOut: pointer; frameCount: ma_uint64_536871381;
      pFramesRead: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_data_source_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_seek_to_pcm_frame):
  proc ma_resource_manager_data_source_seek_to_pcm_frame*(
      pDataSource: ptr ma_resource_manager_data_source_536872106;
      frameIndex: ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_data_source_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_get_data_format):
  proc ma_resource_manager_data_source_get_data_format*(
      pDataSource: ptr ma_resource_manager_data_source_536872106;
      pFormat: ptr ma_format_536871456; pChannels: ptr ma_uint32_536871377;
      pSampleRate: ptr ma_uint32_536871377; pChannelMap: ptr ma_channel_536871425;
      channelMapCap: csize_t): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_data_source_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_get_data_format" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_get_cursor_in_pcm_frames):
  proc ma_resource_manager_data_source_get_cursor_in_pcm_frames*(
      pDataSource: ptr ma_resource_manager_data_source_536872106;
      pCursor: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_data_source_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_source_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_get_length_in_pcm_frames):
  proc ma_resource_manager_data_source_get_length_in_pcm_frames*(
      pDataSource: ptr ma_resource_manager_data_source_536872106;
      pLength: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_data_source_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_source_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_result):
  proc ma_resource_manager_data_source_result*(
      pDataSource: ptr ma_resource_manager_data_source_536872106): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_data_source_result".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_result" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_set_looping):
  proc ma_resource_manager_data_source_set_looping*(
      pDataSource: ptr ma_resource_manager_data_source_536872106;
      isLooping: ma_bool32_536871387): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_data_source_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_set_looping" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_is_looping):
  proc ma_resource_manager_data_source_is_looping*(
      pDataSource: ptr ma_resource_manager_data_source_536872106): ma_bool32_536871387 {.
      cdecl, importc: "ma_resource_manager_data_source_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_data_source_is_looping" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_data_source_get_available_frames):
  proc ma_resource_manager_data_source_get_available_frames*(
      pDataSource: ptr ma_resource_manager_data_source_536872106;
      pAvailableFrames: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_resource_manager_data_source_get_available_frames".}
else:
  static :
    hint("Declaration of " &
        "ma_resource_manager_data_source_get_available_frames" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_post_job):
  proc ma_resource_manager_post_job*(pResourceManager: ptr ma_resource_manager_536872090;
                                     pJob: ptr ma_job_536871361): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_post_job".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_post_job" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_post_job_quit):
  proc ma_resource_manager_post_job_quit*(
      pResourceManager: ptr ma_resource_manager_536872090): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_post_job_quit".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_post_job_quit" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_next_job):
  proc ma_resource_manager_next_job*(pResourceManager: ptr ma_resource_manager_536872090;
                                     pJob: ptr ma_job_536871361): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_next_job".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_next_job" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_process_job):
  proc ma_resource_manager_process_job*(pResourceManager: ptr ma_resource_manager_536872090;
                                        pJob: ptr ma_job_536871361): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_process_job".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_process_job" &
        " already exists, not redeclaring")
when not declared(ma_resource_manager_process_next_job):
  proc ma_resource_manager_process_next_job*(
      pResourceManager: ptr ma_resource_manager_536872090): ma_result_536871433 {.
      cdecl, importc: "ma_resource_manager_process_next_job".}
else:
  static :
    hint("Declaration of " & "ma_resource_manager_process_next_job" &
        " already exists, not redeclaring")
when not declared(ma_node_config_init):
  proc ma_node_config_init*(): ma_node_config_536872162 {.cdecl,
      importc: "ma_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_node_get_heap_size):
  proc ma_node_get_heap_size*(pNodeGraph: ptr ma_node_graph_536872142;
                              pConfig: ptr ma_node_config_536872162;
                              pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_node_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_node_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_node_init_preallocated):
  proc ma_node_init_preallocated*(pNodeGraph: ptr ma_node_graph_536872142;
                                  pConfig: ptr ma_node_config_536872162;
                                  pHeap: pointer; pNode: pointer): ma_result_536871433 {.
      cdecl, importc: "ma_node_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_node_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_node_init):
  proc ma_node_init*(pNodeGraph: ptr ma_node_graph_536872142;
                     pConfig: ptr ma_node_config_536872162;
                     pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                     pNode: pointer): ma_result_536871433 {.cdecl,
      importc: "ma_node_init".}
else:
  static :
    hint("Declaration of " & "ma_node_init" & " already exists, not redeclaring")
when not declared(ma_node_uninit):
  proc ma_node_uninit*(pNode: pointer;
                       pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_node_get_node_graph):
  proc ma_node_get_node_graph*(pNode: pointer): ptr ma_node_graph_536872142 {.
      cdecl, importc: "ma_node_get_node_graph".}
else:
  static :
    hint("Declaration of " & "ma_node_get_node_graph" &
        " already exists, not redeclaring")
when not declared(ma_node_get_input_bus_count):
  proc ma_node_get_input_bus_count*(pNode: pointer): ma_uint32_536871377 {.
      cdecl, importc: "ma_node_get_input_bus_count".}
else:
  static :
    hint("Declaration of " & "ma_node_get_input_bus_count" &
        " already exists, not redeclaring")
when not declared(ma_node_get_output_bus_count):
  proc ma_node_get_output_bus_count*(pNode: pointer): ma_uint32_536871377 {.
      cdecl, importc: "ma_node_get_output_bus_count".}
else:
  static :
    hint("Declaration of " & "ma_node_get_output_bus_count" &
        " already exists, not redeclaring")
when not declared(ma_node_get_input_channels):
  proc ma_node_get_input_channels*(pNode: pointer; inputBusIndex: ma_uint32_536871377): ma_uint32_536871377 {.
      cdecl, importc: "ma_node_get_input_channels".}
else:
  static :
    hint("Declaration of " & "ma_node_get_input_channels" &
        " already exists, not redeclaring")
when not declared(ma_node_get_output_channels):
  proc ma_node_get_output_channels*(pNode: pointer; outputBusIndex: ma_uint32_536871377): ma_uint32_536871377 {.
      cdecl, importc: "ma_node_get_output_channels".}
else:
  static :
    hint("Declaration of " & "ma_node_get_output_channels" &
        " already exists, not redeclaring")
when not declared(ma_node_attach_output_bus):
  proc ma_node_attach_output_bus*(pNode: pointer; outputBusIndex: ma_uint32_536871377;
                                  pOtherNode: pointer;
                                  otherNodeInputBusIndex: ma_uint32_536871377): ma_result_536871433 {.
      cdecl, importc: "ma_node_attach_output_bus".}
else:
  static :
    hint("Declaration of " & "ma_node_attach_output_bus" &
        " already exists, not redeclaring")
when not declared(ma_node_detach_output_bus):
  proc ma_node_detach_output_bus*(pNode: pointer; outputBusIndex: ma_uint32_536871377): ma_result_536871433 {.
      cdecl, importc: "ma_node_detach_output_bus".}
else:
  static :
    hint("Declaration of " & "ma_node_detach_output_bus" &
        " already exists, not redeclaring")
when not declared(ma_node_detach_all_output_buses):
  proc ma_node_detach_all_output_buses*(pNode: pointer): ma_result_536871433 {.
      cdecl, importc: "ma_node_detach_all_output_buses".}
else:
  static :
    hint("Declaration of " & "ma_node_detach_all_output_buses" &
        " already exists, not redeclaring")
when not declared(ma_node_set_output_bus_volume):
  proc ma_node_set_output_bus_volume*(pNode: pointer; outputBusIndex: ma_uint32_536871377;
                                      volume: cfloat): ma_result_536871433 {.
      cdecl, importc: "ma_node_set_output_bus_volume".}
else:
  static :
    hint("Declaration of " & "ma_node_set_output_bus_volume" &
        " already exists, not redeclaring")
when not declared(ma_node_get_output_bus_volume):
  proc ma_node_get_output_bus_volume*(pNode: pointer; outputBusIndex: ma_uint32_536871377): cfloat {.
      cdecl, importc: "ma_node_get_output_bus_volume".}
else:
  static :
    hint("Declaration of " & "ma_node_get_output_bus_volume" &
        " already exists, not redeclaring")
when not declared(ma_node_set_state):
  proc ma_node_set_state*(pNode: pointer; state: ma_node_state_536872154): ma_result_536871433 {.
      cdecl, importc: "ma_node_set_state".}
else:
  static :
    hint("Declaration of " & "ma_node_set_state" &
        " already exists, not redeclaring")
when not declared(ma_node_get_state):
  proc ma_node_get_state*(pNode: pointer): ma_node_state_536872154 {.cdecl,
      importc: "ma_node_get_state".}
else:
  static :
    hint("Declaration of " & "ma_node_get_state" &
        " already exists, not redeclaring")
when not declared(ma_node_set_state_time):
  proc ma_node_set_state_time*(pNode: pointer; state: ma_node_state_536872154;
                               globalTime: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_node_set_state_time".}
else:
  static :
    hint("Declaration of " & "ma_node_set_state_time" &
        " already exists, not redeclaring")
when not declared(ma_node_get_state_time):
  proc ma_node_get_state_time*(pNode: pointer; state: ma_node_state_536872154): ma_uint64_536871381 {.
      cdecl, importc: "ma_node_get_state_time".}
else:
  static :
    hint("Declaration of " & "ma_node_get_state_time" &
        " already exists, not redeclaring")
when not declared(ma_node_get_state_by_time):
  proc ma_node_get_state_by_time*(pNode: pointer; globalTime: ma_uint64_536871381): ma_node_state_536872154 {.
      cdecl, importc: "ma_node_get_state_by_time".}
else:
  static :
    hint("Declaration of " & "ma_node_get_state_by_time" &
        " already exists, not redeclaring")
when not declared(ma_node_get_state_by_time_range):
  proc ma_node_get_state_by_time_range*(pNode: pointer;
                                        globalTimeBeg: ma_uint64_536871381;
                                        globalTimeEnd: ma_uint64_536871381): ma_node_state_536872154 {.
      cdecl, importc: "ma_node_get_state_by_time_range".}
else:
  static :
    hint("Declaration of " & "ma_node_get_state_by_time_range" &
        " already exists, not redeclaring")
when not declared(ma_node_get_time):
  proc ma_node_get_time*(pNode: pointer): ma_uint64_536871381 {.cdecl,
      importc: "ma_node_get_time".}
else:
  static :
    hint("Declaration of " & "ma_node_get_time" &
        " already exists, not redeclaring")
when not declared(ma_node_set_time):
  proc ma_node_set_time*(pNode: pointer; localTime: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_node_set_time".}
else:
  static :
    hint("Declaration of " & "ma_node_set_time" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_config_init):
  proc ma_node_graph_config_init*(channels: ma_uint32_536871377): ma_node_graph_config_536872178 {.
      cdecl, importc: "ma_node_graph_config_init".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_config_init" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_init):
  proc ma_node_graph_init*(pConfig: ptr ma_node_graph_config_536872178;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                           pNodeGraph: ptr ma_node_graph_536872142): ma_result_536871433 {.
      cdecl, importc: "ma_node_graph_init".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_init" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_uninit):
  proc ma_node_graph_uninit*(pNodeGraph: ptr ma_node_graph_536872142;
                             pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_node_graph_uninit".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_uninit" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_get_endpoint):
  proc ma_node_graph_get_endpoint*(pNodeGraph: ptr ma_node_graph_536872142): pointer {.
      cdecl, importc: "ma_node_graph_get_endpoint".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_get_endpoint" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_read_pcm_frames):
  proc ma_node_graph_read_pcm_frames*(pNodeGraph: ptr ma_node_graph_536872142;
                                      pFramesOut: pointer;
                                      frameCount: ma_uint64_536871381;
                                      pFramesRead: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_node_graph_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_get_channels):
  proc ma_node_graph_get_channels*(pNodeGraph: ptr ma_node_graph_536872142): ma_uint32_536871377 {.
      cdecl, importc: "ma_node_graph_get_channels".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_get_channels" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_get_time):
  proc ma_node_graph_get_time*(pNodeGraph: ptr ma_node_graph_536872142): ma_uint64_536871381 {.
      cdecl, importc: "ma_node_graph_get_time".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_get_time" &
        " already exists, not redeclaring")
when not declared(ma_node_graph_set_time):
  proc ma_node_graph_set_time*(pNodeGraph: ptr ma_node_graph_536872142;
                               globalTime: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_node_graph_set_time".}
else:
  static :
    hint("Declaration of " & "ma_node_graph_set_time" &
        " already exists, not redeclaring")
when not declared(ma_data_source_node_config_init):
  proc ma_data_source_node_config_init*(pDataSource: pointer): ma_data_source_node_config_536872182 {.
      cdecl, importc: "ma_data_source_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_data_source_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_data_source_node_init):
  proc ma_data_source_node_init*(pNodeGraph: ptr ma_node_graph_536872142;
                                 pConfig: ptr ma_data_source_node_config_536872182;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                                 pDataSourceNode: ptr ma_data_source_node_536872186): ma_result_536871433 {.
      cdecl, importc: "ma_data_source_node_init".}
else:
  static :
    hint("Declaration of " & "ma_data_source_node_init" &
        " already exists, not redeclaring")
when not declared(ma_data_source_node_uninit):
  proc ma_data_source_node_uninit*(pDataSourceNode: ptr ma_data_source_node_536872186;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_data_source_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_data_source_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_data_source_node_set_looping):
  proc ma_data_source_node_set_looping*(pDataSourceNode: ptr ma_data_source_node_536872186;
                                        isLooping: ma_bool32_536871387): ma_result_536871433 {.
      cdecl, importc: "ma_data_source_node_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_data_source_node_set_looping" &
        " already exists, not redeclaring")
when not declared(ma_data_source_node_is_looping):
  proc ma_data_source_node_is_looping*(pDataSourceNode: ptr ma_data_source_node_536872186): ma_bool32_536871387 {.
      cdecl, importc: "ma_data_source_node_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_data_source_node_is_looping" &
        " already exists, not redeclaring")
when not declared(ma_splitter_node_config_init):
  proc ma_splitter_node_config_init*(channels: ma_uint32_536871377): ma_splitter_node_config_536872190 {.
      cdecl, importc: "ma_splitter_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_splitter_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_splitter_node_init):
  proc ma_splitter_node_init*(pNodeGraph: ptr ma_node_graph_536872142;
                              pConfig: ptr ma_splitter_node_config_536872190;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                              pSplitterNode: ptr ma_splitter_node_536872194): ma_result_536871433 {.
      cdecl, importc: "ma_splitter_node_init".}
else:
  static :
    hint("Declaration of " & "ma_splitter_node_init" &
        " already exists, not redeclaring")
when not declared(ma_splitter_node_uninit):
  proc ma_splitter_node_uninit*(pSplitterNode: ptr ma_splitter_node_536872194;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_splitter_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_splitter_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_biquad_node_config_init):
  proc ma_biquad_node_config_init*(channels: ma_uint32_536871377; b0: cfloat;
                                   b1: cfloat; b2: cfloat; a0: cfloat;
                                   a1: cfloat; a2: cfloat): ma_biquad_node_config_536872198 {.
      cdecl, importc: "ma_biquad_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_biquad_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_biquad_node_init):
  proc ma_biquad_node_init*(pNodeGraph: ptr ma_node_graph_536872142;
                            pConfig: ptr ma_biquad_node_config_536872198;
                            pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                            pNode: ptr ma_biquad_node_536872202): ma_result_536871433 {.
      cdecl, importc: "ma_biquad_node_init".}
else:
  static :
    hint("Declaration of " & "ma_biquad_node_init" &
        " already exists, not redeclaring")
when not declared(ma_biquad_node_reinit):
  proc ma_biquad_node_reinit*(pConfig: ptr ma_biquad_config_536871536;
                              pNode: ptr ma_biquad_node_536872202): ma_result_536871433 {.
      cdecl, importc: "ma_biquad_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_biquad_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_biquad_node_uninit):
  proc ma_biquad_node_uninit*(pNode: ptr ma_biquad_node_536872202;
                              pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_biquad_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_biquad_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_lpf_node_config_init):
  proc ma_lpf_node_config_init*(channels: ma_uint32_536871377;
                                sampleRate: ma_uint32_536871377;
                                cutoffFrequency: cdouble; order: ma_uint32_536871377): ma_lpf_node_config_536872206 {.
      cdecl, importc: "ma_lpf_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_lpf_node_init):
  proc ma_lpf_node_init*(pNodeGraph: ptr ma_node_graph_536872142;
                         pConfig: ptr ma_lpf_node_config_536872206;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                         pNode: ptr ma_lpf_node_536872210): ma_result_536871433 {.
      cdecl, importc: "ma_lpf_node_init".}
else:
  static :
    hint("Declaration of " & "ma_lpf_node_init" &
        " already exists, not redeclaring")
when not declared(ma_lpf_node_reinit):
  proc ma_lpf_node_reinit*(pConfig: ptr ma_lpf_config_536871558;
                           pNode: ptr ma_lpf_node_536872210): ma_result_536871433 {.
      cdecl, importc: "ma_lpf_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_lpf_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_lpf_node_uninit):
  proc ma_lpf_node_uninit*(pNode: ptr ma_lpf_node_536872210;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_lpf_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_lpf_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_hpf_node_config_init):
  proc ma_hpf_node_config_init*(channels: ma_uint32_536871377;
                                sampleRate: ma_uint32_536871377;
                                cutoffFrequency: cdouble; order: ma_uint32_536871377): ma_hpf_node_config_536872214 {.
      cdecl, importc: "ma_hpf_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_hpf_node_init):
  proc ma_hpf_node_init*(pNodeGraph: ptr ma_node_graph_536872142;
                         pConfig: ptr ma_hpf_node_config_536872214;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                         pNode: ptr ma_hpf_node_536872218): ma_result_536871433 {.
      cdecl, importc: "ma_hpf_node_init".}
else:
  static :
    hint("Declaration of " & "ma_hpf_node_init" &
        " already exists, not redeclaring")
when not declared(ma_hpf_node_reinit):
  proc ma_hpf_node_reinit*(pConfig: ptr ma_hpf_config_536871580;
                           pNode: ptr ma_hpf_node_536872218): ma_result_536871433 {.
      cdecl, importc: "ma_hpf_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hpf_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_hpf_node_uninit):
  proc ma_hpf_node_uninit*(pNode: ptr ma_hpf_node_536872218;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_hpf_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hpf_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_bpf_node_config_init):
  proc ma_bpf_node_config_init*(channels: ma_uint32_536871377;
                                sampleRate: ma_uint32_536871377;
                                cutoffFrequency: cdouble; order: ma_uint32_536871377): ma_bpf_node_config_536872222 {.
      cdecl, importc: "ma_bpf_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_bpf_node_init):
  proc ma_bpf_node_init*(pNodeGraph: ptr ma_node_graph_536872142;
                         pConfig: ptr ma_bpf_node_config_536872222;
                         pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                         pNode: ptr ma_bpf_node_536872226): ma_result_536871433 {.
      cdecl, importc: "ma_bpf_node_init".}
else:
  static :
    hint("Declaration of " & "ma_bpf_node_init" &
        " already exists, not redeclaring")
when not declared(ma_bpf_node_reinit):
  proc ma_bpf_node_reinit*(pConfig: ptr ma_bpf_config_536871596;
                           pNode: ptr ma_bpf_node_536872226): ma_result_536871433 {.
      cdecl, importc: "ma_bpf_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_bpf_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_bpf_node_uninit):
  proc ma_bpf_node_uninit*(pNode: ptr ma_bpf_node_536872226;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_bpf_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_bpf_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_notch_node_config_init):
  proc ma_notch_node_config_init*(channels: ma_uint32_536871377;
                                  sampleRate: ma_uint32_536871377; q: cdouble;
                                  frequency: cdouble): ma_notch_node_config_536872230 {.
      cdecl, importc: "ma_notch_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_notch_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_notch_node_init):
  proc ma_notch_node_init*(pNodeGraph: ptr ma_node_graph_536872142;
                           pConfig: ptr ma_notch_node_config_536872230;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                           pNode: ptr ma_notch_node_536872234): ma_result_536871433 {.
      cdecl, importc: "ma_notch_node_init".}
else:
  static :
    hint("Declaration of " & "ma_notch_node_init" &
        " already exists, not redeclaring")
when not declared(ma_notch_node_reinit):
  proc ma_notch_node_reinit*(pConfig: ptr ma_notch_config_536871606;
                             pNode: ptr ma_notch_node_536872234): ma_result_536871433 {.
      cdecl, importc: "ma_notch_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_notch_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_notch_node_uninit):
  proc ma_notch_node_uninit*(pNode: ptr ma_notch_node_536872234;
                             pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_notch_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_notch_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_peak_node_config_init):
  proc ma_peak_node_config_init*(channels: ma_uint32_536871377;
                                 sampleRate: ma_uint32_536871377;
                                 gainDB: cdouble; q: cdouble; frequency: cdouble): ma_peak_node_config_536872238 {.
      cdecl, importc: "ma_peak_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_peak_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_peak_node_init):
  proc ma_peak_node_init*(pNodeGraph: ptr ma_node_graph_536872142;
                          pConfig: ptr ma_peak_node_config_536872238;
                          pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                          pNode: ptr ma_peak_node_536872242): ma_result_536871433 {.
      cdecl, importc: "ma_peak_node_init".}
else:
  static :
    hint("Declaration of " & "ma_peak_node_init" &
        " already exists, not redeclaring")
when not declared(ma_peak_node_reinit):
  proc ma_peak_node_reinit*(pConfig: ptr ma_peak_config_536871616;
                            pNode: ptr ma_peak_node_536872242): ma_result_536871433 {.
      cdecl, importc: "ma_peak_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_peak_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_peak_node_uninit):
  proc ma_peak_node_uninit*(pNode: ptr ma_peak_node_536872242;
                            pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_peak_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_peak_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_loshelf_node_config_init):
  proc ma_loshelf_node_config_init*(channels: ma_uint32_536871377;
                                    sampleRate: ma_uint32_536871377;
                                    gainDB: cdouble; q: cdouble;
                                    frequency: cdouble): ma_loshelf_node_config_536872246 {.
      cdecl, importc: "ma_loshelf_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_loshelf_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_loshelf_node_init):
  proc ma_loshelf_node_init*(pNodeGraph: ptr ma_node_graph_536872142;
                             pConfig: ptr ma_loshelf_node_config_536872246;
                             pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                             pNode: ptr ma_loshelf_node_536872250): ma_result_536871433 {.
      cdecl, importc: "ma_loshelf_node_init".}
else:
  static :
    hint("Declaration of " & "ma_loshelf_node_init" &
        " already exists, not redeclaring")
when not declared(ma_loshelf_node_reinit):
  proc ma_loshelf_node_reinit*(pConfig: ptr ma_loshelf_config_536871626;
                               pNode: ptr ma_loshelf_node_536872250): ma_result_536871433 {.
      cdecl, importc: "ma_loshelf_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_loshelf_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_loshelf_node_uninit):
  proc ma_loshelf_node_uninit*(pNode: ptr ma_loshelf_node_536872250;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_loshelf_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_loshelf_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_hishelf_node_config_init):
  proc ma_hishelf_node_config_init*(channels: ma_uint32_536871377;
                                    sampleRate: ma_uint32_536871377;
                                    gainDB: cdouble; q: cdouble;
                                    frequency: cdouble): ma_hishelf_node_config_536872254 {.
      cdecl, importc: "ma_hishelf_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_hishelf_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_hishelf_node_init):
  proc ma_hishelf_node_init*(pNodeGraph: ptr ma_node_graph_536872142;
                             pConfig: ptr ma_hishelf_node_config_536872254;
                             pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                             pNode: ptr ma_hishelf_node_536872258): ma_result_536871433 {.
      cdecl, importc: "ma_hishelf_node_init".}
else:
  static :
    hint("Declaration of " & "ma_hishelf_node_init" &
        " already exists, not redeclaring")
when not declared(ma_hishelf_node_reinit):
  proc ma_hishelf_node_reinit*(pConfig: ptr ma_hishelf_config_536871636;
                               pNode: ptr ma_hishelf_node_536872258): ma_result_536871433 {.
      cdecl, importc: "ma_hishelf_node_reinit".}
else:
  static :
    hint("Declaration of " & "ma_hishelf_node_reinit" &
        " already exists, not redeclaring")
when not declared(ma_hishelf_node_uninit):
  proc ma_hishelf_node_uninit*(pNode: ptr ma_hishelf_node_536872258;
      pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_hishelf_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_hishelf_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_config_init):
  proc ma_delay_node_config_init*(channels: ma_uint32_536871377;
                                  sampleRate: ma_uint32_536871377;
                                  delayInFrames: ma_uint32_536871377;
                                  decay: cfloat): ma_delay_node_config_536872262 {.
      cdecl, importc: "ma_delay_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_init):
  proc ma_delay_node_init*(pNodeGraph: ptr ma_node_graph_536872142;
                           pConfig: ptr ma_delay_node_config_536872262;
                           pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                           pDelayNode: ptr ma_delay_node_536872266): ma_result_536871433 {.
      cdecl, importc: "ma_delay_node_init".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_init" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_uninit):
  proc ma_delay_node_uninit*(pDelayNode: ptr ma_delay_node_536872266;
                             pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_delay_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_set_wet):
  proc ma_delay_node_set_wet*(pDelayNode: ptr ma_delay_node_536872266;
                              value: cfloat): void {.cdecl,
      importc: "ma_delay_node_set_wet".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_set_wet" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_get_wet):
  proc ma_delay_node_get_wet*(pDelayNode: ptr ma_delay_node_536872266): cfloat {.
      cdecl, importc: "ma_delay_node_get_wet".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_get_wet" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_set_dry):
  proc ma_delay_node_set_dry*(pDelayNode: ptr ma_delay_node_536872266;
                              value: cfloat): void {.cdecl,
      importc: "ma_delay_node_set_dry".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_set_dry" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_get_dry):
  proc ma_delay_node_get_dry*(pDelayNode: ptr ma_delay_node_536872266): cfloat {.
      cdecl, importc: "ma_delay_node_get_dry".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_get_dry" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_set_decay):
  proc ma_delay_node_set_decay*(pDelayNode: ptr ma_delay_node_536872266;
                                value: cfloat): void {.cdecl,
      importc: "ma_delay_node_set_decay".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_set_decay" &
        " already exists, not redeclaring")
when not declared(ma_delay_node_get_decay):
  proc ma_delay_node_get_decay*(pDelayNode: ptr ma_delay_node_536872266): cfloat {.
      cdecl, importc: "ma_delay_node_get_decay".}
else:
  static :
    hint("Declaration of " & "ma_delay_node_get_decay" &
        " already exists, not redeclaring")
when not declared(ma_engine_node_config_init):
  proc ma_engine_node_config_init*(pEngine: ptr ma_engine_536872268;
                                   type_arg: ma_engine_node_type_536872282;
                                   flags: ma_uint32_536871377): ma_engine_node_config_536872286 {.
      cdecl, importc: "ma_engine_node_config_init".}
else:
  static :
    hint("Declaration of " & "ma_engine_node_config_init" &
        " already exists, not redeclaring")
when not declared(ma_engine_node_get_heap_size):
  proc ma_engine_node_get_heap_size*(pConfig: ptr ma_engine_node_config_536872286;
                                     pHeapSizeInBytes: ptr csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_engine_node_get_heap_size".}
else:
  static :
    hint("Declaration of " & "ma_engine_node_get_heap_size" &
        " already exists, not redeclaring")
when not declared(ma_engine_node_init_preallocated):
  proc ma_engine_node_init_preallocated*(pConfig: ptr ma_engine_node_config_536872286;
      pHeap: pointer; pEngineNode: ptr ma_engine_node_536872290): ma_result_536871433 {.
      cdecl, importc: "ma_engine_node_init_preallocated".}
else:
  static :
    hint("Declaration of " & "ma_engine_node_init_preallocated" &
        " already exists, not redeclaring")
when not declared(ma_engine_node_init):
  proc ma_engine_node_init*(pConfig: ptr ma_engine_node_config_536872286;
                            pAllocationCallbacks: ptr ma_allocation_callbacks_536871476;
                            pEngineNode: ptr ma_engine_node_536872290): ma_result_536871433 {.
      cdecl, importc: "ma_engine_node_init".}
else:
  static :
    hint("Declaration of " & "ma_engine_node_init" &
        " already exists, not redeclaring")
when not declared(ma_engine_node_uninit):
  proc ma_engine_node_uninit*(pEngineNode: ptr ma_engine_node_536872290;
                              pAllocationCallbacks: ptr ma_allocation_callbacks_536871476): void {.
      cdecl, importc: "ma_engine_node_uninit".}
else:
  static :
    hint("Declaration of " & "ma_engine_node_uninit" &
        " already exists, not redeclaring")
when not declared(ma_sound_config_init):
  proc ma_sound_config_init*(): ma_sound_config_536872296 {.cdecl,
      importc: "ma_sound_config_init".}
else:
  static :
    hint("Declaration of " & "ma_sound_config_init" &
        " already exists, not redeclaring")
when not declared(ma_sound_config_init_2):
  proc ma_sound_config_init_2*(pEngine: ptr ma_engine_536872268): ma_sound_config_536872296 {.
      cdecl, importc: "ma_sound_config_init_2".}
else:
  static :
    hint("Declaration of " & "ma_sound_config_init_2" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_config_init):
  proc ma_sound_group_config_init*(): ma_sound_group_config_536872302 {.cdecl,
      importc: "ma_sound_group_config_init".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_config_init" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_config_init_2):
  proc ma_sound_group_config_init_2*(pEngine: ptr ma_engine_536872268): ma_sound_group_config_536872302 {.
      cdecl, importc: "ma_sound_group_config_init_2".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_config_init_2" &
        " already exists, not redeclaring")
when not declared(ma_engine_config_init):
  proc ma_engine_config_init*(): ma_engine_config_536872310 {.cdecl,
      importc: "ma_engine_config_init".}
else:
  static :
    hint("Declaration of " & "ma_engine_config_init" &
        " already exists, not redeclaring")
when not declared(ma_engine_init):
  proc ma_engine_init*(pConfig: ptr ma_engine_config_536872310;
                       pEngine: ptr ma_engine_536872268): ma_result_536871433 {.
      cdecl, importc: "ma_engine_init".}
else:
  static :
    hint("Declaration of " & "ma_engine_init" &
        " already exists, not redeclaring")
when not declared(ma_engine_uninit):
  proc ma_engine_uninit*(pEngine: ptr ma_engine_536872268): void {.cdecl,
      importc: "ma_engine_uninit".}
else:
  static :
    hint("Declaration of " & "ma_engine_uninit" &
        " already exists, not redeclaring")
when not declared(ma_engine_read_pcm_frames):
  proc ma_engine_read_pcm_frames*(pEngine: ptr ma_engine_536872268;
                                  pFramesOut: pointer; frameCount: ma_uint64_536871381;
                                  pFramesRead: ptr ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_engine_read_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_engine_read_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_node_graph):
  proc ma_engine_get_node_graph*(pEngine: ptr ma_engine_536872268): ptr ma_node_graph_536872142 {.
      cdecl, importc: "ma_engine_get_node_graph".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_node_graph" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_resource_manager):
  proc ma_engine_get_resource_manager*(pEngine: ptr ma_engine_536872268): ptr ma_resource_manager_536872090 {.
      cdecl, importc: "ma_engine_get_resource_manager".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_resource_manager" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_device):
  proc ma_engine_get_device*(pEngine: ptr ma_engine_536872268): ptr ma_device_536871421 {.
      cdecl, importc: "ma_engine_get_device".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_device" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_log):
  proc ma_engine_get_log*(pEngine: ptr ma_engine_536872268): ptr ma_log_536871528 {.
      cdecl, importc: "ma_engine_get_log".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_log" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_endpoint):
  proc ma_engine_get_endpoint*(pEngine: ptr ma_engine_536872268): pointer {.
      cdecl, importc: "ma_engine_get_endpoint".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_endpoint" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_time_in_pcm_frames):
  proc ma_engine_get_time_in_pcm_frames*(pEngine: ptr ma_engine_536872268): ma_uint64_536871381 {.
      cdecl, importc: "ma_engine_get_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_time_in_milliseconds):
  proc ma_engine_get_time_in_milliseconds*(pEngine: ptr ma_engine_536872268): ma_uint64_536871381 {.
      cdecl, importc: "ma_engine_get_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_engine_set_time_in_pcm_frames):
  proc ma_engine_set_time_in_pcm_frames*(pEngine: ptr ma_engine_536872268;
      globalTime: ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_engine_set_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_engine_set_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_engine_set_time_in_milliseconds):
  proc ma_engine_set_time_in_milliseconds*(pEngine: ptr ma_engine_536872268;
      globalTime: ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_engine_set_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_engine_set_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_time):
  proc ma_engine_get_time*(pEngine: ptr ma_engine_536872268): ma_uint64_536871381 {.
      cdecl, importc: "ma_engine_get_time".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_time" &
        " already exists, not redeclaring")
when not declared(ma_engine_set_time):
  proc ma_engine_set_time*(pEngine: ptr ma_engine_536872268;
                           globalTime: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_engine_set_time".}
else:
  static :
    hint("Declaration of " & "ma_engine_set_time" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_channels):
  proc ma_engine_get_channels*(pEngine: ptr ma_engine_536872268): ma_uint32_536871377 {.
      cdecl, importc: "ma_engine_get_channels".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_channels" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_sample_rate):
  proc ma_engine_get_sample_rate*(pEngine: ptr ma_engine_536872268): ma_uint32_536871377 {.
      cdecl, importc: "ma_engine_get_sample_rate".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_sample_rate" &
        " already exists, not redeclaring")
when not declared(ma_engine_start):
  proc ma_engine_start*(pEngine: ptr ma_engine_536872268): ma_result_536871433 {.
      cdecl, importc: "ma_engine_start".}
else:
  static :
    hint("Declaration of " & "ma_engine_start" &
        " already exists, not redeclaring")
when not declared(ma_engine_stop):
  proc ma_engine_stop*(pEngine: ptr ma_engine_536872268): ma_result_536871433 {.
      cdecl, importc: "ma_engine_stop".}
else:
  static :
    hint("Declaration of " & "ma_engine_stop" &
        " already exists, not redeclaring")
when not declared(ma_engine_set_volume):
  proc ma_engine_set_volume*(pEngine: ptr ma_engine_536872268; volume: cfloat): ma_result_536871433 {.
      cdecl, importc: "ma_engine_set_volume".}
else:
  static :
    hint("Declaration of " & "ma_engine_set_volume" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_volume):
  proc ma_engine_get_volume*(pEngine: ptr ma_engine_536872268): cfloat {.cdecl,
      importc: "ma_engine_get_volume".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_volume" &
        " already exists, not redeclaring")
when not declared(ma_engine_set_gain_db):
  proc ma_engine_set_gain_db*(pEngine: ptr ma_engine_536872268; gainDB: cfloat): ma_result_536871433 {.
      cdecl, importc: "ma_engine_set_gain_db".}
else:
  static :
    hint("Declaration of " & "ma_engine_set_gain_db" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_gain_db):
  proc ma_engine_get_gain_db*(pEngine: ptr ma_engine_536872268): cfloat {.cdecl,
      importc: "ma_engine_get_gain_db".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_gain_db" &
        " already exists, not redeclaring")
when not declared(ma_engine_get_listener_count):
  proc ma_engine_get_listener_count*(pEngine: ptr ma_engine_536872268): ma_uint32_536871377 {.
      cdecl, importc: "ma_engine_get_listener_count".}
else:
  static :
    hint("Declaration of " & "ma_engine_get_listener_count" &
        " already exists, not redeclaring")
when not declared(ma_engine_find_closest_listener):
  proc ma_engine_find_closest_listener*(pEngine: ptr ma_engine_536872268;
                                        absolutePosX: cfloat;
                                        absolutePosY: cfloat;
                                        absolutePosZ: cfloat): ma_uint32_536871377 {.
      cdecl, importc: "ma_engine_find_closest_listener".}
else:
  static :
    hint("Declaration of " & "ma_engine_find_closest_listener" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_set_position):
  proc ma_engine_listener_set_position*(pEngine: ptr ma_engine_536872268;
                                        listenerIndex: ma_uint32_536871377;
                                        x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_engine_listener_set_position".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_position" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_get_position):
  proc ma_engine_listener_get_position*(pEngine: ptr ma_engine_536872268;
                                        listenerIndex: ma_uint32_536871377): ma_vec3f_536871680 {.
      cdecl, importc: "ma_engine_listener_get_position".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_get_position" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_set_direction):
  proc ma_engine_listener_set_direction*(pEngine: ptr ma_engine_536872268;
      listenerIndex: ma_uint32_536871377; x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_engine_listener_set_direction".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_direction" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_get_direction):
  proc ma_engine_listener_get_direction*(pEngine: ptr ma_engine_536872268;
      listenerIndex: ma_uint32_536871377): ma_vec3f_536871680 {.cdecl,
      importc: "ma_engine_listener_get_direction".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_get_direction" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_set_velocity):
  proc ma_engine_listener_set_velocity*(pEngine: ptr ma_engine_536872268;
                                        listenerIndex: ma_uint32_536871377;
                                        x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_engine_listener_set_velocity".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_velocity" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_get_velocity):
  proc ma_engine_listener_get_velocity*(pEngine: ptr ma_engine_536872268;
                                        listenerIndex: ma_uint32_536871377): ma_vec3f_536871680 {.
      cdecl, importc: "ma_engine_listener_get_velocity".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_get_velocity" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_set_cone):
  proc ma_engine_listener_set_cone*(pEngine: ptr ma_engine_536872268;
                                    listenerIndex: ma_uint32_536871377;
                                    innerAngleInRadians: cfloat;
                                    outerAngleInRadians: cfloat;
                                    outerGain: cfloat): void {.cdecl,
      importc: "ma_engine_listener_set_cone".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_cone" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_get_cone):
  proc ma_engine_listener_get_cone*(pEngine: ptr ma_engine_536872268;
                                    listenerIndex: ma_uint32_536871377;
                                    pInnerAngleInRadians: ptr cfloat;
                                    pOuterAngleInRadians: ptr cfloat;
                                    pOuterGain: ptr cfloat): void {.cdecl,
      importc: "ma_engine_listener_get_cone".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_get_cone" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_set_world_up):
  proc ma_engine_listener_set_world_up*(pEngine: ptr ma_engine_536872268;
                                        listenerIndex: ma_uint32_536871377;
                                        x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_engine_listener_set_world_up".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_world_up" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_get_world_up):
  proc ma_engine_listener_get_world_up*(pEngine: ptr ma_engine_536872268;
                                        listenerIndex: ma_uint32_536871377): ma_vec3f_536871680 {.
      cdecl, importc: "ma_engine_listener_get_world_up".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_get_world_up" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_set_enabled):
  proc ma_engine_listener_set_enabled*(pEngine: ptr ma_engine_536872268;
                                       listenerIndex: ma_uint32_536871377;
                                       isEnabled: ma_bool32_536871387): void {.
      cdecl, importc: "ma_engine_listener_set_enabled".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_set_enabled" &
        " already exists, not redeclaring")
when not declared(ma_engine_listener_is_enabled):
  proc ma_engine_listener_is_enabled*(pEngine: ptr ma_engine_536872268;
                                      listenerIndex: ma_uint32_536871377): ma_bool32_536871387 {.
      cdecl, importc: "ma_engine_listener_is_enabled".}
else:
  static :
    hint("Declaration of " & "ma_engine_listener_is_enabled" &
        " already exists, not redeclaring")
when not declared(ma_engine_play_sound_ex):
  proc ma_engine_play_sound_ex*(pEngine: ptr ma_engine_536872268;
                                pFilePath: cstring; pNode: pointer;
                                nodeInputBusIndex: ma_uint32_536871377): ma_result_536871433 {.
      cdecl, importc: "ma_engine_play_sound_ex".}
else:
  static :
    hint("Declaration of " & "ma_engine_play_sound_ex" &
        " already exists, not redeclaring")
when not declared(ma_engine_play_sound):
  proc ma_engine_play_sound*(pEngine: ptr ma_engine_536872268;
                             pFilePath: cstring; pGroup: ptr ma_sound_group_536872304): ma_result_536871433 {.
      cdecl, importc: "ma_engine_play_sound".}
else:
  static :
    hint("Declaration of " & "ma_engine_play_sound" &
        " already exists, not redeclaring")
when not declared(ma_sound_init_from_file):
  proc ma_sound_init_from_file*(pEngine: ptr ma_engine_536872268;
                                pFilePath: cstring; flags: ma_uint32_536871377;
                                pGroup: ptr ma_sound_group_536872304;
                                pDoneFence: ptr ma_fence_536871826;
                                pSound: ptr ma_sound_536872272): ma_result_536871433 {.
      cdecl, importc: "ma_sound_init_from_file".}
else:
  static :
    hint("Declaration of " & "ma_sound_init_from_file" &
        " already exists, not redeclaring")
when not declared(ma_sound_init_from_file_w):
  proc ma_sound_init_from_file_w*(pEngine: ptr ma_engine_536872268;
                                  pFilePath: ptr wchar_t_536871862;
                                  flags: ma_uint32_536871377;
                                  pGroup: ptr ma_sound_group_536872304;
                                  pDoneFence: ptr ma_fence_536871826;
                                  pSound: ptr ma_sound_536872272): ma_result_536871433 {.
      cdecl, importc: "ma_sound_init_from_file_w".}
else:
  static :
    hint("Declaration of " & "ma_sound_init_from_file_w" &
        " already exists, not redeclaring")
when not declared(ma_sound_init_copy):
  proc ma_sound_init_copy*(pEngine: ptr ma_engine_536872268;
                           pExistingSound: ptr ma_sound_536872272;
                           flags: ma_uint32_536871377;
                           pGroup: ptr ma_sound_group_536872304;
                           pSound: ptr ma_sound_536872272): ma_result_536871433 {.
      cdecl, importc: "ma_sound_init_copy".}
else:
  static :
    hint("Declaration of " & "ma_sound_init_copy" &
        " already exists, not redeclaring")
when not declared(ma_sound_init_from_data_source):
  proc ma_sound_init_from_data_source*(pEngine: ptr ma_engine_536872268;
                                       pDataSource: pointer; flags: ma_uint32_536871377;
                                       pGroup: ptr ma_sound_group_536872304;
                                       pSound: ptr ma_sound_536872272): ma_result_536871433 {.
      cdecl, importc: "ma_sound_init_from_data_source".}
else:
  static :
    hint("Declaration of " & "ma_sound_init_from_data_source" &
        " already exists, not redeclaring")
when not declared(ma_sound_init_ex):
  proc ma_sound_init_ex*(pEngine: ptr ma_engine_536872268;
                         pConfig: ptr ma_sound_config_536872296;
                         pSound: ptr ma_sound_536872272): ma_result_536871433 {.
      cdecl, importc: "ma_sound_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_sound_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_sound_uninit):
  proc ma_sound_uninit*(pSound: ptr ma_sound_536872272): void {.cdecl,
      importc: "ma_sound_uninit".}
else:
  static :
    hint("Declaration of " & "ma_sound_uninit" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_engine):
  proc ma_sound_get_engine*(pSound: ptr ma_sound_536872272): ptr ma_engine_536872268 {.
      cdecl, importc: "ma_sound_get_engine".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_engine" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_data_source):
  proc ma_sound_get_data_source*(pSound: ptr ma_sound_536872272): pointer {.
      cdecl, importc: "ma_sound_get_data_source".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_data_source" &
        " already exists, not redeclaring")
when not declared(ma_sound_start):
  proc ma_sound_start*(pSound: ptr ma_sound_536872272): ma_result_536871433 {.
      cdecl, importc: "ma_sound_start".}
else:
  static :
    hint("Declaration of " & "ma_sound_start" &
        " already exists, not redeclaring")
when not declared(ma_sound_stop):
  proc ma_sound_stop*(pSound: ptr ma_sound_536872272): ma_result_536871433 {.
      cdecl, importc: "ma_sound_stop".}
else:
  static :
    hint("Declaration of " & "ma_sound_stop" &
        " already exists, not redeclaring")
when not declared(ma_sound_stop_with_fade_in_pcm_frames):
  proc ma_sound_stop_with_fade_in_pcm_frames*(pSound: ptr ma_sound_536872272;
      fadeLengthInFrames: ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_sound_stop_with_fade_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_stop_with_fade_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_stop_with_fade_in_milliseconds):
  proc ma_sound_stop_with_fade_in_milliseconds*(pSound: ptr ma_sound_536872272;
      fadeLengthInFrames: ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_sound_stop_with_fade_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_stop_with_fade_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_volume):
  proc ma_sound_set_volume*(pSound: ptr ma_sound_536872272; volume: cfloat): void {.
      cdecl, importc: "ma_sound_set_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_volume" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_volume):
  proc ma_sound_get_volume*(pSound: ptr ma_sound_536872272): cfloat {.cdecl,
      importc: "ma_sound_get_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_volume" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_pan):
  proc ma_sound_set_pan*(pSound: ptr ma_sound_536872272; pan: cfloat): void {.
      cdecl, importc: "ma_sound_set_pan".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_pan" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_pan):
  proc ma_sound_get_pan*(pSound: ptr ma_sound_536872272): cfloat {.cdecl,
      importc: "ma_sound_get_pan".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_pan" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_pan_mode):
  proc ma_sound_set_pan_mode*(pSound: ptr ma_sound_536872272;
                              panMode: ma_pan_mode_536871660): void {.cdecl,
      importc: "ma_sound_set_pan_mode".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_pan_mode" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_pan_mode):
  proc ma_sound_get_pan_mode*(pSound: ptr ma_sound_536872272): ma_pan_mode_536871660 {.
      cdecl, importc: "ma_sound_get_pan_mode".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_pan_mode" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_pitch):
  proc ma_sound_set_pitch*(pSound: ptr ma_sound_536872272; pitch: cfloat): void {.
      cdecl, importc: "ma_sound_set_pitch".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_pitch" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_pitch):
  proc ma_sound_get_pitch*(pSound: ptr ma_sound_536872272): cfloat {.cdecl,
      importc: "ma_sound_get_pitch".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_pitch" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_spatialization_enabled):
  proc ma_sound_set_spatialization_enabled*(pSound: ptr ma_sound_536872272;
      enabled: ma_bool32_536871387): void {.cdecl,
      importc: "ma_sound_set_spatialization_enabled".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_spatialization_enabled" &
        " already exists, not redeclaring")
when not declared(ma_sound_is_spatialization_enabled):
  proc ma_sound_is_spatialization_enabled*(pSound: ptr ma_sound_536872272): ma_bool32_536871387 {.
      cdecl, importc: "ma_sound_is_spatialization_enabled".}
else:
  static :
    hint("Declaration of " & "ma_sound_is_spatialization_enabled" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_pinned_listener_index):
  proc ma_sound_set_pinned_listener_index*(pSound: ptr ma_sound_536872272;
      listenerIndex: ma_uint32_536871377): void {.cdecl,
      importc: "ma_sound_set_pinned_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_pinned_listener_index" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_pinned_listener_index):
  proc ma_sound_get_pinned_listener_index*(pSound: ptr ma_sound_536872272): ma_uint32_536871377 {.
      cdecl, importc: "ma_sound_get_pinned_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_pinned_listener_index" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_listener_index):
  proc ma_sound_get_listener_index*(pSound: ptr ma_sound_536872272): ma_uint32_536871377 {.
      cdecl, importc: "ma_sound_get_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_listener_index" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_direction_to_listener):
  proc ma_sound_get_direction_to_listener*(pSound: ptr ma_sound_536872272): ma_vec3f_536871680 {.
      cdecl, importc: "ma_sound_get_direction_to_listener".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_direction_to_listener" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_position):
  proc ma_sound_set_position*(pSound: ptr ma_sound_536872272; x: cfloat;
                              y: cfloat; z: cfloat): void {.cdecl,
      importc: "ma_sound_set_position".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_position" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_position):
  proc ma_sound_get_position*(pSound: ptr ma_sound_536872272): ma_vec3f_536871680 {.
      cdecl, importc: "ma_sound_get_position".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_position" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_direction):
  proc ma_sound_set_direction*(pSound: ptr ma_sound_536872272; x: cfloat;
                               y: cfloat; z: cfloat): void {.cdecl,
      importc: "ma_sound_set_direction".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_direction" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_direction):
  proc ma_sound_get_direction*(pSound: ptr ma_sound_536872272): ma_vec3f_536871680 {.
      cdecl, importc: "ma_sound_get_direction".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_direction" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_velocity):
  proc ma_sound_set_velocity*(pSound: ptr ma_sound_536872272; x: cfloat;
                              y: cfloat; z: cfloat): void {.cdecl,
      importc: "ma_sound_set_velocity".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_velocity" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_velocity):
  proc ma_sound_get_velocity*(pSound: ptr ma_sound_536872272): ma_vec3f_536871680 {.
      cdecl, importc: "ma_sound_get_velocity".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_velocity" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_attenuation_model):
  proc ma_sound_set_attenuation_model*(pSound: ptr ma_sound_536872272;
                                       attenuationModel: ma_attenuation_model_536871688): void {.
      cdecl, importc: "ma_sound_set_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_attenuation_model" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_attenuation_model):
  proc ma_sound_get_attenuation_model*(pSound: ptr ma_sound_536872272): ma_attenuation_model_536871688 {.
      cdecl, importc: "ma_sound_get_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_attenuation_model" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_positioning):
  proc ma_sound_set_positioning*(pSound: ptr ma_sound_536872272;
                                 positioning: ma_positioning_536871692): void {.
      cdecl, importc: "ma_sound_set_positioning".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_positioning" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_positioning):
  proc ma_sound_get_positioning*(pSound: ptr ma_sound_536872272): ma_positioning_536871692 {.
      cdecl, importc: "ma_sound_get_positioning".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_positioning" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_rolloff):
  proc ma_sound_set_rolloff*(pSound: ptr ma_sound_536872272; rolloff: cfloat): void {.
      cdecl, importc: "ma_sound_set_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_rolloff" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_rolloff):
  proc ma_sound_get_rolloff*(pSound: ptr ma_sound_536872272): cfloat {.cdecl,
      importc: "ma_sound_get_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_rolloff" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_min_gain):
  proc ma_sound_set_min_gain*(pSound: ptr ma_sound_536872272; minGain: cfloat): void {.
      cdecl, importc: "ma_sound_set_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_min_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_min_gain):
  proc ma_sound_get_min_gain*(pSound: ptr ma_sound_536872272): cfloat {.cdecl,
      importc: "ma_sound_get_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_min_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_max_gain):
  proc ma_sound_set_max_gain*(pSound: ptr ma_sound_536872272; maxGain: cfloat): void {.
      cdecl, importc: "ma_sound_set_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_max_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_max_gain):
  proc ma_sound_get_max_gain*(pSound: ptr ma_sound_536872272): cfloat {.cdecl,
      importc: "ma_sound_get_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_max_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_min_distance):
  proc ma_sound_set_min_distance*(pSound: ptr ma_sound_536872272;
                                  minDistance: cfloat): void {.cdecl,
      importc: "ma_sound_set_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_min_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_min_distance):
  proc ma_sound_get_min_distance*(pSound: ptr ma_sound_536872272): cfloat {.
      cdecl, importc: "ma_sound_get_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_min_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_max_distance):
  proc ma_sound_set_max_distance*(pSound: ptr ma_sound_536872272;
                                  maxDistance: cfloat): void {.cdecl,
      importc: "ma_sound_set_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_max_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_max_distance):
  proc ma_sound_get_max_distance*(pSound: ptr ma_sound_536872272): cfloat {.
      cdecl, importc: "ma_sound_get_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_max_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_cone):
  proc ma_sound_set_cone*(pSound: ptr ma_sound_536872272;
                          innerAngleInRadians: cfloat;
                          outerAngleInRadians: cfloat; outerGain: cfloat): void {.
      cdecl, importc: "ma_sound_set_cone".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_cone" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_cone):
  proc ma_sound_get_cone*(pSound: ptr ma_sound_536872272;
                          pInnerAngleInRadians: ptr cfloat;
                          pOuterAngleInRadians: ptr cfloat;
                          pOuterGain: ptr cfloat): void {.cdecl,
      importc: "ma_sound_get_cone".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_cone" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_doppler_factor):
  proc ma_sound_set_doppler_factor*(pSound: ptr ma_sound_536872272;
                                    dopplerFactor: cfloat): void {.cdecl,
      importc: "ma_sound_set_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_doppler_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_doppler_factor):
  proc ma_sound_get_doppler_factor*(pSound: ptr ma_sound_536872272): cfloat {.
      cdecl, importc: "ma_sound_get_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_doppler_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_directional_attenuation_factor):
  proc ma_sound_set_directional_attenuation_factor*(pSound: ptr ma_sound_536872272;
      directionalAttenuationFactor: cfloat): void {.cdecl,
      importc: "ma_sound_set_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_directional_attenuation_factor):
  proc ma_sound_get_directional_attenuation_factor*(pSound: ptr ma_sound_536872272): cfloat {.
      cdecl, importc: "ma_sound_get_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_fade_in_pcm_frames):
  proc ma_sound_set_fade_in_pcm_frames*(pSound: ptr ma_sound_536872272;
                                        volumeBeg: cfloat; volumeEnd: cfloat;
                                        fadeLengthInFrames: ma_uint64_536871381): void {.
      cdecl, importc: "ma_sound_set_fade_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_fade_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_fade_in_milliseconds):
  proc ma_sound_set_fade_in_milliseconds*(pSound: ptr ma_sound_536872272;
      volumeBeg: cfloat; volumeEnd: cfloat; fadeLengthInMilliseconds: ma_uint64_536871381): void {.
      cdecl, importc: "ma_sound_set_fade_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_fade_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_fade_start_in_pcm_frames):
  proc ma_sound_set_fade_start_in_pcm_frames*(pSound: ptr ma_sound_536872272;
      volumeBeg: cfloat; volumeEnd: cfloat; fadeLengthInFrames: ma_uint64_536871381;
      absoluteGlobalTimeInFrames: ma_uint64_536871381): void {.cdecl,
      importc: "ma_sound_set_fade_start_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_fade_start_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_fade_start_in_milliseconds):
  proc ma_sound_set_fade_start_in_milliseconds*(pSound: ptr ma_sound_536872272;
      volumeBeg: cfloat; volumeEnd: cfloat; fadeLengthInMilliseconds: ma_uint64_536871381;
      absoluteGlobalTimeInMilliseconds: ma_uint64_536871381): void {.cdecl,
      importc: "ma_sound_set_fade_start_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_fade_start_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_current_fade_volume):
  proc ma_sound_get_current_fade_volume*(pSound: ptr ma_sound_536872272): cfloat {.
      cdecl, importc: "ma_sound_get_current_fade_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_current_fade_volume" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_start_time_in_pcm_frames):
  proc ma_sound_set_start_time_in_pcm_frames*(pSound: ptr ma_sound_536872272;
      absoluteGlobalTimeInFrames: ma_uint64_536871381): void {.cdecl,
      importc: "ma_sound_set_start_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_start_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_start_time_in_milliseconds):
  proc ma_sound_set_start_time_in_milliseconds*(pSound: ptr ma_sound_536872272;
      absoluteGlobalTimeInMilliseconds: ma_uint64_536871381): void {.cdecl,
      importc: "ma_sound_set_start_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_start_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_stop_time_in_pcm_frames):
  proc ma_sound_set_stop_time_in_pcm_frames*(pSound: ptr ma_sound_536872272;
      absoluteGlobalTimeInFrames: ma_uint64_536871381): void {.cdecl,
      importc: "ma_sound_set_stop_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_stop_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_stop_time_in_milliseconds):
  proc ma_sound_set_stop_time_in_milliseconds*(pSound: ptr ma_sound_536872272;
      absoluteGlobalTimeInMilliseconds: ma_uint64_536871381): void {.cdecl,
      importc: "ma_sound_set_stop_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_stop_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_stop_time_with_fade_in_pcm_frames):
  proc ma_sound_set_stop_time_with_fade_in_pcm_frames*(pSound: ptr ma_sound_536872272;
      stopAbsoluteGlobalTimeInFrames: ma_uint64_536871381;
      fadeLengthInFrames: ma_uint64_536871381): void {.cdecl,
      importc: "ma_sound_set_stop_time_with_fade_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_stop_time_with_fade_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_stop_time_with_fade_in_milliseconds):
  proc ma_sound_set_stop_time_with_fade_in_milliseconds*(pSound: ptr ma_sound_536872272;
      stopAbsoluteGlobalTimeInMilliseconds: ma_uint64_536871381;
      fadeLengthInMilliseconds: ma_uint64_536871381): void {.cdecl,
      importc: "ma_sound_set_stop_time_with_fade_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_stop_time_with_fade_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_is_playing):
  proc ma_sound_is_playing*(pSound: ptr ma_sound_536872272): ma_bool32_536871387 {.
      cdecl, importc: "ma_sound_is_playing".}
else:
  static :
    hint("Declaration of " & "ma_sound_is_playing" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_time_in_pcm_frames):
  proc ma_sound_get_time_in_pcm_frames*(pSound: ptr ma_sound_536872272): ma_uint64_536871381 {.
      cdecl, importc: "ma_sound_get_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_time_in_milliseconds):
  proc ma_sound_get_time_in_milliseconds*(pSound: ptr ma_sound_536872272): ma_uint64_536871381 {.
      cdecl, importc: "ma_sound_get_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_looping):
  proc ma_sound_set_looping*(pSound: ptr ma_sound_536872272;
                             isLooping: ma_bool32_536871387): void {.cdecl,
      importc: "ma_sound_set_looping".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_looping" &
        " already exists, not redeclaring")
when not declared(ma_sound_is_looping):
  proc ma_sound_is_looping*(pSound: ptr ma_sound_536872272): ma_bool32_536871387 {.
      cdecl, importc: "ma_sound_is_looping".}
else:
  static :
    hint("Declaration of " & "ma_sound_is_looping" &
        " already exists, not redeclaring")
when not declared(ma_sound_at_end):
  proc ma_sound_at_end*(pSound: ptr ma_sound_536872272): ma_bool32_536871387 {.
      cdecl, importc: "ma_sound_at_end".}
else:
  static :
    hint("Declaration of " & "ma_sound_at_end" &
        " already exists, not redeclaring")
when not declared(ma_sound_seek_to_pcm_frame):
  proc ma_sound_seek_to_pcm_frame*(pSound: ptr ma_sound_536872272;
                                   frameIndex: ma_uint64_536871381): ma_result_536871433 {.
      cdecl, importc: "ma_sound_seek_to_pcm_frame".}
else:
  static :
    hint("Declaration of " & "ma_sound_seek_to_pcm_frame" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_data_format):
  proc ma_sound_get_data_format*(pSound: ptr ma_sound_536872272;
                                 pFormat: ptr ma_format_536871456;
                                 pChannels: ptr ma_uint32_536871377;
                                 pSampleRate: ptr ma_uint32_536871377;
                                 pChannelMap: ptr ma_channel_536871425;
                                 channelMapCap: csize_t): ma_result_536871433 {.
      cdecl, importc: "ma_sound_get_data_format".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_data_format" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_cursor_in_pcm_frames):
  proc ma_sound_get_cursor_in_pcm_frames*(pSound: ptr ma_sound_536872272;
      pCursor: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_sound_get_cursor_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_cursor_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_length_in_pcm_frames):
  proc ma_sound_get_length_in_pcm_frames*(pSound: ptr ma_sound_536872272;
      pLength: ptr ma_uint64_536871381): ma_result_536871433 {.cdecl,
      importc: "ma_sound_get_length_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_length_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_cursor_in_seconds):
  proc ma_sound_get_cursor_in_seconds*(pSound: ptr ma_sound_536872272;
                                       pCursor: ptr cfloat): ma_result_536871433 {.
      cdecl, importc: "ma_sound_get_cursor_in_seconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_cursor_in_seconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_get_length_in_seconds):
  proc ma_sound_get_length_in_seconds*(pSound: ptr ma_sound_536872272;
                                       pLength: ptr cfloat): ma_result_536871433 {.
      cdecl, importc: "ma_sound_get_length_in_seconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_get_length_in_seconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_set_end_callback):
  proc ma_sound_set_end_callback*(pSound: ptr ma_sound_536872272;
                                  callback: ma_sound_end_proc_536872292;
                                  pUserData: pointer): ma_result_536871433 {.
      cdecl, importc: "ma_sound_set_end_callback".}
else:
  static :
    hint("Declaration of " & "ma_sound_set_end_callback" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_init):
  proc ma_sound_group_init*(pEngine: ptr ma_engine_536872268; flags: ma_uint32_536871377;
                            pParentGroup: ptr ma_sound_group_536872304;
                            pGroup: ptr ma_sound_group_536872304): ma_result_536871433 {.
      cdecl, importc: "ma_sound_group_init".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_init" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_init_ex):
  proc ma_sound_group_init_ex*(pEngine: ptr ma_engine_536872268;
                               pConfig: ptr ma_sound_group_config_536872302;
                               pGroup: ptr ma_sound_group_536872304): ma_result_536871433 {.
      cdecl, importc: "ma_sound_group_init_ex".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_init_ex" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_uninit):
  proc ma_sound_group_uninit*(pGroup: ptr ma_sound_group_536872304): void {.
      cdecl, importc: "ma_sound_group_uninit".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_uninit" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_engine):
  proc ma_sound_group_get_engine*(pGroup: ptr ma_sound_group_536872304): ptr ma_engine_536872268 {.
      cdecl, importc: "ma_sound_group_get_engine".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_engine" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_start):
  proc ma_sound_group_start*(pGroup: ptr ma_sound_group_536872304): ma_result_536871433 {.
      cdecl, importc: "ma_sound_group_start".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_start" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_stop):
  proc ma_sound_group_stop*(pGroup: ptr ma_sound_group_536872304): ma_result_536871433 {.
      cdecl, importc: "ma_sound_group_stop".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_stop" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_volume):
  proc ma_sound_group_set_volume*(pGroup: ptr ma_sound_group_536872304;
                                  volume: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_volume" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_volume):
  proc ma_sound_group_get_volume*(pGroup: ptr ma_sound_group_536872304): cfloat {.
      cdecl, importc: "ma_sound_group_get_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_volume" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_pan):
  proc ma_sound_group_set_pan*(pGroup: ptr ma_sound_group_536872304; pan: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_pan".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_pan" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_pan):
  proc ma_sound_group_get_pan*(pGroup: ptr ma_sound_group_536872304): cfloat {.
      cdecl, importc: "ma_sound_group_get_pan".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_pan" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_pan_mode):
  proc ma_sound_group_set_pan_mode*(pGroup: ptr ma_sound_group_536872304;
                                    panMode: ma_pan_mode_536871660): void {.
      cdecl, importc: "ma_sound_group_set_pan_mode".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_pan_mode" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_pan_mode):
  proc ma_sound_group_get_pan_mode*(pGroup: ptr ma_sound_group_536872304): ma_pan_mode_536871660 {.
      cdecl, importc: "ma_sound_group_get_pan_mode".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_pan_mode" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_pitch):
  proc ma_sound_group_set_pitch*(pGroup: ptr ma_sound_group_536872304;
                                 pitch: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_pitch".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_pitch" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_pitch):
  proc ma_sound_group_get_pitch*(pGroup: ptr ma_sound_group_536872304): cfloat {.
      cdecl, importc: "ma_sound_group_get_pitch".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_pitch" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_spatialization_enabled):
  proc ma_sound_group_set_spatialization_enabled*(pGroup: ptr ma_sound_group_536872304;
      enabled: ma_bool32_536871387): void {.cdecl,
      importc: "ma_sound_group_set_spatialization_enabled".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_spatialization_enabled" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_is_spatialization_enabled):
  proc ma_sound_group_is_spatialization_enabled*(pGroup: ptr ma_sound_group_536872304): ma_bool32_536871387 {.
      cdecl, importc: "ma_sound_group_is_spatialization_enabled".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_is_spatialization_enabled" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_pinned_listener_index):
  proc ma_sound_group_set_pinned_listener_index*(pGroup: ptr ma_sound_group_536872304;
      listenerIndex: ma_uint32_536871377): void {.cdecl,
      importc: "ma_sound_group_set_pinned_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_pinned_listener_index" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_pinned_listener_index):
  proc ma_sound_group_get_pinned_listener_index*(pGroup: ptr ma_sound_group_536872304): ma_uint32_536871377 {.
      cdecl, importc: "ma_sound_group_get_pinned_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_pinned_listener_index" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_listener_index):
  proc ma_sound_group_get_listener_index*(pGroup: ptr ma_sound_group_536872304): ma_uint32_536871377 {.
      cdecl, importc: "ma_sound_group_get_listener_index".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_listener_index" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_direction_to_listener):
  proc ma_sound_group_get_direction_to_listener*(pGroup: ptr ma_sound_group_536872304): ma_vec3f_536871680 {.
      cdecl, importc: "ma_sound_group_get_direction_to_listener".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_direction_to_listener" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_position):
  proc ma_sound_group_set_position*(pGroup: ptr ma_sound_group_536872304;
                                    x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_position".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_position" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_position):
  proc ma_sound_group_get_position*(pGroup: ptr ma_sound_group_536872304): ma_vec3f_536871680 {.
      cdecl, importc: "ma_sound_group_get_position".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_position" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_direction):
  proc ma_sound_group_set_direction*(pGroup: ptr ma_sound_group_536872304;
                                     x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_direction".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_direction" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_direction):
  proc ma_sound_group_get_direction*(pGroup: ptr ma_sound_group_536872304): ma_vec3f_536871680 {.
      cdecl, importc: "ma_sound_group_get_direction".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_direction" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_velocity):
  proc ma_sound_group_set_velocity*(pGroup: ptr ma_sound_group_536872304;
                                    x: cfloat; y: cfloat; z: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_velocity".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_velocity" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_velocity):
  proc ma_sound_group_get_velocity*(pGroup: ptr ma_sound_group_536872304): ma_vec3f_536871680 {.
      cdecl, importc: "ma_sound_group_get_velocity".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_velocity" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_attenuation_model):
  proc ma_sound_group_set_attenuation_model*(pGroup: ptr ma_sound_group_536872304;
      attenuationModel: ma_attenuation_model_536871688): void {.cdecl,
      importc: "ma_sound_group_set_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_attenuation_model" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_attenuation_model):
  proc ma_sound_group_get_attenuation_model*(pGroup: ptr ma_sound_group_536872304): ma_attenuation_model_536871688 {.
      cdecl, importc: "ma_sound_group_get_attenuation_model".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_attenuation_model" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_positioning):
  proc ma_sound_group_set_positioning*(pGroup: ptr ma_sound_group_536872304;
                                       positioning: ma_positioning_536871692): void {.
      cdecl, importc: "ma_sound_group_set_positioning".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_positioning" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_positioning):
  proc ma_sound_group_get_positioning*(pGroup: ptr ma_sound_group_536872304): ma_positioning_536871692 {.
      cdecl, importc: "ma_sound_group_get_positioning".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_positioning" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_rolloff):
  proc ma_sound_group_set_rolloff*(pGroup: ptr ma_sound_group_536872304;
                                   rolloff: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_rolloff" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_rolloff):
  proc ma_sound_group_get_rolloff*(pGroup: ptr ma_sound_group_536872304): cfloat {.
      cdecl, importc: "ma_sound_group_get_rolloff".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_rolloff" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_min_gain):
  proc ma_sound_group_set_min_gain*(pGroup: ptr ma_sound_group_536872304;
                                    minGain: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_min_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_min_gain):
  proc ma_sound_group_get_min_gain*(pGroup: ptr ma_sound_group_536872304): cfloat {.
      cdecl, importc: "ma_sound_group_get_min_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_min_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_max_gain):
  proc ma_sound_group_set_max_gain*(pGroup: ptr ma_sound_group_536872304;
                                    maxGain: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_max_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_max_gain):
  proc ma_sound_group_get_max_gain*(pGroup: ptr ma_sound_group_536872304): cfloat {.
      cdecl, importc: "ma_sound_group_get_max_gain".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_max_gain" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_min_distance):
  proc ma_sound_group_set_min_distance*(pGroup: ptr ma_sound_group_536872304;
                                        minDistance: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_min_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_min_distance):
  proc ma_sound_group_get_min_distance*(pGroup: ptr ma_sound_group_536872304): cfloat {.
      cdecl, importc: "ma_sound_group_get_min_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_min_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_max_distance):
  proc ma_sound_group_set_max_distance*(pGroup: ptr ma_sound_group_536872304;
                                        maxDistance: cfloat): void {.cdecl,
      importc: "ma_sound_group_set_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_max_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_max_distance):
  proc ma_sound_group_get_max_distance*(pGroup: ptr ma_sound_group_536872304): cfloat {.
      cdecl, importc: "ma_sound_group_get_max_distance".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_max_distance" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_cone):
  proc ma_sound_group_set_cone*(pGroup: ptr ma_sound_group_536872304;
                                innerAngleInRadians: cfloat;
                                outerAngleInRadians: cfloat; outerGain: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_cone".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_cone" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_cone):
  proc ma_sound_group_get_cone*(pGroup: ptr ma_sound_group_536872304;
                                pInnerAngleInRadians: ptr cfloat;
                                pOuterAngleInRadians: ptr cfloat;
                                pOuterGain: ptr cfloat): void {.cdecl,
      importc: "ma_sound_group_get_cone".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_cone" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_doppler_factor):
  proc ma_sound_group_set_doppler_factor*(pGroup: ptr ma_sound_group_536872304;
      dopplerFactor: cfloat): void {.cdecl, importc: "ma_sound_group_set_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_doppler_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_doppler_factor):
  proc ma_sound_group_get_doppler_factor*(pGroup: ptr ma_sound_group_536872304): cfloat {.
      cdecl, importc: "ma_sound_group_get_doppler_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_doppler_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_directional_attenuation_factor):
  proc ma_sound_group_set_directional_attenuation_factor*(
      pGroup: ptr ma_sound_group_536872304; directionalAttenuationFactor: cfloat): void {.
      cdecl, importc: "ma_sound_group_set_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_directional_attenuation_factor):
  proc ma_sound_group_get_directional_attenuation_factor*(
      pGroup: ptr ma_sound_group_536872304): cfloat {.cdecl,
      importc: "ma_sound_group_get_directional_attenuation_factor".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_directional_attenuation_factor" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_fade_in_pcm_frames):
  proc ma_sound_group_set_fade_in_pcm_frames*(pGroup: ptr ma_sound_group_536872304;
      volumeBeg: cfloat; volumeEnd: cfloat; fadeLengthInFrames: ma_uint64_536871381): void {.
      cdecl, importc: "ma_sound_group_set_fade_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_fade_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_fade_in_milliseconds):
  proc ma_sound_group_set_fade_in_milliseconds*(pGroup: ptr ma_sound_group_536872304;
      volumeBeg: cfloat; volumeEnd: cfloat; fadeLengthInMilliseconds: ma_uint64_536871381): void {.
      cdecl, importc: "ma_sound_group_set_fade_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_fade_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_current_fade_volume):
  proc ma_sound_group_get_current_fade_volume*(pGroup: ptr ma_sound_group_536872304): cfloat {.
      cdecl, importc: "ma_sound_group_get_current_fade_volume".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_current_fade_volume" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_start_time_in_pcm_frames):
  proc ma_sound_group_set_start_time_in_pcm_frames*(pGroup: ptr ma_sound_group_536872304;
      absoluteGlobalTimeInFrames: ma_uint64_536871381): void {.cdecl,
      importc: "ma_sound_group_set_start_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_start_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_start_time_in_milliseconds):
  proc ma_sound_group_set_start_time_in_milliseconds*(
      pGroup: ptr ma_sound_group_536872304;
      absoluteGlobalTimeInMilliseconds: ma_uint64_536871381): void {.cdecl,
      importc: "ma_sound_group_set_start_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_start_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_stop_time_in_pcm_frames):
  proc ma_sound_group_set_stop_time_in_pcm_frames*(pGroup: ptr ma_sound_group_536872304;
      absoluteGlobalTimeInFrames: ma_uint64_536871381): void {.cdecl,
      importc: "ma_sound_group_set_stop_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_stop_time_in_pcm_frames" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_set_stop_time_in_milliseconds):
  proc ma_sound_group_set_stop_time_in_milliseconds*(pGroup: ptr ma_sound_group_536872304;
      absoluteGlobalTimeInMilliseconds: ma_uint64_536871381): void {.cdecl,
      importc: "ma_sound_group_set_stop_time_in_milliseconds".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_set_stop_time_in_milliseconds" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_is_playing):
  proc ma_sound_group_is_playing*(pGroup: ptr ma_sound_group_536872304): ma_bool32_536871387 {.
      cdecl, importc: "ma_sound_group_is_playing".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_is_playing" &
        " already exists, not redeclaring")
when not declared(ma_sound_group_get_time_in_pcm_frames):
  proc ma_sound_group_get_time_in_pcm_frames*(pGroup: ptr ma_sound_group_536872304): ma_uint64_536871381 {.
      cdecl, importc: "ma_sound_group_get_time_in_pcm_frames".}
else:
  static :
    hint("Declaration of " & "ma_sound_group_get_time_in_pcm_frames" &
        " already exists, not redeclaring")