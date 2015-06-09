module: calvino-sdl2
synopsis: bindings for the SDL2 library
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define constant <uint32-t> = <C-unsigned-int>;

define constant <Uint32> = <uint32-t>;

define inline C-function SDL-Init
  input parameter flags_ :: <Uint32>;
  result res :: <C-signed-int>;
  c-name: "SDL_Init";
end;

define inline C-function SDL-InitSubSystem
  input parameter flags_ :: <Uint32>;
  result res :: <C-signed-int>;
  c-name: "SDL_InitSubSystem";
end;

define inline C-function SDL-QuitSubSystem
  input parameter flags_ :: <Uint32>;
  c-name: "SDL_QuitSubSystem";
end;

define inline C-function SDL-WasInit
  input parameter flags_ :: <Uint32>;
  result res :: <Uint32>;
  c-name: "SDL_WasInit";
end;

define inline C-function SDL-Quit
  c-name: "SDL_Quit";
end;

define constant $SDL-INIT-TIMER = 1;

define constant $SDL-INIT-AUDIO = 16;

define constant $SDL-INIT-VIDEO = 32;

define constant $SDL-INIT-JOYSTICK = 512;

define constant $SDL-INIT-HAPTIC = 4096;

define constant $SDL-INIT-GAMECONTROLLER = 8192;

define constant $SDL-INIT-EVENTS = 16384;

define constant $SDL-INIT-NOPARACHUTE = 1048576;

define constant $SDL-INIT-EVERYTHING = 29233;

define constant <SDL-assert-state> = <C-int>;
define constant $SDL-ASSERTION-RETRY = 0;
define constant $SDL-ASSERTION-BREAK = 1;
define constant $SDL-ASSERTION-ABORT = 2;
define constant $SDL-ASSERTION-IGNORE = 3;
define constant $SDL-ASSERTION-ALWAYS-IGNORE = 4;

define C-pointer-type <c-string> => <C-signed-char>;
define C-pointer-type <SDL-assert-data*> => <SDL-assert-data>;
define C-struct <SDL-assert-data>
  sealed slot SDL-assert-data$always-ignore :: <C-signed-int>;
  sealed slot SDL-assert-data$trigger-count :: <C-unsigned-int>;
  sealed slot SDL-assert-data$condition :: <c-string>;
  sealed slot SDL-assert-data$filename :: <c-string>;
  sealed slot SDL-assert-data$linenum :: <C-signed-int>;
  sealed slot SDL-assert-data$function :: <c-string>;
  sealed slot SDL-assert-data$next :: <SDL-assert-data*>;
end;

define C-pointer-type <SDL-assert-data*> => <SDL-assert-data>;
define inline C-function SDL-ReportAssertion
  input parameter arg1_ :: <SDL-assert-data*>;
  input parameter arg2_ :: <c-string>;
  input parameter arg3_ :: <c-string>;
  input parameter arg4_ :: <C-signed-int>;
  result res :: <SDL-assert-state>;
  c-name: "SDL_ReportAssertion";
end;

define constant <SDL-AssertionHandler> = <C-function-pointer>;
define inline C-function SDL-SetAssertionHandler
  input parameter handler_ :: <SDL-AssertionHandler>;
  input parameter userdata_ :: <C-void*>;
  c-name: "SDL_SetAssertionHandler";
end;

define inline C-function SDL-GetDefaultAssertionHandler
  result res :: <SDL-AssertionHandler>;
  c-name: "SDL_GetDefaultAssertionHandler";
end;

define C-pointer-type <statically-typed-pointer*> => <C-void*>;
define inline C-function SDL-GetAssertionHandler
  input parameter puserdata_ :: <statically-typed-pointer*>;
  result res :: <SDL-AssertionHandler>;
  c-name: "SDL_GetAssertionHandler";
end;

define inline C-function SDL-GetAssertionReport
  result res :: <SDL-assert-data*>;
  c-name: "SDL_GetAssertionReport";
end;

define inline C-function SDL-ResetAssertionReport
  c-name: "SDL_ResetAssertionReport";
end;

define constant $SDL-ASSERT-LEVEL = 2;

define constant $SDL-NULL-WHILE-LOOP-CONDITION = 0;

define constant <SDL-SpinLock> = <C-signed-int>;

define constant <SDL-bool> = <C-int>;
define constant $SDL-FALSE = 0;
define constant $SDL-TRUE = 1;

define C-pointer-type <SDL-SpinLock*> => <SDL-SpinLock>;
define inline C-function SDL-AtomicTryLock
  input parameter lock_ :: <SDL-SpinLock*>;
  result res :: <SDL-bool>;
  c-name: "SDL_AtomicTryLock";
end;

define inline C-function SDL-AtomicLock
  input parameter lock_ :: <SDL-SpinLock*>;
  c-name: "SDL_AtomicLock";
end;

define inline C-function SDL-AtomicUnlock
  input parameter lock_ :: <SDL-SpinLock*>;
  c-name: "SDL_AtomicUnlock";
end;

define C-struct <SDL-atomic-t>
  sealed slot SDL-atomic-t$value :: <C-signed-int>;
end;

define C-pointer-type <SDL-atomic-t*> => <SDL-atomic-t>;
define inline C-function SDL-AtomicCAS
  input parameter a_ :: <SDL-atomic-t*>;
  input parameter oldval_ :: <C-signed-int>;
  input parameter newval_ :: <C-signed-int>;
  result res :: <SDL-bool>;
  c-name: "SDL_AtomicCAS";
end;

define inline C-function SDL-AtomicSet
  input parameter a_ :: <SDL-atomic-t*>;
  input parameter v_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_AtomicSet";
end;

define inline C-function SDL-AtomicGet
  input parameter a_ :: <SDL-atomic-t*>;
  result res :: <C-signed-int>;
  c-name: "SDL_AtomicGet";
end;

define inline C-function SDL-AtomicAdd
  input parameter a_ :: <SDL-atomic-t*>;
  input parameter v_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_AtomicAdd";
end;

define inline C-function SDL-AtomicCASPtr
  input parameter a_ :: <statically-typed-pointer*>;
  input parameter oldval_ :: <C-void*>;
  input parameter newval_ :: <C-void*>;
  result res :: <SDL-bool>;
  c-name: "SDL_AtomicCASPtr";
end;

define inline C-function SDL-AtomicSetPtr
  input parameter a_ :: <statically-typed-pointer*>;
  input parameter v_ :: <C-void*>;
  result res :: <C-void*>;
  c-name: "SDL_AtomicSetPtr";
end;

define inline C-function SDL-AtomicGetPtr
  input parameter a_ :: <statically-typed-pointer*>;
  result res :: <C-void*>;
  c-name: "SDL_AtomicGetPtr";
end;

define constant <uint16-t> = <C-unsigned-short>;

define constant <Uint16> = <uint16-t>;

define constant <SDL-AudioFormat> = <Uint16>;

define constant <uint8-t> = <C-unsigned-char>;

define constant <Uint8> = <uint8-t>;

define C-pointer-type <Uint8*> => <Uint8>;
define constant <SDL-AudioCallback> = <C-function-pointer>;
define C-struct <SDL-AudioSpec>
  sealed slot SDL-AudioSpec$freq :: <C-signed-int>;
  sealed slot SDL-AudioSpec$format :: <C-unsigned-short>;
  sealed slot SDL-AudioSpec$channels :: <C-unsigned-char>;
  sealed slot SDL-AudioSpec$silence :: <C-unsigned-char>;
  sealed slot SDL-AudioSpec$samples :: <C-unsigned-short>;
  sealed slot SDL-AudioSpec$padding :: <C-unsigned-short>;
  sealed slot SDL-AudioSpec$size :: <C-unsigned-int>;
  sealed slot SDL-AudioSpec$callback :: <SDL-AudioCallback>;
  sealed slot SDL-AudioSpec$userdata :: <C-void*>;
end;

define C-pointer-type <SDL-AudioCVT*> => <SDL-AudioCVT>;
define constant <SDL-AudioFilter> = <C-function-pointer>;
define C-pointer-type <SDL-AudioFilter*> => <SDL-AudioFilter>;
define constant <SDL-AudioFilter<@10>> = <SDL-AudioFilter*>;
define C-struct <SDL-AudioCVT>
  sealed slot SDL-AudioCVT$needed :: <C-signed-int>;
  sealed slot SDL-AudioCVT$src-format :: <C-unsigned-short>;
  sealed slot SDL-AudioCVT$dst-format :: <C-unsigned-short>;
  sealed slot SDL-AudioCVT$rate-incr :: <C-double>;
  sealed slot SDL-AudioCVT$buf :: <Uint8*>;
  sealed slot SDL-AudioCVT$len :: <C-signed-int>;
  sealed slot SDL-AudioCVT$len-cvt :: <C-signed-int>;
  sealed slot SDL-AudioCVT$len-mult :: <C-signed-int>;
  sealed slot SDL-AudioCVT$len-ratio :: <C-double>;
  sealed array slot SDL-AudioCVT$filters :: <SDL-AudioFilter>, length: 10;
  sealed slot SDL-AudioCVT$filter-index :: <C-signed-int>;
end;

define inline C-function SDL-GetNumAudioDrivers
  result res :: <C-signed-int>;
  c-name: "SDL_GetNumAudioDrivers";
end;

define inline C-function SDL-GetAudioDriver
  input parameter index_ :: <C-signed-int>;
  result res :: <c-string>;
  c-name: "SDL_GetAudioDriver";
end;

define inline C-function SDL-AudioInit
  input parameter driver-name_ :: <c-string>;
  result res :: <C-signed-int>;
  c-name: "SDL_AudioInit";
end;

define inline C-function SDL-AudioQuit
  c-name: "SDL_AudioQuit";
end;

define inline C-function SDL-GetCurrentAudioDriver
  result res :: <c-string>;
  c-name: "SDL_GetCurrentAudioDriver";
end;

define C-pointer-type <SDL-AudioSpec*> => <SDL-AudioSpec>;
define inline C-function SDL-OpenAudio
  input parameter desired_ :: <SDL-AudioSpec*>;
  input parameter obtained_ :: <SDL-AudioSpec*>;
  result res :: <C-signed-int>;
  c-name: "SDL_OpenAudio";
end;

define constant <SDL-AudioDeviceID> = <Uint32>;

define inline C-function SDL-GetNumAudioDevices
  input parameter iscapture_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetNumAudioDevices";
end;

define inline C-function SDL-GetAudioDeviceName
  input parameter index_ :: <C-signed-int>;
  input parameter iscapture_ :: <C-signed-int>;
  result res :: <c-string>;
  c-name: "SDL_GetAudioDeviceName";
end;

define inline C-function SDL-OpenAudioDevice
  input parameter device_ :: <c-string>;
  input parameter iscapture_ :: <C-signed-int>;
  input parameter desired_ :: <SDL-AudioSpec*>;
  input parameter obtained_ :: <SDL-AudioSpec*>;
  input parameter allowed-changes_ :: <C-signed-int>;
  result res :: <SDL-AudioDeviceID>;
  c-name: "SDL_OpenAudioDevice";
end;

define constant <SDL-AudioStatus> = <C-int>;
define constant $SDL-AUDIO-STOPPED = 0;
define constant $SDL-AUDIO-PLAYING = 1;
define constant $SDL-AUDIO-PAUSED = 2;

define inline C-function SDL-GetAudioStatus
  result res :: <SDL-AudioStatus>;
  c-name: "SDL_GetAudioStatus";
end;

define inline C-function SDL-GetAudioDeviceStatus
  input parameter dev_ :: <SDL-AudioDeviceID>;
  result res :: <SDL-AudioStatus>;
  c-name: "SDL_GetAudioDeviceStatus";
end;

define inline C-function SDL-PauseAudio
  input parameter pause-on_ :: <C-signed-int>;
  c-name: "SDL_PauseAudio";
end;

define inline C-function SDL-PauseAudioDevice
  input parameter dev_ :: <SDL-AudioDeviceID>;
  input parameter pause-on_ :: <C-signed-int>;
  c-name: "SDL_PauseAudioDevice";
end;

define constant <int64-t> = <C-signed-long>;

define constant <Sint64> = <int64-t>;

define C-pointer-type <SDL-RWops*> => <SDL-RWops>;
define constant <size> = <C-function-pointer>;
define constant <seek> = <C-function-pointer>;
define constant <__darwin-size-t> = <C-unsigned-long>;

define constant <size-t> = <__darwin-size-t>;

define constant <read> = <C-function-pointer>;
define constant <write> = <C-function-pointer>;
define constant <close> = <C-function-pointer>;
define C-pointer-type <unsigned-char*> => <C-unsigned-char>;
define C-struct <__sbuf>
  sealed slot __sbuf$_base :: <unsigned-char*>;
  sealed slot __sbuf$_size :: <C-signed-int>;
end;

define constant <_close> = <C-function-pointer>;
define constant <_read> = <C-function-pointer>;
define constant <__int64-t> = <C-signed-long>;

define constant <__darwin-off-t> = <__int64-t>;

define constant <fpos-t> = <__darwin-off-t>;

define constant <_seek> = <C-function-pointer>;
define constant <_write> = <C-function-pointer>;
define C-struct <__sFILEX>
end;

define C-pointer-type <__sFILEX*> => <__sFILEX>;
define constant <unsigned-char<@3>> = <unsigned-char*>;
define constant <unsigned-char<@1>> = <unsigned-char*>;
define C-struct <__sFILE>
  sealed slot __sFILE$_p :: <unsigned-char*>;
  sealed slot __sFILE$_r :: <C-signed-int>;
  sealed slot __sFILE$_w :: <C-signed-int>;
  sealed slot __sFILE$_flags :: <C-signed-short>;
  sealed slot __sFILE$_file :: <C-signed-short>;
  sealed slot __sFILE$_bf :: <__sbuf>;
  sealed slot __sFILE$_lbfsize :: <C-signed-int>;
  sealed slot __sFILE$_cookie :: <C-void*>;
  sealed slot __sFILE$_close :: <_close>;
  sealed slot __sFILE$_read :: <_read>;
  sealed slot __sFILE$_seek :: <_seek>;
  sealed slot __sFILE$_write :: <_write>;
  sealed slot __sFILE$_ub :: <__sbuf>;
  sealed slot __sFILE$_extra :: <__sFILEX*>;
  sealed slot __sFILE$_ur :: <C-signed-int>;
  sealed array slot __sFILE$_ubuf :: <C-unsigned-char>, length: 3;
  sealed array slot __sFILE$_nbuf :: <C-unsigned-char>, length: 1;
  sealed slot __sFILE$_lb :: <__sbuf>;
  sealed slot __sFILE$_blksize :: <C-signed-int>;
  sealed slot __sFILE$_offset :: <C-signed-long>;
end;

define constant <FILE> = <__sFILE>;

define C-pointer-type <FILE*> => <FILE>;
define C-struct <anonymous-53>
  sealed slot anonymous-53$autoclose :: <SDL-bool>;
  sealed slot anonymous-53$fp :: <FILE*>;
end;

define C-struct <anonymous-54>
  sealed slot anonymous-54$base :: <Uint8*>;
  sealed slot anonymous-54$here :: <Uint8*>;
  sealed slot anonymous-54$stop :: <Uint8*>;
end;

define C-struct <anonymous-55>
  sealed slot anonymous-55$data1 :: <C-void*>;
  sealed slot anonymous-55$data2 :: <C-void*>;
end;

define C-union <anonymous-56>
  slot anonymous-56$stdio :: <anonymous-53>;
  slot anonymous-56$mem :: <anonymous-54>;
  slot anonymous-56$unknown :: <anonymous-55>;
end;

define C-struct <SDL-RWops>
  sealed slot SDL-RWops$size :: <size>;
  sealed slot SDL-RWops$seek :: <seek>;
  sealed slot SDL-RWops$read :: <read>;
  sealed slot SDL-RWops$write :: <write>;
  sealed slot SDL-RWops$close :: <close>;
  sealed slot SDL-RWops$type :: <C-unsigned-int>;
  sealed slot SDL-RWops$hidden :: <anonymous-56>;
end;

define C-pointer-type <SDL-RWops*> => <SDL-RWops>;
define C-pointer-type <Uint8**> => <Uint8*>;
define C-pointer-type <Uint32*> => <Uint32>;
define inline C-function SDL-LoadWAV-RW
  input parameter src_ :: <SDL-RWops*>;
  input parameter freesrc_ :: <C-signed-int>;
  input parameter spec_ :: <SDL-AudioSpec*>;
  input parameter audio-buf_ :: <Uint8**>;
  input parameter audio-len_ :: <Uint32*>;
  result res :: <SDL-AudioSpec*>;
  c-name: "SDL_LoadWAV_RW";
end;

define inline C-function SDL-FreeWAV
  input parameter audio-buf_ :: <Uint8*>;
  c-name: "SDL_FreeWAV";
end;

define C-pointer-type <SDL-AudioCVT*> => <SDL-AudioCVT>;
define inline C-function SDL-BuildAudioCVT
  input parameter cvt_ :: <SDL-AudioCVT*>;
  input parameter src-format_ :: <SDL-AudioFormat>;
  input parameter src-channels_ :: <Uint8>;
  input parameter src-rate_ :: <C-signed-int>;
  input parameter dst-format_ :: <SDL-AudioFormat>;
  input parameter dst-channels_ :: <Uint8>;
  input parameter dst-rate_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_BuildAudioCVT";
end;

define inline C-function SDL-ConvertAudio
  input parameter cvt_ :: <SDL-AudioCVT*>;
  result res :: <C-signed-int>;
  c-name: "SDL_ConvertAudio";
end;

define inline C-function SDL-MixAudio
  input parameter dst_ :: <Uint8*>;
  input parameter src_ :: <Uint8*>;
  input parameter len_ :: <Uint32>;
  input parameter volume_ :: <C-signed-int>;
  c-name: "SDL_MixAudio";
end;

define inline C-function SDL-MixAudioFormat
  input parameter dst_ :: <Uint8*>;
  input parameter src_ :: <Uint8*>;
  input parameter format_ :: <SDL-AudioFormat>;
  input parameter len_ :: <Uint32>;
  input parameter volume_ :: <C-signed-int>;
  c-name: "SDL_MixAudioFormat";
end;

define inline C-function SDL-LockAudio
  c-name: "SDL_LockAudio";
end;

define inline C-function SDL-LockAudioDevice
  input parameter dev_ :: <SDL-AudioDeviceID>;
  c-name: "SDL_LockAudioDevice";
end;

define inline C-function SDL-UnlockAudio
  c-name: "SDL_UnlockAudio";
end;

define inline C-function SDL-UnlockAudioDevice
  input parameter dev_ :: <SDL-AudioDeviceID>;
  c-name: "SDL_UnlockAudioDevice";
end;

define inline C-function SDL-CloseAudio
  c-name: "SDL_CloseAudio";
end;

define inline C-function SDL-CloseAudioDevice
  input parameter dev_ :: <SDL-AudioDeviceID>;
  c-name: "SDL_CloseAudioDevice";
end;

define constant $SDL-AUDIO-MASK-BITSIZE = 255;

define constant $SDL-AUDIO-MASK-DATATYPE = 256;

define constant $SDL-AUDIO-MASK-ENDIAN = 4096;

define constant $SDL-AUDIO-MASK-SIGNED = 32768;

define constant $AUDIO-U8 = 8;

define constant $AUDIO-S8 = 32776;

define constant $AUDIO-U16LSB = 16;

define constant $AUDIO-S16LSB = 32784;

define constant $AUDIO-U16MSB = 4112;

define constant $AUDIO-S16MSB = 36880;

define constant $AUDIO-U16 = 16;

define constant $AUDIO-S16 = 32784;

define constant $AUDIO-S32LSB = 32800;

define constant $AUDIO-S32MSB = 36896;

define constant $AUDIO-S32 = 32800;

define constant $AUDIO-F32LSB = 33056;

define constant $AUDIO-F32MSB = 37152;

define constant $AUDIO-F32 = 33056;

define constant $AUDIO-U16SYS = 16;

define constant $AUDIO-S16SYS = 32784;

define constant $AUDIO-S32SYS = 32800;

define constant $AUDIO-F32SYS = 33056;

define constant $SDL-AUDIO-ALLOW-FREQUENCY-CHANGE = 1;

define constant $SDL-AUDIO-ALLOW-FORMAT-CHANGE = 2;

define constant $SDL-AUDIO-ALLOW-CHANNELS-CHANGE = 4;

define constant $SDL-AUDIO-ALLOW-ANY-CHANGE = 7;

define constant $SDL-MIX-MAXVOLUME = 128;

define inline C-function SDL-MostSignificantBitIndex32
  input parameter x_ :: <Uint32>;
  result res :: <C-signed-int>;
  c-name: "SDL_MostSignificantBitIndex32";
end;

define constant <SDL-BlendMode> = <C-int>;
define constant $SDL-BLENDMODE-NONE = 0;
define constant $SDL-BLENDMODE-BLEND = 1;
define constant $SDL-BLENDMODE-ADD = 2;
define constant $SDL-BLENDMODE-MOD = 4;

define inline C-function SDL-SetClipboardText
  input parameter text_ :: <c-string>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetClipboardText";
end;

define inline C-function SDL-GetClipboardText
  result res :: <c-string>;
  c-name: "SDL_GetClipboardText";
end;

define inline C-function SDL-HasClipboardText
  result res :: <SDL-bool>;
  c-name: "SDL_HasClipboardText";
end;

define constant $SIZEOF-VOIDP = 4;

define constant $HAVE-GCC-ATOMICS = 1;

define constant $HAVE-LIBC = 1;

define constant $HAVE-ALLOCA-H = 1;

define constant $HAVE-SYS-TYPES-H = 1;

define constant $HAVE-STDIO-H = 1;

define constant $STDC-HEADERS = 1;

define constant $HAVE-STDLIB-H = 1;

define constant $HAVE-STDARG-H = 1;

define constant $HAVE-MEMORY-H = 1;

define constant $HAVE-STRING-H = 1;

define constant $HAVE-STRINGS-H = 1;

define constant $HAVE-INTTYPES-H = 1;

define constant $HAVE-STDINT-H = 1;

define constant $HAVE-CTYPE-H = 1;

define constant $HAVE-MATH-H = 1;

define constant $HAVE-ICONV-H = 1;

define constant $HAVE-SIGNAL-H = 1;

define constant $HAVE-MALLOC = 1;

define constant $HAVE-CALLOC = 1;

define constant $HAVE-REALLOC = 1;

define constant $HAVE-FREE = 1;

define constant $HAVE-ALLOCA = 1;

define constant $HAVE-GETENV = 1;

define constant $HAVE-SETENV = 1;

define constant $HAVE-PUTENV = 1;

define constant $HAVE-UNSETENV = 1;

define constant $HAVE-QSORT = 1;

define constant $HAVE-ABS = 1;

define constant $HAVE-BCOPY = 1;

define constant $HAVE-MEMSET = 1;

define constant $HAVE-MEMCPY = 1;

define constant $HAVE-MEMMOVE = 1;

define constant $HAVE-MEMCMP = 1;

define constant $HAVE-STRLEN = 1;

define constant $HAVE-STRLCPY = 1;

define constant $HAVE-STRLCAT = 1;

define constant $HAVE-STRDUP = 1;

define constant $HAVE-STRCHR = 1;

define constant $HAVE-STRRCHR = 1;

define constant $HAVE-STRSTR = 1;

define constant $HAVE-STRTOL = 1;

define constant $HAVE-STRTOUL = 1;

define constant $HAVE-STRTOLL = 1;

define constant $HAVE-STRTOULL = 1;

define constant $HAVE-STRTOD = 1;

define constant $HAVE-ATOI = 1;

define constant $HAVE-ATOF = 1;

define constant $HAVE-STRCMP = 1;

define constant $HAVE-STRNCMP = 1;

define constant $HAVE-STRCASECMP = 1;

define constant $HAVE-STRNCASECMP = 1;

define constant $HAVE-VSSCANF = 1;

define constant $HAVE-VSNPRINTF = 1;

define constant $HAVE-ATAN = 1;

define constant $HAVE-ATAN2 = 1;

define constant $HAVE-ACOS = 1;

define constant $HAVE-ASIN = 1;

define constant $HAVE-CEIL = 1;

define constant $HAVE-COPYSIGN = 1;

define constant $HAVE-COS = 1;

define constant $HAVE-COSF = 1;

define constant $HAVE-FABS = 1;

define constant $HAVE-FLOOR = 1;

define constant $HAVE-LOG = 1;

define constant $HAVE-POW = 1;

define constant $HAVE-SCALBN = 1;

define constant $HAVE-SIN = 1;

define constant $HAVE-SINF = 1;

define constant $HAVE-SQRT = 1;

define constant $HAVE-FSEEKO = 1;

define constant $HAVE-SIGACTION = 1;

define constant $HAVE-SA-SIGACTION = 1;

define constant $HAVE-SETJMP = 1;

define constant $HAVE-NANOSLEEP = 1;

define constant $HAVE-SYSCONF = 1;

define constant $HAVE-SYSCTLBYNAME = 1;

define constant $HAVE-MPROTECT = 1;

define constant $HAVE-ICONV = 1;

define constant $HAVE-PTHREAD-SETNAME-NP = 1;

define constant $SDL-AUDIO-DRIVER-COREAUDIO = 1;

define constant $SDL-AUDIO-DRIVER-DISK = 1;

define constant $SDL-AUDIO-DRIVER-DUMMY = 1;

define constant $SDL-JOYSTICK-IOKIT = 1;

define constant $SDL-HAPTIC-IOKIT = 1;

define constant $SDL-LOADSO-DLOPEN = 1;

define constant $SDL-THREAD-PTHREAD = 1;

define constant $SDL-THREAD-PTHREAD-RECURSIVE-MUTEX = 1;

define constant $SDL-TIMER-UNIX = 1;

define constant $SDL-VIDEO-DRIVER-COCOA = 1;

define constant $SDL-VIDEO-DRIVER-DUMMY = 1;

define constant $SDL-VIDEO-RENDER-OGL = 1;

define constant $SDL-VIDEO-OPENGL = 1;

define constant $SDL-VIDEO-OPENGL-CGL = 1;

define constant $SDL-POWER-MACOSX = 1;

define constant $SDL-FILESYSTEM-COCOA = 1;

define constant $SDL-ASSEMBLY-ROUTINES = 1;

define inline C-function SDL-GetCPUCount
  result res :: <C-signed-int>;
  c-name: "SDL_GetCPUCount";
end;

define inline C-function SDL-GetCPUCacheLineSize
  result res :: <C-signed-int>;
  c-name: "SDL_GetCPUCacheLineSize";
end;

define inline C-function SDL-HasRDTSC
  result res :: <SDL-bool>;
  c-name: "SDL_HasRDTSC";
end;

define inline C-function SDL-HasAltiVec
  result res :: <SDL-bool>;
  c-name: "SDL_HasAltiVec";
end;

define inline C-function SDL-HasMMX
  result res :: <SDL-bool>;
  c-name: "SDL_HasMMX";
end;

define inline C-function SDL-Has3DNow
  result res :: <SDL-bool>;
  c-name: "SDL_Has3DNow";
end;

define inline C-function SDL-HasSSE
  result res :: <SDL-bool>;
  c-name: "SDL_HasSSE";
end;

define inline C-function SDL-HasSSE2
  result res :: <SDL-bool>;
  c-name: "SDL_HasSSE2";
end;

define inline C-function SDL-HasSSE3
  result res :: <SDL-bool>;
  c-name: "SDL_HasSSE3";
end;

define inline C-function SDL-HasSSE41
  result res :: <SDL-bool>;
  c-name: "SDL_HasSSE41";
end;

define inline C-function SDL-HasSSE42
  result res :: <SDL-bool>;
  c-name: "SDL_HasSSE42";
end;

