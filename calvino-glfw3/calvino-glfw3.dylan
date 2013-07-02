module: calvino-glfw3
synopsis: bindings for the glfw3 library
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define constant <GLFWglproc> = <C-function-pointer>;
define C-struct <GLFWmonitor>
end;

define C-struct <GLFWwindow>
end;

define C-pointer-type <c-string> => <C-signed-char>;
define constant <GLFWerrorfun> = <C-function-pointer>;
define C-pointer-type <GLFWwindow*> => <GLFWwindow>;
define constant <GLFWwindowposfun> = <C-function-pointer>;
define constant <GLFWwindowsizefun> = <C-function-pointer>;
define constant <GLFWwindowclosefun> = <C-function-pointer>;
define constant <GLFWwindowrefreshfun> = <C-function-pointer>;
define constant <GLFWwindowfocusfun> = <C-function-pointer>;
define constant <GLFWwindowiconifyfun> = <C-function-pointer>;
define constant <GLFWframebuffersizefun> = <C-function-pointer>;
define constant <GLFWmousebuttonfun> = <C-function-pointer>;
define constant <GLFWcursorposfun> = <C-function-pointer>;
define constant <GLFWcursorenterfun> = <C-function-pointer>;
define constant <GLFWscrollfun> = <C-function-pointer>;
define constant <GLFWkeyfun> = <C-function-pointer>;
define constant <GLFWcharfun> = <C-function-pointer>;
define C-pointer-type <GLFWmonitor*> => <GLFWmonitor>;
define constant <GLFWmonitorfun> = <C-function-pointer>;
define C-struct <GLFWvidmode>
  slot GLFWvidmode$width :: <C-signed-int>;
  slot GLFWvidmode$height :: <C-signed-int>;
  slot GLFWvidmode$redBits :: <C-signed-int>;
  slot GLFWvidmode$greenBits :: <C-signed-int>;
  slot GLFWvidmode$blueBits :: <C-signed-int>;
  slot GLFWvidmode$refreshRate :: <C-signed-int>;
end;

define C-pointer-type <unsigned-short*> => <C-unsigned-short>;
define C-struct <GLFWgammaramp>
  slot GLFWgammaramp$red :: <unsigned-short*>;
  slot GLFWgammaramp$green :: <unsigned-short*>;
  slot GLFWgammaramp$blue :: <unsigned-short*>;
  slot GLFWgammaramp$size :: <C-unsigned-int>;
end;

define C-function glfwInit
  result res :: <C-signed-int>;
  c-name: "glfwInit";
end;

define C-function glfwTerminate
  c-name: "glfwTerminate";
end;

define C-pointer-type <int*> => <C-signed-int>;
define C-function glfwGetVersion
  output parameter major_ :: <int*>;
  output parameter minor_ :: <int*>;
  output parameter rev_ :: <int*>;
  c-name: "glfwGetVersion";
end;

define C-function glfwGetVersionString
  result res :: <c-string>;
  c-name: "glfwGetVersionString";
end;

define C-function glfwSetErrorCallback
  input parameter cbfun_ :: <GLFWerrorfun>;
  result res :: <GLFWerrorfun>;
  c-name: "glfwSetErrorCallback";
end;

define C-pointer-type <GLFWmonitor**> => <GLFWmonitor*>;
define C-function glfwGetMonitors
  input parameter count_ :: <int*>;
  result res :: <GLFWmonitor**>;
  c-name: "glfwGetMonitors";
end;

define C-function glfwGetPrimaryMonitor
  result res :: <GLFWmonitor*>;
  c-name: "glfwGetPrimaryMonitor";
end;

define C-function glfwGetMonitorPos
  input parameter monitor_ :: <GLFWmonitor*>;
  output parameter xpos_ :: <int*>;
  output parameter ypos_ :: <int*>;
  c-name: "glfwGetMonitorPos";
end;

define C-function glfwGetMonitorPhysicalSize
  input parameter monitor_ :: <GLFWmonitor*>;
  output parameter width_ :: <int*>;
  output parameter height_ :: <int*>;
  c-name: "glfwGetMonitorPhysicalSize";
end;

define C-function glfwGetMonitorName
  input parameter monitor_ :: <GLFWmonitor*>;
  result res :: <c-string>;
  c-name: "glfwGetMonitorName";
