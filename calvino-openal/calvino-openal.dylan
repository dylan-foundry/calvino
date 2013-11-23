module: calvino-openal
synopsis: bindings for OpenAL
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define constant <ALboolean> = <C-signed-char>;

define constant <ALchar> = <C-signed-char>;

define constant <ALbyte> = <C-signed-char>;

define constant <ALubyte> = <C-unsigned-char>;

define constant <ALshort> = <C-signed-short>;

define constant <ALushort> = <C-unsigned-short>;

define constant <ALint> = <C-signed-int>;

define constant <ALuint> = <C-unsigned-int>;

define constant <ALsizei> = <C-signed-int>;

define constant <ALenum> = <C-signed-int>;

define constant <ALfloat> = <C-float>;

define constant <ALdouble> = <C-double>;

define constant <ALvoid> = <c-void>;

define C-function alEnable
  input parameter capability_ :: <ALenum>;
  c-name: "alEnable";
end;

define C-function alDisable
  input parameter capability_ :: <ALenum>;
  c-name: "alDisable";
end;

define C-function alIsEnabled
  input parameter capability_ :: <ALenum>;
  result res :: <ALboolean>;
  c-name: "alIsEnabled";
end;

define C-pointer-type <ALchar*> => <ALchar>;
define C-function alGetString
  input parameter param_ :: <ALenum>;
  result res :: <ALchar*>;
  c-name: "alGetString";
end;

define C-pointer-type <ALboolean*> => <ALboolean>;
define C-function alGetBooleanv
  input parameter param_ :: <ALenum>;
  input parameter data_ :: <ALboolean*>;
  c-name: "alGetBooleanv";
end;

define C-pointer-type <ALint*> => <ALint>;
define C-function alGetIntegerv
  input parameter param_ :: <ALenum>;
  input parameter data_ :: <ALint*>;
  c-name: "alGetIntegerv";
end;

define C-pointer-type <ALfloat*> => <ALfloat>;
define C-function alGetFloatv
  input parameter param_ :: <ALenum>;
  input parameter data_ :: <ALfloat*>;
  c-name: "alGetFloatv";
end;

define C-pointer-type <ALdouble*> => <ALdouble>;
define C-function alGetDoublev
  input parameter param_ :: <ALenum>;
  input parameter data_ :: <ALdouble*>;
  c-name: "alGetDoublev";
end;

define C-function alGetBoolean
  input parameter param_ :: <ALenum>;
  result res :: <ALboolean>;
  c-name: "alGetBoolean";
end;

define C-function alGetInteger
  input parameter param_ :: <ALenum>;
  result res :: <ALint>;
  c-name: "alGetInteger";
end;

define C-function alGetFloat
  input parameter param_ :: <ALenum>;
  result res :: <ALfloat>;
  c-name: "alGetFloat";
end;

define C-function alGetDouble
  input parameter param_ :: <ALenum>;
  result res :: <ALdouble>;
  c-name: "alGetDouble";
end;

define C-function alGetError
  result res :: <ALenum>;
  c-name: "alGetError";
end;

define C-function alIsExtensionPresent
  input parameter extname_ :: <ALchar*>;
  result res :: <ALboolean>;
  c-name: "alIsExtensionPresent";
end;

define C-function alGetProcAddress
  input parameter fname_ :: <ALchar*>;
  result res :: <C-void*>;
  c-name: "alGetProcAddress";
end;

define C-function alGetEnumValue
  input parameter ename_ :: <ALchar*>;
  result res :: <ALenum>;
  c-name: "alGetEnumValue";
end;

define C-function alListenerf
  input parameter param_ :: <ALenum>;
  input parameter value_ :: <ALfloat>;
  c-name: "alListenerf";
end;

define C-function alListener3f
  input parameter param_ :: <ALenum>;
  input parameter value1_ :: <ALfloat>;
  input parameter value2_ :: <ALfloat>;
  input parameter value3_ :: <ALfloat>;
  c-name: "alListener3f";
end;

define C-function alListenerfv
  input parameter param_ :: <ALenum>;
  input parameter values_ :: <ALfloat*>;
  c-name: "alListenerfv";
end;

define C-function alListeneri
  input parameter param_ :: <ALenum>;
  input parameter value_ :: <ALint>;
  c-name: "alListeneri";
end;

define C-function alListener3i
  input parameter param_ :: <ALenum>;
  input parameter value1_ :: <ALint>;
  input parameter value2_ :: <ALint>;
  input parameter value3_ :: <ALint>;
  c-name: "alListener3i";