define inline C-function SDL-HasAVX
  result res :: <SDL-bool>;
  c-name: "SDL_HasAVX";
end;

define inline C-function SDL-GetSystemRAM
  result res :: <C-signed-int>;
  c-name: "SDL_GetSystemRAM";
end;

define constant $SDL-CACHELINE-SIZE = 128;

define inline C-function SDL-Swap16
  input parameter x_ :: <Uint16>;
  result res :: <Uint16>;
  c-name: "SDL_Swap16";
end;

define inline C-function SDL-Swap32
  input parameter x_ :: <Uint32>;
  result res :: <Uint32>;
  c-name: "SDL_Swap32";
end;

define constant <uint64-t> = <C-unsigned-long>;

define constant <Uint64> = <uint64-t>;

define inline C-function SDL-Swap64
  input parameter x_ :: <Uint64>;
  result res :: <Uint64>;
  c-name: "SDL_Swap64";
end;

define inline C-function SDL-SwapFloat
  input parameter x_ :: <C-float>;
  result res :: <C-float>;
  c-name: "SDL_SwapFloat";
end;

define constant $SDL-LIL-ENDIAN = 1234;

define constant $SDL-BIG-ENDIAN = 4321;

define constant $SDL-BYTEORDER = 1234;

define inline C-function SDL-SetError
  input parameter fmt_ :: <c-string>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetError";
end;

define inline C-function SDL-GetError
  result res :: <c-string>;
  c-name: "SDL_GetError";
end;

define inline C-function SDL-ClearError
  c-name: "SDL_ClearError";
end;

define constant <SDL-errorcode> = <C-int>;
define constant $SDL-ENOMEM = 0;
define constant $SDL-EFREAD = 1;
define constant $SDL-EFWRITE = 2;
define constant $SDL-EFSEEK = 3;
define constant $SDL-UNSUPPORTED = 4;
define constant $SDL-LASTERROR = 5;

define inline C-function SDL-Error
  input parameter code_ :: <SDL-errorcode>;
  result res :: <C-signed-int>;
  c-name: "SDL_Error";
end;

define constant <SDL-EventType> = <C-int>;
define constant $SDL-FIRSTEVENT = 0;
define constant $SDL-QUIT = 256;
define constant $SDL-APP-TERMINATING = 257;
define constant $SDL-APP-LOWMEMORY = 258;
define constant $SDL-APP-WILLENTERBACKGROUND = 259;
define constant $SDL-APP-DIDENTERBACKGROUND = 260;
define constant $SDL-APP-WILLENTERFOREGROUND = 261;
define constant $SDL-APP-DIDENTERFOREGROUND = 262;
define constant $SDL-WINDOWEVENT = 512;
define constant $SDL-SYSWMEVENT = 513;
define constant $SDL-KEYDOWN = 768;
define constant $SDL-KEYUP = 769;
define constant $SDL-TEXTEDITING = 770;
define constant $SDL-TEXTINPUT = 771;
define constant $SDL-MOUSEMOTION = 1024;
define constant $SDL-MOUSEBUTTONDOWN = 1025;
define constant $SDL-MOUSEBUTTONUP = 1026;
define constant $SDL-MOUSEWHEEL = 1027;
define constant $SDL-JOYAXISMOTION = 1536;
define constant $SDL-JOYBALLMOTION = 1537;
define constant $SDL-JOYHATMOTION = 1538;
define constant $SDL-JOYBUTTONDOWN = 1539;
define constant $SDL-JOYBUTTONUP = 1540;
define constant $SDL-JOYDEVICEADDED = 1541;
define constant $SDL-JOYDEVICEREMOVED = 1542;
define constant $SDL-CONTROLLERAXISMOTION = 1616;
define constant $SDL-CONTROLLERBUTTONDOWN = 1617;
define constant $SDL-CONTROLLERBUTTONUP = 1618;
define constant $SDL-CONTROLLERDEVICEADDED = 1619;
define constant $SDL-CONTROLLERDEVICEREMOVED = 1620;
define constant $SDL-CONTROLLERDEVICEREMAPPED = 1621;
define constant $SDL-FINGERDOWN = 1792;
define constant $SDL-FINGERUP = 1793;
define constant $SDL-FINGERMOTION = 1794;
define constant $SDL-DOLLARGESTURE = 2048;
define constant $SDL-DOLLARRECORD = 2049;
define constant $SDL-MULTIGESTURE = 2050;
define constant $SDL-CLIPBOARDUPDATE = 2304;
define constant $SDL-DROPFILE = 4096;
define constant $SDL-RENDER-TARGETS-RESET = 8192;
define constant $SDL-USEREVENT = 32768;
define constant $SDL-LASTEVENT = 65535;

define C-struct <SDL-CommonEvent>
  sealed slot SDL-CommonEvent$type :: <C-unsigned-int>;
  sealed slot SDL-CommonEvent$timestamp :: <C-unsigned-int>;
end;

define constant <int32-t> = <C-signed-int>;

define constant <Sint32> = <int32-t>;

define C-struct <SDL-WindowEvent>
  sealed slot SDL-WindowEvent$type :: <C-unsigned-int>;
  sealed slot SDL-WindowEvent$timestamp :: <C-unsigned-int>;
  sealed slot SDL-WindowEvent$windowID :: <C-unsigned-int>;
  sealed slot SDL-WindowEvent$event :: <C-unsigned-char>;
  sealed slot SDL-WindowEvent$padding1 :: <C-unsigned-char>;
  sealed slot SDL-WindowEvent$padding2 :: <C-unsigned-char>;
  sealed slot SDL-WindowEvent$padding3 :: <C-unsigned-char>;
  sealed slot SDL-WindowEvent$data1 :: <C-signed-int>;
  sealed slot SDL-WindowEvent$data2 :: <C-signed-int>;
end;

define constant <SDL-Scancode> = <C-int>;
define constant $SDL-SCANCODE-UNKNOWN = 0;
define constant $SDL-SCANCODE-A = 4;
define constant $SDL-SCANCODE-B = 5;
define constant $SDL-SCANCODE-C = 6;
define constant $SDL-SCANCODE-D = 7;
define constant $SDL-SCANCODE-E = 8;
define constant $SDL-SCANCODE-F = 9;
define constant $SDL-SCANCODE-G = 10;
define constant $SDL-SCANCODE-H = 11;
define constant $SDL-SCANCODE-I = 12;
define constant $SDL-SCANCODE-J = 13;
define constant $SDL-SCANCODE-K = 14;
define constant $SDL-SCANCODE-L = 15;
define constant $SDL-SCANCODE-M = 16;
define constant $SDL-SCANCODE-N = 17;
define constant $SDL-SCANCODE-O = 18;
define constant $SDL-SCANCODE-P = 19;
define constant $SDL-SCANCODE-Q = 20;
define constant $SDL-SCANCODE-R = 21;
define constant $SDL-SCANCODE-S = 22;
define constant $SDL-SCANCODE-T = 23;
define constant $SDL-SCANCODE-U = 24;
define constant $SDL-SCANCODE-V = 25;
define constant $SDL-SCANCODE-W = 26;
define constant $SDL-SCANCODE-X = 27;
define constant $SDL-SCANCODE-Y = 28;
define constant $SDL-SCANCODE-Z = 29;
define constant $SDL-SCANCODE-1 = 30;
define constant $SDL-SCANCODE-2 = 31;
define constant $SDL-SCANCODE-3 = 32;
define constant $SDL-SCANCODE-4 = 33;
define constant $SDL-SCANCODE-5 = 34;
define constant $SDL-SCANCODE-6 = 35;
define constant $SDL-SCANCODE-7 = 36;
define constant $SDL-SCANCODE-8 = 37;
define constant $SDL-SCANCODE-9 = 38;
define constant $SDL-SCANCODE-0 = 39;
define constant $SDL-SCANCODE-RETURN = 40;
define constant $SDL-SCANCODE-ESCAPE = 41;
define constant $SDL-SCANCODE-BACKSPACE = 42;
define constant $SDL-SCANCODE-TAB = 43;
define constant $SDL-SCANCODE-SPACE = 44;
define constant $SDL-SCANCODE-MINUS = 45;
define constant $SDL-SCANCODE-EQUALS = 46;
define constant $SDL-SCANCODE-LEFTBRACKET = 47;
define constant $SDL-SCANCODE-RIGHTBRACKET = 48;
define constant $SDL-SCANCODE-BACKSLASH = 49;
define constant $SDL-SCANCODE-NONUSHASH = 50;
define constant $SDL-SCANCODE-SEMICOLON = 51;
define constant $SDL-SCANCODE-APOSTROPHE = 52;
define constant $SDL-SCANCODE-GRAVE = 53;
define constant $SDL-SCANCODE-COMMA = 54;
define constant $SDL-SCANCODE-PERIOD = 55;
define constant $SDL-SCANCODE-SLASH = 56;
define constant $SDL-SCANCODE-CAPSLOCK = 57;
define constant $SDL-SCANCODE-F1 = 58;
define constant $SDL-SCANCODE-F2 = 59;
define constant $SDL-SCANCODE-F3 = 60;
define constant $SDL-SCANCODE-F4 = 61;
define constant $SDL-SCANCODE-F5 = 62;
define constant $SDL-SCANCODE-F6 = 63;
define constant $SDL-SCANCODE-F7 = 64;
define constant $SDL-SCANCODE-F8 = 65;
define constant $SDL-SCANCODE-F9 = 66;
define constant $SDL-SCANCODE-F10 = 67;
define constant $SDL-SCANCODE-F11 = 68;
define constant $SDL-SCANCODE-F12 = 69;
define constant $SDL-SCANCODE-PRINTSCREEN = 70;
define constant $SDL-SCANCODE-SCROLLLOCK = 71;
define constant $SDL-SCANCODE-PAUSE = 72;
define constant $SDL-SCANCODE-INSERT = 73;
define constant $SDL-SCANCODE-HOME = 74;
define constant $SDL-SCANCODE-PAGEUP = 75;
define constant $SDL-SCANCODE-DELETE = 76;
define constant $SDL-SCANCODE-END = 77;
define constant $SDL-SCANCODE-PAGEDOWN = 78;
define constant $SDL-SCANCODE-RIGHT = 79;
define constant $SDL-SCANCODE-LEFT = 80;
define constant $SDL-SCANCODE-DOWN = 81;
define constant $SDL-SCANCODE-UP = 82;
define constant $SDL-SCANCODE-NUMLOCKCLEAR = 83;
define constant $SDL-SCANCODE-KP-DIVIDE = 84;
define constant $SDL-SCANCODE-KP-MULTIPLY = 85;
define constant $SDL-SCANCODE-KP-MINUS = 86;
define constant $SDL-SCANCODE-KP-PLUS = 87;
define constant $SDL-SCANCODE-KP-ENTER = 88;
define constant $SDL-SCANCODE-KP-1 = 89;
define constant $SDL-SCANCODE-KP-2 = 90;
define constant $SDL-SCANCODE-KP-3 = 91;
define constant $SDL-SCANCODE-KP-4 = 92;
define constant $SDL-SCANCODE-KP-5 = 93;
define constant $SDL-SCANCODE-KP-6 = 94;
define constant $SDL-SCANCODE-KP-7 = 95;
define constant $SDL-SCANCODE-KP-8 = 96;
define constant $SDL-SCANCODE-KP-9 = 97;
define constant $SDL-SCANCODE-KP-0 = 98;
define constant $SDL-SCANCODE-KP-PERIOD = 99;
define constant $SDL-SCANCODE-NONUSBACKSLASH = 100;
define constant $SDL-SCANCODE-APPLICATION = 101;
define constant $SDL-SCANCODE-POWER = 102;
define constant $SDL-SCANCODE-KP-EQUALS = 103;
define constant $SDL-SCANCODE-F13 = 104;
define constant $SDL-SCANCODE-F14 = 105;
define constant $SDL-SCANCODE-F15 = 106;
define constant $SDL-SCANCODE-F16 = 107;
define constant $SDL-SCANCODE-F17 = 108;
define constant $SDL-SCANCODE-F18 = 109;
define constant $SDL-SCANCODE-F19 = 110;
define constant $SDL-SCANCODE-F20 = 111;
define constant $SDL-SCANCODE-F21 = 112;
define constant $SDL-SCANCODE-F22 = 113;
define constant $SDL-SCANCODE-F23 = 114;
define constant $SDL-SCANCODE-F24 = 115;
define constant $SDL-SCANCODE-EXECUTE = 116;
define constant $SDL-SCANCODE-HELP = 117;
define constant $SDL-SCANCODE-MENU = 118;
define constant $SDL-SCANCODE-SELECT = 119;
define constant $SDL-SCANCODE-STOP = 120;
define constant $SDL-SCANCODE-AGAIN = 121;
define constant $SDL-SCANCODE-UNDO = 122;
define constant $SDL-SCANCODE-CUT = 123;
define constant $SDL-SCANCODE-COPY = 124;
define constant $SDL-SCANCODE-PASTE = 125;
define constant $SDL-SCANCODE-FIND = 126;
define constant $SDL-SCANCODE-MUTE = 127;
define constant $SDL-SCANCODE-VOLUMEUP = 128;
define constant $SDL-SCANCODE-VOLUMEDOWN = 129;
define constant $SDL-SCANCODE-KP-COMMA = 133;
define constant $SDL-SCANCODE-KP-EQUALSAS400 = 134;
define constant $SDL-SCANCODE-INTERNATIONAL1 = 135;
define constant $SDL-SCANCODE-INTERNATIONAL2 = 136;
define constant $SDL-SCANCODE-INTERNATIONAL3 = 137;
define constant $SDL-SCANCODE-INTERNATIONAL4 = 138;
define constant $SDL-SCANCODE-INTERNATIONAL5 = 139;
define constant $SDL-SCANCODE-INTERNATIONAL6 = 140;
define constant $SDL-SCANCODE-INTERNATIONAL7 = 141;
define constant $SDL-SCANCODE-INTERNATIONAL8 = 142;
define constant $SDL-SCANCODE-INTERNATIONAL9 = 143;
define constant $SDL-SCANCODE-LANG1 = 144;
define constant $SDL-SCANCODE-LANG2 = 145;
define constant $SDL-SCANCODE-LANG3 = 146;
define constant $SDL-SCANCODE-LANG4 = 147;
define constant $SDL-SCANCODE-LANG5 = 148;
define constant $SDL-SCANCODE-LANG6 = 149;
define constant $SDL-SCANCODE-LANG7 = 150;
define constant $SDL-SCANCODE-LANG8 = 151;
define constant $SDL-SCANCODE-LANG9 = 152;
define constant $SDL-SCANCODE-ALTERASE = 153;
define constant $SDL-SCANCODE-SYSREQ = 154;
define constant $SDL-SCANCODE-CANCEL = 155;
define constant $SDL-SCANCODE-CLEAR = 156;
define constant $SDL-SCANCODE-PRIOR = 157;
define constant $SDL-SCANCODE-RETURN2 = 158;
define constant $SDL-SCANCODE-SEPARATOR = 159;
define constant $SDL-SCANCODE-OUT = 160;
define constant $SDL-SCANCODE-OPER = 161;
define constant $SDL-SCANCODE-CLEARAGAIN = 162;
define constant $SDL-SCANCODE-CRSEL = 163;
define constant $SDL-SCANCODE-EXSEL = 164;
define constant $SDL-SCANCODE-KP-00 = 176;
define constant $SDL-SCANCODE-KP-000 = 177;
define constant $SDL-SCANCODE-THOUSANDSSEPARATOR = 178;
define constant $SDL-SCANCODE-DECIMALSEPARATOR = 179;
define constant $SDL-SCANCODE-CURRENCYUNIT = 180;
define constant $SDL-SCANCODE-CURRENCYSUBUNIT = 181;
define constant $SDL-SCANCODE-KP-LEFTPAREN = 182;
define constant $SDL-SCANCODE-KP-RIGHTPAREN = 183;
define constant $SDL-SCANCODE-KP-LEFTBRACE = 184;
define constant $SDL-SCANCODE-KP-RIGHTBRACE = 185;
define constant $SDL-SCANCODE-KP-TAB = 186;
define constant $SDL-SCANCODE-KP-BACKSPACE = 187;
define constant $SDL-SCANCODE-KP-A = 188;
define constant $SDL-SCANCODE-KP-B = 189;
define constant $SDL-SCANCODE-KP-C = 190;
define constant $SDL-SCANCODE-KP-D = 191;
define constant $SDL-SCANCODE-KP-E = 192;
define constant $SDL-SCANCODE-KP-F = 193;
define constant $SDL-SCANCODE-KP-XOR = 194;
define constant $SDL-SCANCODE-KP-POWER = 195;
define constant $SDL-SCANCODE-KP-PERCENT = 196;
define constant $SDL-SCANCODE-KP-LESS = 197;
define constant $SDL-SCANCODE-KP-GREATER = 198;
define constant $SDL-SCANCODE-KP-AMPERSAND = 199;
define constant $SDL-SCANCODE-KP-DBLAMPERSAND = 200;
define constant $SDL-SCANCODE-KP-VERTICALBAR = 201;
define constant $SDL-SCANCODE-KP-DBLVERTICALBAR = 202;
define constant $SDL-SCANCODE-KP-COLON = 203;
define constant $SDL-SCANCODE-KP-HASH = 204;
define constant $SDL-SCANCODE-KP-SPACE = 205;
define constant $SDL-SCANCODE-KP-AT = 206;
define constant $SDL-SCANCODE-KP-EXCLAM = 207;
define constant $SDL-SCANCODE-KP-MEMSTORE = 208;
define constant $SDL-SCANCODE-KP-MEMRECALL = 209;
define constant $SDL-SCANCODE-KP-MEMCLEAR = 210;
define constant $SDL-SCANCODE-KP-MEMADD = 211;
define constant $SDL-SCANCODE-KP-MEMSUBTRACT = 212;
define constant $SDL-SCANCODE-KP-MEMMULTIPLY = 213;
define constant $SDL-SCANCODE-KP-MEMDIVIDE = 214;
define constant $SDL-SCANCODE-KP-PLUSMINUS = 215;
define constant $SDL-SCANCODE-KP-CLEAR = 216;
define constant $SDL-SCANCODE-KP-CLEARENTRY = 217;
define constant $SDL-SCANCODE-KP-BINARY = 218;
define constant $SDL-SCANCODE-KP-OCTAL = 219;
define constant $SDL-SCANCODE-KP-DECIMAL = 220;
define constant $SDL-SCANCODE-KP-HEXADECIMAL = 221;
define constant $SDL-SCANCODE-LCTRL = 224;
define constant $SDL-SCANCODE-LSHIFT = 225;
define constant $SDL-SCANCODE-LALT = 226;
define constant $SDL-SCANCODE-LGUI = 227;
define constant $SDL-SCANCODE-RCTRL = 228;
define constant $SDL-SCANCODE-RSHIFT = 229;
define constant $SDL-SCANCODE-RALT = 230;
define constant $SDL-SCANCODE-RGUI = 231;
define constant $SDL-SCANCODE-MODE = 257;
define constant $SDL-SCANCODE-AUDIONEXT = 258;
define constant $SDL-SCANCODE-AUDIOPREV = 259;
define constant $SDL-SCANCODE-AUDIOSTOP = 260;
define constant $SDL-SCANCODE-AUDIOPLAY = 261;
define constant $SDL-SCANCODE-AUDIOMUTE = 262;
define constant $SDL-SCANCODE-MEDIASELECT = 263;
define constant $SDL-SCANCODE-WWW = 264;
define constant $SDL-SCANCODE-MAIL = 265;
define constant $SDL-SCANCODE-CALCULATOR = 266;
define constant $SDL-SCANCODE-COMPUTER = 267;
define constant $SDL-SCANCODE-AC-SEARCH = 268;
define constant $SDL-SCANCODE-AC-HOME = 269;
define constant $SDL-SCANCODE-AC-BACK = 270;
define constant $SDL-SCANCODE-AC-FORWARD = 271;
define constant $SDL-SCANCODE-AC-STOP = 272;
define constant $SDL-SCANCODE-AC-REFRESH = 273;
define constant $SDL-SCANCODE-AC-BOOKMARKS = 274;
define constant $SDL-SCANCODE-BRIGHTNESSDOWN = 275;
define constant $SDL-SCANCODE-BRIGHTNESSUP = 276;
define constant $SDL-SCANCODE-DISPLAYSWITCH = 277;
define constant $SDL-SCANCODE-KBDILLUMTOGGLE = 278;
define constant $SDL-SCANCODE-KBDILLUMDOWN = 279;
define constant $SDL-SCANCODE-KBDILLUMUP = 280;
define constant $SDL-SCANCODE-EJECT = 281;
define constant $SDL-SCANCODE-SLEEP = 282;
define constant $SDL-SCANCODE-APP1 = 283;
define constant $SDL-SCANCODE-APP2 = 284;
define constant $SDL-NUM-SCANCODES = 512;

define constant <SDL-Keycode> = <Sint32>;

define C-struct <SDL-Keysym>
  sealed slot SDL-Keysym$scancode :: <SDL-Scancode>;
  sealed slot SDL-Keysym$sym :: <C-signed-int>;
  sealed slot SDL-Keysym$mod :: <C-unsigned-short>;
  sealed slot SDL-Keysym$unused :: <C-unsigned-int>;
end;

define C-struct <SDL-KeyboardEvent>
  sealed slot SDL-KeyboardEvent$type :: <C-unsigned-int>;
  sealed slot SDL-KeyboardEvent$timestamp :: <C-unsigned-int>;
  sealed slot SDL-KeyboardEvent$windowID :: <C-unsigned-int>;
  sealed slot SDL-KeyboardEvent$state :: <C-unsigned-char>;
  sealed slot SDL-KeyboardEvent$repeat :: <C-unsigned-char>;
  sealed slot SDL-KeyboardEvent$padding2 :: <C-unsigned-char>;
  sealed slot SDL-KeyboardEvent$padding3 :: <C-unsigned-char>;
  sealed slot SDL-KeyboardEvent$keysym :: <SDL-Keysym>;
end;

define constant <char<@32>> = <c-string>;
define C-struct <SDL-TextEditingEvent>
  sealed slot SDL-TextEditingEvent$type :: <C-unsigned-int>;
  sealed slot SDL-TextEditingEvent$timestamp :: <C-unsigned-int>;
  sealed slot SDL-TextEditingEvent$windowID :: <C-unsigned-int>;
  sealed array slot SDL-TextEditingEvent$text :: <C-signed-char>, length: 32;
  sealed slot SDL-TextEditingEvent$start :: <C-signed-int>;
  sealed slot SDL-TextEditingEvent$length :: <C-signed-int>;
end;

define C-struct <SDL-TextInputEvent>
  sealed slot SDL-TextInputEvent$type :: <C-unsigned-int>;
  sealed slot SDL-TextInputEvent$timestamp :: <C-unsigned-int>;
  sealed slot SDL-TextInputEvent$windowID :: <C-unsigned-int>;
  sealed array slot SDL-TextInputEvent$text :: <C-signed-char>, length: 32;
end;

define C-struct <SDL-MouseMotionEvent>
  sealed slot SDL-MouseMotionEvent$type :: <C-unsigned-int>;
  sealed slot SDL-MouseMotionEvent$timestamp :: <C-unsigned-int>;
  sealed slot SDL-MouseMotionEvent$windowID :: <C-unsigned-int>;
  sealed slot SDL-MouseMotionEvent$which :: <C-unsigned-int>;
  sealed slot SDL-MouseMotionEvent$state :: <C-unsigned-int>;
  sealed slot SDL-MouseMotionEvent$x :: <C-signed-int>;
  sealed slot SDL-MouseMotionEvent$y :: <C-signed-int>;
  sealed slot SDL-MouseMotionEvent$xrel :: <C-signed-int>;
  sealed slot SDL-MouseMotionEvent$yrel :: <C-signed-int>;
end;

define C-struct <SDL-MouseButtonEvent>
  sealed slot SDL-MouseButtonEvent$type :: <C-unsigned-int>;
  sealed slot SDL-MouseButtonEvent$timestamp :: <C-unsigned-int>;
  sealed slot SDL-MouseButtonEvent$windowID :: <C-unsigned-int>;
  sealed slot SDL-MouseButtonEvent$which :: <C-unsigned-int>;
  sealed slot SDL-MouseButtonEvent$button :: <C-unsigned-char>;
  sealed slot SDL-MouseButtonEvent$state :: <C-unsigned-char>;
  sealed slot SDL-MouseButtonEvent$clicks :: <C-unsigned-char>;
  sealed slot SDL-MouseButtonEvent$padding1 :: <C-unsigned-char>;
  sealed slot SDL-MouseButtonEvent$x :: <C-signed-int>;
  sealed slot SDL-MouseButtonEvent$y :: <C-signed-int>;
end;

define C-struct <SDL-MouseWheelEvent>
  sealed slot SDL-MouseWheelEvent$type :: <C-unsigned-int>;
  sealed slot SDL-MouseWheelEvent$timestamp :: <C-unsigned-int>;
  sealed slot SDL-MouseWheelEvent$windowID :: <C-unsigned-int>;
  sealed slot SDL-MouseWheelEvent$which :: <C-unsigned-int>;
  sealed slot SDL-MouseWheelEvent$x :: <C-signed-int>;
  sealed slot SDL-MouseWheelEvent$y :: <C-signed-int>;
end;

define constant <SDL-JoystickID> = <Sint32>;

define constant <int16-t> = <C-signed-short>;

define constant <Sint16> = <int16-t>;

define C-struct <SDL-JoyAxisEvent>
  sealed slot SDL-JoyAxisEvent$type :: <C-unsigned-int>;
  sealed slot SDL-JoyAxisEvent$timestamp :: <C-unsigned-int>;
  sealed slot SDL-JoyAxisEvent$which :: <C-signed-int>;
  sealed slot SDL-JoyAxisEvent$axis :: <C-unsigned-char>;
  sealed slot SDL-JoyAxisEvent$padding1 :: <C-unsigned-char>;
  sealed slot SDL-JoyAxisEvent$padding2 :: <C-unsigned-char>;
  sealed slot SDL-JoyAxisEvent$padding3 :: <C-unsigned-char>;
  sealed slot SDL-JoyAxisEvent$value :: <C-signed-short>;
  sealed slot SDL-JoyAxisEvent$padding4 :: <C-unsigned-short>;
end;

define C-struct <SDL-JoyBallEvent>
  sealed slot SDL-JoyBallEvent$type :: <C-unsigned-int>;
  sealed slot SDL-JoyBallEvent$timestamp :: <C-unsigned-int>;
  sealed slot SDL-JoyBallEvent$which :: <C-signed-int>;
  sealed slot SDL-JoyBallEvent$ball :: <C-unsigned-char>;
  sealed slot SDL-JoyBallEvent$padding1 :: <C-unsigned-char>;
  sealed slot SDL-JoyBallEvent$padding2 :: <C-unsigned-char>;
  sealed slot SDL-JoyBallEvent$padding3 :: <C-unsigned-char>;
  sealed slot SDL-JoyBallEvent$xrel :: <C-signed-short>;
  sealed slot SDL-JoyBallEvent$yrel :: <C-signed-short>;
end;

define C-struct <SDL-JoyHatEvent>
  sealed slot SDL-JoyHatEvent$type :: <C-unsigned-int>;
  sealed slot SDL-JoyHatEvent$timestamp :: <C-unsigned-int>;
  sealed slot SDL-JoyHatEvent$which :: <C-signed-int>;
  sealed slot SDL-JoyHatEvent$hat :: <C-unsigned-char>;
  sealed slot SDL-JoyHatEvent$value :: <C-unsigned-char>;
  sealed slot SDL-JoyHatEvent$padding1 :: <C-unsigned-char>;
  sealed slot SDL-JoyHatEvent$padding2 :: <C-unsigned-char>;
end;