end;

define C-function glfwSetMonitorCallback
  input parameter cbfun_ :: <GLFWmonitorfun>;
  result res :: <GLFWmonitorfun>;
  c-name: "glfwSetMonitorCallback";
end;

define C-pointer-type <GLFWvidmode*> => <GLFWvidmode>;
define C-function glfwGetVideoModes
  input parameter monitor_ :: <GLFWmonitor*>;
  input parameter count_ :: <int*>;
  result res :: <GLFWvidmode*>;
  c-name: "glfwGetVideoModes";
end;

define C-function glfwGetVideoMode
  input parameter monitor_ :: <GLFWmonitor*>;
  result res :: <GLFWvidmode*>;
  c-name: "glfwGetVideoMode";
end;

define C-function glfwSetGamma
  input parameter monitor_ :: <GLFWmonitor*>;
  input parameter gamma_ :: <C-float>;
  c-name: "glfwSetGamma";
end;

define C-pointer-type <GLFWgammaramp*> => <GLFWgammaramp>;
define C-function glfwGetGammaRamp
  input parameter monitor_ :: <GLFWmonitor*>;
  result res :: <GLFWgammaramp*>;
  c-name: "glfwGetGammaRamp";
end;

define C-function glfwSetGammaRamp
  input parameter monitor_ :: <GLFWmonitor*>;
  input parameter ramp_ :: <GLFWgammaramp*>;
  c-name: "glfwSetGammaRamp";
end;

define C-function glfwDefaultWindowHints
  c-name: "glfwDefaultWindowHints";
end;

define C-function glfwWindowHint
  input parameter target_ :: <C-signed-int>;
  input parameter hint_ :: <C-signed-int>;
  c-name: "glfwWindowHint";
end;

define C-function glfwCreateWindow
  input parameter width_ :: <C-signed-int>;
  input parameter height_ :: <C-signed-int>;
  input parameter title_ :: <c-string>;
  input parameter monitor_ :: <GLFWmonitor*>;
  input parameter share_ :: <GLFWwindow*>;
  result res :: <GLFWwindow*>;
  c-name: "glfwCreateWindow";
end;

define C-function glfwDestroyWindow
  input parameter window_ :: <GLFWwindow*>;
  c-name: "glfwDestroyWindow";
end;

define C-function glfwWindowShouldClose
  input parameter window_ :: <GLFWwindow*>;
  result res :: <C-boolean>;
  c-name: "glfwWindowShouldClose";
end;

define C-function glfwSetWindowShouldClose
  input parameter window_ :: <GLFWwindow*>;
  input parameter value_ :: <C-signed-int>;
  c-name: "glfwSetWindowShouldClose";
end;

define C-function glfwSetWindowTitle
  input parameter window_ :: <GLFWwindow*>;
  input parameter title_ :: <c-string>;
  c-name: "glfwSetWindowTitle";
end;

define C-function glfwGetWindowPos
  input parameter window_ :: <GLFWwindow*>;
  output parameter xpos_ :: <int*>;
  output parameter ypos_ :: <int*>;
  c-name: "glfwGetWindowPos";
end;

define C-function glfwSetWindowPos
  input parameter window_ :: <GLFWwindow*>;
  input parameter xpos_ :: <C-signed-int>;
  input parameter ypos_ :: <C-signed-int>;
  c-name: "glfwSetWindowPos";
end;

define C-function glfwGetWindowSize
  input parameter window_ :: <GLFWwindow*>;
  output parameter width_ :: <int*>;
  output parameter height_ :: <int*>;
  c-name: "glfwGetWindowSize";
end;

define C-function glfwSetWindowSize
  input parameter window_ :: <GLFWwindow*>;
  input parameter width_ :: <C-signed-int>;
  input parameter height_ :: <C-signed-int>;
  c-name: "glfwSetWindowSize";
end;

define C-function glfwGetFramebufferSize
  input parameter window_ :: <GLFWwindow*>;
  output parameter width_ :: <int*>;
  output parameter height_ :: <int*>;
  c-name: "glfwGetFramebufferSize";
end;

define C-function glfwIconifyWindow
  input parameter window_ :: <GLFWwindow*>;
  c-name: "glfwIconifyWindow";
end;