end;

define C-function alListeneriv
  input parameter param_ :: <ALenum>;
  input parameter values_ :: <ALint*>;
  c-name: "alListeneriv";
end;

define C-function alGetListenerf
  input parameter param_ :: <ALenum>;
  input parameter value_ :: <ALfloat*>;
  c-name: "alGetListenerf";
end;

define C-function alGetListener3f
  input parameter param_ :: <ALenum>;
  input parameter value1_ :: <ALfloat*>;
  input parameter value2_ :: <ALfloat*>;
  input parameter value3_ :: <ALfloat*>;
  c-name: "alGetListener3f";
end;

define C-function alGetListenerfv
  input parameter param_ :: <ALenum>;
  input parameter values_ :: <ALfloat*>;
  c-name: "alGetListenerfv";
end;

define C-function alGetListeneri
  input parameter param_ :: <ALenum>;
  input parameter value_ :: <ALint*>;
  c-name: "alGetListeneri";
end;

define C-function alGetListener3i
  input parameter param_ :: <ALenum>;
  input parameter value1_ :: <ALint*>;
  input parameter value2_ :: <ALint*>;
  input parameter value3_ :: <ALint*>;
  c-name: "alGetListener3i";
end;

define C-function alGetListeneriv
  input parameter param_ :: <ALenum>;
  input parameter values_ :: <ALint*>;
  c-name: "alGetListeneriv";
end;

define C-pointer-type <ALuint*> => <ALuint>;
define C-function alGenSources
  input parameter n_ :: <ALsizei>;
  input parameter sources_ :: <ALuint*>;
  c-name: "alGenSources";
end;

define C-function alDeleteSources
  input parameter n_ :: <ALsizei>;
  input parameter sources_ :: <ALuint*>;
  c-name: "alDeleteSources";
end;

define C-function alIsSource
  input parameter sid_ :: <ALuint>;
  result res :: <ALboolean>;
  c-name: "alIsSource";
end;

define C-function alSourcef
  input parameter sid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter value_ :: <ALfloat>;
  c-name: "alSourcef";
end;

define C-function alSource3f
  input parameter sid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter value1_ :: <ALfloat>;
  input parameter value2_ :: <ALfloat>;
  input parameter value3_ :: <ALfloat>;
  c-name: "alSource3f";
end;

define C-function alSourcefv
  input parameter sid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter values_ :: <ALfloat*>;
  c-name: "alSourcefv";
end;

define C-function alSourcei
  input parameter sid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter value_ :: <ALint>;
  c-name: "alSourcei";
end;

define C-function alSource3i
  input parameter sid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter value1_ :: <ALint>;
  input parameter value2_ :: <ALint>;
  input parameter value3_ :: <ALint>;
  c-name: "alSource3i";
end;

define C-function alSourceiv
  input parameter sid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter values_ :: <ALint*>;
  c-name: "alSourceiv";
end;

define C-function alGetSourcef
  input parameter sid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter value_ :: <ALfloat*>;
  c-name: "alGetSourcef";
end;

define C-function alGetSource3f
  input parameter sid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter value1_ :: <ALfloat*>;
  input parameter value2_ :: <ALfloat*>;
  input parameter value3_ :: <ALfloat*>;
  c-name: "alGetSource3f";
end;

define C-function alGetSourcefv
  input parameter sid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter values_ :: <ALfloat*>;
  c-name: "alGetSourcefv";
end;

define C-function alGetSourcei
  input parameter sid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter value_ :: <ALint*>;
  c-name: "alGetSourcei";
end;

define C-function alGetSource3i
  input parameter sid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter value1_ :: <ALint*>;
  input parameter value2_ :: <ALint*>;
  input parameter value3_ :: <ALint*>;
  c-name: "alGetSource3i";
end;

define C-function alGetSourceiv
  input parameter sid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter values_ :: <ALint*>;
  c-name: "alGetSourceiv";
end;

define C-function alSourcePlayv
  input parameter ns_ :: <ALsizei>;
  input parameter sids_ :: <ALuint*>;
  c-name: "alSourcePlayv";
end;

define C-function alSourceStopv
  input parameter ns_ :: <ALsizei>;
  input parameter sids_ :: <ALuint*>;
  c-name: "alSourceStopv";
end;

define C-function alSourceRewindv
  input parameter ns_ :: <ALsizei>;
  input parameter sids_ :: <ALuint*>;
  c-name: "alSourceRewindv";
end;