define C-struct <SDL-JoyButtonEvent>
  sealed slot SDL-JoyButtonEvent$type :: <C-unsigned-int>;
  sealed slot SDL-JoyButtonEvent$timestamp :: <C-unsigned-int>;
  sealed slot SDL-JoyButtonEvent$which :: <C-signed-int>;
  sealed slot SDL-JoyButtonEvent$button :: <C-unsigned-char>;
  sealed slot SDL-JoyButtonEvent$state :: <C-unsigned-char>;
  sealed slot SDL-JoyButtonEvent$padding1 :: <C-unsigned-char>;
  sealed slot SDL-JoyButtonEvent$padding2 :: <C-unsigned-char>;
end;

define C-struct <SDL-JoyDeviceEvent>
  sealed slot SDL-JoyDeviceEvent$type :: <C-unsigned-int>;
  sealed slot SDL-JoyDeviceEvent$timestamp :: <C-unsigned-int>;
  sealed slot SDL-JoyDeviceEvent$which :: <C-signed-int>;
end;

define C-struct <SDL-ControllerAxisEvent>
  sealed slot SDL-ControllerAxisEvent$type :: <C-unsigned-int>;
  sealed slot SDL-ControllerAxisEvent$timestamp :: <C-unsigned-int>;
  sealed slot SDL-ControllerAxisEvent$which :: <C-signed-int>;
  sealed slot SDL-ControllerAxisEvent$axis :: <C-unsigned-char>;
  sealed slot SDL-ControllerAxisEvent$padding1 :: <C-unsigned-char>;
  sealed slot SDL-ControllerAxisEvent$padding2 :: <C-unsigned-char>;
  sealed slot SDL-ControllerAxisEvent$padding3 :: <C-unsigned-char>;
  sealed slot SDL-ControllerAxisEvent$value :: <C-signed-short>;
  sealed slot SDL-ControllerAxisEvent$padding4 :: <C-unsigned-short>;
end;

define C-struct <SDL-ControllerButtonEvent>
  sealed slot SDL-ControllerButtonEvent$type :: <C-unsigned-int>;
  sealed slot SDL-ControllerButtonEvent$timestamp :: <C-unsigned-int>;
  sealed slot SDL-ControllerButtonEvent$which :: <C-signed-int>;
  sealed slot SDL-ControllerButtonEvent$button :: <C-unsigned-char>;
  sealed slot SDL-ControllerButtonEvent$state :: <C-unsigned-char>;
  sealed slot SDL-ControllerButtonEvent$padding1 :: <C-unsigned-char>;
  sealed slot SDL-ControllerButtonEvent$padding2 :: <C-unsigned-char>;
end;

define C-struct <SDL-ControllerDeviceEvent>
  sealed slot SDL-ControllerDeviceEvent$type :: <C-unsigned-int>;
  sealed slot SDL-ControllerDeviceEvent$timestamp :: <C-unsigned-int>;
  sealed slot SDL-ControllerDeviceEvent$which :: <C-signed-int>;
end;

define constant <SDL-TouchID> = <Sint64>;

define constant <SDL-FingerID> = <Sint64>;

define C-struct <SDL-TouchFingerEvent>
  sealed slot SDL-TouchFingerEvent$type :: <C-unsigned-int>;
  sealed slot SDL-TouchFingerEvent$timestamp :: <C-unsigned-int>;
  sealed slot SDL-TouchFingerEvent$touchId :: <C-signed-long>;
  sealed slot SDL-TouchFingerEvent$fingerId :: <C-signed-long>;
  sealed slot SDL-TouchFingerEvent$x :: <C-float>;
  sealed slot SDL-TouchFingerEvent$y :: <C-float>;
  sealed slot SDL-TouchFingerEvent$dx :: <C-float>;
  sealed slot SDL-TouchFingerEvent$dy :: <C-float>;
  sealed slot SDL-TouchFingerEvent$pressure :: <C-float>;
end;

define C-struct <SDL-MultiGestureEvent>
  sealed slot SDL-MultiGestureEvent$type :: <C-unsigned-int>;
  sealed slot SDL-MultiGestureEvent$timestamp :: <C-unsigned-int>;
  sealed slot SDL-MultiGestureEvent$touchId :: <C-signed-long>;
  sealed slot SDL-MultiGestureEvent$dTheta :: <C-float>;
  sealed slot SDL-MultiGestureEvent$dDist :: <C-float>;
  sealed slot SDL-MultiGestureEvent$x :: <C-float>;
  sealed slot SDL-MultiGestureEvent$y :: <C-float>;
  sealed slot SDL-MultiGestureEvent$numFingers :: <C-unsigned-short>;
  sealed slot SDL-MultiGestureEvent$padding :: <C-unsigned-short>;
end;

define constant <SDL-GestureID> = <Sint64>;

define C-struct <SDL-DollarGestureEvent>
  sealed slot SDL-DollarGestureEvent$type :: <C-unsigned-int>;
  sealed slot SDL-DollarGestureEvent$timestamp :: <C-unsigned-int>;
  sealed slot SDL-DollarGestureEvent$touchId :: <C-signed-long>;
  sealed slot SDL-DollarGestureEvent$gestureId :: <C-signed-long>;
  sealed slot SDL-DollarGestureEvent$numFingers :: <C-unsigned-int>;
  sealed slot SDL-DollarGestureEvent$error :: <C-float>;
  sealed slot SDL-DollarGestureEvent$x :: <C-float>;
  sealed slot SDL-DollarGestureEvent$y :: <C-float>;
end;

define C-struct <SDL-DropEvent>
  sealed slot SDL-DropEvent$type :: <C-unsigned-int>;
  sealed slot SDL-DropEvent$timestamp :: <C-unsigned-int>;
  sealed slot SDL-DropEvent$file :: <c-string>;
end;

define C-struct <SDL-QuitEvent>
  sealed slot SDL-QuitEvent$type :: <C-unsigned-int>;
  sealed slot SDL-QuitEvent$timestamp :: <C-unsigned-int>;
end;

define C-struct <SDL-OSEvent>
  sealed slot SDL-OSEvent$type :: <C-unsigned-int>;
  sealed slot SDL-OSEvent$timestamp :: <C-unsigned-int>;
end;

define C-struct <SDL-UserEvent>
  sealed slot SDL-UserEvent$type :: <C-unsigned-int>;
  sealed slot SDL-UserEvent$timestamp :: <C-unsigned-int>;
  sealed slot SDL-UserEvent$windowID :: <C-unsigned-int>;
  sealed slot SDL-UserEvent$code :: <C-signed-int>;
  sealed slot SDL-UserEvent$data1 :: <C-void*>;
  sealed slot SDL-UserEvent$data2 :: <C-void*>;
end;

define C-struct <SDL-SysWMmsg>
end;

define C-pointer-type <SDL-SysWMmsg*> => <SDL-SysWMmsg>;
define C-struct <SDL-SysWMEvent>
  sealed slot SDL-SysWMEvent$type :: <C-unsigned-int>;
  sealed slot SDL-SysWMEvent$timestamp :: <C-unsigned-int>;
  sealed slot SDL-SysWMEvent$msg :: <SDL-SysWMmsg*>;
end;

define constant <Uint8<@56>> = <Uint8*>;
define C-union <SDL-Event>
  slot SDL-Event$type :: <C-unsigned-int>;
  slot SDL-Event$common :: <SDL-CommonEvent>;
  slot SDL-Event$window :: <SDL-WindowEvent>;
  slot SDL-Event$key :: <SDL-KeyboardEvent>;
  slot SDL-Event$edit :: <SDL-TextEditingEvent>;
  slot SDL-Event$text :: <SDL-TextInputEvent>;
  slot SDL-Event$motion :: <SDL-MouseMotionEvent>;
  slot SDL-Event$button :: <SDL-MouseButtonEvent>;
  slot SDL-Event$wheel :: <SDL-MouseWheelEvent>;
  slot SDL-Event$jaxis :: <SDL-JoyAxisEvent>;
  slot SDL-Event$jball :: <SDL-JoyBallEvent>;
  slot SDL-Event$jhat :: <SDL-JoyHatEvent>;
  slot SDL-Event$jbutton :: <SDL-JoyButtonEvent>;
  slot SDL-Event$jdevice :: <SDL-JoyDeviceEvent>;
  slot SDL-Event$caxis :: <SDL-ControllerAxisEvent>;
  slot SDL-Event$cbutton :: <SDL-ControllerButtonEvent>;
  slot SDL-Event$cdevice :: <SDL-ControllerDeviceEvent>;
  slot SDL-Event$quit :: <SDL-QuitEvent>;
  slot SDL-Event$user :: <SDL-UserEvent>;
  slot SDL-Event$syswm :: <SDL-SysWMEvent>;
  slot SDL-Event$tfinger :: <SDL-TouchFingerEvent>;
  slot SDL-Event$mgesture :: <SDL-MultiGestureEvent>;
  slot SDL-Event$dgesture :: <SDL-DollarGestureEvent>;
  slot SDL-Event$drop :: <SDL-DropEvent>;
  array slot SDL-Event$padding :: <Uint8>, length: 56;
end;

define inline C-function SDL-PumpEvents
  c-name: "SDL_PumpEvents";
end;

define constant <SDL-eventaction> = <C-int>;
define constant $SDL-ADDEVENT = 0;
define constant $SDL-PEEKEVENT = 1;
define constant $SDL-GETEVENT = 2;

define C-pointer-type <SDL-Event*> => <SDL-Event>;
define inline C-function SDL-PeepEvents
  input parameter events_ :: <SDL-Event*>;
  input parameter numevents_ :: <C-signed-int>;
  input parameter action_ :: <SDL-eventaction>;
  input parameter minType_ :: <Uint32>;
  input parameter maxType_ :: <Uint32>;
  result res :: <C-signed-int>;
  c-name: "SDL_PeepEvents";
end;

define inline C-function SDL-HasEvent
  input parameter type_ :: <Uint32>;
  result res :: <SDL-bool>;
  c-name: "SDL_HasEvent";
end;

define inline C-function SDL-HasEvents
  input parameter minType_ :: <Uint32>;
  input parameter maxType_ :: <Uint32>;
  result res :: <SDL-bool>;
  c-name: "SDL_HasEvents";
end;

define inline C-function SDL-FlushEvent
  input parameter type_ :: <Uint32>;
  c-name: "SDL_FlushEvent";
end;

define inline C-function SDL-FlushEvents
  input parameter minType_ :: <Uint32>;
  input parameter maxType_ :: <Uint32>;
  c-name: "SDL_FlushEvents";
end;

define inline C-function SDL-PollEvent
  input parameter event_ :: <SDL-Event*>;
  result res :: <C-signed-int>;
  c-name: "SDL_PollEvent";
end;

define inline C-function SDL-WaitEvent
  input parameter event_ :: <SDL-Event*>;
  result res :: <C-signed-int>;
  c-name: "SDL_WaitEvent";
end;

define inline C-function SDL-WaitEventTimeout
  input parameter event_ :: <SDL-Event*>;
  input parameter timeout_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_WaitEventTimeout";
end;

define inline C-function SDL-PushEvent
  input parameter event_ :: <SDL-Event*>;
  result res :: <C-signed-int>;
  c-name: "SDL_PushEvent";
end;

define constant <SDL-EventFilter> = <C-function-pointer>;
define inline C-function SDL-SetEventFilter
  input parameter filter_ :: <SDL-EventFilter>;
  input parameter userdata_ :: <C-void*>;
  c-name: "SDL_SetEventFilter";
end;

define C-pointer-type <SDL-EventFilter*> => <SDL-EventFilter>;
define inline C-function SDL-GetEventFilter
  input parameter filter_ :: <SDL-EventFilter*>;
  input parameter userdata_ :: <statically-typed-pointer*>;
  result res :: <SDL-bool>;
  c-name: "SDL_GetEventFilter";
end;

define inline C-function SDL-AddEventWatch
  input parameter filter_ :: <SDL-EventFilter>;
  input parameter userdata_ :: <C-void*>;
  c-name: "SDL_AddEventWatch";
end;

define inline C-function SDL-DelEventWatch
  input parameter filter_ :: <SDL-EventFilter>;
  input parameter userdata_ :: <C-void*>;
  c-name: "SDL_DelEventWatch";
end;

define inline C-function SDL-FilterEvents
  input parameter filter_ :: <SDL-EventFilter>;
  input parameter userdata_ :: <C-void*>;
  c-name: "SDL_FilterEvents";
end;

define inline C-function SDL-EventState
  input parameter type_ :: <Uint32>;
  input parameter state_ :: <C-signed-int>;
  result res :: <Uint8>;
  c-name: "SDL_EventState";
end;

define inline C-function SDL-RegisterEvents
  input parameter numevents_ :: <C-signed-int>;
  result res :: <Uint32>;
  c-name: "SDL_RegisterEvents";
end;

define constant $SDL-RELEASED = 0;

define constant $SDL-PRESSED = 1;

define constant $SDL-TEXTEDITINGEVENT-TEXT-SIZE = 32;

define constant $SDL-TEXTINPUTEVENT-TEXT-SIZE = 32;

define constant $SDL-QUERY = -1;

define constant $SDL-IGNORE = 0;

define constant $SDL-DISABLE = 0;

define constant $SDL-ENABLE = 1;

define inline C-function SDL-GetBasePath
  result res :: <c-string>;
  c-name: "SDL_GetBasePath";
end;

define inline C-function SDL-GetPrefPath
  input parameter org_ :: <c-string>;
  input parameter app_ :: <c-string>;
  result res :: <c-string>;
  c-name: "SDL_GetPrefPath";
end;

define C-struct <_SDL-GameController>
end;

define constant <SDL-GameController> = <_SDL-GameController>;

define constant <SDL-GameControllerBindType> = <C-int>;
define constant $SDL-CONTROLLER-BINDTYPE-NONE = 0;
define constant $SDL-CONTROLLER-BINDTYPE-BUTTON = 1;
define constant $SDL-CONTROLLER-BINDTYPE-AXIS = 2;
define constant $SDL-CONTROLLER-BINDTYPE-HAT = 3;

define C-struct <anonymous-77>
  sealed slot anonymous-77$hat :: <C-signed-int>;
  sealed slot anonymous-77$hat-mask :: <C-signed-int>;
end;

define C-union <anonymous-78>
  slot anonymous-78$button :: <C-signed-int>;
  slot anonymous-78$axis :: <C-signed-int>;
  slot anonymous-78$hat :: <anonymous-77>;
end;

define C-struct <SDL-GameControllerButtonBind>
  sealed slot SDL-GameControllerButtonBind$bindType :: <SDL-GameControllerBindType>;
  sealed slot SDL-GameControllerButtonBind$value :: <anonymous-78>;
end;

define inline C-function SDL-GameControllerAddMappingsFromRW
  input parameter rw_ :: <SDL-RWops*>;
  input parameter freerw_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_GameControllerAddMappingsFromRW";
end;

define inline C-function SDL-GameControllerAddMapping
  input parameter mappingString_ :: <c-string>;
  result res :: <C-signed-int>;
  c-name: "SDL_GameControllerAddMapping";
end;

define constant <Uint8<@16>> = <Uint8*>;
define C-struct <SDL-JoystickGUID>
  sealed array slot SDL-JoystickGUID$data :: <Uint8>, length: 16;
end;

define inline C-function SDL-GameControllerMappingForGUID
  input parameter guid_ :: <SDL-JoystickGUID>;
  result res :: <c-string>;
  c-name: "SDL_GameControllerMappingForGUID";
end;

define C-pointer-type <SDL-GameController*> => <SDL-GameController>;
define inline C-function SDL-GameControllerMapping
  input parameter gamecontroller_ :: <SDL-GameController*>;
  result res :: <c-string>;
  c-name: "SDL_GameControllerMapping";
end;

define inline C-function SDL-IsGameController
  input parameter joystick-index_ :: <C-signed-int>;
  result res :: <SDL-bool>;
  c-name: "SDL_IsGameController";
end;

define inline C-function SDL-GameControllerNameForIndex
  input parameter joystick-index_ :: <C-signed-int>;
  result res :: <c-string>;
  c-name: "SDL_GameControllerNameForIndex";
end;

define inline C-function SDL-GameControllerOpen
  input parameter joystick-index_ :: <C-signed-int>;
  result res :: <SDL-GameController*>;
  c-name: "SDL_GameControllerOpen";
end;

define inline C-function SDL-GameControllerName
  input parameter gamecontroller_ :: <SDL-GameController*>;
  result res :: <c-string>;
  c-name: "SDL_GameControllerName";
end;

define inline C-function SDL-GameControllerGetAttached
  input parameter gamecontroller_ :: <SDL-GameController*>;
  result res :: <SDL-bool>;
  c-name: "SDL_GameControllerGetAttached";
end;

define C-struct <_SDL-Joystick>
end;

define constant <SDL-Joystick> = <_SDL-Joystick>;

define C-pointer-type <SDL-Joystick*> => <SDL-Joystick>;
define inline C-function SDL-GameControllerGetJoystick
  input parameter gamecontroller_ :: <SDL-GameController*>;
  result res :: <SDL-Joystick*>;
  c-name: "SDL_GameControllerGetJoystick";
end;

define inline C-function SDL-GameControllerEventState
  input parameter state_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_GameControllerEventState";
end;

define inline C-function SDL-GameControllerUpdate
  c-name: "SDL_GameControllerUpdate";
end;

define constant <SDL-GameControllerAxis> = <C-int>;
define constant $SDL-CONTROLLER-AXIS-INVALID = -1;
define constant $SDL-CONTROLLER-AXIS-LEFTX = 0;
define constant $SDL-CONTROLLER-AXIS-LEFTY = 1;
define constant $SDL-CONTROLLER-AXIS-RIGHTX = 2;
define constant $SDL-CONTROLLER-AXIS-RIGHTY = 3;
define constant $SDL-CONTROLLER-AXIS-TRIGGERLEFT = 4;
define constant $SDL-CONTROLLER-AXIS-TRIGGERRIGHT = 5;
define constant $SDL-CONTROLLER-AXIS-MAX = 6;

define inline C-function SDL-GameControllerGetAxisFromString
  input parameter pchString_ :: <c-string>;
  result res :: <SDL-GameControllerAxis>;
  c-name: "SDL_GameControllerGetAxisFromString";
end;

define inline C-function SDL-GameControllerGetStringForAxis
  input parameter axis_ :: <SDL-GameControllerAxis>;
  result res :: <c-string>;
  c-name: "SDL_GameControllerGetStringForAxis";
end;

define inline C-function SDL-GameControllerGetBindForAxis
  input parameter gamecontroller_ :: <SDL-GameController*>;
  input parameter axis_ :: <SDL-GameControllerAxis>;
  result res :: <SDL-GameControllerButtonBind>;
  c-name: "SDL_GameControllerGetBindForAxis";
end;

define inline C-function SDL-GameControllerGetAxis
  input parameter gamecontroller_ :: <SDL-GameController*>;
  input parameter axis_ :: <SDL-GameControllerAxis>;
  result res :: <Sint16>;
  c-name: "SDL_GameControllerGetAxis";
end;

define constant <SDL-GameControllerButton> = <C-int>;
define constant $SDL-CONTROLLER-BUTTON-INVALID = -1;
define constant $SDL-CONTROLLER-BUTTON-A = 0;
define constant $SDL-CONTROLLER-BUTTON-B = 1;
define constant $SDL-CONTROLLER-BUTTON-X = 2;
define constant $SDL-CONTROLLER-BUTTON-Y = 3;
define constant $SDL-CONTROLLER-BUTTON-BACK = 4;
define constant $SDL-CONTROLLER-BUTTON-GUIDE = 5;
define constant $SDL-CONTROLLER-BUTTON-START = 6;
define constant $SDL-CONTROLLER-BUTTON-LEFTSTICK = 7;
define constant $SDL-CONTROLLER-BUTTON-RIGHTSTICK = 8;
define constant $SDL-CONTROLLER-BUTTON-LEFTSHOULDER = 9;
define constant $SDL-CONTROLLER-BUTTON-RIGHTSHOULDER = 10;
define constant $SDL-CONTROLLER-BUTTON-DPAD-UP = 11;
define constant $SDL-CONTROLLER-BUTTON-DPAD-DOWN = 12;
define constant $SDL-CONTROLLER-BUTTON-DPAD-LEFT = 13;
define constant $SDL-CONTROLLER-BUTTON-DPAD-RIGHT = 14;
define constant $SDL-CONTROLLER-BUTTON-MAX = 15;

define inline C-function SDL-GameControllerGetButtonFromString
  input parameter pchString_ :: <c-string>;
  result res :: <SDL-GameControllerButton>;
  c-name: "SDL_GameControllerGetButtonFromString";
end;

define inline C-function SDL-GameControllerGetStringForButton
  input parameter button_ :: <SDL-GameControllerButton>;
  result res :: <c-string>;
  c-name: "SDL_GameControllerGetStringForButton";
end;

define inline C-function SDL-GameControllerGetBindForButton
  input parameter gamecontroller_ :: <SDL-GameController*>;
  input parameter button_ :: <SDL-GameControllerButton>;
  result res :: <SDL-GameControllerButtonBind>;
  c-name: "SDL_GameControllerGetBindForButton";
end;

define inline C-function SDL-GameControllerGetButton
  input parameter gamecontroller_ :: <SDL-GameController*>;
  input parameter button_ :: <SDL-GameControllerButton>;
  result res :: <Uint8>;
  c-name: "SDL_GameControllerGetButton";
end;

define inline C-function SDL-GameControllerClose
  input parameter gamecontroller_ :: <SDL-GameController*>;
  c-name: "SDL_GameControllerClose";
end;

define inline C-function SDL-RecordGesture
  input parameter touchId_ :: <SDL-TouchID>;
  result res :: <C-signed-int>;
  c-name: "SDL_RecordGesture";
end;

define inline C-function SDL-SaveAllDollarTemplates
  input parameter dst_ :: <SDL-RWops*>;
  result res :: <C-signed-int>;
  c-name: "SDL_SaveAllDollarTemplates";
end;

define inline C-function SDL-SaveDollarTemplate
  input parameter gestureId_ :: <SDL-GestureID>;
  input parameter dst_ :: <SDL-RWops*>;
  result res :: <C-signed-int>;
  c-name: "SDL_SaveDollarTemplate";
end;

define inline C-function SDL-LoadDollarTemplates
  input parameter touchId_ :: <SDL-TouchID>;
  input parameter src_ :: <SDL-RWops*>;
  result res :: <C-signed-int>;
  c-name: "SDL_LoadDollarTemplates";
end;

define C-struct <_SDL-Haptic>
end;

define constant <SDL-Haptic> = <_SDL-Haptic>;

define C-pointer-type <Sint32*> => <Sint32>;
define constant <Sint32<@3>> = <Sint32*>;
define C-struct <SDL-HapticDirection>
  sealed slot SDL-HapticDirection$type :: <C-unsigned-char>;
  sealed array slot SDL-HapticDirection$dir :: <Sint32>, length: 3;
end;

define C-struct <SDL-HapticConstant>
  sealed slot SDL-HapticConstant$type :: <C-unsigned-short>;
  sealed slot SDL-HapticConstant$direction :: <SDL-HapticDirection>;
  sealed slot SDL-HapticConstant$length :: <C-unsigned-int>;
  sealed slot SDL-HapticConstant$delay :: <C-unsigned-short>;
  sealed slot SDL-HapticConstant$button :: <C-unsigned-short>;
  sealed slot SDL-HapticConstant$interval :: <C-unsigned-short>;
  sealed slot SDL-HapticConstant$level :: <C-signed-short>;
  sealed slot SDL-HapticConstant$attack-length :: <C-unsigned-short>;
  sealed slot SDL-HapticConstant$attack-level :: <C-unsigned-short>;
  sealed slot SDL-HapticConstant$fade-length :: <C-unsigned-short>;
  sealed slot SDL-HapticConstant$fade-level :: <C-unsigned-short>;
end;

define C-struct <SDL-HapticPeriodic>
  sealed slot SDL-HapticPeriodic$type :: <C-unsigned-short>;
  sealed slot SDL-HapticPeriodic$direction :: <SDL-HapticDirection>;
  sealed slot SDL-HapticPeriodic$length :: <C-unsigned-int>;
  sealed slot SDL-HapticPeriodic$delay :: <C-unsigned-short>;
  sealed slot SDL-HapticPeriodic$button :: <C-unsigned-short>;
  sealed slot SDL-HapticPeriodic$interval :: <C-unsigned-short>;
  sealed slot SDL-HapticPeriodic$period :: <C-unsigned-short>;
  sealed slot SDL-HapticPeriodic$magnitude :: <C-signed-short>;
  sealed slot SDL-HapticPeriodic$offset :: <C-signed-short>;
  sealed slot SDL-HapticPeriodic$phase :: <C-unsigned-short>;
  sealed slot SDL-HapticPeriodic$attack-length :: <C-unsigned-short>;
  sealed slot SDL-HapticPeriodic$attack-level :: <C-unsigned-short>;
  sealed slot SDL-HapticPeriodic$fade-length :: <C-unsigned-short>;
  sealed slot SDL-HapticPeriodic$fade-level :: <C-unsigned-short>;
end;

define C-pointer-type <Uint16*> => <Uint16>;
define constant <Uint16<@3>> = <Uint16*>;
define C-pointer-type <Sint16*> => <Sint16>;
define constant <Sint16<@3>> = <Sint16*>;
define C-struct <SDL-HapticCondition>
  sealed slot SDL-HapticCondition$type :: <C-unsigned-short>;
  sealed slot SDL-HapticCondition$direction :: <SDL-HapticDirection>;
  sealed slot SDL-HapticCondition$length :: <C-unsigned-int>;
  sealed slot SDL-HapticCondition$delay :: <C-unsigned-short>;
  sealed slot SDL-HapticCondition$button :: <C-unsigned-short>;
  sealed slot SDL-HapticCondition$interval :: <C-unsigned-short>;
  sealed array slot SDL-HapticCondition$right-sat :: <Uint16>, length: 3;
  sealed array slot SDL-HapticCondition$left-sat :: <Uint16>, length: 3;
  sealed array slot SDL-HapticCondition$right-coeff :: <Sint16>, length: 3;
  sealed array slot SDL-HapticCondition$left-coeff :: <Sint16>, length: 3;
  sealed array slot SDL-HapticCondition$deadband :: <Uint16>, length: 3;
  sealed array slot SDL-HapticCondition$center :: <Sint16>, length: 3;
end;

define C-struct <SDL-HapticRamp>
  sealed slot SDL-HapticRamp$type :: <C-unsigned-short>;
  sealed slot SDL-HapticRamp$direction :: <SDL-HapticDirection>;
  sealed slot SDL-HapticRamp$length :: <C-unsigned-int>;
  sealed slot SDL-HapticRamp$delay :: <C-unsigned-short>;
  sealed slot SDL-HapticRamp$button :: <C-unsigned-short>;
  sealed slot SDL-HapticRamp$interval :: <C-unsigned-short>;
  sealed slot SDL-HapticRamp$start :: <C-signed-short>;
  sealed slot SDL-HapticRamp$end :: <C-signed-short>;
  sealed slot SDL-HapticRamp$attack-length :: <C-unsigned-short>;
  sealed slot SDL-HapticRamp$attack-level :: <C-unsigned-short>;
  sealed slot SDL-HapticRamp$fade-length :: <C-unsigned-short>;
  sealed slot SDL-HapticRamp$fade-level :: <C-unsigned-short>;
end;

define C-struct <SDL-HapticLeftRight>
  sealed slot SDL-HapticLeftRight$type :: <C-unsigned-short>;
  sealed slot SDL-HapticLeftRight$length :: <C-unsigned-int>;
  sealed slot SDL-HapticLeftRight$large-magnitude :: <C-unsigned-short>;
  sealed slot SDL-HapticLeftRight$small-magnitude :: <C-unsigned-short>;