define C-function glfwRestoreWindow
  input parameter window_ :: <GLFWwindow*>;
  c-name: "glfwRestoreWindow";
end;

define C-function glfwShowWindow
  input parameter window_ :: <GLFWwindow*>;
  c-name: "glfwShowWindow";
end;

define C-function glfwHideWindow
  input parameter window_ :: <GLFWwindow*>;
  c-name: "glfwHideWindow";
end;

define C-function glfwGetWindowMonitor
  input parameter window_ :: <GLFWwindow*>;
  result res :: <GLFWmonitor*>;
  c-name: "glfwGetWindowMonitor";
end;

define C-function glfwGetWindowAttrib
  input parameter window_ :: <GLFWwindow*>;
  input parameter attrib_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "glfwGetWindowAttrib";
end;

define C-function glfwSetWindowUserPointer
  input parameter window_ :: <GLFWwindow*>;
  input parameter pointer_ :: <C-void*>;
  c-name: "glfwSetWindowUserPointer";
end;

define C-function glfwGetWindowUserPointer
  input parameter window_ :: <GLFWwindow*>;
  result res :: <C-void*>;
  c-name: "glfwGetWindowUserPointer";
end;

define C-function glfwSetWindowPosCallback
  input parameter window_ :: <GLFWwindow*>;
  input parameter cbfun_ :: <GLFWwindowposfun>;
  result res :: <GLFWwindowposfun>;
  c-name: "glfwSetWindowPosCallback";
end;

define C-function glfwSetWindowSizeCallback
  input parameter window_ :: <GLFWwindow*>;
  input parameter cbfun_ :: <GLFWwindowsizefun>;
  result res :: <GLFWwindowsizefun>;
  c-name: "glfwSetWindowSizeCallback";
end;

define C-function glfwSetWindowCloseCallback
  input parameter window_ :: <GLFWwindow*>;
  input parameter cbfun_ :: <GLFWwindowclosefun>;
  result res :: <GLFWwindowclosefun>;
  c-name: "glfwSetWindowCloseCallback";
end;

define C-function glfwSetWindowRefreshCallback
  input parameter window_ :: <GLFWwindow*>;
  input parameter cbfun_ :: <GLFWwindowrefreshfun>;
  result res :: <GLFWwindowrefreshfun>;
  c-name: "glfwSetWindowRefreshCallback";
end;

define C-function glfwSetWindowFocusCallback
  input parameter window_ :: <GLFWwindow*>;
  input parameter cbfun_ :: <GLFWwindowfocusfun>;
  result res :: <GLFWwindowfocusfun>;
  c-name: "glfwSetWindowFocusCallback";
end;

define C-function glfwSetWindowIconifyCallback
  input parameter window_ :: <GLFWwindow*>;
  input parameter cbfun_ :: <GLFWwindowiconifyfun>;
  result res :: <GLFWwindowiconifyfun>;
  c-name: "glfwSetWindowIconifyCallback";
end;

define C-function glfwSetFramebufferSizeCallback
  input parameter window_ :: <GLFWwindow*>;
  input parameter cbfun_ :: <GLFWframebuffersizefun>;
  result res :: <GLFWframebuffersizefun>;
  c-name: "glfwSetFramebufferSizeCallback";
end;

define C-function glfwPollEvents
  c-name: "glfwPollEvents";
end;

define C-function glfwWaitEvents
  c-name: "glfwWaitEvents";
end;

define C-function glfwGetInputMode
  input parameter window_ :: <GLFWwindow*>;
  input parameter mode_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "glfwGetInputMode";
end;

define C-function glfwSetInputMode
  input parameter window_ :: <GLFWwindow*>;
  input parameter mode_ :: <C-signed-int>;
  input parameter value_ :: <C-signed-int>;
  c-name: "glfwSetInputMode";
end;

define C-function glfwGetKey
  input parameter window_ :: <GLFWwindow*>;
  input parameter key_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "glfwGetKey";
end;

define C-function glfwGetMouseButton
  input parameter window_ :: <GLFWwindow*>;
  input parameter button_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "glfwGetMouseButton";
end;

define C-pointer-type <double*> => <C-double>;
define C-function glfwGetCursorPos
  input parameter window_ :: <GLFWwindow*>;
  output parameter xpos_ :: <double*>;
  output parameter ypos_ :: <double*>;
  c-name: "glfwGetCursorPos";