define C-function alSourcePausev
  input parameter ns_ :: <ALsizei>;
  input parameter sids_ :: <ALuint*>;
  c-name: "alSourcePausev";
end;

define C-function alSourcePlay
  input parameter sid_ :: <ALuint>;
  c-name: "alSourcePlay";
end;

define C-function alSourceStop
  input parameter sid_ :: <ALuint>;
  c-name: "alSourceStop";
end;

define C-function alSourceRewind
  input parameter sid_ :: <ALuint>;
  c-name: "alSourceRewind";
end;

define C-function alSourcePause
  input parameter sid_ :: <ALuint>;
  c-name: "alSourcePause";
end;

define C-function alSourceQueueBuffers
  input parameter sid_ :: <ALuint>;
  input parameter numEntries_ :: <ALsizei>;
  input parameter bids_ :: <ALuint*>;
  c-name: "alSourceQueueBuffers";
end;

define C-function alSourceUnqueueBuffers
  input parameter sid_ :: <ALuint>;
  input parameter numEntries_ :: <ALsizei>;
  input parameter bids_ :: <ALuint*>;
  c-name: "alSourceUnqueueBuffers";
end;

define C-function alGenBuffers
  input parameter n_ :: <ALsizei>;
  input parameter buffers_ :: <ALuint*>;
  c-name: "alGenBuffers";
end;

define C-function alDeleteBuffers
  input parameter n_ :: <ALsizei>;
  input parameter buffers_ :: <ALuint*>;
  c-name: "alDeleteBuffers";
end;

define C-function alIsBuffer
  input parameter bid_ :: <ALuint>;
  result res :: <ALboolean>;
  c-name: "alIsBuffer";
end;

define C-pointer-type <ALvoid*> => <ALvoid>;
define C-function alBufferData
  input parameter bid_ :: <ALuint>;
  input parameter format_ :: <ALenum>;
  input parameter data_ :: <ALvoid*>;
  input parameter size_ :: <ALsizei>;
  input parameter freq_ :: <ALsizei>;
  c-name: "alBufferData";
end;

define C-function alBufferf
  input parameter bid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter value_ :: <ALfloat>;
  c-name: "alBufferf";
end;

define C-function alBuffer3f
  input parameter bid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter value1_ :: <ALfloat>;
  input parameter value2_ :: <ALfloat>;
  input parameter value3_ :: <ALfloat>;
  c-name: "alBuffer3f";
end;

define C-function alBufferfv
  input parameter bid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter values_ :: <ALfloat*>;
  c-name: "alBufferfv";
end;

define C-function alBufferi
  input parameter bid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter value_ :: <ALint>;
  c-name: "alBufferi";
end;

define C-function alBuffer3i
  input parameter bid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter value1_ :: <ALint>;
  input parameter value2_ :: <ALint>;
  input parameter value3_ :: <ALint>;
  c-name: "alBuffer3i";
end;

define C-function alBufferiv
  input parameter bid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter values_ :: <ALint*>;
  c-name: "alBufferiv";
end;

define C-function alGetBufferf
  input parameter bid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter value_ :: <ALfloat*>;
  c-name: "alGetBufferf";
end;

define C-function alGetBuffer3f
  input parameter bid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter value1_ :: <ALfloat*>;
  input parameter value2_ :: <ALfloat*>;
  input parameter value3_ :: <ALfloat*>;
  c-name: "alGetBuffer3f";
end;

define C-function alGetBufferfv
  input parameter bid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter values_ :: <ALfloat*>;
  c-name: "alGetBufferfv";
end;

define C-function alGetBufferi
  input parameter bid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter value_ :: <ALint*>;
  c-name: "alGetBufferi";
end;

define C-function alGetBuffer3i
  input parameter bid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter value1_ :: <ALint*>;
  input parameter value2_ :: <ALint*>;
  input parameter value3_ :: <ALint*>;
  c-name: "alGetBuffer3i";
end;

define C-function alGetBufferiv
  input parameter bid_ :: <ALuint>;
  input parameter param_ :: <ALenum>;
  input parameter values_ :: <ALint*>;
  c-name: "alGetBufferiv";
end;

define C-function alDopplerFactor
  input parameter value_ :: <ALfloat>;
  c-name: "alDopplerFactor";
end;

define C-function alDopplerVelocity
  input parameter value_ :: <ALfloat>;
  c-name: "alDopplerVelocity";
end;

define C-function alSpeedOfSound
  input parameter value_ :: <ALfloat>;
  c-name: "alSpeedOfSound";
end;