end;

define C-struct <SDL-HapticCustom>
  sealed slot SDL-HapticCustom$type :: <C-unsigned-short>;
  sealed slot SDL-HapticCustom$direction :: <SDL-HapticDirection>;
  sealed slot SDL-HapticCustom$length :: <C-unsigned-int>;
  sealed slot SDL-HapticCustom$delay :: <C-unsigned-short>;
  sealed slot SDL-HapticCustom$button :: <C-unsigned-short>;
  sealed slot SDL-HapticCustom$interval :: <C-unsigned-short>;
  sealed slot SDL-HapticCustom$channels :: <C-unsigned-char>;
  sealed slot SDL-HapticCustom$period :: <C-unsigned-short>;
  sealed slot SDL-HapticCustom$samples :: <C-unsigned-short>;
  sealed slot SDL-HapticCustom$data :: <Uint16*>;
  sealed slot SDL-HapticCustom$attack-length :: <C-unsigned-short>;
  sealed slot SDL-HapticCustom$attack-level :: <C-unsigned-short>;
  sealed slot SDL-HapticCustom$fade-length :: <C-unsigned-short>;
  sealed slot SDL-HapticCustom$fade-level :: <C-unsigned-short>;
end;

define C-union <SDL-HapticEffect>
  slot SDL-HapticEffect$type :: <C-unsigned-short>;
  slot SDL-HapticEffect$constant :: <SDL-HapticConstant>;
  slot SDL-HapticEffect$periodic :: <SDL-HapticPeriodic>;
  slot SDL-HapticEffect$condition :: <SDL-HapticCondition>;
  slot SDL-HapticEffect$ramp :: <SDL-HapticRamp>;
  slot SDL-HapticEffect$leftright :: <SDL-HapticLeftRight>;
  slot SDL-HapticEffect$custom :: <SDL-HapticCustom>;
end;

define inline C-function SDL-NumHaptics
  result res :: <C-signed-int>;
  c-name: "SDL_NumHaptics";
end;

define inline C-function SDL-HapticName
  input parameter device-index_ :: <C-signed-int>;
  result res :: <c-string>;
  c-name: "SDL_HapticName";
end;

define C-pointer-type <SDL-Haptic*> => <SDL-Haptic>;
define inline C-function SDL-HapticOpen
  input parameter device-index_ :: <C-signed-int>;
  result res :: <SDL-Haptic*>;
  c-name: "SDL_HapticOpen";
end;

define inline C-function SDL-HapticOpened
  input parameter device-index_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_HapticOpened";
end;

define inline C-function SDL-HapticIndex
  input parameter haptic_ :: <SDL-Haptic*>;
  result res :: <C-signed-int>;
  c-name: "SDL_HapticIndex";
end;

define inline C-function SDL-MouseIsHaptic
  result res :: <C-signed-int>;
  c-name: "SDL_MouseIsHaptic";
end;

define inline C-function SDL-HapticOpenFromMouse
  result res :: <SDL-Haptic*>;
  c-name: "SDL_HapticOpenFromMouse";
end;

define inline C-function SDL-JoystickIsHaptic
  input parameter joystick_ :: <SDL-Joystick*>;
  result res :: <C-signed-int>;
  c-name: "SDL_JoystickIsHaptic";
end;

define inline C-function SDL-HapticOpenFromJoystick
  input parameter joystick_ :: <SDL-Joystick*>;
  result res :: <SDL-Haptic*>;
  c-name: "SDL_HapticOpenFromJoystick";
end;

define inline C-function SDL-HapticClose
  input parameter haptic_ :: <SDL-Haptic*>;
  c-name: "SDL_HapticClose";
end;

define inline C-function SDL-HapticNumEffects
  input parameter haptic_ :: <SDL-Haptic*>;
  result res :: <C-signed-int>;
  c-name: "SDL_HapticNumEffects";
end;

define inline C-function SDL-HapticNumEffectsPlaying
  input parameter haptic_ :: <SDL-Haptic*>;
  result res :: <C-signed-int>;
  c-name: "SDL_HapticNumEffectsPlaying";
end;

define inline C-function SDL-HapticQuery
  input parameter haptic_ :: <SDL-Haptic*>;
  result res :: <C-unsigned-int>;
  c-name: "SDL_HapticQuery";
end;

define inline C-function SDL-HapticNumAxes
  input parameter haptic_ :: <SDL-Haptic*>;
  result res :: <C-signed-int>;
  c-name: "SDL_HapticNumAxes";
end;

define C-pointer-type <SDL-HapticEffect*> => <SDL-HapticEffect>;
define inline C-function SDL-HapticEffectSupported
  input parameter haptic_ :: <SDL-Haptic*>;
  input parameter effect_ :: <SDL-HapticEffect*>;
  result res :: <C-signed-int>;
  c-name: "SDL_HapticEffectSupported";
end;

define inline C-function SDL-HapticNewEffect
  input parameter haptic_ :: <SDL-Haptic*>;
  input parameter effect_ :: <SDL-HapticEffect*>;
  result res :: <C-signed-int>;
  c-name: "SDL_HapticNewEffect";
end;

define inline C-function SDL-HapticUpdateEffect
  input parameter haptic_ :: <SDL-Haptic*>;
  input parameter effect_ :: <C-signed-int>;
  input parameter data_ :: <SDL-HapticEffect*>;
  result res :: <C-signed-int>;
  c-name: "SDL_HapticUpdateEffect";
end;

define inline C-function SDL-HapticRunEffect
  input parameter haptic_ :: <SDL-Haptic*>;
  input parameter effect_ :: <C-signed-int>;
  input parameter iterations_ :: <Uint32>;
  result res :: <C-signed-int>;
  c-name: "SDL_HapticRunEffect";
end;

define inline C-function SDL-HapticStopEffect
  input parameter haptic_ :: <SDL-Haptic*>;
  input parameter effect_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_HapticStopEffect";
end;

define inline C-function SDL-HapticDestroyEffect
  input parameter haptic_ :: <SDL-Haptic*>;
  input parameter effect_ :: <C-signed-int>;
  c-name: "SDL_HapticDestroyEffect";
end;

define inline C-function SDL-HapticGetEffectStatus
  input parameter haptic_ :: <SDL-Haptic*>;
  input parameter effect_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_HapticGetEffectStatus";
end;

define inline C-function SDL-HapticSetGain
  input parameter haptic_ :: <SDL-Haptic*>;
  input parameter gain_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_HapticSetGain";
end;

define inline C-function SDL-HapticSetAutocenter
  input parameter haptic_ :: <SDL-Haptic*>;
  input parameter autocenter_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_HapticSetAutocenter";
end;

define inline C-function SDL-HapticPause
  input parameter haptic_ :: <SDL-Haptic*>;
  result res :: <C-signed-int>;
  c-name: "SDL_HapticPause";
end;

define inline C-function SDL-HapticUnpause
  input parameter haptic_ :: <SDL-Haptic*>;
  result res :: <C-signed-int>;
  c-name: "SDL_HapticUnpause";
end;

define inline C-function SDL-HapticStopAll
  input parameter haptic_ :: <SDL-Haptic*>;
  result res :: <C-signed-int>;
  c-name: "SDL_HapticStopAll";
end;

define inline C-function SDL-HapticRumbleSupported
  input parameter haptic_ :: <SDL-Haptic*>;
  result res :: <C-signed-int>;
  c-name: "SDL_HapticRumbleSupported";
end;

define inline C-function SDL-HapticRumbleInit
  input parameter haptic_ :: <SDL-Haptic*>;
  result res :: <C-signed-int>;
  c-name: "SDL_HapticRumbleInit";
end;

define inline C-function SDL-HapticRumblePlay
  input parameter haptic_ :: <SDL-Haptic*>;
  input parameter strength_ :: <C-float>;
  input parameter length_ :: <Uint32>;
  result res :: <C-signed-int>;
  c-name: "SDL_HapticRumblePlay";
end;

define inline C-function SDL-HapticRumbleStop
  input parameter haptic_ :: <SDL-Haptic*>;
  result res :: <C-signed-int>;
  c-name: "SDL_HapticRumbleStop";
end;

define constant $SDL-HAPTIC-CONSTANT = 1;

define constant $SDL-HAPTIC-SINE = 2;

define constant $SDL-HAPTIC-LEFTRIGHT = 4;

define constant $SDL-HAPTIC-TRIANGLE = 8;

define constant $SDL-HAPTIC-SAWTOOTHUP = 16;

define constant $SDL-HAPTIC-SAWTOOTHDOWN = 32;

define constant $SDL-HAPTIC-RAMP = 64;

define constant $SDL-HAPTIC-SPRING = 128;

define constant $SDL-HAPTIC-DAMPER = 256;

define constant $SDL-HAPTIC-INERTIA = 512;

define constant $SDL-HAPTIC-FRICTION = 1024;

define constant $SDL-HAPTIC-CUSTOM = 2048;

define constant $SDL-HAPTIC-GAIN = 4096;

define constant $SDL-HAPTIC-AUTOCENTER = 8192;

define constant $SDL-HAPTIC-STATUS = 16384;

define constant $SDL-HAPTIC-PAUSE = 32768;

define constant $SDL-HAPTIC-POLAR = 0;

define constant $SDL-HAPTIC-CARTESIAN = 1;

define constant $SDL-HAPTIC-SPHERICAL = 2;

define constant $SDL-HAPTIC-INFINITY = -1;

define constant <SDL-HintPriority> = <C-int>;
define constant $SDL-HINT-DEFAULT = 0;
define constant $SDL-HINT-NORMAL = 1;
define constant $SDL-HINT-OVERRIDE = 2;

define inline C-function SDL-SetHintWithPriority
  input parameter name_ :: <c-string>;
  input parameter value_ :: <c-string>;
  input parameter priority_ :: <SDL-HintPriority>;
  result res :: <SDL-bool>;
  c-name: "SDL_SetHintWithPriority";
end;

define inline C-function SDL-SetHint
  input parameter name_ :: <c-string>;
  input parameter value_ :: <c-string>;
  result res :: <SDL-bool>;
  c-name: "SDL_SetHint";
end;

define inline C-function SDL-GetHint
  input parameter name_ :: <c-string>;
  result res :: <c-string>;
  c-name: "SDL_GetHint";
end;

define constant <SDL-HintCallback> = <C-function-pointer>;
define inline C-function SDL-AddHintCallback
  input parameter name_ :: <c-string>;
  input parameter callback_ :: <SDL-HintCallback>;
  input parameter userdata_ :: <C-void*>;
  c-name: "SDL_AddHintCallback";
end;

define inline C-function SDL-DelHintCallback
  input parameter name_ :: <c-string>;
  input parameter callback_ :: <SDL-HintCallback>;
  input parameter userdata_ :: <C-void*>;
  c-name: "SDL_DelHintCallback";
end;

define inline C-function SDL-ClearHints
  c-name: "SDL_ClearHints";
end;

define constant $SDL-HINT-FRAMEBUFFER-ACCELERATION = "SDL_FRAMEBUFFER_ACCELERATION";

define constant $SDL-HINT-RENDER-DRIVER = "SDL_RENDER_DRIVER";

define constant $SDL-HINT-RENDER-OPENGL-SHADERS = "SDL_RENDER_OPENGL_SHADERS";

define constant $SDL-HINT-RENDER-DIRECT3D-THREADSAFE = "SDL_RENDER_DIRECT3D_THREADSAFE";

define constant $SDL-HINT-RENDER-DIRECT3D11-DEBUG = "SDL_HINT_RENDER_DIRECT3D11_DEBUG";

define constant $SDL-HINT-RENDER-SCALE-QUALITY = "SDL_RENDER_SCALE_QUALITY";

define constant $SDL-HINT-RENDER-VSYNC = "SDL_RENDER_VSYNC";

define constant $SDL-HINT-VIDEO-ALLOW-SCREENSAVER = "SDL_VIDEO_ALLOW_SCREENSAVER";

define constant $SDL-HINT-VIDEO-X11-XVIDMODE = "SDL_VIDEO_X11_XVIDMODE";

define constant $SDL-HINT-VIDEO-X11-XINERAMA = "SDL_VIDEO_X11_XINERAMA";

define constant $SDL-HINT-VIDEO-X11-XRANDR = "SDL_VIDEO_X11_XRANDR";

define constant $SDL-HINT-GRAB-KEYBOARD = "SDL_GRAB_KEYBOARD";

define constant $SDL-HINT-MOUSE-RELATIVE-MODE-WARP = "SDL_MOUSE_RELATIVE_MODE_WARP";

define constant $SDL-HINT-VIDEO-MINIMIZE-ON-FOCUS-LOSS = "SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS";

define constant $SDL-HINT-IDLE-TIMER-DISABLED = "SDL_IOS_IDLE_TIMER_DISABLED";

define constant $SDL-HINT-ORIENTATIONS = "SDL_IOS_ORIENTATIONS";

define constant $SDL-HINT-ACCELEROMETER-AS-JOYSTICK = "SDL_ACCELEROMETER_AS_JOYSTICK";

define constant $SDL-HINT-XINPUT-ENABLED = "SDL_XINPUT_ENABLED";

define constant $SDL-HINT-GAMECONTROLLERCONFIG = "SDL_GAMECONTROLLERCONFIG";

define constant $SDL-HINT-JOYSTICK-ALLOW-BACKGROUND-EVENTS = "SDL_JOYSTICK_ALLOW_BACKGROUND_EVENTS";

define constant $SDL-HINT-ALLOW-TOPMOST = "SDL_ALLOW_TOPMOST";

define constant $SDL-HINT-TIMER-RESOLUTION = "SDL_TIMER_RESOLUTION";

define constant $SDL-HINT-VIDEO-HIGHDPI-DISABLED = "SDL_VIDEO_HIGHDPI_DISABLED";

define constant $SDL-HINT-MAC-CTRL-CLICK-EMULATE-RIGHT-CLICK = "SDL_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK";

define constant $SDL-HINT-VIDEO-WIN-D3DCOMPILER = "SDL_VIDEO_WIN_D3DCOMPILER";

define constant $SDL-HINT-VIDEO-WINDOW-SHARE-PIXEL-FORMAT = "SDL_VIDEO_WINDOW_SHARE_PIXEL_FORMAT";

define constant $SDL-HINT-WINRT-PRIVACY-POLICY-URL = "SDL_HINT_WINRT_PRIVACY_POLICY_URL";

define constant $SDL-HINT-WINRT-PRIVACY-POLICY-LABEL = "SDL_HINT_WINRT_PRIVACY_POLICY_LABEL";

define constant $SDL-HINT-WINRT-HANDLE-BACK-BUTTON = "SDL_HINT_WINRT_HANDLE_BACK_BUTTON";

define constant $SDL-HINT-VIDEO-MAC-FULLSCREEN-SPACES = "SDL_VIDEO_MAC_FULLSCREEN_SPACES";

define inline C-function SDL-NumJoysticks
  result res :: <C-signed-int>;
  c-name: "SDL_NumJoysticks";
end;

define inline C-function SDL-JoystickNameForIndex
  input parameter device-index_ :: <C-signed-int>;
  result res :: <c-string>;
  c-name: "SDL_JoystickNameForIndex";
end;

define inline C-function SDL-JoystickOpen
  input parameter device-index_ :: <C-signed-int>;
  result res :: <SDL-Joystick*>;
  c-name: "SDL_JoystickOpen";
end;

define inline C-function SDL-JoystickName
  input parameter joystick_ :: <SDL-Joystick*>;
  result res :: <c-string>;
  c-name: "SDL_JoystickName";
end;

define inline C-function SDL-JoystickGetDeviceGUID
  input parameter device-index_ :: <C-signed-int>;
  result res :: <SDL-JoystickGUID>;
  c-name: "SDL_JoystickGetDeviceGUID";
end;

define inline C-function SDL-JoystickGetGUID
  input parameter joystick_ :: <SDL-Joystick*>;
  result res :: <SDL-JoystickGUID>;
  c-name: "SDL_JoystickGetGUID";
end;

define inline C-function SDL-JoystickGetGUIDString
  input parameter guid_ :: <SDL-JoystickGUID>;
  input parameter pszGUID_ :: <c-string>;
  input parameter cbGUID_ :: <C-signed-int>;
  c-name: "SDL_JoystickGetGUIDString";
end;

define inline C-function SDL-JoystickGetGUIDFromString
  input parameter pchGUID_ :: <c-string>;
  result res :: <SDL-JoystickGUID>;
  c-name: "SDL_JoystickGetGUIDFromString";
end;

define inline C-function SDL-JoystickGetAttached
  input parameter joystick_ :: <SDL-Joystick*>;
  result res :: <SDL-bool>;
  c-name: "SDL_JoystickGetAttached";
end;

define inline C-function SDL-JoystickInstanceID
  input parameter joystick_ :: <SDL-Joystick*>;
  result res :: <SDL-JoystickID>;
  c-name: "SDL_JoystickInstanceID";
end;

define inline C-function SDL-JoystickNumAxes
  input parameter joystick_ :: <SDL-Joystick*>;
  result res :: <C-signed-int>;
  c-name: "SDL_JoystickNumAxes";
end;

define inline C-function SDL-JoystickNumBalls
  input parameter joystick_ :: <SDL-Joystick*>;
  result res :: <C-signed-int>;
  c-name: "SDL_JoystickNumBalls";
end;

define inline C-function SDL-JoystickNumHats
  input parameter joystick_ :: <SDL-Joystick*>;
  result res :: <C-signed-int>;
  c-name: "SDL_JoystickNumHats";
end;

define inline C-function SDL-JoystickNumButtons
  input parameter joystick_ :: <SDL-Joystick*>;
  result res :: <C-signed-int>;
  c-name: "SDL_JoystickNumButtons";
end;

define inline C-function SDL-JoystickUpdate
  c-name: "SDL_JoystickUpdate";
end;

define inline C-function SDL-JoystickEventState
  input parameter state_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_JoystickEventState";
end;

define inline C-function SDL-JoystickGetAxis
  input parameter joystick_ :: <SDL-Joystick*>;
  input parameter axis_ :: <C-signed-int>;
  result res :: <Sint16>;
  c-name: "SDL_JoystickGetAxis";
end;

define inline C-function SDL-JoystickGetHat
  input parameter joystick_ :: <SDL-Joystick*>;
  input parameter hat_ :: <C-signed-int>;
  result res :: <Uint8>;
  c-name: "SDL_JoystickGetHat";
end;

define C-pointer-type <int*> => <C-signed-int>;
define inline C-function SDL-JoystickGetBall
  input parameter joystick_ :: <SDL-Joystick*>;
  input parameter ball_ :: <C-signed-int>;
  input parameter dx_ :: <int*>;
  input parameter dy_ :: <int*>;
  result res :: <C-signed-int>;
  c-name: "SDL_JoystickGetBall";
end;

define inline C-function SDL-JoystickGetButton
  input parameter joystick_ :: <SDL-Joystick*>;
  input parameter button_ :: <C-signed-int>;
  result res :: <Uint8>;
  c-name: "SDL_JoystickGetButton";
end;

define inline C-function SDL-JoystickClose
  input parameter joystick_ :: <SDL-Joystick*>;
  c-name: "SDL_JoystickClose";
end;

define constant $SDL-HAT-CENTERED = 0;

define constant $SDL-HAT-UP = 1;

define constant $SDL-HAT-RIGHT = 2;

define constant $SDL-HAT-DOWN = 4;

define constant $SDL-HAT-LEFT = 8;

define constant $SDL-HAT-RIGHTUP = 3;

define constant $SDL-HAT-RIGHTDOWN = 6;

define constant $SDL-HAT-LEFTUP = 9;

define constant $SDL-HAT-LEFTDOWN = 12;

define C-struct <SDL-Window>
end;

define C-pointer-type <SDL-Window*> => <SDL-Window>;
define inline C-function SDL-GetKeyboardFocus
  result res :: <SDL-Window*>;
  c-name: "SDL_GetKeyboardFocus";
end;

define inline C-function SDL-GetKeyboardState
  input parameter numkeys_ :: <int*>;
  result res :: <Uint8*>;
  c-name: "SDL_GetKeyboardState";
end;

define constant <SDL-Keymod> = <C-int>;
define constant $KMOD-NONE = 0;
define constant $KMOD-LSHIFT = 1;
define constant $KMOD-RSHIFT = 2;
define constant $KMOD-LCTRL = 64;
define constant $KMOD-RCTRL = 128;
define constant $KMOD-LALT = 256;
define constant $KMOD-RALT = 512;
define constant $KMOD-LGUI = 1024;
define constant $KMOD-RGUI = 2048;
define constant $KMOD-NUM = 4096;
define constant $KMOD-CAPS = 8192;
define constant $KMOD-MODE = 16384;
define constant $KMOD-RESERVED = 32768;

define inline C-function SDL-GetModState
  result res :: <SDL-Keymod>;
  c-name: "SDL_GetModState";
end;

define inline C-function SDL-SetModState
  input parameter modstate_ :: <SDL-Keymod>;
  c-name: "SDL_SetModState";
end;

define inline C-function SDL-GetKeyFromScancode
  input parameter scancode_ :: <SDL-Scancode>;
  result res :: <SDL-Keycode>;
  c-name: "SDL_GetKeyFromScancode";
end;

define inline C-function SDL-GetScancodeFromKey
  input parameter key_ :: <SDL-Keycode>;
  result res :: <SDL-Scancode>;
  c-name: "SDL_GetScancodeFromKey";
end;

define inline C-function SDL-GetScancodeName
  input parameter scancode_ :: <SDL-Scancode>;
  result res :: <c-string>;
  c-name: "SDL_GetScancodeName";
end;

define inline C-function SDL-GetScancodeFromName
  input parameter name_ :: <c-string>;
  result res :: <SDL-Scancode>;
  c-name: "SDL_GetScancodeFromName";
end;

define inline C-function SDL-GetKeyName
  input parameter key_ :: <SDL-Keycode>;
  result res :: <c-string>;
  c-name: "SDL_GetKeyName";
end;

define inline C-function SDL-GetKeyFromName
  input parameter name_ :: <c-string>;
  result res :: <SDL-Keycode>;
  c-name: "SDL_GetKeyFromName";
end;

define inline C-function SDL-StartTextInput
  c-name: "SDL_StartTextInput";
end;

define inline C-function SDL-IsTextInputActive
  result res :: <SDL-bool>;
  c-name: "SDL_IsTextInputActive";
end;

define inline C-function SDL-StopTextInput
  c-name: "SDL_StopTextInput";
end;

define C-struct <SDL-Rect>
  sealed slot SDL-Rect$x :: <C-signed-int>;
  sealed slot SDL-Rect$y :: <C-signed-int>;
  sealed slot SDL-Rect$w :: <C-signed-int>;
  sealed slot SDL-Rect$h :: <C-signed-int>;
end;

define C-pointer-type <SDL-Rect*> => <SDL-Rect>;
define inline C-function SDL-SetTextInputRect
  input parameter rect_ :: <SDL-Rect*>;
  c-name: "SDL_SetTextInputRect";
end;

define inline C-function SDL-HasScreenKeyboardSupport
  result res :: <SDL-bool>;
  c-name: "SDL_HasScreenKeyboardSupport";
end;

define inline C-function SDL-IsScreenKeyboardShown
  input parameter window_ :: <SDL-Window*>;
  result res :: <SDL-bool>;
  c-name: "SDL_IsScreenKeyboardShown";
end;