end;

define C-function glfwSetCursorPos
  input parameter window_ :: <GLFWwindow*>;
  input parameter xpos_ :: <C-double>;
  input parameter ypos_ :: <C-double>;
  c-name: "glfwSetCursorPos";
end;

define C-function glfwSetKeyCallback
  input parameter window_ :: <GLFWwindow*>;
  input parameter cbfun_ :: <GLFWkeyfun>;
  result res :: <GLFWkeyfun>;
  c-name: "glfwSetKeyCallback";
end;

define C-function glfwSetCharCallback
  input parameter window_ :: <GLFWwindow*>;
  input parameter cbfun_ :: <GLFWcharfun>;
  result res :: <GLFWcharfun>;
  c-name: "glfwSetCharCallback";
end;

define C-function glfwSetMouseButtonCallback
  input parameter window_ :: <GLFWwindow*>;
  input parameter cbfun_ :: <GLFWmousebuttonfun>;
  result res :: <GLFWmousebuttonfun>;
  c-name: "glfwSetMouseButtonCallback";
end;

define C-function glfwSetCursorPosCallback
  input parameter window_ :: <GLFWwindow*>;
  input parameter cbfun_ :: <GLFWcursorposfun>;
  result res :: <GLFWcursorposfun>;
  c-name: "glfwSetCursorPosCallback";
end;

define C-function glfwSetCursorEnterCallback
  input parameter window_ :: <GLFWwindow*>;
  input parameter cbfun_ :: <GLFWcursorenterfun>;
  result res :: <GLFWcursorenterfun>;
  c-name: "glfwSetCursorEnterCallback";
end;

define C-function glfwSetScrollCallback
  input parameter window_ :: <GLFWwindow*>;
  input parameter cbfun_ :: <GLFWscrollfun>;
  result res :: <GLFWscrollfun>;
  c-name: "glfwSetScrollCallback";
end;

define C-function glfwJoystickPresent
  input parameter joy_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "glfwJoystickPresent";
end;

define C-pointer-type <float*> => <C-float>;
define C-function glfwGetJoystickAxes
  input parameter joy_ :: <C-signed-int>;
  input parameter count_ :: <int*>;
  result res :: <float*>;
  c-name: "glfwGetJoystickAxes";
end;

define C-pointer-type <unsigned-char*> => <C-unsigned-char>;
define C-function glfwGetJoystickButtons
  input parameter joy_ :: <C-signed-int>;
  input parameter count_ :: <int*>;
  result res :: <unsigned-char*>;
  c-name: "glfwGetJoystickButtons";
end;

define C-function glfwGetJoystickName
  input parameter joy_ :: <C-signed-int>;
  result res :: <c-string>;
  c-name: "glfwGetJoystickName";
end;

define C-function glfwSetClipboardString
  input parameter window_ :: <GLFWwindow*>;
  input parameter string_ :: <c-string>;
  c-name: "glfwSetClipboardString";
end;

define C-function glfwGetClipboardString
  input parameter window_ :: <GLFWwindow*>;
  result res :: <c-string>;
  c-name: "glfwGetClipboardString";
end;

define C-function glfwGetTime
  result res :: <C-double>;
  c-name: "glfwGetTime";
end;

define C-function glfwSetTime
  input parameter time_ :: <C-double>;
  c-name: "glfwSetTime";
end;

define C-function glfwMakeContextCurrent
  input parameter window_ :: <GLFWwindow*>;
  c-name: "glfwMakeContextCurrent";
end;

define C-function glfwGetCurrentContext
  result res :: <GLFWwindow*>;
  c-name: "glfwGetCurrentContext";
end;

define C-function glfwSwapBuffers
  input parameter window_ :: <GLFWwindow*>;
  c-name: "glfwSwapBuffers";
end;

define C-function glfwSwapInterval
  input parameter interval_ :: <C-signed-int>;
  c-name: "glfwSwapInterval";
end;

define C-function glfwExtensionSupported
  input parameter extension_ :: <c-string>;
  result res :: <C-signed-int>;
  c-name: "glfwExtensionSupported";
end;

define C-function glfwGetProcAddress
  input parameter procname_ :: <c-string>;
  result res :: <GLFWglproc>;
  c-name: "glfwGetProcAddress";