define C-function alDistanceModel
  input parameter distanceModel_ :: <ALenum>;
  c-name: "alDistanceModel";
end;

define constant <LPALENABLE> = <C-function-pointer>;
define constant <LPALDISABLE> = <C-function-pointer>;
define constant <LPALISENABLED> = <C-function-pointer>;
define constant <LPALGETSTRING> = <C-function-pointer>;
define constant <LPALGETBOOLEANV> = <C-function-pointer>;
define constant <LPALGETINTEGERV> = <C-function-pointer>;
define constant <LPALGETFLOATV> = <C-function-pointer>;
define constant <LPALGETDOUBLEV> = <C-function-pointer>;
define constant <LPALGETBOOLEAN> = <C-function-pointer>;
define constant <LPALGETINTEGER> = <C-function-pointer>;
define constant <LPALGETFLOAT> = <C-function-pointer>;
define constant <LPALGETDOUBLE> = <C-function-pointer>;
define constant <LPALGETERROR> = <C-function-pointer>;
define constant <LPALISEXTENSIONPRESENT> = <C-function-pointer>;
define constant <LPALGETPROCADDRESS> = <C-function-pointer>;
define constant <LPALGETENUMVALUE> = <C-function-pointer>;
define constant <LPALLISTENERF> = <C-function-pointer>;
define constant <LPALLISTENER3F> = <C-function-pointer>;
define constant <LPALLISTENERFV> = <C-function-pointer>;
define constant <LPALLISTENERI> = <C-function-pointer>;
define constant <LPALLISTENER3I> = <C-function-pointer>;
define constant <LPALLISTENERIV> = <C-function-pointer>;
define constant <LPALGETLISTENERF> = <C-function-pointer>;
define constant <LPALGETLISTENER3F> = <C-function-pointer>;
define constant <LPALGETLISTENERFV> = <C-function-pointer>;
define constant <LPALGETLISTENERI> = <C-function-pointer>;
define constant <LPALGETLISTENER3I> = <C-function-pointer>;
define constant <LPALGETLISTENERIV> = <C-function-pointer>;
define constant <LPALGENSOURCES> = <C-function-pointer>;
define constant <LPALDELETESOURCES> = <C-function-pointer>;
define constant <LPALISSOURCE> = <C-function-pointer>;
define constant <LPALSOURCEF> = <C-function-pointer>;
define constant <LPALSOURCE3F> = <C-function-pointer>;
define constant <LPALSOURCEFV> = <C-function-pointer>;
define constant <LPALSOURCEI> = <C-function-pointer>;
define constant <LPALSOURCE3I> = <C-function-pointer>;
define constant <LPALSOURCEIV> = <C-function-pointer>;
define constant <LPALGETSOURCEF> = <C-function-pointer>;
define constant <LPALGETSOURCE3F> = <C-function-pointer>;
define constant <LPALGETSOURCEFV> = <C-function-pointer>;
define constant <LPALGETSOURCEI> = <C-function-pointer>;
define constant <LPALGETSOURCE3I> = <C-function-pointer>;
define constant <LPALGETSOURCEIV> = <C-function-pointer>;
define constant <LPALSOURCEPLAYV> = <C-function-pointer>;
define constant <LPALSOURCESTOPV> = <C-function-pointer>;
define constant <LPALSOURCEREWINDV> = <C-function-pointer>;
define constant <LPALSOURCEPAUSEV> = <C-function-pointer>;
define constant <LPALSOURCEPLAY> = <C-function-pointer>;
define constant <LPALSOURCESTOP> = <C-function-pointer>;
define constant <LPALSOURCEREWIND> = <C-function-pointer>;
define constant <LPALSOURCEPAUSE> = <C-function-pointer>;
define constant <LPALSOURCEQUEUEBUFFERS> = <C-function-pointer>;
define constant <LPALSOURCEUNQUEUEBUFFERS> = <C-function-pointer>;
define constant <LPALGENBUFFERS> = <C-function-pointer>;
define constant <LPALDELETEBUFFERS> = <C-function-pointer>;
define constant <LPALISBUFFER> = <C-function-pointer>;
define constant <LPALBUFFERDATA> = <C-function-pointer>;
define constant <LPALBUFFERF> = <C-function-pointer>;
define constant <LPALBUFFER3F> = <C-function-pointer>;
define constant <LPALBUFFERFV> = <C-function-pointer>;
define constant <LPALBUFFERI> = <C-function-pointer>;
define constant <LPALBUFFER3I> = <C-function-pointer>;
define constant <LPALBUFFERIV> = <C-function-pointer>;
define constant <LPALGETBUFFERF> = <C-function-pointer>;
define constant <LPALGETBUFFER3F> = <C-function-pointer>;
define constant <LPALGETBUFFERFV> = <C-function-pointer>;
define constant <LPALGETBUFFERI> = <C-function-pointer>;
define constant <LPALGETBUFFER3I> = <C-function-pointer>;
define constant <LPALGETBUFFERIV> = <C-function-pointer>;
define constant <LPALDOPPLERFACTOR> = <C-function-pointer>;
define constant <LPALDOPPLERVELOCITY> = <C-function-pointer>;
define constant <LPALSPEEDOFSOUND> = <C-function-pointer>;
define constant <LPALDISTANCEMODEL> = <C-function-pointer>;
define constant $AL-INVALID = -1;