define constant $SDLK-UNKNOWN = 0;
define constant $SDLK-RETURN = 13;
define constant $SDLK-ESCAPE = 3158835;
define constant $SDLK-BACKSPACE = 8;
define constant $SDLK-TAB = 9;
define constant $SDLK-SPACE = 32;
define constant $SDLK-EXCLAIM = 33;
define constant $SDLK-QUOTEDBL = 34;
define constant $SDLK-HASH = 35;
define constant $SDLK-PERCENT = 37;
define constant $SDLK-DOLLAR = 36;
define constant $SDLK-AMPERSAND = 38;
define constant $SDLK-QUOTE = 39;
define constant $SDLK-LEFTPAREN = 40;
define constant $SDLK-RIGHTPAREN = 41;
define constant $SDLK-ASTERISK = 42;
define constant $SDLK-PLUS = 43;
define constant $SDLK-COMMA = 44;
define constant $SDLK-MINUS = 45;
define constant $SDLK-PERIOD = 46;
define constant $SDLK-SLASH = 47;
define constant $SDLK-0 = 48;
define constant $SDLK-1 = 49;
define constant $SDLK-2 = 50;
define constant $SDLK-3 = 51;
define constant $SDLK-4 = 52;
define constant $SDLK-5 = 53;
define constant $SDLK-6 = 54;
define constant $SDLK-7 = 55;
define constant $SDLK-8 = 56;
define constant $SDLK-9 = 57;
define constant $SDLK-COLON = 58;
define constant $SDLK-SEMICOLON = 59;
define constant $SDLK-LESS = 60;
define constant $SDLK-EQUALS = 61;
define constant $SDLK-GREATER = 62;
define constant $SDLK-QUESTION = 63;
define constant $SDLK-AT = 64;
define constant $SDLK-LEFTBRACKET = 91;
define constant $SDLK-BACKSLASH = 92;
define constant $SDLK-RIGHTBRACKET = 93;
define constant $SDLK-CARET = 94;
define constant $SDLK-UNDERSCORE = 95;
define constant $SDLK-BACKQUOTE = 96;
define constant $SDLK-a = 97;
define constant $SDLK-b = 98;
define constant $SDLK-c = 99;
define constant $SDLK-d = 100;
define constant $SDLK-e = 101;
define constant $SDLK-f = 102;
define constant $SDLK-g = 103;
define constant $SDLK-h = 104;
define constant $SDLK-i = 105;
define constant $SDLK-j = 106;
define constant $SDLK-k = 107;
define constant $SDLK-l = 108;
define constant $SDLK-m = 109;
define constant $SDLK-n = 110;
define constant $SDLK-o = 111;
define constant $SDLK-p = 112;
define constant $SDLK-q = 113;
define constant $SDLK-r = 114;
define constant $SDLK-s = 115;
define constant $SDLK-t = 116;
define constant $SDLK-u = 117;
define constant $SDLK-v = 118;
define constant $SDLK-w = 119;
define constant $SDLK-x = 120;
define constant $SDLK-y = 121;
define constant $SDLK-z = 122;
define constant $SDLK-CAPSLOCK = 57;
define constant $SDLK-F1 = 58;
define constant $SDLK-F2 = 59;
define constant $SDLK-F3 = 60;
define constant $SDLK-F4 = 61;
define constant $SDLK-F5 = 62;
define constant $SDLK-F6 = 63;
define constant $SDLK-F7 = 64;
define constant $SDLK-F8 = 65;
define constant $SDLK-F9 = 66;
define constant $SDLK-F10 = 67;
define constant $SDLK-F11 = 68;
define constant $SDLK-F12 = 69;
define constant $SDLK-PRINTSCREEN = 70;
define constant $SDLK-SCROLLLOCK = 71;
define constant $SDLK-PAUSE = 72;
define constant $SDLK-INSERT = 73;
define constant $SDLK-HOME = 74;
define constant $SDLK-PAGEUP = 75;
define constant $SDLK-DELETE = 3225399;
define constant $SDLK-END = 77;
define constant $SDLK-PAGEDOWN = 78;
define constant $SDLK-RIGHT = 79;
define constant $SDLK-LEFT = 80;
define constant $SDLK-DOWN = 81;
define constant $SDLK-UP = 82;
define constant $SDLK-NUMLOCKCLEAR = 83;
define constant $SDLK-KP-DIVIDE = 84;
define constant $SDLK-KP-MULTIPLY = 85;
define constant $SDLK-KP-MINUS = 86;
define constant $SDLK-KP-PLUS = 87;
define constant $SDLK-KP-ENTER = 88;
define constant $SDLK-KP-1 = 89;
define constant $SDLK-KP-2 = 90;
define constant $SDLK-KP-3 = 91;
define constant $SDLK-KP-4 = 92;
define constant $SDLK-KP-5 = 93;
define constant $SDLK-KP-6 = 94;
define constant $SDLK-KP-7 = 95;
define constant $SDLK-KP-8 = 96;
define constant $SDLK-KP-9 = 97;
define constant $SDLK-KP-0 = 98;
define constant $SDLK-KP-PERIOD = 99;
define constant $SDLK-APPLICATION = 101;
define constant $SDLK-POWER = 102;
define constant $SDLK-KP-EQUALS = 103;
define constant $SDLK-F13 = 104;
define constant $SDLK-F14 = 105;
define constant $SDLK-F15 = 106;
define constant $SDLK-F16 = 107;
define constant $SDLK-F17 = 108;
define constant $SDLK-F18 = 109;
define constant $SDLK-F19 = 110;
define constant $SDLK-F20 = 111;
define constant $SDLK-F21 = 112;
define constant $SDLK-F22 = 113;
define constant $SDLK-F23 = 114;
define constant $SDLK-F24 = 115;
define constant $SDLK-EXECUTE = 116;
define constant $SDLK-HELP = 117;
define constant $SDLK-MENU = 118;
define constant $SDLK-SELECT = 119;
define constant $SDLK-STOP = 120;
define constant $SDLK-AGAIN = 121;
define constant $SDLK-UNDO = 122;
define constant $SDLK-CUT = 123;
define constant $SDLK-COPY = 124;
define constant $SDLK-PASTE = 125;
define constant $SDLK-FIND = 126;
define constant $SDLK-MUTE = 127;
define constant $SDLK-VOLUMEUP = 128;
define constant $SDLK-VOLUMEDOWN = 129;
define constant $SDLK-KP-COMMA = 133;
define constant $SDLK-KP-EQUALSAS400 = 134;
define constant $SDLK-ALTERASE = 153;
define constant $SDLK-SYSREQ = 154;
define constant $SDLK-CANCEL = 155;
define constant $SDLK-CLEAR = 156;
define constant $SDLK-PRIOR = 157;
define constant $SDLK-RETURN2 = 158;
define constant $SDLK-SEPARATOR = 159;
define constant $SDLK-OUT = 160;
define constant $SDLK-OPER = 161;
define constant $SDLK-CLEARAGAIN = 162;
define constant $SDLK-CRSEL = 163;
define constant $SDLK-EXSEL = 164;
define constant $SDLK-KP-00 = 176;
define constant $SDLK-KP-000 = 177;
define constant $SDLK-THOUSANDSSEPARATOR = 178;
define constant $SDLK-DECIMALSEPARATOR = 179;
define constant $SDLK-CURRENCYUNIT = 180;
define constant $SDLK-CURRENCYSUBUNIT = 181;
define constant $SDLK-KP-LEFTPAREN = 182;
define constant $SDLK-KP-RIGHTPAREN = 183;
define constant $SDLK-KP-LEFTBRACE = 184;
define constant $SDLK-KP-RIGHTBRACE = 185;
define constant $SDLK-KP-TAB = 186;
define constant $SDLK-KP-BACKSPACE = 187;
define constant $SDLK-KP-A = 188;
define constant $SDLK-KP-B = 189;
define constant $SDLK-KP-C = 190;
define constant $SDLK-KP-D = 191;
define constant $SDLK-KP-E = 192;
define constant $SDLK-KP-F = 193;
define constant $SDLK-KP-XOR = 194;
define constant $SDLK-KP-POWER = 195;
define constant $SDLK-KP-PERCENT = 196;
define constant $SDLK-KP-LESS = 197;
define constant $SDLK-KP-GREATER = 198;
define constant $SDLK-KP-AMPERSAND = 199;
define constant $SDLK-KP-DBLAMPERSAND = 200;
define constant $SDLK-KP-VERTICALBAR = 201;
define constant $SDLK-KP-DBLVERTICALBAR = 202;
define constant $SDLK-KP-COLON = 203;
define constant $SDLK-KP-HASH = 204;
define constant $SDLK-KP-SPACE = 205;
define constant $SDLK-KP-AT = 206;
define constant $SDLK-KP-EXCLAM = 207;
define constant $SDLK-KP-MEMSTORE = 208;
define constant $SDLK-KP-MEMRECALL = 209;
define constant $SDLK-KP-MEMCLEAR = 210;
define constant $SDLK-KP-MEMADD = 211;
define constant $SDLK-KP-MEMSUBTRACT = 212;
define constant $SDLK-KP-MEMMULTIPLY = 213;
define constant $SDLK-KP-MEMDIVIDE = 214;
define constant $SDLK-KP-PLUSMINUS = 215;
define constant $SDLK-KP-CLEAR = 216;
define constant $SDLK-KP-CLEARENTRY = 217;
define constant $SDLK-KP-BINARY = 218;
define constant $SDLK-KP-OCTAL = 219;
define constant $SDLK-KP-DECIMAL = 220;
define constant $SDLK-KP-HEXADECIMAL = 221;
define constant $SDLK-LCTRL = 224;
define constant $SDLK-LSHIFT = 225;
define constant $SDLK-LALT = 226;
define constant $SDLK-LGUI = 227;
define constant $SDLK-RCTRL = 228;
define constant $SDLK-RSHIFT = 229;
define constant $SDLK-RALT = 230;
define constant $SDLK-RGUI = 231;
define constant $SDLK-MODE = 257;
define constant $SDLK-AUDIONEXT = 258;
define constant $SDLK-AUDIOPREV = 259;
define constant $SDLK-AUDIOSTOP = 260;
define constant $SDLK-AUDIOPLAY = 261;
define constant $SDLK-AUDIOMUTE = 262;
define constant $SDLK-MEDIASELECT = 263;
define constant $SDLK-WWW = 264;
define constant $SDLK-MAIL = 265;
define constant $SDLK-CALCULATOR = 266;
define constant $SDLK-COMPUTER = 267;
define constant $SDLK-AC-SEARCH = 268;
define constant $SDLK-AC-HOME = 269;
define constant $SDLK-AC-BACK = 270;
define constant $SDLK-AC-FORWARD = 271;
define constant $SDLK-AC-STOP = 272;
define constant $SDLK-AC-REFRESH = 273;
define constant $SDLK-AC-BOOKMARKS = 274;
define constant $SDLK-BRIGHTNESSDOWN = 275;
define constant $SDLK-BRIGHTNESSUP = 276;
define constant $SDLK-DISPLAYSWITCH = 277;
define constant $SDLK-KBDILLUMTOGGLE = 278;
define constant $SDLK-KBDILLUMDOWN = 279;
define constant $SDLK-KBDILLUMUP = 280;
define constant $SDLK-EJECT = 281;
define constant $SDLK-SLEEP = 282;

define constant $SDLK-SCANCODE-MASK = 0;

define constant $KMOD-CTRL = 0;

define constant $KMOD-SHIFT = 0;

define constant $KMOD-ALT = 0;

define constant $KMOD-GUI = 0;

define inline C-function SDL-LoadObject
  input parameter sofile_ :: <c-string>;
  result res :: <C-void*>;
  c-name: "SDL_LoadObject";
end;

define inline C-function SDL-LoadFunction
  input parameter handle_ :: <C-void*>;
  input parameter name_ :: <c-string>;
  result res :: <C-void*>;
  c-name: "SDL_LoadFunction";
end;

define inline C-function SDL-UnloadObject
  input parameter handle_ :: <C-void*>;
  c-name: "SDL_UnloadObject";
end;

define constant $SDL-LOG-CATEGORY-APPLICATION = 0;
define constant $SDL-LOG-CATEGORY-ERROR = 1;
define constant $SDL-LOG-CATEGORY-ASSERT = 2;
define constant $SDL-LOG-CATEGORY-SYSTEM = 3;
define constant $SDL-LOG-CATEGORY-AUDIO = 4;
define constant $SDL-LOG-CATEGORY-VIDEO = 5;
define constant $SDL-LOG-CATEGORY-RENDER = 6;
define constant $SDL-LOG-CATEGORY-INPUT = 7;
define constant $SDL-LOG-CATEGORY-TEST = 8;
define constant $SDL-LOG-CATEGORY-RESERVED1 = 9;
define constant $SDL-LOG-CATEGORY-RESERVED2 = 10;
define constant $SDL-LOG-CATEGORY-RESERVED3 = 11;
define constant $SDL-LOG-CATEGORY-RESERVED4 = 12;
define constant $SDL-LOG-CATEGORY-RESERVED5 = 13;
define constant $SDL-LOG-CATEGORY-RESERVED6 = 14;
define constant $SDL-LOG-CATEGORY-RESERVED7 = 15;
define constant $SDL-LOG-CATEGORY-RESERVED8 = 16;
define constant $SDL-LOG-CATEGORY-RESERVED9 = 17;
define constant $SDL-LOG-CATEGORY-RESERVED10 = 18;
define constant $SDL-LOG-CATEGORY-CUSTOM = 19;

define constant <SDL-LogPriority> = <C-int>;
define constant $SDL-LOG-PRIORITY-VERBOSE = 1;
define constant $SDL-LOG-PRIORITY-DEBUG = 2;
define constant $SDL-LOG-PRIORITY-INFO = 3;
define constant $SDL-LOG-PRIORITY-WARN = 4;
define constant $SDL-LOG-PRIORITY-ERROR = 5;
define constant $SDL-LOG-PRIORITY-CRITICAL = 6;
define constant $SDL-NUM-LOG-PRIORITIES = 7;

define inline C-function SDL-LogSetAllPriority
  input parameter priority_ :: <SDL-LogPriority>;
  c-name: "SDL_LogSetAllPriority";
end;

define inline C-function SDL-LogSetPriority
  input parameter category_ :: <C-signed-int>;
  input parameter priority_ :: <SDL-LogPriority>;
  c-name: "SDL_LogSetPriority";
end;

define inline C-function SDL-LogGetPriority
  input parameter category_ :: <C-signed-int>;
  result res :: <SDL-LogPriority>;
  c-name: "SDL_LogGetPriority";
end;

define inline C-function SDL-LogResetPriorities
  c-name: "SDL_LogResetPriorities";
end;

define inline C-function SDL-Log
  input parameter fmt_ :: <c-string>;
  c-name: "SDL_Log";
end;

define inline C-function SDL-LogVerbose
  input parameter category_ :: <C-signed-int>;
  input parameter fmt_ :: <c-string>;
  c-name: "SDL_LogVerbose";
end;

define inline C-function SDL-LogDebug
  input parameter category_ :: <C-signed-int>;
  input parameter fmt_ :: <c-string>;
  c-name: "SDL_LogDebug";
end;

define inline C-function SDL-LogInfo
  input parameter category_ :: <C-signed-int>;
  input parameter fmt_ :: <c-string>;
  c-name: "SDL_LogInfo";
end;

define inline C-function SDL-LogWarn
  input parameter category_ :: <C-signed-int>;
  input parameter fmt_ :: <c-string>;
  c-name: "SDL_LogWarn";
end;

define inline C-function SDL-LogError
  input parameter category_ :: <C-signed-int>;
  input parameter fmt_ :: <c-string>;
  c-name: "SDL_LogError";
end;

define inline C-function SDL-LogCritical
  input parameter category_ :: <C-signed-int>;
  input parameter fmt_ :: <c-string>;
  c-name: "SDL_LogCritical";
end;

define inline C-function SDL-LogMessage
  input parameter category_ :: <C-signed-int>;
  input parameter priority_ :: <SDL-LogPriority>;
  input parameter fmt_ :: <c-string>;
  c-name: "SDL_LogMessage";
end;

define constant <__darwin-va-list> = <C-void*>;

define constant <va-list> = <__darwin-va-list>;

define inline C-function SDL-LogMessageV
  input parameter category_ :: <C-signed-int>;
  input parameter priority_ :: <SDL-LogPriority>;
  input parameter fmt_ :: <c-string>;
  input parameter ap_ :: <va-list>;
  c-name: "SDL_LogMessageV";
end;

define constant <SDL-LogOutputFunction> = <C-function-pointer>;
define C-pointer-type <SDL-LogOutputFunction*> => <SDL-LogOutputFunction>;
define inline C-function SDL-LogGetOutputFunction
  input parameter callback_ :: <SDL-LogOutputFunction*>;
  input parameter userdata_ :: <statically-typed-pointer*>;
  c-name: "SDL_LogGetOutputFunction";
end;

define inline C-function SDL-LogSetOutputFunction
  input parameter callback_ :: <SDL-LogOutputFunction>;
  input parameter userdata_ :: <C-void*>;
  c-name: "SDL_LogSetOutputFunction";
end;

define constant $SDL-MAX-LOG-MESSAGE = 4096;

define constant <SDL-MessageBoxFlags> = <C-int>;
define constant $SDL-MESSAGEBOX-ERROR = 16;
define constant $SDL-MESSAGEBOX-WARNING = 32;
define constant $SDL-MESSAGEBOX-INFORMATION = 64;

define constant <SDL-MessageBoxButtonFlags> = <C-int>;
define constant $SDL-MESSAGEBOX-BUTTON-RETURNKEY-DEFAULT = 1;
define constant $SDL-MESSAGEBOX-BUTTON-ESCAPEKEY-DEFAULT = 2;

define C-struct <SDL-MessageBoxButtonData>
  sealed slot SDL-MessageBoxButtonData$flags :: <C-unsigned-int>;
  sealed slot SDL-MessageBoxButtonData$buttonid :: <C-signed-int>;
  sealed slot SDL-MessageBoxButtonData$text :: <c-string>;
end;

define C-struct <SDL-MessageBoxColor>
  sealed slot SDL-MessageBoxColor$r :: <C-unsigned-char>;
  sealed slot SDL-MessageBoxColor$g :: <C-unsigned-char>;
  sealed slot SDL-MessageBoxColor$b :: <C-unsigned-char>;
end;

define constant <SDL-MessageBoxColorType> = <C-int>;
define constant $SDL-MESSAGEBOX-COLOR-BACKGROUND = 0;
define constant $SDL-MESSAGEBOX-COLOR-TEXT = 1;
define constant $SDL-MESSAGEBOX-COLOR-BUTTON-BORDER = 2;
define constant $SDL-MESSAGEBOX-COLOR-BUTTON-BACKGROUND = 3;
define constant $SDL-MESSAGEBOX-COLOR-BUTTON-SELECTED = 4;
define constant $SDL-MESSAGEBOX-COLOR-MAX = 5;

define C-pointer-type <SDL-MessageBoxColor*> => <SDL-MessageBoxColor>;
define constant <SDL-MessageBoxColor<@5>> = <SDL-MessageBoxColor*>;
define C-struct <SDL-MessageBoxColorScheme>
  sealed array slot SDL-MessageBoxColorScheme$colors :: <SDL-MessageBoxColor>, length: 5;
end;

define C-pointer-type <SDL-MessageBoxButtonData*> => <SDL-MessageBoxButtonData>;
define C-pointer-type <SDL-MessageBoxColorScheme*> => <SDL-MessageBoxColorScheme>;
define C-struct <SDL-MessageBoxData>
  sealed slot SDL-MessageBoxData$flags :: <C-unsigned-int>;
  sealed slot SDL-MessageBoxData$window :: <SDL-Window*>;
  sealed slot SDL-MessageBoxData$title :: <c-string>;
  sealed slot SDL-MessageBoxData$message :: <c-string>;
  sealed slot SDL-MessageBoxData$numbuttons :: <C-signed-int>;
  sealed slot SDL-MessageBoxData$buttons :: <SDL-MessageBoxButtonData*>;
  sealed slot SDL-MessageBoxData$colorScheme :: <SDL-MessageBoxColorScheme*>;
end;

define C-pointer-type <SDL-MessageBoxData*> => <SDL-MessageBoxData>;
define inline C-function SDL-ShowMessageBox
  input parameter messageboxdata_ :: <SDL-MessageBoxData*>;
  input parameter buttonid_ :: <int*>;
  result res :: <C-signed-int>;
  c-name: "SDL_ShowMessageBox";
end;

define inline C-function SDL-ShowSimpleMessageBox
  input parameter flags_ :: <Uint32>;
  input parameter title_ :: <c-string>;
  input parameter message_ :: <c-string>;
  input parameter window_ :: <SDL-Window*>;
  result res :: <C-signed-int>;
  c-name: "SDL_ShowSimpleMessageBox";
end;

define C-struct <SDL-Cursor>
end;

define constant <SDL-SystemCursor> = <C-int>;
define constant $SDL-SYSTEM-CURSOR-ARROW = 0;
define constant $SDL-SYSTEM-CURSOR-IBEAM = 1;
define constant $SDL-SYSTEM-CURSOR-WAIT = 2;
define constant $SDL-SYSTEM-CURSOR-CROSSHAIR = 3;
define constant $SDL-SYSTEM-CURSOR-WAITARROW = 4;
define constant $SDL-SYSTEM-CURSOR-SIZENWSE = 5;
define constant $SDL-SYSTEM-CURSOR-SIZENESW = 6;
define constant $SDL-SYSTEM-CURSOR-SIZEWE = 7;
define constant $SDL-SYSTEM-CURSOR-SIZENS = 8;
define constant $SDL-SYSTEM-CURSOR-SIZEALL = 9;
define constant $SDL-SYSTEM-CURSOR-NO = 10;
define constant $SDL-SYSTEM-CURSOR-HAND = 11;
define constant $SDL-NUM-SYSTEM-CURSORS = 12;

define inline C-function SDL-GetMouseFocus
  result res :: <SDL-Window*>;
  c-name: "SDL_GetMouseFocus";
end;

define inline C-function SDL-GetMouseState
  input parameter x_ :: <int*>;
  input parameter y_ :: <int*>;
  result res :: <Uint32>;
  c-name: "SDL_GetMouseState";
end;

define inline C-function SDL-GetRelativeMouseState
  input parameter x_ :: <int*>;
  input parameter y_ :: <int*>;
  result res :: <Uint32>;
  c-name: "SDL_GetRelativeMouseState";
end;

define inline C-function SDL-WarpMouseInWindow
  input parameter window_ :: <SDL-Window*>;
  input parameter x_ :: <C-signed-int>;
  input parameter y_ :: <C-signed-int>;
  c-name: "SDL_WarpMouseInWindow";
end;

define inline C-function SDL-SetRelativeMouseMode
  input parameter enabled_ :: <SDL-bool>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetRelativeMouseMode";
end;

define inline C-function SDL-GetRelativeMouseMode
  result res :: <SDL-bool>;
  c-name: "SDL_GetRelativeMouseMode";
end;

define C-pointer-type <SDL-Cursor*> => <SDL-Cursor>;
define inline C-function SDL-CreateCursor
  input parameter data_ :: <Uint8*>;
  input parameter mask_ :: <Uint8*>;
  input parameter w_ :: <C-signed-int>;
  input parameter h_ :: <C-signed-int>;
  input parameter hot-x_ :: <C-signed-int>;
  input parameter hot-y_ :: <C-signed-int>;
  result res :: <SDL-Cursor*>;
  c-name: "SDL_CreateCursor";
end;

define C-struct <SDL-Color>
  sealed slot SDL-Color$r :: <C-unsigned-char>;
  sealed slot SDL-Color$g :: <C-unsigned-char>;
  sealed slot SDL-Color$b :: <C-unsigned-char>;
  sealed slot SDL-Color$a :: <C-unsigned-char>;
end;

define C-pointer-type <SDL-Color*> => <SDL-Color>;
define C-struct <SDL-Palette>
  sealed slot SDL-Palette$ncolors :: <C-signed-int>;
  sealed slot SDL-Palette$colors :: <SDL-Color*>;
  sealed slot SDL-Palette$version :: <C-unsigned-int>;
  sealed slot SDL-Palette$refcount :: <C-signed-int>;
end;

define C-pointer-type <SDL-Palette*> => <SDL-Palette>;
define constant <Uint8<@2>> = <Uint8*>;
define C-pointer-type <SDL-PixelFormat*> => <SDL-PixelFormat>;
define C-struct <SDL-PixelFormat>
  sealed slot SDL-PixelFormat$format :: <C-unsigned-int>;
  sealed slot SDL-PixelFormat$palette :: <SDL-Palette*>;
  sealed slot SDL-PixelFormat$BitsPerPixel :: <C-unsigned-char>;
  sealed slot SDL-PixelFormat$BytesPerPixel :: <C-unsigned-char>;
  sealed array slot SDL-PixelFormat$padding :: <Uint8>, length: 2;
  sealed slot SDL-PixelFormat$Rmask :: <C-unsigned-int>;
  sealed slot SDL-PixelFormat$Gmask :: <C-unsigned-int>;
  sealed slot SDL-PixelFormat$Bmask :: <C-unsigned-int>;
  sealed slot SDL-PixelFormat$Amask :: <C-unsigned-int>;
  sealed slot SDL-PixelFormat$Rloss :: <C-unsigned-char>;
  sealed slot SDL-PixelFormat$Gloss :: <C-unsigned-char>;
  sealed slot SDL-PixelFormat$Bloss :: <C-unsigned-char>;
  sealed slot SDL-PixelFormat$Aloss :: <C-unsigned-char>;
  sealed slot SDL-PixelFormat$Rshift :: <C-unsigned-char>;
  sealed slot SDL-PixelFormat$Gshift :: <C-unsigned-char>;
  sealed slot SDL-PixelFormat$Bshift :: <C-unsigned-char>;
  sealed slot SDL-PixelFormat$Ashift :: <C-unsigned-char>;
  sealed slot SDL-PixelFormat$refcount :: <C-signed-int>;
  sealed slot SDL-PixelFormat$next :: <SDL-PixelFormat*>;
end;

define C-pointer-type <SDL-PixelFormat*> => <SDL-PixelFormat>;
define C-struct <SDL-BlitMap>
end;

define C-pointer-type <SDL-BlitMap*> => <SDL-BlitMap>;
define C-struct <SDL-Surface>
  sealed slot SDL-Surface$flags :: <C-unsigned-int>;
  sealed slot SDL-Surface$format :: <SDL-PixelFormat*>;
  sealed slot SDL-Surface$w :: <C-signed-int>;
  sealed slot SDL-Surface$h :: <C-signed-int>;
  sealed slot SDL-Surface$pitch :: <C-signed-int>;
  sealed slot SDL-Surface$pixels :: <C-void*>;
  sealed slot SDL-Surface$userdata :: <C-void*>;
  sealed slot SDL-Surface$locked :: <C-signed-int>;
  sealed slot SDL-Surface$lock-data :: <C-void*>;
  sealed slot SDL-Surface$clip-rect :: <SDL-Rect>;
  sealed slot SDL-Surface$map :: <SDL-BlitMap*>;
  sealed slot SDL-Surface$refcount :: <C-signed-int>;
end;

define C-pointer-type <SDL-Surface*> => <SDL-Surface>;
define inline C-function SDL-CreateColorCursor
  input parameter surface_ :: <SDL-Surface*>;
  input parameter hot-x_ :: <C-signed-int>;
  input parameter hot-y_ :: <C-signed-int>;
  result res :: <SDL-Cursor*>;
  c-name: "SDL_CreateColorCursor";
end;

define inline C-function SDL-CreateSystemCursor
  input parameter id_ :: <SDL-SystemCursor>;
  result res :: <SDL-Cursor*>;
  c-name: "SDL_CreateSystemCursor";
end;

define inline C-function SDL-SetCursor
  input parameter cursor_ :: <SDL-Cursor*>;
  c-name: "SDL_SetCursor";
end;

define inline C-function SDL-GetCursor
  result res :: <SDL-Cursor*>;
  c-name: "SDL_GetCursor";
end;

define inline C-function SDL-GetDefaultCursor
  result res :: <SDL-Cursor*>;
  c-name: "SDL_GetDefaultCursor";
end;

define inline C-function SDL-FreeCursor
  input parameter cursor_ :: <SDL-Cursor*>;
  c-name: "SDL_FreeCursor";
end;

define inline C-function SDL-ShowCursor
  input parameter toggle_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_ShowCursor";
end;

define constant $SDL-BUTTON-LEFT = 1;

define constant $SDL-BUTTON-MIDDLE = 2;

define constant $SDL-BUTTON-RIGHT = 3;

define constant $SDL-BUTTON-X1 = 4;

define constant $SDL-BUTTON-X2 = 5;

define constant $SDL-BUTTON-LMASK = 1;

define constant $SDL-BUTTON-MMASK = 2;

define constant $SDL-BUTTON-RMASK = 4;

define constant $SDL-BUTTON-X1MASK = 8;

define constant $SDL-BUTTON-X2MASK = 16;

define C-struct <SDL-mutex>
end;

define C-pointer-type <SDL-mutex*> => <SDL-mutex>;
define inline C-function SDL-CreateMutex
  result res :: <SDL-mutex*>;
  c-name: "SDL_CreateMutex";
end;

define inline C-function SDL-LockMutex
  input parameter mutex_ :: <SDL-mutex*>;
  result res :: <C-signed-int>;
  c-name: "SDL_LockMutex";
end;

define inline C-function SDL-TryLockMutex
  input parameter mutex_ :: <SDL-mutex*>;
  result res :: <C-signed-int>;
  c-name: "SDL_TryLockMutex";
end;

define inline C-function SDL-UnlockMutex
  input parameter mutex_ :: <SDL-mutex*>;
  result res :: <C-signed-int>;
  c-name: "SDL_UnlockMutex";
end;

define inline C-function SDL-DestroyMutex
  input parameter mutex_ :: <SDL-mutex*>;
  c-name: "SDL_DestroyMutex";
end;

define C-struct <SDL-semaphore>
end;

define constant <SDL-sem> = <SDL-semaphore>;

define C-pointer-type <SDL-sem*> => <SDL-sem>;
define inline C-function SDL-CreateSemaphore
  input parameter initial-value_ :: <Uint32>;
  result res :: <SDL-sem*>;
  c-name: "SDL_CreateSemaphore";
end;

define inline C-function SDL-DestroySemaphore
  input parameter sem_ :: <SDL-sem*>;
  c-name: "SDL_DestroySemaphore";
end;

define inline C-function SDL-SemWait
  input parameter sem_ :: <SDL-sem*>;
  result res :: <C-signed-int>;
  c-name: "SDL_SemWait";
end;

define inline C-function SDL-SemTryWait
  input parameter sem_ :: <SDL-sem*>;
  result res :: <C-signed-int>;
  c-name: "SDL_SemTryWait";
end;

define inline C-function SDL-SemWaitTimeout
  input parameter sem_ :: <SDL-sem*>;
  input parameter ms_ :: <Uint32>;
  result res :: <C-signed-int>;
  c-name: "SDL_SemWaitTimeout";
end;

define inline C-function SDL-SemPost
  input parameter sem_ :: <SDL-sem*>;
  result res :: <C-signed-int>;
  c-name: "SDL_SemPost";
end;

define inline C-function SDL-SemValue
  input parameter sem_ :: <SDL-sem*>;
  result res :: <Uint32>;
  c-name: "SDL_SemValue";
end;

define C-struct <SDL-cond>
end;

define C-pointer-type <SDL-cond*> => <SDL-cond>;
define inline C-function SDL-CreateCond
  result res :: <SDL-cond*>;
  c-name: "SDL_CreateCond";
end;

define inline C-function SDL-DestroyCond
  input parameter cond_ :: <SDL-cond*>;
  c-name: "SDL_DestroyCond";
end;

define inline C-function SDL-CondSignal
  input parameter cond_ :: <SDL-cond*>;
  result res :: <C-signed-int>;
  c-name: "SDL_CondSignal";
end;