end;

define constant $GLFW-VERSION-MAJOR = 3;

define constant $GLFW-VERSION-MINOR = 0;

define constant $GLFW-VERSION-REVISION = 1;

define constant $GLFW-RELEASE = 0;

define constant $GLFW-PRESS = 1;

define constant $GLFW-REPEAT = 2;

define constant $GLFW-KEY-UNKNOWN = -1;

define constant $GLFW-KEY-SPACE = 32;

define constant $GLFW-KEY-APOSTROPHE = 39;

define constant $GLFW-KEY-COMMA = 44;

define constant $GLFW-KEY-MINUS = 45;

define constant $GLFW-KEY-PERIOD = 46;

define constant $GLFW-KEY-SLASH = 47;

define constant $GLFW-KEY-0 = 48;

define constant $GLFW-KEY-1 = 49;

define constant $GLFW-KEY-2 = 50;

define constant $GLFW-KEY-3 = 51;

define constant $GLFW-KEY-4 = 52;

define constant $GLFW-KEY-5 = 53;

define constant $GLFW-KEY-6 = 54;

define constant $GLFW-KEY-7 = 55;

define constant $GLFW-KEY-8 = 56;

define constant $GLFW-KEY-9 = 57;

define constant $GLFW-KEY-SEMICOLON = 59;

define constant $GLFW-KEY-EQUAL = 61;

define constant $GLFW-KEY-A = 65;

define constant $GLFW-KEY-B = 66;

define constant $GLFW-KEY-C = 67;

define constant $GLFW-KEY-D = 68;

define constant $GLFW-KEY-E = 69;

define constant $GLFW-KEY-F = 70;

define constant $GLFW-KEY-G = 71;

define constant $GLFW-KEY-H = 72;

define constant $GLFW-KEY-I = 73;

define constant $GLFW-KEY-J = 74;

define constant $GLFW-KEY-K = 75;

define constant $GLFW-KEY-L = 76;

define constant $GLFW-KEY-M = 77;

define constant $GLFW-KEY-N = 78;

define constant $GLFW-KEY-O = 79;

define constant $GLFW-KEY-P = 80;

define constant $GLFW-KEY-Q = 81;

define constant $GLFW-KEY-R = 82;

define constant $GLFW-KEY-S = 83;

define constant $GLFW-KEY-T = 84;

define constant $GLFW-KEY-U = 85;

define constant $GLFW-KEY-V = 86;

define constant $GLFW-KEY-W = 87;

define constant $GLFW-KEY-X = 88;

define constant $GLFW-KEY-Y = 89;

define constant $GLFW-KEY-Z = 90;

define constant $GLFW-KEY-LEFT-BRACKET = 91;

define constant $GLFW-KEY-BACKSLASH = 92;

define constant $GLFW-KEY-RIGHT-BRACKET = 93;

define constant $GLFW-KEY-GRAVE-ACCENT = 96;

define constant $GLFW-KEY-WORLD-1 = 161;

define constant $GLFW-KEY-WORLD-2 = 162;

define constant $GLFW-KEY-ESCAPE = 256;

define constant $GLFW-KEY-ENTER = 257;

define constant $GLFW-KEY-TAB = 258;

define constant $GLFW-KEY-BACKSPACE = 259;

define constant $GLFW-KEY-INSERT = 260;

define constant $GLFW-KEY-DELETE = 261;

define constant $GLFW-KEY-RIGHT = 262;

define constant $GLFW-KEY-LEFT = 263;

define constant $GLFW-KEY-DOWN = 264;

define constant $GLFW-KEY-UP = 265;

define constant $GLFW-KEY-PAGE-UP = 266;

define constant $GLFW-KEY-PAGE-DOWN = 267;

define constant $GLFW-KEY-HOME = 268;

define constant $GLFW-KEY-END = 269;

define constant $GLFW-KEY-CAPS-LOCK = 280;

define constant $GLFW-KEY-SCROLL-LOCK = 281;

define constant $GLFW-KEY-NUM-LOCK = 282;

define constant $GLFW-KEY-PRINT-SCREEN = 283;

define constant $GLFW-KEY-PAUSE = 284;

define constant $GLFW-KEY-F1 = 290;

define constant $GLFW-KEY-F2 = 291;