define constant $AL-ILLEGAL-ENUM = 40962;

define constant $AL-ILLEGAL-COMMAND = 40964;

define constant $AL-NONE = 0;

define constant $AL-FALSE = 0;

define constant $AL-TRUE = 1;

define constant $AL-SOURCE-RELATIVE = 514;

define constant $AL-CONE-INNER-ANGLE = 4097;

define constant $AL-CONE-OUTER-ANGLE = 4098;

define constant $AL-PITCH = 4099;

define constant $AL-POSITION = 4100;

define constant $AL-DIRECTION = 4101;

define constant $AL-VELOCITY = 4102;

define constant $AL-LOOPING = 4103;

define constant $AL-BUFFER = 4105;

define constant $AL-GAIN = 4106;

define constant $AL-MIN-GAIN = 4109;

define constant $AL-MAX-GAIN = 4110;

define constant $AL-ORIENTATION = 4111;

define constant $AL-SOURCE-STATE = 4112;

define constant $AL-INITIAL = 4113;

define constant $AL-PLAYING = 4114;

define constant $AL-PAUSED = 4115;

define constant $AL-STOPPED = 4116;

define constant $AL-BUFFERS-QUEUED = 4117;

define constant $AL-BUFFERS-PROCESSED = 4118;

define constant $AL-SEC-OFFSET = 4132;

define constant $AL-SAMPLE-OFFSET = 4133;

define constant $AL-BYTE-OFFSET = 4134;

define constant $AL-SOURCE-TYPE = 4135;

define constant $AL-STATIC = 4136;

define constant $AL-STREAMING = 4137;

define constant $AL-UNDETERMINED = 4144;

define constant $AL-FORMAT-MONO8 = 4352;

define constant $AL-FORMAT-MONO16 = 4353;

define constant $AL-FORMAT-STEREO8 = 4354;

define constant $AL-FORMAT-STEREO16 = 4355;

define constant $AL-REFERENCE-DISTANCE = 4128;

define constant $AL-ROLLOFF-FACTOR = 4129;

define constant $AL-CONE-OUTER-GAIN = 4130;

define constant $AL-MAX-DISTANCE = 4131;

define constant $AL-FREQUENCY = 8193;

define constant $AL-BITS = 8194;

define constant $AL-CHANNELS = 8195;

define constant $AL-SIZE = 8196;

define constant $AL-UNUSED = 8208;

define constant $AL-PENDING = 8209;

define constant $AL-PROCESSED = 8210;

define constant $AL-NO-ERROR = 0;

define constant $AL-INVALID-NAME = 40961;

define constant $AL-INVALID-ENUM = 40962;

define constant $AL-INVALID-VALUE = 40963;

define constant $AL-INVALID-OPERATION = 40964;

define constant $AL-OUT-OF-MEMORY = 40965;

define constant $AL-VENDOR = 45057;

define constant $AL-VERSION = 45058;

define constant $AL-RENDERER = 45059;

define constant $AL-EXTENSIONS = 45060;

define constant $AL-DOPPLER-FACTOR = 49152;

define constant $AL-DOPPLER-VELOCITY = 49153;

define constant $AL-SPEED-OF-SOUND = 49155;

define constant $AL-DISTANCE-MODEL = 53248;

define constant $AL-INVERSE-DISTANCE = 53249;

define constant $AL-INVERSE-DISTANCE-CLAMPED = 53250;

define constant $AL-LINEAR-DISTANCE = 53251;

define constant $AL-LINEAR-DISTANCE-CLAMPED = 53252;

define constant $AL-EXPONENT-DISTANCE = 53253;

define constant $AL-EXPONENT-DISTANCE-CLAMPED = 53254;