define inline C-function SDL-CondBroadcast
  input parameter cond_ :: <SDL-cond*>;
  result res :: <C-signed-int>;
  c-name: "SDL_CondBroadcast";
end;

define inline C-function SDL-CondWait
  input parameter cond_ :: <SDL-cond*>;
  input parameter mutex_ :: <SDL-mutex*>;
  result res :: <C-signed-int>;
  c-name: "SDL_CondWait";
end;

define inline C-function SDL-CondWaitTimeout
  input parameter cond_ :: <SDL-cond*>;
  input parameter mutex_ :: <SDL-mutex*>;
  input parameter ms_ :: <Uint32>;
  result res :: <C-signed-int>;
  c-name: "SDL_CondWaitTimeout";
end;

define constant $SDL-MUTEX-TIMEDOUT = 1;

define constant $SDL-MUTEX-MAXWAIT = -1;

define constant $NeedFunctionPrototypes = 1;

define constant $SDL-PIXELTYPE-UNKNOWN = 0;
define constant $SDL-PIXELTYPE-INDEX1 = 1;
define constant $SDL-PIXELTYPE-INDEX4 = 2;
define constant $SDL-PIXELTYPE-INDEX8 = 3;
define constant $SDL-PIXELTYPE-PACKED8 = 4;
define constant $SDL-PIXELTYPE-PACKED16 = 5;
define constant $SDL-PIXELTYPE-PACKED32 = 6;
define constant $SDL-PIXELTYPE-ARRAYU8 = 7;
define constant $SDL-PIXELTYPE-ARRAYU16 = 8;
define constant $SDL-PIXELTYPE-ARRAYU32 = 9;
define constant $SDL-PIXELTYPE-ARRAYF16 = 10;
define constant $SDL-PIXELTYPE-ARRAYF32 = 11;

define constant $SDL-BITMAPORDER-NONE = 0;
define constant $SDL-BITMAPORDER-4321 = 1;
define constant $SDL-BITMAPORDER-1234 = 2;

define constant $SDL-PACKEDORDER-NONE = 0;
define constant $SDL-PACKEDORDER-XRGB = 1;
define constant $SDL-PACKEDORDER-RGBX = 2;
define constant $SDL-PACKEDORDER-ARGB = 3;
define constant $SDL-PACKEDORDER-RGBA = 4;
define constant $SDL-PACKEDORDER-XBGR = 5;
define constant $SDL-PACKEDORDER-BGRX = 6;
define constant $SDL-PACKEDORDER-ABGR = 7;
define constant $SDL-PACKEDORDER-BGRA = 8;

define constant $SDL-ARRAYORDER-NONE = 0;
define constant $SDL-ARRAYORDER-RGB = 1;
define constant $SDL-ARRAYORDER-RGBA = 2;
define constant $SDL-ARRAYORDER-ARGB = 3;
define constant $SDL-ARRAYORDER-BGR = 4;
define constant $SDL-ARRAYORDER-BGRA = 5;
define constant $SDL-ARRAYORDER-ABGR = 6;

define constant $SDL-PACKEDLAYOUT-NONE = 0;
define constant $SDL-PACKEDLAYOUT-332 = 1;
define constant $SDL-PACKEDLAYOUT-4444 = 2;
define constant $SDL-PACKEDLAYOUT-1555 = 3;
define constant $SDL-PACKEDLAYOUT-5551 = 4;
define constant $SDL-PACKEDLAYOUT-565 = 5;
define constant $SDL-PACKEDLAYOUT-8888 = 6;
define constant $SDL-PACKEDLAYOUT-2101010 = 7;
define constant $SDL-PACKEDLAYOUT-1010102 = 8;

define constant $SDL-PIXELFORMAT-UNKNOWN = 0;
define constant $SDL-PIXELFORMAT-INDEX1LSB = 286261504;
define constant $SDL-PIXELFORMAT-INDEX1MSB = 287310080;
define constant $SDL-PIXELFORMAT-INDEX4LSB = 303039488;
define constant $SDL-PIXELFORMAT-INDEX4MSB = 304088064;
define constant $SDL-PIXELFORMAT-INDEX8 = 318769153;
define constant $SDL-PIXELFORMAT-RGB332 = 336660481;
define constant $SDL-PIXELFORMAT-RGB444 = 353504258;
define constant $SDL-PIXELFORMAT-RGB555 = 353570562;
define constant $SDL-PIXELFORMAT-BGR555 = 357764866;
define constant $SDL-PIXELFORMAT-ARGB4444 = 355602434;
define constant $SDL-PIXELFORMAT-RGBA4444 = 356651010;
define constant $SDL-PIXELFORMAT-ABGR4444 = 359796738;
define constant $SDL-PIXELFORMAT-BGRA4444 = 360845314;
define constant $SDL-PIXELFORMAT-ARGB1555 = 355667970;
define constant $SDL-PIXELFORMAT-RGBA5551 = 356782082;
define constant $SDL-PIXELFORMAT-ABGR1555 = 359862274;
define constant $SDL-PIXELFORMAT-BGRA5551 = 360976386;
define constant $SDL-PIXELFORMAT-RGB565 = 353701890;
define constant $SDL-PIXELFORMAT-BGR565 = 357896194;
define constant $SDL-PIXELFORMAT-RGB24 = 386930691;
define constant $SDL-PIXELFORMAT-BGR24 = 390076419;
define constant $SDL-PIXELFORMAT-RGB888 = 370546692;
define constant $SDL-PIXELFORMAT-RGBX8888 = 371595268;
define constant $SDL-PIXELFORMAT-BGR888 = 374740996;
define constant $SDL-PIXELFORMAT-BGRX8888 = 375789572;
define constant $SDL-PIXELFORMAT-ARGB8888 = 372645892;
define constant $SDL-PIXELFORMAT-RGBA8888 = 373694468;
define constant $SDL-PIXELFORMAT-ABGR8888 = 376840196;
define constant $SDL-PIXELFORMAT-BGRA8888 = 377888772;
define constant $SDL-PIXELFORMAT-ARGB2101010 = 372711428;
define constant $SDL-PIXELFORMAT-YV12 = -231647655;
define constant $SDL-PIXELFORMAT-IYUV = 374692169;
define constant $SDL-PIXELFORMAT-YUY2 = -229026471;
define constant $SDL-PIXELFORMAT-UYVY = 425089365;
define constant $SDL-PIXELFORMAT-YVYU = 358176345;

define inline C-function SDL-GetPixelFormatName
  input parameter format_ :: <Uint32>;
  result res :: <c-string>;
  c-name: "SDL_GetPixelFormatName";
end;

define inline C-function SDL-PixelFormatEnumToMasks
  input parameter format_ :: <Uint32>;
  input parameter bpp_ :: <int*>;
  input parameter Rmask_ :: <Uint32*>;
  input parameter Gmask_ :: <Uint32*>;
  input parameter Bmask_ :: <Uint32*>;
  input parameter Amask_ :: <Uint32*>;
  result res :: <SDL-bool>;
  c-name: "SDL_PixelFormatEnumToMasks";
end;

define inline C-function SDL-MasksToPixelFormatEnum
  input parameter bpp_ :: <C-signed-int>;
  input parameter Rmask_ :: <Uint32>;
  input parameter Gmask_ :: <Uint32>;
  input parameter Bmask_ :: <Uint32>;
  input parameter Amask_ :: <Uint32>;
  result res :: <Uint32>;
  c-name: "SDL_MasksToPixelFormatEnum";
end;

define inline C-function SDL-AllocFormat
  input parameter pixel-format_ :: <Uint32>;
  result res :: <SDL-PixelFormat*>;
  c-name: "SDL_AllocFormat";
end;

define inline C-function SDL-FreeFormat
  input parameter format_ :: <SDL-PixelFormat*>;
  c-name: "SDL_FreeFormat";
end;

define inline C-function SDL-AllocPalette
  input parameter ncolors_ :: <C-signed-int>;
  result res :: <SDL-Palette*>;
  c-name: "SDL_AllocPalette";
end;

define inline C-function SDL-SetPixelFormatPalette
  input parameter format_ :: <SDL-PixelFormat*>;
  input parameter palette_ :: <SDL-Palette*>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetPixelFormatPalette";
end;

define inline C-function SDL-SetPaletteColors
  input parameter palette_ :: <SDL-Palette*>;
  input parameter colors_ :: <SDL-Color*>;
  input parameter firstcolor_ :: <C-signed-int>;
  input parameter ncolors_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetPaletteColors";
end;

define inline C-function SDL-FreePalette
  input parameter palette_ :: <SDL-Palette*>;
  c-name: "SDL_FreePalette";
end;

define inline C-function SDL-MapRGB
  input parameter format_ :: <SDL-PixelFormat*>;
  input parameter r_ :: <Uint8>;
  input parameter g_ :: <Uint8>;
  input parameter b_ :: <Uint8>;
  result res :: <Uint32>;
  c-name: "SDL_MapRGB";
end;

define inline C-function SDL-MapRGBA
  input parameter format_ :: <SDL-PixelFormat*>;
  input parameter r_ :: <Uint8>;
  input parameter g_ :: <Uint8>;
  input parameter b_ :: <Uint8>;
  input parameter a_ :: <Uint8>;
  result res :: <Uint32>;
  c-name: "SDL_MapRGBA";
end;

define inline C-function SDL-GetRGB
  input parameter pixel_ :: <Uint32>;
  input parameter format_ :: <SDL-PixelFormat*>;
  input parameter r_ :: <Uint8*>;
  input parameter g_ :: <Uint8*>;
  input parameter b_ :: <Uint8*>;
  c-name: "SDL_GetRGB";
end;

define inline C-function SDL-GetRGBA
  input parameter pixel_ :: <Uint32>;
  input parameter format_ :: <SDL-PixelFormat*>;
  input parameter r_ :: <Uint8*>;
  input parameter g_ :: <Uint8*>;
  input parameter b_ :: <Uint8*>;
  input parameter a_ :: <Uint8*>;
  c-name: "SDL_GetRGBA";
end;

define inline C-function SDL-CalculateGammaRamp
  input parameter gamma_ :: <C-float>;
  input parameter ramp_ :: <Uint16*>;
  c-name: "SDL_CalculateGammaRamp";
end;

define constant $SDL-ALPHA-OPAQUE = 255;

define constant $SDL-ALPHA-TRANSPARENT = 0;

define constant <SDL-Colour> = <SDL-Color>;

define inline C-function SDL-GetPlatform
  result res :: <c-string>;
  c-name: "SDL_GetPlatform";
end;

define constant $__MACOSX-- = 1;

define constant <SDL-PowerState> = <C-int>;
define constant $SDL-POWERSTATE-UNKNOWN = 0;
define constant $SDL-POWERSTATE-ON-BATTERY = 1;
define constant $SDL-POWERSTATE-NO-BATTERY = 2;
define constant $SDL-POWERSTATE-CHARGING = 3;
define constant $SDL-POWERSTATE-CHARGED = 4;

define inline C-function SDL-GetPowerInfo
  input parameter secs_ :: <int*>;
  input parameter pct_ :: <int*>;
  result res :: <SDL-PowerState>;
  c-name: "SDL_GetPowerInfo";
end;

define C-struct <SDL-Point>
  sealed slot SDL-Point$x :: <C-signed-int>;
  sealed slot SDL-Point$y :: <C-signed-int>;
end;

define inline C-function SDL-RectEmpty
  input parameter r_ :: <SDL-Rect*>;
  result res :: <SDL-bool>;
  c-name: "SDL_RectEmpty";
end;

define inline C-function SDL-RectEquals
  input parameter a_ :: <SDL-Rect*>;
  input parameter b_ :: <SDL-Rect*>;
  result res :: <SDL-bool>;
  c-name: "SDL_RectEquals";
end;

define inline C-function SDL-HasIntersection
  input parameter A_ :: <SDL-Rect*>;
  input parameter B_ :: <SDL-Rect*>;
  result res :: <SDL-bool>;
  c-name: "SDL_HasIntersection";
end;

define inline C-function SDL-IntersectRect
  input parameter A_ :: <SDL-Rect*>;
  input parameter B_ :: <SDL-Rect*>;
  input parameter result_ :: <SDL-Rect*>;
  result res :: <SDL-bool>;
  c-name: "SDL_IntersectRect";
end;

define inline C-function SDL-UnionRect
  input parameter A_ :: <SDL-Rect*>;
  input parameter B_ :: <SDL-Rect*>;
  input parameter result_ :: <SDL-Rect*>;
  c-name: "SDL_UnionRect";
end;

define C-pointer-type <SDL-Point*> => <SDL-Point>;
define inline C-function SDL-EnclosePoints
  input parameter points_ :: <SDL-Point*>;
  input parameter count_ :: <C-signed-int>;
  input parameter clip_ :: <SDL-Rect*>;
  input parameter result_ :: <SDL-Rect*>;
  result res :: <SDL-bool>;
  c-name: "SDL_EnclosePoints";
end;

define inline C-function SDL-IntersectRectAndLine
  input parameter rect_ :: <SDL-Rect*>;
  input parameter X1_ :: <int*>;
  input parameter Y1_ :: <int*>;
  input parameter X2_ :: <int*>;
  input parameter Y2_ :: <int*>;
  result res :: <SDL-bool>;
  c-name: "SDL_IntersectRectAndLine";
end;

define constant <SDL-RendererFlags> = <C-int>;
define constant $SDL-RENDERER-SOFTWARE = 1;
define constant $SDL-RENDERER-ACCELERATED = 2;
define constant $SDL-RENDERER-PRESENTVSYNC = 4;
define constant $SDL-RENDERER-TARGETTEXTURE = 8;

define constant <Uint32<@16>> = <Uint32*>;
define C-struct <SDL-RendererInfo>
  sealed slot SDL-RendererInfo$name :: <c-string>;
  sealed slot SDL-RendererInfo$flags :: <C-unsigned-int>;
  sealed slot SDL-RendererInfo$num-texture-formats :: <C-unsigned-int>;
  sealed array slot SDL-RendererInfo$texture-formats :: <Uint32>, length: 16;
  sealed slot SDL-RendererInfo$max-texture-width :: <C-signed-int>;
  sealed slot SDL-RendererInfo$max-texture-height :: <C-signed-int>;
end;

define constant <SDL-TextureAccess> = <C-int>;
define constant $SDL-TEXTUREACCESS-STATIC = 0;
define constant $SDL-TEXTUREACCESS-STREAMING = 1;
define constant $SDL-TEXTUREACCESS-TARGET = 2;

define constant <SDL-TextureModulate> = <C-int>;
define constant $SDL-TEXTUREMODULATE-NONE = 0;
define constant $SDL-TEXTUREMODULATE-COLOR = 1;
define constant $SDL-TEXTUREMODULATE-ALPHA = 2;

define constant <SDL-RendererFlip> = <C-int>;
define constant $SDL-FLIP-NONE = 0;
define constant $SDL-FLIP-HORIZONTAL = 1;
define constant $SDL-FLIP-VERTICAL = 2;

define C-struct <SDL-Renderer>
end;

define C-struct <SDL-Texture>
end;

define inline C-function SDL-GetNumRenderDrivers
  result res :: <C-signed-int>;
  c-name: "SDL_GetNumRenderDrivers";
end;

define C-pointer-type <SDL-RendererInfo*> => <SDL-RendererInfo>;
define inline C-function SDL-GetRenderDriverInfo
  input parameter index_ :: <C-signed-int>;
  input parameter info_ :: <SDL-RendererInfo*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetRenderDriverInfo";
end;

define C-pointer-type <SDL-Window**> => <SDL-Window*>;
define C-pointer-type <SDL-Renderer*> => <SDL-Renderer>;
define C-pointer-type <SDL-Renderer**> => <SDL-Renderer*>;
define inline C-function SDL-CreateWindowAndRenderer
  input parameter width_ :: <C-signed-int>;
  input parameter height_ :: <C-signed-int>;
  input parameter window-flags_ :: <Uint32>;
  input parameter window_ :: <SDL-Window**>;
  input parameter renderer_ :: <SDL-Renderer**>;
  result res :: <C-signed-int>;
  c-name: "SDL_CreateWindowAndRenderer";
end;

define inline C-function SDL-CreateRenderer
  input parameter window_ :: <SDL-Window*>;
  input parameter index_ :: <C-signed-int>;
  input parameter flags_ :: <Uint32>;
  result res :: <SDL-Renderer*>;
  c-name: "SDL_CreateRenderer";
end;

define inline C-function SDL-CreateSoftwareRenderer
  input parameter surface_ :: <SDL-Surface*>;
  result res :: <SDL-Renderer*>;
  c-name: "SDL_CreateSoftwareRenderer";
end;

define inline C-function SDL-GetRenderer
  input parameter window_ :: <SDL-Window*>;
  result res :: <SDL-Renderer*>;
  c-name: "SDL_GetRenderer";
end;

define inline C-function SDL-GetRendererInfo
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter info_ :: <SDL-RendererInfo*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetRendererInfo";
end;

define inline C-function SDL-GetRendererOutputSize
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter w_ :: <int*>;
  input parameter h_ :: <int*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetRendererOutputSize";
end;

define C-pointer-type <SDL-Texture*> => <SDL-Texture>;
define inline C-function SDL-CreateTexture
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter format_ :: <Uint32>;
  input parameter access_ :: <C-signed-int>;
  input parameter w_ :: <C-signed-int>;
  input parameter h_ :: <C-signed-int>;
  result res :: <SDL-Texture*>;
  c-name: "SDL_CreateTexture";
end;

define inline C-function SDL-CreateTextureFromSurface
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter surface_ :: <SDL-Surface*>;
  result res :: <SDL-Texture*>;
  c-name: "SDL_CreateTextureFromSurface";
end;

define inline C-function SDL-QueryTexture
  input parameter texture_ :: <SDL-Texture*>;
  input parameter format_ :: <Uint32*>;
  input parameter access_ :: <int*>;
  input parameter w_ :: <int*>;
  input parameter h_ :: <int*>;
  result res :: <C-signed-int>;
  c-name: "SDL_QueryTexture";
end;

define inline C-function SDL-SetTextureColorMod
  input parameter texture_ :: <SDL-Texture*>;
  input parameter r_ :: <Uint8>;
  input parameter g_ :: <Uint8>;
  input parameter b_ :: <Uint8>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetTextureColorMod";
end;

define inline C-function SDL-GetTextureColorMod
  input parameter texture_ :: <SDL-Texture*>;
  input parameter r_ :: <Uint8*>;
  input parameter g_ :: <Uint8*>;
  input parameter b_ :: <Uint8*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetTextureColorMod";
end;

define inline C-function SDL-SetTextureAlphaMod
  input parameter texture_ :: <SDL-Texture*>;
  input parameter alpha_ :: <Uint8>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetTextureAlphaMod";
end;

define inline C-function SDL-GetTextureAlphaMod
  input parameter texture_ :: <SDL-Texture*>;
  input parameter alpha_ :: <Uint8*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetTextureAlphaMod";
end;

define inline C-function SDL-SetTextureBlendMode
  input parameter texture_ :: <SDL-Texture*>;
  input parameter blendMode_ :: <SDL-BlendMode>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetTextureBlendMode";
end;

define C-pointer-type <SDL-BlendMode*> => <SDL-BlendMode>;
define inline C-function SDL-GetTextureBlendMode
  input parameter texture_ :: <SDL-Texture*>;
  input parameter blendMode_ :: <SDL-BlendMode*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetTextureBlendMode";
end;

define inline C-function SDL-UpdateTexture
  input parameter texture_ :: <SDL-Texture*>;
  input parameter rect_ :: <SDL-Rect*>;
  input parameter pixels_ :: <C-void*>;
  input parameter pitch_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_UpdateTexture";
end;

define inline C-function SDL-UpdateYUVTexture
  input parameter texture_ :: <SDL-Texture*>;
  input parameter rect_ :: <SDL-Rect*>;
  input parameter Yplane_ :: <Uint8*>;
  input parameter Ypitch_ :: <C-signed-int>;
  input parameter Uplane_ :: <Uint8*>;
  input parameter Upitch_ :: <C-signed-int>;
  input parameter Vplane_ :: <Uint8*>;
  input parameter Vpitch_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_UpdateYUVTexture";
end;

define inline C-function SDL-LockTexture
  input parameter texture_ :: <SDL-Texture*>;
  input parameter rect_ :: <SDL-Rect*>;
  input parameter pixels_ :: <statically-typed-pointer*>;
  input parameter pitch_ :: <int*>;
  result res :: <C-signed-int>;
  c-name: "SDL_LockTexture";
end;

define inline C-function SDL-UnlockTexture
  input parameter texture_ :: <SDL-Texture*>;
  c-name: "SDL_UnlockTexture";
end;

define inline C-function SDL-RenderTargetSupported
  input parameter renderer_ :: <SDL-Renderer*>;
  result res :: <SDL-bool>;
  c-name: "SDL_RenderTargetSupported";
end;

define inline C-function SDL-SetRenderTarget
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter texture_ :: <SDL-Texture*>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetRenderTarget";
end;

define inline C-function SDL-GetRenderTarget
  input parameter renderer_ :: <SDL-Renderer*>;
  result res :: <SDL-Texture*>;
  c-name: "SDL_GetRenderTarget";
end;

define inline C-function SDL-RenderSetLogicalSize
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter w_ :: <C-signed-int>;
  input parameter h_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_RenderSetLogicalSize";
end;

define inline C-function SDL-RenderGetLogicalSize
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter w_ :: <int*>;
  input parameter h_ :: <int*>;
  c-name: "SDL_RenderGetLogicalSize";
end;

define inline C-function SDL-RenderSetViewport
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter rect_ :: <SDL-Rect*>;
  result res :: <C-signed-int>;
  c-name: "SDL_RenderSetViewport";
end;

define inline C-function SDL-RenderGetViewport
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter rect_ :: <SDL-Rect*>;
  c-name: "SDL_RenderGetViewport";
end;

define inline C-function SDL-RenderSetClipRect
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter rect_ :: <SDL-Rect*>;
  result res :: <C-signed-int>;
  c-name: "SDL_RenderSetClipRect";
end;

define inline C-function SDL-RenderGetClipRect
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter rect_ :: <SDL-Rect*>;
  c-name: "SDL_RenderGetClipRect";
end;

define inline C-function SDL-RenderSetScale
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter scaleX_ :: <C-float>;
  input parameter scaleY_ :: <C-float>;
  result res :: <C-signed-int>;
  c-name: "SDL_RenderSetScale";
end;

define C-pointer-type <float*> => <C-float>;
define inline C-function SDL-RenderGetScale
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter scaleX_ :: <float*>;
  input parameter scaleY_ :: <float*>;
  c-name: "SDL_RenderGetScale";
end;

define inline C-function SDL-SetRenderDrawColor
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter r_ :: <Uint8>;
  input parameter g_ :: <Uint8>;
  input parameter b_ :: <Uint8>;
  input parameter a_ :: <Uint8>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetRenderDrawColor";
end;

define inline C-function SDL-GetRenderDrawColor
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter r_ :: <Uint8*>;
  input parameter g_ :: <Uint8*>;
  input parameter b_ :: <Uint8*>;
  input parameter a_ :: <Uint8*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetRenderDrawColor";
end;

define inline C-function SDL-SetRenderDrawBlendMode
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter blendMode_ :: <SDL-BlendMode>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetRenderDrawBlendMode";
end;

define inline C-function SDL-GetRenderDrawBlendMode
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter blendMode_ :: <SDL-BlendMode*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetRenderDrawBlendMode";
end;

define inline C-function SDL-RenderClear
  input parameter renderer_ :: <SDL-Renderer*>;
  result res :: <C-signed-int>;
  c-name: "SDL_RenderClear";
end;

define inline C-function SDL-RenderDrawPoint
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter x_ :: <C-signed-int>;
  input parameter y_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_RenderDrawPoint";
end;

define inline C-function SDL-RenderDrawPoints
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter points_ :: <SDL-Point*>;
  input parameter count_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_RenderDrawPoints";
end;

define inline C-function SDL-RenderDrawLine
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter x1_ :: <C-signed-int>;
  input parameter y1_ :: <C-signed-int>;
  input parameter x2_ :: <C-signed-int>;
  input parameter y2_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_RenderDrawLine";
end;

define inline C-function SDL-RenderDrawLines
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter points_ :: <SDL-Point*>;
  input parameter count_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_RenderDrawLines";
end;

define inline C-function SDL-RenderDrawRect
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter rect_ :: <SDL-Rect*>;
  result res :: <C-signed-int>;
  c-name: "SDL_RenderDrawRect";
end;

define inline C-function SDL-RenderDrawRects
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter rects_ :: <SDL-Rect*>;
  input parameter count_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_RenderDrawRects";
end;

define inline C-function SDL-RenderFillRect
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter rect_ :: <SDL-Rect*>;
  result res :: <C-signed-int>;
  c-name: "SDL_RenderFillRect";
end;

define inline C-function SDL-RenderFillRects
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter rects_ :: <SDL-Rect*>;
  input parameter count_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_RenderFillRects";
end;

define inline C-function SDL-RenderCopy
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter texture_ :: <SDL-Texture*>;
  input parameter srcrect_ :: <SDL-Rect*>;
  input parameter dstrect_ :: <SDL-Rect*>;
  result res :: <C-signed-int>;
  c-name: "SDL_RenderCopy";
end;

define inline C-function SDL-RenderCopyEx
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter texture_ :: <SDL-Texture*>;
  input parameter srcrect_ :: <SDL-Rect*>;
  input parameter dstrect_ :: <SDL-Rect*>;
  input parameter angle_ :: <C-double>;
  input parameter center_ :: <SDL-Point*>;
  input parameter flip_ :: <SDL-RendererFlip>;
  result res :: <C-signed-int>;
  c-name: "SDL_RenderCopyEx";
end;

define inline C-function SDL-RenderReadPixels
  input parameter renderer_ :: <SDL-Renderer*>;
  input parameter rect_ :: <SDL-Rect*>;
  input parameter format_ :: <Uint32>;
  input parameter pixels_ :: <C-void*>;
  input parameter pitch_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_RenderReadPixels";
end;

define inline C-function SDL-RenderPresent
  input parameter renderer_ :: <SDL-Renderer*>;
  c-name: "SDL_RenderPresent";
end;

define inline C-function SDL-DestroyTexture
  input parameter texture_ :: <SDL-Texture*>;
  c-name: "SDL_DestroyTexture";
end;

define inline C-function SDL-DestroyRenderer
  input parameter renderer_ :: <SDL-Renderer*>;
  c-name: "SDL_DestroyRenderer";
end;

define inline C-function SDL-GL-BindTexture
  input parameter texture_ :: <SDL-Texture*>;
  input parameter texw_ :: <float*>;
  input parameter texh_ :: <float*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GL_BindTexture";
end;

define inline C-function SDL-GL-UnbindTexture
  input parameter texture_ :: <SDL-Texture*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GL_UnbindTexture";
end;

define constant $SDL-REVISION = "hg-8628:b558f99d48f0";

define constant $SDL-REVISION-NUMBER = 8628;

define inline C-function SDL-RWFromFile
  input parameter file_ :: <c-string>;
  input parameter mode_ :: <c-string>;
  result res :: <SDL-RWops*>;
  c-name: "SDL_RWFromFile";
end;

define inline C-function SDL-RWFromFP
  input parameter fp_ :: <FILE*>;
  input parameter autoclose_ :: <SDL-bool>;
  result res :: <SDL-RWops*>;
  c-name: "SDL_RWFromFP";
end;

define inline C-function SDL-RWFromMem
  input parameter mem_ :: <C-void*>;
  input parameter size_ :: <C-signed-int>;
  result res :: <SDL-RWops*>;
  c-name: "SDL_RWFromMem";
end;