define constant $GLFW-KEY-F3 = 292;

define constant $GLFW-KEY-F4 = 293;

define constant $GLFW-KEY-F5 = 294;

define constant $GLFW-KEY-F6 = 295;

define constant $GLFW-KEY-F7 = 296;

define constant $GLFW-KEY-F8 = 297;

define constant $GLFW-KEY-F9 = 298;

define constant $GLFW-KEY-F10 = 299;

define constant $GLFW-KEY-F11 = 300;

define constant $GLFW-KEY-F12 = 301;

define constant $GLFW-KEY-F13 = 302;

define constant $GLFW-KEY-F14 = 303;

define constant $GLFW-KEY-F15 = 304;

define constant $GLFW-KEY-F16 = 305;

define constant $GLFW-KEY-F17 = 306;

define constant $GLFW-KEY-F18 = 307;

define constant $GLFW-KEY-F19 = 308;

define constant $GLFW-KEY-F20 = 309;

define constant $GLFW-KEY-F21 = 310;

define constant $GLFW-KEY-F22 = 311;

define constant $GLFW-KEY-F23 = 312;

define constant $GLFW-KEY-F24 = 313;

define constant $GLFW-KEY-F25 = 314;

define constant $GLFW-KEY-KP-0 = 320;

define constant $GLFW-KEY-KP-1 = 321;

define constant $GLFW-KEY-KP-2 = 322;

define constant $GLFW-KEY-KP-3 = 323;

define constant $GLFW-KEY-KP-4 = 324;

define constant $GLFW-KEY-KP-5 = 325;

define constant $GLFW-KEY-KP-6 = 326;

define constant $GLFW-KEY-KP-7 = 327;

define constant $GLFW-KEY-KP-8 = 328;

define constant $GLFW-KEY-KP-9 = 329;

define constant $GLFW-KEY-KP-DECIMAL = 330;

define constant $GLFW-KEY-KP-DIVIDE = 331;

define constant $GLFW-KEY-KP-MULTIPLY = 332;

define constant $GLFW-KEY-KP-SUBTRACT = 333;

define constant $GLFW-KEY-KP-ADD = 334;

define constant $GLFW-KEY-KP-ENTER = 335;

define constant $GLFW-KEY-KP-EQUAL = 336;

define constant $GLFW-KEY-LEFT-SHIFT = 340;

define constant $GLFW-KEY-LEFT-CONTROL = 341;

define constant $GLFW-KEY-LEFT-ALT = 342;

define constant $GLFW-KEY-LEFT-SUPER = 343;

define constant $GLFW-KEY-RIGHT-SHIFT = 344;

define constant $GLFW-KEY-RIGHT-CONTROL = 345;

define constant $GLFW-KEY-RIGHT-ALT = 346;

define constant $GLFW-KEY-RIGHT-SUPER = 347;

define constant $GLFW-KEY-MENU = 348;

define constant $GLFW-KEY-LAST = 348;

define constant $GLFW-MOD-SHIFT = 1;

define constant $GLFW-MOD-CONTROL = 2;

define constant $GLFW-MOD-ALT = 4;

define constant $GLFW-MOD-SUPER = 8;

define constant $GLFW-MOUSE-BUTTON-1 = 0;

define constant $GLFW-MOUSE-BUTTON-2 = 1;

define constant $GLFW-MOUSE-BUTTON-3 = 2;

define constant $GLFW-MOUSE-BUTTON-4 = 3;

define constant $GLFW-MOUSE-BUTTON-5 = 4;

define constant $GLFW-MOUSE-BUTTON-6 = 5;

define constant $GLFW-MOUSE-BUTTON-7 = 6;

define constant $GLFW-MOUSE-BUTTON-8 = 7;

define constant $GLFW-MOUSE-BUTTON-LAST = 7;

define constant $GLFW-MOUSE-BUTTON-LEFT = 0;

define constant $GLFW-MOUSE-BUTTON-RIGHT = 1;

define constant $GLFW-MOUSE-BUTTON-MIDDLE = 2;

define constant $GLFW-JOYSTICK-1 = 0;

define constant $GLFW-JOYSTICK-2 = 1;

define constant $GLFW-JOYSTICK-3 = 2;

define constant $GLFW-JOYSTICK-4 = 3;