define inline C-function SDL-RWFromConstMem
  input parameter mem_ :: <C-void*>;
  input parameter size_ :: <C-signed-int>;
  result res :: <SDL-RWops*>;
  c-name: "SDL_RWFromConstMem";
end;

define inline C-function SDL-AllocRW
  result res :: <SDL-RWops*>;
  c-name: "SDL_AllocRW";
end;

define inline C-function SDL-FreeRW
  input parameter area_ :: <SDL-RWops*>;
  c-name: "SDL_FreeRW";
end;

define inline C-function SDL-ReadU8
  input parameter src_ :: <SDL-RWops*>;
  result res :: <Uint8>;
  c-name: "SDL_ReadU8";
end;

define inline C-function SDL-ReadLE16
  input parameter src_ :: <SDL-RWops*>;
  result res :: <Uint16>;
  c-name: "SDL_ReadLE16";
end;

define inline C-function SDL-ReadBE16
  input parameter src_ :: <SDL-RWops*>;
  result res :: <Uint16>;
  c-name: "SDL_ReadBE16";
end;

define inline C-function SDL-ReadLE32
  input parameter src_ :: <SDL-RWops*>;
  result res :: <Uint32>;
  c-name: "SDL_ReadLE32";
end;

define inline C-function SDL-ReadBE32
  input parameter src_ :: <SDL-RWops*>;
  result res :: <Uint32>;
  c-name: "SDL_ReadBE32";
end;

define inline C-function SDL-ReadLE64
  input parameter src_ :: <SDL-RWops*>;
  result res :: <Uint64>;
  c-name: "SDL_ReadLE64";
end;

define inline C-function SDL-ReadBE64
  input parameter src_ :: <SDL-RWops*>;
  result res :: <Uint64>;
  c-name: "SDL_ReadBE64";
end;

define inline C-function SDL-WriteU8
  input parameter dst_ :: <SDL-RWops*>;
  input parameter value_ :: <Uint8>;
  result res :: <size-t>;
  c-name: "SDL_WriteU8";
end;

define inline C-function SDL-WriteLE16
  input parameter dst_ :: <SDL-RWops*>;
  input parameter value_ :: <Uint16>;
  result res :: <size-t>;
  c-name: "SDL_WriteLE16";
end;

define inline C-function SDL-WriteBE16
  input parameter dst_ :: <SDL-RWops*>;
  input parameter value_ :: <Uint16>;
  result res :: <size-t>;
  c-name: "SDL_WriteBE16";
end;

define inline C-function SDL-WriteLE32
  input parameter dst_ :: <SDL-RWops*>;
  input parameter value_ :: <Uint32>;
  result res :: <size-t>;
  c-name: "SDL_WriteLE32";
end;

define inline C-function SDL-WriteBE32
  input parameter dst_ :: <SDL-RWops*>;
  input parameter value_ :: <Uint32>;
  result res :: <size-t>;
  c-name: "SDL_WriteBE32";
end;

define inline C-function SDL-WriteLE64
  input parameter dst_ :: <SDL-RWops*>;
  input parameter value_ :: <Uint64>;
  result res :: <size-t>;
  c-name: "SDL_WriteLE64";
end;

define inline C-function SDL-WriteBE64
  input parameter dst_ :: <SDL-RWops*>;
  input parameter value_ :: <Uint64>;
  result res :: <size-t>;
  c-name: "SDL_WriteBE64";
end;

define constant $SDL-RWOPS-UNKNOWN = 0;

define constant $SDL-RWOPS-WINFILE = 1;

define constant $SDL-RWOPS-STDFILE = 2;

define constant $SDL-RWOPS-JNIFILE = 3;

define constant $SDL-RWOPS-MEMORY = 4;

define constant $SDL-RWOPS-MEMORY-RO = 5;

define constant $RW-SEEK-SET = 0;

define constant $RW-SEEK-CUR = 1;

define constant $RW-SEEK-END = 2;

define inline C-function SDL-CreateShapedWindow
  input parameter title_ :: <c-string>;
  input parameter x_ :: <C-unsigned-int>;
  input parameter y_ :: <C-unsigned-int>;
  input parameter w_ :: <C-unsigned-int>;
  input parameter h_ :: <C-unsigned-int>;
  input parameter flags_ :: <Uint32>;
  result res :: <SDL-Window*>;
  c-name: "SDL_CreateShapedWindow";
end;

define inline C-function SDL-IsShapedWindow
  input parameter window_ :: <SDL-Window*>;
  result res :: <SDL-bool>;
  c-name: "SDL_IsShapedWindow";
end;

define constant <WindowShapeMode> = <C-int>;
define constant $ShapeModeDefault = 0;
define constant $ShapeModeBinarizeAlpha = 1;
define constant $ShapeModeReverseBinarizeAlpha = 2;
define constant $ShapeModeColorKey = 3;

define C-union <SDL-WindowShapeParams>
  slot SDL-WindowShapeParams$binarizationCutoff :: <C-unsigned-char>;
  slot SDL-WindowShapeParams$colorKey :: <SDL-Color>;
end;

define C-struct <SDL-WindowShapeMode>
  sealed slot SDL-WindowShapeMode$mode :: <WindowShapeMode>;
  sealed slot SDL-WindowShapeMode$parameters :: <SDL-WindowShapeParams>;
end;

define C-pointer-type <SDL-WindowShapeMode*> => <SDL-WindowShapeMode>;
define inline C-function SDL-SetWindowShape
  input parameter window_ :: <SDL-Window*>;
  input parameter shape_ :: <SDL-Surface*>;
  input parameter shape-mode_ :: <SDL-WindowShapeMode*>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetWindowShape";
end;

define inline C-function SDL-GetShapedWindowMode
  input parameter window_ :: <SDL-Window*>;
  input parameter shape-mode_ :: <SDL-WindowShapeMode*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetShapedWindowMode";
end;

define constant $SDL-NONSHAPEABLE-WINDOW = -1;

define constant $SDL-INVALID-SHAPE-ARGUMENT = -2;

define constant $SDL-WINDOW-LACKS-SHAPE = -3;

define constant <int8-t> = <C-signed-char>;

define constant <Sint8> = <int8-t>;

define constant <int<@1>> = <int*>;
define constant <SDL-dummy-uint8> = <int<@1>>;

define constant <SDL-dummy-sint8> = <int<@1>>;

define constant <SDL-dummy-uint16> = <int<@1>>;

define constant <SDL-dummy-sint16> = <int<@1>>;

define constant <SDL-dummy-uint32> = <int<@1>>;

define constant <SDL-dummy-sint32> = <int<@1>>;

define constant <SDL-dummy-uint64> = <int<@1>>;

define constant <SDL-dummy-sint64> = <int<@1>>;

define constant <SDL-DUMMY-ENUM> = <C-int>;
define constant $DUMMY-ENUM-VALUE = 0;

define constant <SDL-dummy-enum> = <int<@1>>;

define inline C-function SDL-malloc
  input parameter size_ :: <size-t>;
  result res :: <C-void*>;
  c-name: "SDL_malloc";
end;

define inline C-function SDL-calloc
  input parameter nmemb_ :: <size-t>;
  input parameter size_ :: <size-t>;
  result res :: <C-void*>;
  c-name: "SDL_calloc";
end;

define inline C-function SDL-realloc
  input parameter mem_ :: <C-void*>;
  input parameter size_ :: <size-t>;
  result res :: <C-void*>;
  c-name: "SDL_realloc";
end;

define inline C-function SDL-free
  input parameter mem_ :: <C-void*>;
  c-name: "SDL_free";
end;

define inline C-function SDL-getenv
  input parameter name_ :: <c-string>;
  result res :: <c-string>;
  c-name: "SDL_getenv";
end;

define inline C-function SDL-setenv
  input parameter name_ :: <c-string>;
  input parameter value_ :: <c-string>;
  input parameter overwrite_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_setenv";
end;

define constant <compare> = <C-function-pointer>;
define inline C-function SDL-qsort
  input parameter base_ :: <C-void*>;
  input parameter nmemb_ :: <size-t>;
  input parameter size_ :: <size-t>;
  input parameter compare_ :: <compare>;
  c-name: "SDL_qsort";
end;

define inline C-function SDL-abs
  input parameter x_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_abs";
end;

define inline C-function SDL-isdigit
  input parameter x_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_isdigit";
end;

define inline C-function SDL-isspace
  input parameter x_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_isspace";
end;

define inline C-function SDL-toupper
  input parameter x_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_toupper";
end;

define inline C-function SDL-tolower
  input parameter x_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_tolower";
end;

define inline C-function SDL-memset
  input parameter dst_ :: <C-void*>;
  input parameter c_ :: <C-signed-int>;
  input parameter len_ :: <size-t>;
  result res :: <C-void*>;
  c-name: "SDL_memset";
end;

define inline C-function SDL-memset4
  input parameter dst_ :: <C-void*>;
  input parameter val_ :: <Uint32>;
  input parameter dwords_ :: <size-t>;
  c-name: "SDL_memset4";
end;

define inline C-function SDL-memcpy
  input parameter dst_ :: <C-void*>;
  input parameter src_ :: <C-void*>;
  input parameter len_ :: <size-t>;
  result res :: <C-void*>;
  c-name: "SDL_memcpy";
end;

define inline C-function SDL-memcpy4
  input parameter dst_ :: <C-void*>;
  input parameter src_ :: <C-void*>;
  input parameter dwords_ :: <size-t>;
  result res :: <C-void*>;
  c-name: "SDL_memcpy4";
end;

define inline C-function SDL-memmove
  input parameter dst_ :: <C-void*>;
  input parameter src_ :: <C-void*>;
  input parameter len_ :: <size-t>;
  result res :: <C-void*>;
  c-name: "SDL_memmove";
end;

define inline C-function SDL-memcmp
  input parameter s1_ :: <C-void*>;
  input parameter s2_ :: <C-void*>;
  input parameter len_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "SDL_memcmp";
end;

define constant <__darwin-ct-rune-t> = <C-signed-int>;

define constant <__darwin-wchar-t> = <__darwin-ct-rune-t>;

define constant <wchar-t> = <__darwin-wchar-t>;

define C-pointer-type <wchar-t*> => <wchar-t>;
define inline C-function SDL-wcslen
  input parameter wstr_ :: <wchar-t*>;
  result res :: <size-t>;
  c-name: "SDL_wcslen";
end;

define inline C-function SDL-wcslcpy
  input parameter dst_ :: <wchar-t*>;
  input parameter src_ :: <wchar-t*>;
  input parameter maxlen_ :: <size-t>;
  result res :: <size-t>;
  c-name: "SDL_wcslcpy";
end;

define inline C-function SDL-wcslcat
  input parameter dst_ :: <wchar-t*>;
  input parameter src_ :: <wchar-t*>;
  input parameter maxlen_ :: <size-t>;
  result res :: <size-t>;
  c-name: "SDL_wcslcat";
end;

define inline C-function SDL-strlen
  input parameter str_ :: <c-string>;
  result res :: <size-t>;
  c-name: "SDL_strlen";
end;

define inline C-function SDL-strlcpy
  input parameter dst_ :: <c-string>;
  input parameter src_ :: <c-string>;
  input parameter maxlen_ :: <size-t>;
  result res :: <size-t>;
  c-name: "SDL_strlcpy";
end;

define inline C-function SDL-utf8strlcpy
  input parameter dst_ :: <c-string>;
  input parameter src_ :: <c-string>;
  input parameter dst-bytes_ :: <size-t>;
  result res :: <size-t>;
  c-name: "SDL_utf8strlcpy";
end;

define inline C-function SDL-strlcat
  input parameter dst_ :: <c-string>;
  input parameter src_ :: <c-string>;
  input parameter maxlen_ :: <size-t>;
  result res :: <size-t>;
  c-name: "SDL_strlcat";
end;

define inline C-function SDL-strdup
  input parameter str_ :: <c-string>;
  result res :: <c-string>;
  c-name: "SDL_strdup";
end;

define inline C-function SDL-strrev
  input parameter str_ :: <c-string>;
  result res :: <c-string>;
  c-name: "SDL_strrev";
end;

define inline C-function SDL-strupr
  input parameter str_ :: <c-string>;
  result res :: <c-string>;
  c-name: "SDL_strupr";
end;

define inline C-function SDL-strlwr
  input parameter str_ :: <c-string>;
  result res :: <c-string>;
  c-name: "SDL_strlwr";
end;

define inline C-function SDL-strchr
  input parameter str_ :: <c-string>;
  input parameter c_ :: <C-signed-int>;
  result res :: <c-string>;
  c-name: "SDL_strchr";
end;

define inline C-function SDL-strrchr
  input parameter str_ :: <c-string>;
  input parameter c_ :: <C-signed-int>;
  result res :: <c-string>;
  c-name: "SDL_strrchr";
end;

define inline C-function SDL-strstr
  input parameter haystack_ :: <c-string>;
  input parameter needle_ :: <c-string>;
  result res :: <c-string>;
  c-name: "SDL_strstr";
end;

define inline C-function SDL-itoa
  input parameter value_ :: <C-signed-int>;
  input parameter str_ :: <c-string>;
  input parameter radix_ :: <C-signed-int>;
  result res :: <c-string>;
  c-name: "SDL_itoa";
end;

define inline C-function SDL-uitoa
  input parameter value_ :: <C-unsigned-int>;
  input parameter str_ :: <c-string>;
  input parameter radix_ :: <C-signed-int>;
  result res :: <c-string>;
  c-name: "SDL_uitoa";
end;

define inline C-function SDL-ltoa
  input parameter value_ :: <C-signed-long>;
  input parameter str_ :: <c-string>;
  input parameter radix_ :: <C-signed-int>;
  result res :: <c-string>;
  c-name: "SDL_ltoa";
end;

define inline C-function SDL-ultoa
  input parameter value_ :: <C-unsigned-long>;
  input parameter str_ :: <c-string>;
  input parameter radix_ :: <C-signed-int>;
  result res :: <c-string>;
  c-name: "SDL_ultoa";
end;

define inline C-function SDL-lltoa
  input parameter value_ :: <Sint64>;
  input parameter str_ :: <c-string>;
  input parameter radix_ :: <C-signed-int>;
  result res :: <c-string>;
  c-name: "SDL_lltoa";
end;

define inline C-function SDL-ulltoa
  input parameter value_ :: <Uint64>;
  input parameter str_ :: <c-string>;
  input parameter radix_ :: <C-signed-int>;
  result res :: <c-string>;
  c-name: "SDL_ulltoa";
end;

define inline C-function SDL-atoi
  input parameter str_ :: <c-string>;
  result res :: <C-signed-int>;
  c-name: "SDL_atoi";
end;

define inline C-function SDL-atof
  input parameter str_ :: <c-string>;
  result res :: <C-double>;
  c-name: "SDL_atof";
end;

define C-pointer-type <char**> => <c-string>;
define inline C-function SDL-strtol
  input parameter str_ :: <c-string>;
  input parameter endp_ :: <char**>;
  input parameter base_ :: <C-signed-int>;
  result res :: <C-signed-long>;
  c-name: "SDL_strtol";
end;

define inline C-function SDL-strtoul
  input parameter str_ :: <c-string>;
  input parameter endp_ :: <char**>;
  input parameter base_ :: <C-signed-int>;
  result res :: <C-unsigned-long>;
  c-name: "SDL_strtoul";
end;

define inline C-function SDL-strtoll
  input parameter str_ :: <c-string>;
  input parameter endp_ :: <char**>;
  input parameter base_ :: <C-signed-int>;
  result res :: <Sint64>;
  c-name: "SDL_strtoll";
end;

define inline C-function SDL-strtoull
  input parameter str_ :: <c-string>;
  input parameter endp_ :: <char**>;
  input parameter base_ :: <C-signed-int>;
  result res :: <Uint64>;
  c-name: "SDL_strtoull";
end;

define inline C-function SDL-strtod
  input parameter str_ :: <c-string>;
  input parameter endp_ :: <char**>;
  result res :: <C-double>;
  c-name: "SDL_strtod";
end;

define inline C-function SDL-strcmp
  input parameter str1_ :: <c-string>;
  input parameter str2_ :: <c-string>;
  result res :: <C-signed-int>;
  c-name: "SDL_strcmp";
end;

define inline C-function SDL-strncmp
  input parameter str1_ :: <c-string>;
  input parameter str2_ :: <c-string>;
  input parameter maxlen_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "SDL_strncmp";
end;

define inline C-function SDL-strcasecmp
  input parameter str1_ :: <c-string>;
  input parameter str2_ :: <c-string>;
  result res :: <C-signed-int>;
  c-name: "SDL_strcasecmp";
end;

define inline C-function SDL-strncasecmp
  input parameter str1_ :: <c-string>;
  input parameter str2_ :: <c-string>;
  input parameter len_ :: <size-t>;
  result res :: <C-signed-int>;
  c-name: "SDL_strncasecmp";
end;

define inline C-function SDL-sscanf
  input parameter text_ :: <c-string>;
  input parameter fmt_ :: <c-string>;
  result res :: <C-signed-int>;
  c-name: "SDL_sscanf";
end;

define inline C-function SDL-vsscanf
  input parameter text_ :: <c-string>;
  input parameter fmt_ :: <c-string>;
  input parameter ap_ :: <va-list>;
  result res :: <C-signed-int>;
  c-name: "SDL_vsscanf";
end;

define inline C-function SDL-snprintf
  input parameter text_ :: <c-string>;
  input parameter maxlen_ :: <size-t>;
  input parameter fmt_ :: <c-string>;
  result res :: <C-signed-int>;
  c-name: "SDL_snprintf";
end;

define inline C-function SDL-vsnprintf
  input parameter text_ :: <c-string>;
  input parameter maxlen_ :: <size-t>;
  input parameter fmt_ :: <c-string>;
  input parameter ap_ :: <va-list>;
  result res :: <C-signed-int>;
  c-name: "SDL_vsnprintf";
end;

define inline C-function SDL-acos
  input parameter x_ :: <C-double>;
  result res :: <C-double>;
  c-name: "SDL_acos";
end;

define inline C-function SDL-asin
  input parameter x_ :: <C-double>;
  result res :: <C-double>;
  c-name: "SDL_asin";
end;

define inline C-function SDL-atan
  input parameter x_ :: <C-double>;
  result res :: <C-double>;
  c-name: "SDL_atan";
end;

define inline C-function SDL-atan2
  input parameter x_ :: <C-double>;
  input parameter y_ :: <C-double>;
  result res :: <C-double>;
  c-name: "SDL_atan2";
end;

define inline C-function SDL-ceil
  input parameter x_ :: <C-double>;
  result res :: <C-double>;
  c-name: "SDL_ceil";
end;

define inline C-function SDL-copysign
  input parameter x_ :: <C-double>;
  input parameter y_ :: <C-double>;
  result res :: <C-double>;
  c-name: "SDL_copysign";
end;

define inline C-function SDL-cos
  input parameter x_ :: <C-double>;
  result res :: <C-double>;
  c-name: "SDL_cos";
end;

define inline C-function SDL-cosf
  input parameter x_ :: <C-float>;
  result res :: <C-float>;
  c-name: "SDL_cosf";
end;

define inline C-function SDL-fabs
  input parameter x_ :: <C-double>;
  result res :: <C-double>;
  c-name: "SDL_fabs";
end;

define inline C-function SDL-floor
  input parameter x_ :: <C-double>;
  result res :: <C-double>;
  c-name: "SDL_floor";
end;

define inline C-function SDL-log
  input parameter x_ :: <C-double>;
  result res :: <C-double>;
  c-name: "SDL_log";
end;

define inline C-function SDL-pow
  input parameter x_ :: <C-double>;
  input parameter y_ :: <C-double>;
  result res :: <C-double>;
  c-name: "SDL_pow";
end;

define inline C-function SDL-scalbn
  input parameter x_ :: <C-double>;
  input parameter n_ :: <C-signed-int>;
  result res :: <C-double>;
  c-name: "SDL_scalbn";
end;

define inline C-function SDL-sin
  input parameter x_ :: <C-double>;
  result res :: <C-double>;
  c-name: "SDL_sin";
end;

define inline C-function SDL-sinf
  input parameter x_ :: <C-float>;
  result res :: <C-float>;
  c-name: "SDL_sinf";
end;

define inline C-function SDL-sqrt
  input parameter x_ :: <C-double>;
  result res :: <C-double>;
  c-name: "SDL_sqrt";
end;

define C-struct <_SDL-iconv-t>
end;

define C-pointer-type <_SDL-iconv-t*> => <_SDL-iconv-t>;
define constant <SDL-iconv-t> = <_SDL-iconv-t*>;

define inline C-function SDL-iconv-open
  input parameter tocode_ :: <c-string>;
  input parameter fromcode_ :: <c-string>;
  result res :: <SDL-iconv-t>;
  c-name: "SDL_iconv_open";
end;

define inline C-function SDL-iconv-close
  input parameter cd_ :: <SDL-iconv-t>;
  result res :: <C-signed-int>;
  c-name: "SDL_iconv_close";
end;

define C-pointer-type <size-t*> => <size-t>;
define inline C-function SDL-iconv
  input parameter cd_ :: <SDL-iconv-t>;
  input parameter inbuf_ :: <char**>;
  input parameter inbytesleft_ :: <size-t*>;
  input parameter outbuf_ :: <char**>;
  input parameter outbytesleft_ :: <size-t*>;
  result res :: <size-t>;
  c-name: "SDL_iconv";
end;

define inline C-function SDL-iconv-string
  input parameter tocode_ :: <c-string>;
  input parameter fromcode_ :: <c-string>;
  input parameter inbuf_ :: <c-string>;
  input parameter inbytesleft_ :: <size-t>;
  result res :: <c-string>;
  c-name: "SDL_iconv_string";
end;

define constant $SDL-ICONV-ERROR = -1;

define constant $SDL-ICONV-E2BIG = -2;

define constant $SDL-ICONV-EILSEQ = -3;

define constant $SDL-ICONV-EINVAL = -4;

define C-pointer-type <SDL-Surface*> => <SDL-Surface>;
define constant <SDL-blit> = <C-function-pointer>;
define inline C-function SDL-CreateRGBSurface
  input parameter flags_ :: <Uint32>;
  input parameter width_ :: <C-signed-int>;
  input parameter height_ :: <C-signed-int>;
  input parameter depth_ :: <C-signed-int>;
  input parameter Rmask_ :: <Uint32>;
  input parameter Gmask_ :: <Uint32>;
  input parameter Bmask_ :: <Uint32>;
  input parameter Amask_ :: <Uint32>;
  result res :: <SDL-Surface*>;
  c-name: "SDL_CreateRGBSurface";
end;

define inline C-function SDL-CreateRGBSurfaceFrom
  input parameter pixels_ :: <C-void*>;
  input parameter width_ :: <C-signed-int>;
  input parameter height_ :: <C-signed-int>;
  input parameter depth_ :: <C-signed-int>;
  input parameter pitch_ :: <C-signed-int>;
  input parameter Rmask_ :: <Uint32>;
  input parameter Gmask_ :: <Uint32>;
  input parameter Bmask_ :: <Uint32>;
  input parameter Amask_ :: <Uint32>;
  result res :: <SDL-Surface*>;
  c-name: "SDL_CreateRGBSurfaceFrom";
end;

define inline C-function SDL-FreeSurface
  input parameter surface_ :: <SDL-Surface*>;
  c-name: "SDL_FreeSurface";
end;

define inline C-function SDL-SetSurfacePalette
  input parameter surface_ :: <SDL-Surface*>;
  input parameter palette_ :: <SDL-Palette*>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetSurfacePalette";
end;

define inline C-function SDL-LockSurface
  input parameter surface_ :: <SDL-Surface*>;
  result res :: <C-signed-int>;
  c-name: "SDL_LockSurface";
end;

define inline C-function SDL-UnlockSurface
  input parameter surface_ :: <SDL-Surface*>;
  c-name: "SDL_UnlockSurface";
end;

define inline C-function SDL-LoadBMP-RW
  input parameter src_ :: <SDL-RWops*>;
  input parameter freesrc_ :: <C-signed-int>;
  result res :: <SDL-Surface*>;
  c-name: "SDL_LoadBMP_RW";
end;

define inline C-function SDL-SaveBMP-RW
  input parameter surface_ :: <SDL-Surface*>;
  input parameter dst_ :: <SDL-RWops*>;
  input parameter freedst_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_SaveBMP_RW";
end;

define inline C-function SDL-SetSurfaceRLE
  input parameter surface_ :: <SDL-Surface*>;
  input parameter flag_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetSurfaceRLE";
end;

define inline C-function SDL-SetColorKey
  input parameter surface_ :: <SDL-Surface*>;
  input parameter flag_ :: <C-signed-int>;
  input parameter key_ :: <Uint32>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetColorKey";
end;

define inline C-function SDL-GetColorKey
  input parameter surface_ :: <SDL-Surface*>;
  input parameter key_ :: <Uint32*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetColorKey";
end;

define inline C-function SDL-SetSurfaceColorMod
  input parameter surface_ :: <SDL-Surface*>;
  input parameter r_ :: <Uint8>;
  input parameter g_ :: <Uint8>;
  input parameter b_ :: <Uint8>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetSurfaceColorMod";
end;

define inline C-function SDL-GetSurfaceColorMod
  input parameter surface_ :: <SDL-Surface*>;
  input parameter r_ :: <Uint8*>;
  input parameter g_ :: <Uint8*>;
  input parameter b_ :: <Uint8*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetSurfaceColorMod";
end;

define inline C-function SDL-SetSurfaceAlphaMod
  input parameter surface_ :: <SDL-Surface*>;
  input parameter alpha_ :: <Uint8>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetSurfaceAlphaMod";
end;

define inline C-function SDL-GetSurfaceAlphaMod
  input parameter surface_ :: <SDL-Surface*>;
  input parameter alpha_ :: <Uint8*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetSurfaceAlphaMod";
end;

define inline C-function SDL-SetSurfaceBlendMode
  input parameter surface_ :: <SDL-Surface*>;
  input parameter blendMode_ :: <SDL-BlendMode>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetSurfaceBlendMode";
end;

define inline C-function SDL-GetSurfaceBlendMode
  input parameter surface_ :: <SDL-Surface*>;
  input parameter blendMode_ :: <SDL-BlendMode*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetSurfaceBlendMode";
end;

define inline C-function SDL-SetClipRect
  input parameter surface_ :: <SDL-Surface*>;
  input parameter rect_ :: <SDL-Rect*>;
  result res :: <SDL-bool>;
  c-name: "SDL_SetClipRect";
end;

define inline C-function SDL-GetClipRect
  input parameter surface_ :: <SDL-Surface*>;
  input parameter rect_ :: <SDL-Rect*>;
  c-name: "SDL_GetClipRect";
end;

define inline C-function SDL-ConvertSurface
  input parameter src_ :: <SDL-Surface*>;
  input parameter fmt_ :: <SDL-PixelFormat*>;
  input parameter flags_ :: <Uint32>;
  result res :: <SDL-Surface*>;
  c-name: "SDL_ConvertSurface";
end;

define inline C-function SDL-ConvertSurfaceFormat
  input parameter src_ :: <SDL-Surface*>;
  input parameter pixel-format_ :: <Uint32>;
  input parameter flags_ :: <Uint32>;
  result res :: <SDL-Surface*>;
  c-name: "SDL_ConvertSurfaceFormat";
end;

define inline C-function SDL-ConvertPixels
  input parameter width_ :: <C-signed-int>;
  input parameter height_ :: <C-signed-int>;
  input parameter src-format_ :: <Uint32>;
  input parameter src_ :: <C-void*>;
  input parameter src-pitch_ :: <C-signed-int>;
  input parameter dst-format_ :: <Uint32>;
  input parameter dst_ :: <C-void*>;
  input parameter dst-pitch_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_ConvertPixels";
end;

define inline C-function SDL-FillRect
  input parameter dst_ :: <SDL-Surface*>;
  input parameter rect_ :: <SDL-Rect*>;
  input parameter color_ :: <Uint32>;
  result res :: <C-signed-int>;
  c-name: "SDL_FillRect";
end;

define inline C-function SDL-FillRects
  input parameter dst_ :: <SDL-Surface*>;
  input parameter rects_ :: <SDL-Rect*>;
  input parameter count_ :: <C-signed-int>;
  input parameter color_ :: <Uint32>;
  result res :: <C-signed-int>;
  c-name: "SDL_FillRects";
end;

define inline C-function SDL-UpperBlit
  input parameter src_ :: <SDL-Surface*>;
  input parameter srcrect_ :: <SDL-Rect*>;
  input parameter dst_ :: <SDL-Surface*>;
  input parameter dstrect_ :: <SDL-Rect*>;
  result res :: <C-signed-int>;
  c-name: "SDL_UpperBlit";
end;

define inline C-function SDL-LowerBlit
  input parameter src_ :: <SDL-Surface*>;
  input parameter srcrect_ :: <SDL-Rect*>;
  input parameter dst_ :: <SDL-Surface*>;
  input parameter dstrect_ :: <SDL-Rect*>;
  result res :: <C-signed-int>;
  c-name: "SDL_LowerBlit";
end;

define inline C-function SDL-SoftStretch
  input parameter src_ :: <SDL-Surface*>;
  input parameter srcrect_ :: <SDL-Rect*>;
  input parameter dst_ :: <SDL-Surface*>;
  input parameter dstrect_ :: <SDL-Rect*>;
  result res :: <C-signed-int>;
  c-name: "SDL_SoftStretch";
end;

define inline C-function SDL-UpperBlitScaled
  input parameter src_ :: <SDL-Surface*>;
  input parameter srcrect_ :: <SDL-Rect*>;
  input parameter dst_ :: <SDL-Surface*>;
  input parameter dstrect_ :: <SDL-Rect*>;
  result res :: <C-signed-int>;
  c-name: "SDL_UpperBlitScaled";
end;

define inline C-function SDL-LowerBlitScaled
  input parameter src_ :: <SDL-Surface*>;
  input parameter srcrect_ :: <SDL-Rect*>;
  input parameter dst_ :: <SDL-Surface*>;
  input parameter dstrect_ :: <SDL-Rect*>;
  result res :: <C-signed-int>;
  c-name: "SDL_LowerBlitScaled";
end;

define constant $SDL-SWSURFACE = 0;

define constant $SDL-PREALLOC = 1;

define constant $SDL-RLEACCEL = 2;

define constant $SDL-DONTFREE = 4;

define constant SDL-BlitSurface = SDL-UpperBlit;

define constant SDL-BlitScaled = SDL-UpperBlitScaled;

define C-struct <SDL-Thread>
end;

define constant <SDL-threadID> = <C-unsigned-long>;

define constant <SDL-TLSID> = <C-unsigned-int>;

define constant <SDL-ThreadPriority> = <C-int>;
define constant $SDL-THREAD-PRIORITY-LOW = 0;
define constant $SDL-THREAD-PRIORITY-NORMAL = 1;
define constant $SDL-THREAD-PRIORITY-HIGH = 2;

define constant <SDL-ThreadFunction> = <C-function-pointer>;
define C-pointer-type <SDL-Thread*> => <SDL-Thread>;
define inline C-function SDL-CreateThread
  input parameter fn_ :: <SDL-ThreadFunction>;
  input parameter name_ :: <c-string>;
  input parameter data_ :: <C-void*>;
  result res :: <SDL-Thread*>;
  c-name: "SDL_CreateThread";
end;

define inline C-function SDL-GetThreadName
  input parameter thread_ :: <SDL-Thread*>;
  result res :: <c-string>;
  c-name: "SDL_GetThreadName";
end;

define inline C-function SDL-ThreadID
  result res :: <SDL-threadID>;
  c-name: "SDL_ThreadID";
end;

define inline C-function SDL-GetThreadID
  input parameter thread_ :: <SDL-Thread*>;
  result res :: <SDL-threadID>;
  c-name: "SDL_GetThreadID";
end;

define inline C-function SDL-SetThreadPriority
  input parameter priority_ :: <SDL-ThreadPriority>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetThreadPriority";
end;

define inline C-function SDL-WaitThread
  input parameter thread_ :: <SDL-Thread*>;
  input parameter status_ :: <int*>;
  c-name: "SDL_WaitThread";
end;

define inline C-function SDL-DetachThread
  input parameter thread_ :: <SDL-Thread*>;
  c-name: "SDL_DetachThread";
end;

define inline C-function SDL-TLSCreate
  result res :: <SDL-TLSID>;
  c-name: "SDL_TLSCreate";
end;

define inline C-function SDL-TLSGet
  input parameter id_ :: <SDL-TLSID>;
  result res :: <C-void*>;
  c-name: "SDL_TLSGet";
end;

define constant <destructor> = <C-function-pointer>;
define inline C-function SDL-TLSSet
  input parameter id_ :: <SDL-TLSID>;
  input parameter value_ :: <C-void*>;
  input parameter destructor_ :: <destructor>;
  result res :: <C-signed-int>;
  c-name: "SDL_TLSSet";
end;

define inline C-function SDL-GetTicks
  result res :: <Uint32>;
  c-name: "SDL_GetTicks";
end;

define inline C-function SDL-GetPerformanceCounter
  result res :: <Uint64>;
  c-name: "SDL_GetPerformanceCounter";
end;

define inline C-function SDL-GetPerformanceFrequency
  result res :: <Uint64>;
  c-name: "SDL_GetPerformanceFrequency";
end;

define inline C-function SDL-Delay
  input parameter ms_ :: <Uint32>;
  c-name: "SDL_Delay";
end;

define constant <SDL-TimerCallback> = <C-function-pointer>;
define constant <SDL-TimerID> = <C-signed-int>;

define inline C-function SDL-AddTimer
  input parameter interval_ :: <Uint32>;
  input parameter callback_ :: <SDL-TimerCallback>;
  input parameter param_ :: <C-void*>;
  result res :: <SDL-TimerID>;
  c-name: "SDL_AddTimer";
end;

define inline C-function SDL-RemoveTimer
  input parameter id_ :: <SDL-TimerID>;
  result res :: <SDL-bool>;
  c-name: "SDL_RemoveTimer";
end;

define C-struct <SDL-Finger>
  sealed slot SDL-Finger$id :: <C-signed-long>;
  sealed slot SDL-Finger$x :: <C-float>;
  sealed slot SDL-Finger$y :: <C-float>;
  sealed slot SDL-Finger$pressure :: <C-float>;
end;

define inline C-function SDL-GetNumTouchDevices
  result res :: <C-signed-int>;
  c-name: "SDL_GetNumTouchDevices";
end;

define inline C-function SDL-GetTouchDevice
  input parameter index_ :: <C-signed-int>;
  result res :: <SDL-TouchID>;
  c-name: "SDL_GetTouchDevice";
end;

define inline C-function SDL-GetNumTouchFingers
  input parameter touchID_ :: <SDL-TouchID>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetNumTouchFingers";
end;

define C-pointer-type <SDL-Finger*> => <SDL-Finger>;
define inline C-function SDL-GetTouchFinger
  input parameter touchID_ :: <SDL-TouchID>;
  input parameter index_ :: <C-signed-int>;
  result res :: <SDL-Finger*>;
  c-name: "SDL_GetTouchFinger";
end;

define constant $SDL-TOUCH-MOUSEID = -1;

define C-struct <SDL-version>
  sealed slot SDL-version$major :: <C-unsigned-char>;
  sealed slot SDL-version$minor :: <C-unsigned-char>;
  sealed slot SDL-version$patch :: <C-unsigned-char>;
end;

define C-pointer-type <SDL-version*> => <SDL-version>;
define inline C-function SDL-GetVersion
  input parameter ver_ :: <SDL-version*>;
  c-name: "SDL_GetVersion";
end;

define inline C-function SDL-GetRevision
  result res :: <c-string>;
  c-name: "SDL_GetRevision";
end;

define inline C-function SDL-GetRevisionNumber
  result res :: <C-signed-int>;
  c-name: "SDL_GetRevisionNumber";
end;

define constant $SDL-MAJOR-VERSION = 2;

define constant $SDL-MINOR-VERSION = 0;

define constant $SDL-PATCHLEVEL = 3;

define constant $SDL-COMPILEDVERSION = 2003;

define C-struct <SDL-DisplayMode>
  sealed slot SDL-DisplayMode$format :: <C-unsigned-int>;
  sealed slot SDL-DisplayMode$w :: <C-signed-int>;
  sealed slot SDL-DisplayMode$h :: <C-signed-int>;
  sealed slot SDL-DisplayMode$refresh-rate :: <C-signed-int>;
  sealed slot SDL-DisplayMode$driverdata :: <C-void*>;
end;

define constant <SDL-WindowFlags> = <C-int>;
define constant $SDL-WINDOW-FULLSCREEN = 1;
define constant $SDL-WINDOW-OPENGL = 2;
define constant $SDL-WINDOW-SHOWN = 4;
define constant $SDL-WINDOW-HIDDEN = 8;
define constant $SDL-WINDOW-BORDERLESS = 16;
define constant $SDL-WINDOW-RESIZABLE = 32;
define constant $SDL-WINDOW-MINIMIZED = 64;
define constant $SDL-WINDOW-MAXIMIZED = 128;
define constant $SDL-WINDOW-INPUT-GRABBED = 256;
define constant $SDL-WINDOW-INPUT-FOCUS = 512;
define constant $SDL-WINDOW-MOUSE-FOCUS = 1024;
define constant $SDL-WINDOW-FULLSCREEN-DESKTOP = 4097;
define constant $SDL-WINDOW-FOREIGN = 2048;
define constant $SDL-WINDOW-ALLOW-HIGHDPI = 8192;

define constant <SDL-WindowEventID> = <C-int>;
define constant $SDL-WINDOWEVENT-NONE = 0;
define constant $SDL-WINDOWEVENT-SHOWN = 1;
define constant $SDL-WINDOWEVENT-HIDDEN = 2;
define constant $SDL-WINDOWEVENT-EXPOSED = 3;
define constant $SDL-WINDOWEVENT-MOVED = 4;
define constant $SDL-WINDOWEVENT-RESIZED = 5;
define constant $SDL-WINDOWEVENT-SIZE-CHANGED = 6;
define constant $SDL-WINDOWEVENT-MINIMIZED = 7;
define constant $SDL-WINDOWEVENT-MAXIMIZED = 8;
define constant $SDL-WINDOWEVENT-RESTORED = 9;
define constant $SDL-WINDOWEVENT-ENTER = 10;
define constant $SDL-WINDOWEVENT-LEAVE = 11;
define constant $SDL-WINDOWEVENT-FOCUS-GAINED = 12;
define constant $SDL-WINDOWEVENT-FOCUS-LOST = 13;
define constant $SDL-WINDOWEVENT-CLOSE = 14;

define constant <SDL-GLContext> = <C-void*>;

define constant <SDL-GLattr> = <C-int>;
define constant $SDL-GL-RED-SIZE = 0;
define constant $SDL-GL-GREEN-SIZE = 1;
define constant $SDL-GL-BLUE-SIZE = 2;
define constant $SDL-GL-ALPHA-SIZE = 3;
define constant $SDL-GL-BUFFER-SIZE = 4;
define constant $SDL-GL-DOUBLEBUFFER = 5;
define constant $SDL-GL-DEPTH-SIZE = 6;
define constant $SDL-GL-STENCIL-SIZE = 7;
define constant $SDL-GL-ACCUM-RED-SIZE = 8;
define constant $SDL-GL-ACCUM-GREEN-SIZE = 9;
define constant $SDL-GL-ACCUM-BLUE-SIZE = 10;
define constant $SDL-GL-ACCUM-ALPHA-SIZE = 11;
define constant $SDL-GL-STEREO = 12;
define constant $SDL-GL-MULTISAMPLEBUFFERS = 13;
define constant $SDL-GL-MULTISAMPLESAMPLES = 14;
define constant $SDL-GL-ACCELERATED-VISUAL = 15;
define constant $SDL-GL-RETAINED-BACKING = 16;
define constant $SDL-GL-CONTEXT-MAJOR-VERSION = 17;
define constant $SDL-GL-CONTEXT-MINOR-VERSION = 18;
define constant $SDL-GL-CONTEXT-EGL = 19;
define constant $SDL-GL-CONTEXT-FLAGS = 20;
define constant $SDL-GL-CONTEXT-PROFILE-MASK = 21;
define constant $SDL-GL-SHARE-WITH-CURRENT-CONTEXT = 22;
define constant $SDL-GL-FRAMEBUFFER-SRGB-CAPABLE = 23;

define constant <SDL-GLprofile> = <C-int>;
define constant $SDL-GL-CONTEXT-PROFILE-CORE = 1;
define constant $SDL-GL-CONTEXT-PROFILE-COMPATIBILITY = 2;
define constant $SDL-GL-CONTEXT-PROFILE-ES = 4;

define constant <SDL-GLcontextFlag> = <C-int>;
define constant $SDL-GL-CONTEXT-DEBUG-FLAG = 1;
define constant $SDL-GL-CONTEXT-FORWARD-COMPATIBLE-FLAG = 2;
define constant $SDL-GL-CONTEXT-ROBUST-ACCESS-FLAG = 4;
define constant $SDL-GL-CONTEXT-RESET-ISOLATION-FLAG = 8;

define inline C-function SDL-GetNumVideoDrivers
  result res :: <C-signed-int>;
  c-name: "SDL_GetNumVideoDrivers";
end;

define inline C-function SDL-GetVideoDriver
  input parameter index_ :: <C-signed-int>;
  result res :: <c-string>;
  c-name: "SDL_GetVideoDriver";
end;

define inline C-function SDL-VideoInit
  input parameter driver-name_ :: <c-string>;
  result res :: <C-signed-int>;
  c-name: "SDL_VideoInit";
end;

define inline C-function SDL-VideoQuit
  c-name: "SDL_VideoQuit";
end;

define inline C-function SDL-GetCurrentVideoDriver
  result res :: <c-string>;
  c-name: "SDL_GetCurrentVideoDriver";
end;

define inline C-function SDL-GetNumVideoDisplays
  result res :: <C-signed-int>;
  c-name: "SDL_GetNumVideoDisplays";
end;

define inline C-function SDL-GetDisplayName
  input parameter displayIndex_ :: <C-signed-int>;
  result res :: <c-string>;
  c-name: "SDL_GetDisplayName";
end;

define inline C-function SDL-GetDisplayBounds
  input parameter displayIndex_ :: <C-signed-int>;
  input parameter rect_ :: <SDL-Rect*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetDisplayBounds";
end;

define inline C-function SDL-GetNumDisplayModes
  input parameter displayIndex_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetNumDisplayModes";
end;

define C-pointer-type <SDL-DisplayMode*> => <SDL-DisplayMode>;
define inline C-function SDL-GetDisplayMode
  input parameter displayIndex_ :: <C-signed-int>;
  input parameter modeIndex_ :: <C-signed-int>;
  input parameter mode_ :: <SDL-DisplayMode*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetDisplayMode";
end;

define inline C-function SDL-GetDesktopDisplayMode
  input parameter displayIndex_ :: <C-signed-int>;
  input parameter mode_ :: <SDL-DisplayMode*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetDesktopDisplayMode";
end;

define inline C-function SDL-GetCurrentDisplayMode
  input parameter displayIndex_ :: <C-signed-int>;
  input parameter mode_ :: <SDL-DisplayMode*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetCurrentDisplayMode";
end;

define inline C-function SDL-GetClosestDisplayMode
  input parameter displayIndex_ :: <C-signed-int>;
  input parameter mode_ :: <SDL-DisplayMode*>;
  input parameter closest_ :: <SDL-DisplayMode*>;
  result res :: <SDL-DisplayMode*>;
  c-name: "SDL_GetClosestDisplayMode";
end;

define inline C-function SDL-GetWindowDisplayIndex
  input parameter window_ :: <SDL-Window*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetWindowDisplayIndex";
end;

define inline C-function SDL-SetWindowDisplayMode
  input parameter window_ :: <SDL-Window*>;
  input parameter mode_ :: <SDL-DisplayMode*>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetWindowDisplayMode";
end;

define inline C-function SDL-GetWindowDisplayMode
  input parameter window_ :: <SDL-Window*>;
  input parameter mode_ :: <SDL-DisplayMode*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetWindowDisplayMode";
end;

define inline C-function SDL-GetWindowPixelFormat
  input parameter window_ :: <SDL-Window*>;
  result res :: <Uint32>;
  c-name: "SDL_GetWindowPixelFormat";
end;

define inline C-function SDL-CreateWindow
  input parameter title_ :: <c-string>;
  input parameter x_ :: <C-signed-int>;
  input parameter y_ :: <C-signed-int>;
  input parameter w_ :: <C-signed-int>;
  input parameter h_ :: <C-signed-int>;
  input parameter flags_ :: <Uint32>;
  result res :: <SDL-Window*>;
  c-name: "SDL_CreateWindow";
end;

define inline C-function SDL-CreateWindowFrom
  input parameter data_ :: <C-void*>;
  result res :: <SDL-Window*>;
  c-name: "SDL_CreateWindowFrom";
end;

define inline C-function SDL-GetWindowID
  input parameter window_ :: <SDL-Window*>;
  result res :: <Uint32>;
  c-name: "SDL_GetWindowID";
end;

define inline C-function SDL-GetWindowFromID
  input parameter id_ :: <Uint32>;
  result res :: <SDL-Window*>;
  c-name: "SDL_GetWindowFromID";
end;

define inline C-function SDL-GetWindowFlags
  input parameter window_ :: <SDL-Window*>;
  result res :: <Uint32>;
  c-name: "SDL_GetWindowFlags";
end;

define inline C-function SDL-SetWindowTitle
  input parameter window_ :: <SDL-Window*>;
  input parameter title_ :: <c-string>;
  c-name: "SDL_SetWindowTitle";
end;

define inline C-function SDL-GetWindowTitle
  input parameter window_ :: <SDL-Window*>;
  result res :: <c-string>;
  c-name: "SDL_GetWindowTitle";
end;

define inline C-function SDL-SetWindowIcon
  input parameter window_ :: <SDL-Window*>;
  input parameter icon_ :: <SDL-Surface*>;
  c-name: "SDL_SetWindowIcon";
end;

define inline C-function SDL-SetWindowData
  input parameter window_ :: <SDL-Window*>;
  input parameter name_ :: <c-string>;
  input parameter userdata_ :: <C-void*>;
  result res :: <C-void*>;
  c-name: "SDL_SetWindowData";
end;

define inline C-function SDL-GetWindowData
  input parameter window_ :: <SDL-Window*>;
  input parameter name_ :: <c-string>;
  result res :: <C-void*>;
  c-name: "SDL_GetWindowData";
end;

define inline C-function SDL-SetWindowPosition
  input parameter window_ :: <SDL-Window*>;
  input parameter x_ :: <C-signed-int>;
  input parameter y_ :: <C-signed-int>;
  c-name: "SDL_SetWindowPosition";
end;

define inline C-function SDL-GetWindowPosition
  input parameter window_ :: <SDL-Window*>;
  input parameter x_ :: <int*>;
  input parameter y_ :: <int*>;
  c-name: "SDL_GetWindowPosition";
end;

define inline C-function SDL-SetWindowSize
  input parameter window_ :: <SDL-Window*>;
  input parameter w_ :: <C-signed-int>;
  input parameter h_ :: <C-signed-int>;
  c-name: "SDL_SetWindowSize";
end;

define inline C-function SDL-GetWindowSize
  input parameter window_ :: <SDL-Window*>;
  input parameter w_ :: <int*>;
  input parameter h_ :: <int*>;
  c-name: "SDL_GetWindowSize";
end;

define inline C-function SDL-SetWindowMinimumSize
  input parameter window_ :: <SDL-Window*>;
  input parameter min-w_ :: <C-signed-int>;
  input parameter min-h_ :: <C-signed-int>;
  c-name: "SDL_SetWindowMinimumSize";
end;

define inline C-function SDL-GetWindowMinimumSize
  input parameter window_ :: <SDL-Window*>;
  input parameter w_ :: <int*>;
  input parameter h_ :: <int*>;
  c-name: "SDL_GetWindowMinimumSize";
end;

define inline C-function SDL-SetWindowMaximumSize
  input parameter window_ :: <SDL-Window*>;
  input parameter max-w_ :: <C-signed-int>;
  input parameter max-h_ :: <C-signed-int>;
  c-name: "SDL_SetWindowMaximumSize";
end;

define inline C-function SDL-GetWindowMaximumSize
  input parameter window_ :: <SDL-Window*>;
  input parameter w_ :: <int*>;
  input parameter h_ :: <int*>;
  c-name: "SDL_GetWindowMaximumSize";
end;

define inline C-function SDL-SetWindowBordered
  input parameter window_ :: <SDL-Window*>;
  input parameter bordered_ :: <SDL-bool>;
  c-name: "SDL_SetWindowBordered";
end;

define inline C-function SDL-ShowWindow
  input parameter window_ :: <SDL-Window*>;
  c-name: "SDL_ShowWindow";
end;

define inline C-function SDL-HideWindow
  input parameter window_ :: <SDL-Window*>;
  c-name: "SDL_HideWindow";
end;

define inline C-function SDL-RaiseWindow
  input parameter window_ :: <SDL-Window*>;
  c-name: "SDL_RaiseWindow";
end;

define inline C-function SDL-MaximizeWindow
  input parameter window_ :: <SDL-Window*>;
  c-name: "SDL_MaximizeWindow";
end;

define inline C-function SDL-MinimizeWindow
  input parameter window_ :: <SDL-Window*>;
  c-name: "SDL_MinimizeWindow";
end;

define inline C-function SDL-RestoreWindow
  input parameter window_ :: <SDL-Window*>;
  c-name: "SDL_RestoreWindow";
end;

define inline C-function SDL-SetWindowFullscreen
  input parameter window_ :: <SDL-Window*>;
  input parameter flags_ :: <Uint32>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetWindowFullscreen";
end;

define inline C-function SDL-GetWindowSurface
  input parameter window_ :: <SDL-Window*>;
  result res :: <SDL-Surface*>;
  c-name: "SDL_GetWindowSurface";
end;

define inline C-function SDL-UpdateWindowSurface
  input parameter window_ :: <SDL-Window*>;
  result res :: <C-signed-int>;
  c-name: "SDL_UpdateWindowSurface";
end;

define inline C-function SDL-UpdateWindowSurfaceRects
  input parameter window_ :: <SDL-Window*>;
  input parameter rects_ :: <SDL-Rect*>;
  input parameter numrects_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_UpdateWindowSurfaceRects";
end;

define inline C-function SDL-SetWindowGrab
  input parameter window_ :: <SDL-Window*>;
  input parameter grabbed_ :: <SDL-bool>;
  c-name: "SDL_SetWindowGrab";
end;

define inline C-function SDL-GetWindowGrab
  input parameter window_ :: <SDL-Window*>;
  result res :: <SDL-bool>;
  c-name: "SDL_GetWindowGrab";
end;

define inline C-function SDL-SetWindowBrightness
  input parameter window_ :: <SDL-Window*>;
  input parameter brightness_ :: <C-float>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetWindowBrightness";
end;

define inline C-function SDL-GetWindowBrightness
  input parameter window_ :: <SDL-Window*>;
  result res :: <C-float>;
  c-name: "SDL_GetWindowBrightness";
end;

define inline C-function SDL-SetWindowGammaRamp
  input parameter window_ :: <SDL-Window*>;
  input parameter red_ :: <Uint16*>;
  input parameter green_ :: <Uint16*>;
  input parameter blue_ :: <Uint16*>;
  result res :: <C-signed-int>;
  c-name: "SDL_SetWindowGammaRamp";
end;

define inline C-function SDL-GetWindowGammaRamp
  input parameter window_ :: <SDL-Window*>;
  input parameter red_ :: <Uint16*>;
  input parameter green_ :: <Uint16*>;
  input parameter blue_ :: <Uint16*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GetWindowGammaRamp";
end;

define inline C-function SDL-DestroyWindow
  input parameter window_ :: <SDL-Window*>;
  c-name: "SDL_DestroyWindow";
end;

define inline C-function SDL-IsScreenSaverEnabled
  result res :: <SDL-bool>;
  c-name: "SDL_IsScreenSaverEnabled";
end;

define inline C-function SDL-EnableScreenSaver
  c-name: "SDL_EnableScreenSaver";
end;

define inline C-function SDL-DisableScreenSaver
  c-name: "SDL_DisableScreenSaver";
end;

define inline C-function SDL-GL-LoadLibrary
  input parameter path_ :: <c-string>;
  result res :: <C-signed-int>;
  c-name: "SDL_GL_LoadLibrary";
end;

define inline C-function SDL-GL-GetProcAddress
  input parameter proc_ :: <c-string>;
  result res :: <C-void*>;
  c-name: "SDL_GL_GetProcAddress";
end;

define inline C-function SDL-GL-UnloadLibrary
  c-name: "SDL_GL_UnloadLibrary";
end;

define inline C-function SDL-GL-ExtensionSupported
  input parameter extension_ :: <c-string>;
  result res :: <SDL-bool>;
  c-name: "SDL_GL_ExtensionSupported";
end;

define inline C-function SDL-GL-ResetAttributes
  c-name: "SDL_GL_ResetAttributes";
end;

define inline C-function SDL-GL-SetAttribute
  input parameter attr_ :: <SDL-GLattr>;
  input parameter value_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_GL_SetAttribute";
end;

define inline C-function SDL-GL-GetAttribute
  input parameter attr_ :: <SDL-GLattr>;
  input parameter value_ :: <int*>;
  result res :: <C-signed-int>;
  c-name: "SDL_GL_GetAttribute";
end;

define inline C-function SDL-GL-CreateContext
  input parameter window_ :: <SDL-Window*>;
  result res :: <SDL-GLContext>;
  c-name: "SDL_GL_CreateContext";
end;

define inline C-function SDL-GL-MakeCurrent
  input parameter window_ :: <SDL-Window*>;
  input parameter context_ :: <SDL-GLContext>;
  result res :: <C-signed-int>;
  c-name: "SDL_GL_MakeCurrent";
end;

define inline C-function SDL-GL-GetCurrentWindow
  result res :: <SDL-Window*>;
  c-name: "SDL_GL_GetCurrentWindow";
end;

define inline C-function SDL-GL-GetCurrentContext
  result res :: <SDL-GLContext>;
  c-name: "SDL_GL_GetCurrentContext";
end;

define inline C-function SDL-GL-GetDrawableSize
  input parameter window_ :: <SDL-Window*>;
  input parameter w_ :: <int*>;
  input parameter h_ :: <int*>;
  c-name: "SDL_GL_GetDrawableSize";
end;

define inline C-function SDL-GL-SetSwapInterval
  input parameter interval_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "SDL_GL_SetSwapInterval";
end;

define inline C-function SDL-GL-GetSwapInterval
  result res :: <C-signed-int>;
  c-name: "SDL_GL_GetSwapInterval";
end;

define inline C-function SDL-GL-SwapWindow
  input parameter window_ :: <SDL-Window*>;
  c-name: "SDL_GL_SwapWindow";
end;

define inline C-function SDL-GL-DeleteContext
  input parameter context_ :: <SDL-GLContext>;
  c-name: "SDL_GL_DeleteContext";
end;

define constant $SDL-WINDOWPOS-UNDEFINED-MASK = 536805376;

define constant $SDL-WINDOWPOS-UNDEFINED = 536805376;

define constant $SDL-WINDOWPOS-CENTERED-MASK = -268500992;

define constant $SDL-WINDOWPOS-CENTERED = -268500992;