define constant $GLFW-JOYSTICK-5 = 4;

define constant $GLFW-JOYSTICK-6 = 5;

define constant $GLFW-JOYSTICK-7 = 6;

define constant $GLFW-JOYSTICK-8 = 7;

define constant $GLFW-JOYSTICK-9 = 8;

define constant $GLFW-JOYSTICK-10 = 9;

define constant $GLFW-JOYSTICK-11 = 10;

define constant $GLFW-JOYSTICK-12 = 11;

define constant $GLFW-JOYSTICK-13 = 12;

define constant $GLFW-JOYSTICK-14 = 13;

define constant $GLFW-JOYSTICK-15 = 14;

define constant $GLFW-JOYSTICK-16 = 15;

define constant $GLFW-JOYSTICK-LAST = 15;

define constant $GLFW-NOT-INITIALIZED = 65537;

define constant $GLFW-NO-CURRENT-CONTEXT = 65538;

define constant $GLFW-INVALID-ENUM = 65539;

define constant $GLFW-INVALID-VALUE = 65540;

define constant $GLFW-OUT-OF-MEMORY = 65541;

define constant $GLFW-API-UNAVAILABLE = 65542;

define constant $GLFW-VERSION-UNAVAILABLE = 65543;

define constant $GLFW-PLATFORM-ERROR = 65544;

define constant $GLFW-FORMAT-UNAVAILABLE = 65545;

define constant $GLFW-FOCUSED = 131073;

define constant $GLFW-ICONIFIED = 131074;

define constant $GLFW-RESIZABLE = 131075;

define constant $GLFW-VISIBLE = 131076;

define constant $GLFW-DECORATED = 131077;

define constant $GLFW-RED-BITS = 135169;

define constant $GLFW-GREEN-BITS = 135170;

define constant $GLFW-BLUE-BITS = 135171;

define constant $GLFW-ALPHA-BITS = 135172;

define constant $GLFW-DEPTH-BITS = 135173;

define constant $GLFW-STENCIL-BITS = 135174;

define constant $GLFW-ACCUM-RED-BITS = 135175;

define constant $GLFW-ACCUM-GREEN-BITS = 135176;

define constant $GLFW-ACCUM-BLUE-BITS = 135177;

define constant $GLFW-ACCUM-ALPHA-BITS = 135178;

define constant $GLFW-AUX-BUFFERS = 135179;

define constant $GLFW-STEREO = 135180;

define constant $GLFW-SAMPLES = 135181;

define constant $GLFW-SRGB-CAPABLE = 135182;

define constant $GLFW-REFRESH-RATE = 135183;

define constant $GLFW-CLIENT-API = 139265;

define constant $GLFW-CONTEXT-VERSION-MAJOR = 139266;

define constant $GLFW-CONTEXT-VERSION-MINOR = 139267;

define constant $GLFW-CONTEXT-REVISION = 139268;

define constant $GLFW-CONTEXT-ROBUSTNESS = 139269;

define constant $GLFW-OPENGL-FORWARD-COMPAT = 139270;

define constant $GLFW-OPENGL-DEBUG-CONTEXT = 139271;

define constant $GLFW-OPENGL-PROFILE = 139272;

define constant $GLFW-OPENGL-API = 196609;

define constant $GLFW-OPENGL-ES-API = 196610;

define constant $GLFW-NO-ROBUSTNESS = 0;

define constant $GLFW-NO-RESET-NOTIFICATION = 200705;

define constant $GLFW-LOSE-CONTEXT-ON-RESET = 200706;

define constant $GLFW-OPENGL-ANY-PROFILE = 0;

define constant $GLFW-OPENGL-CORE-PROFILE = 204801;

define constant $GLFW-OPENGL-COMPAT-PROFILE = 204802;

define constant $GLFW-CURSOR = 208897;

define constant $GLFW-STICKY-KEYS = 208898;

define constant $GLFW-STICKY-MOUSE-BUTTONS = 208899;

define constant $GLFW-CURSOR-NORMAL = 212993;

define constant $GLFW-CURSOR-HIDDEN = 212994;

define constant $GLFW-CURSOR-DISABLED = 212995;

define constant $GLFW-CONNECTED = 262145;

define constant $GLFW-DISCONNECTED = 262146;

