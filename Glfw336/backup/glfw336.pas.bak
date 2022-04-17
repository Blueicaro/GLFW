{
More info:
  http://forum.lazarus.freepascal.org/index.php/topic,21961.msg129100.html#msg129100
}
//*************************************************************************
// * GLFW 3.3.4 - www.glfw.org
// * A library for OpenGL, window and input
// *------------------------------------------------------------------------
// * Copyright (c) 2002-2006 Marcus Geelnard
// * Copyright (c) 2006-2010 Camilla Berglund <elmindreda@elmindreda.org>
// *
// * This software is provided 'as-is', without any express or implied
// * warranty. In no event will the authors be held liable for any damages
// * arising from the use of this software.
// *
// * Permission is granted to anyone to use this software for any purpose,
// * including commercial applications, and to alter it and redistribute it
// * freely, subject to the following restrictions:
// *
// * 1. The origin of this software must not be misrepresented; you must not
// *    claim that you wrote the original software. If you use this software
// *    in a product, an acknowledgment in the product documentation would
// *    be appreciated but is not required.
// *
// * 2. Altered source versions must be plainly marked as such, and must not
// *    be misrepresented as being the original software.
// *
// * 3. This notice may not be removed or altered from any source
// *    distribution.
// *
// *************************************************************************

{
  Pascal header translate by: Jorge Turiel (Aka BlueIcaro)
  with the help of the lazarus community (http://www.lazarus.freepascal.org/index.php)
  GLFW 3.1; Date: 20150216
  GLFW 3; Date: 20130912
}
unit glfw336;

{$mode objfpc}{$H+}

interface


//Estructuras
type
  GLFW_INT = integer;
  GLFWwindow = integer;
  pGLFWwindow = ^GLFWwindow;
  GLFWmonitor = integer;
  pGLFWmonitor = ^GLFWmonitor;
  pFloat = ^longint;

//========================================================================
//Video Mode
//========================================================================


type
  GLFWvidmode = record
    Width: integer;
    Height: integer;
    redBits: integer;
    greenBits: integer;
    blueBits: integer;
    refreshRate: integer;
  end;

  pGLFWvidmode = ^GLFWvidmode;


//========================================================================
//Gamma
//========================================================================
type
  PGLFWgammaramp = ^GLFWgammaramp;

  GLFWgammaramp = record
    red: smallint;
    green: smallint;
    blue: smallint;
    size: dword;
  end;

type
  CharArray = array of char;
  pCharArray = CharArray;
//=======================================================================
//Inputs
//=======================================================================
type    //Version 3.1
  pGLFWcursor = ^GLFWcursor;
  GLFWcursor = integer;

type   //Version 3.1
  pGLFWimage = ^GLFWimage;

  GLFWimage = record
    Width: integer;
    Height: integer;
    pixels: ^byte;
  end;

type
  pGLFWgamepadstate = ^GLFWgamepadstate;

  GLFWgamepadstate = record
    Buttons: array [0..15] of char;
    axex: array [0..6] of single;
  end;

//========================================================================
//Callbacks  must be cdecl
//========================================================================
type
  pGLFWKeyFun = ^GLFWKeyFun;
  GLFWKeyFun = procedure(p: pGLFWWindow; i2, i3, i4, i5: longint); cdecl;

  pGLFWerrorfun = ^GLFWerrorfun;
  GLFWerrorfun = procedure(Error: GLFW_INT; Description: PChar); cdecl;

  pGLFWmonitorfun = ^GLFWmonitorfun;
  GLFWmonitorfun = procedure(Monitor: GLFWmonitor); cdecl;

  pGLFWjoystickfun = ^GLFWjoystickfun;
  GLFWjoystickfun = procedure(jig, event: GLFW_INT); cdecl;


  pGLFWwindowposfun = ^GLFWwindowposfun;
  GLFWwindowposfun = procedure(window: pGLFWwindow; PosX, PosY: integer); cdecl;

  pGLFWwindowsizefun = ^GLFWwindowsizefun;
  GLFWwindowsizefun = procedure(window: pGLFWwindow; Width, Height: integer); cdecl;

  pGLFWwindowclosefun = ^GLFWwindowclosefun;
  GLFWwindowclosefun = procedure(window: pGLFWwindow); cdecl;

  pGLFWwindowrefreshfun = ^GLFWwindowrefreshfun;
  GLFWwindowrefreshfun = procedure(window: pGLFWwindow); cdecl;

  pGLFWwindowfocusfun = ^GLFWwindowfocusfun;
  GLFWwindowfocusfun = procedure(window: pGLFWwindow); cdecl;

  pGLFWwindowiconifyfun = ^GLFWwindowiconifyfun;
  GLFWwindowiconifyfun = procedure(window: pGLFWwindow); cdecl;

 {  @brief The function pointer type for window maximize callbacks.
 *
 *  This is the function pointer type for window maximize callbacks.  A window
 *  maximize callback function has the following signature:
 *  @code
 *  void function_name(GLFWwindow* window, int maximized)
 *  @endcode
 *
 *  @param[in] window The window that was maximized or restored.
 *  @param[in] maximized `GLFW_TRUE` if the window was maximized, or
 *  `GLFW_FALSE` if it was restored.
 *
 *  @sa @ref window_maximize
 *  @sa glfwSetWindowMaximizeCallback
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup window
 */
  typedef void (* GLFWwindowmaximizefun)(GLFWwindow*,int);    }

  pGLFWwindowmaximizefun = ^GLFWwindowmaximizefun;
  GLFWwindowmaximizefun = procedure(Windows: pGLFWwindow); cdecl;

  pGLFWframebuffersizefun = ^GLFWframebuffersizefun;
  GLFWframebuffersizefun = procedure(window: pGLFWwindow;
    witdth, Height: integer); cdecl;
  {/*! @brief The function pointer type for window content scale callbacks.
 *
 *  This is the function pointer type for window content scale callbacks.
 *  A window content scale callback function has the following signature:
 *  @code
 *  void function_name(GLFWwindow* window, float xscale, float yscale)
 *  @endcode
 *
 *  @param[in] window The window whose content scale changed.
 *  @param[in] xscale The new x-axis content scale of the window.
 *  @param[in] yscale The new y-axis content scale of the window.
 *
 *  @sa @ref window_scale
 *  @sa @ref glfwSetWindowContentScaleCallback
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup window
 */
typedef void (* GLFWwindowcontentscalefun)(GLFWwindow*,float,float);}
  pGLFWwindowcontentscalefun = ^GLFWwindowcontentscalefun;
  GLFWwindowcontentscalefun = procedure(window: pGLFWwindow;
    xscale, yscale: single); cdecl;

  pGLFWcharfun = ^GLFWcharfun;
  GLFWcharfun = procedure(window: pGLFWwindow); cdecl;

  pGLFWmousebuttonfun = ^GLFWmousebuttonfun;
  GLFWmousebuttonfun = procedure(window: pGLFWwindow;
    button, action, mods: integer); cdecl;

  pGLFWcursorposfun = ^GLFWcursorposfun;
  GLFWcursorposfun = procedure(window: pGLFWwindow; xpos, ypos: integer); cdecl;

  pGLFWcursorenterfun = ^GLFWcursorenterfun;
  GLFWcursorenterfun = procedure(window: pGLFWwindow); cdecl;

  pGLFWscrollfun = ^GLFWscrollfun;
  GLFWscrollfun = procedure(window: pGLFWwindow; xoffset, yoffset: integer); cdecl;

  pGLFWglproc = ^GLFWglproc;
  GLFWglproc = procedure; cdecl;



  {@brief Vulkan API function pointer type.
 *
 *  Generic function pointer used for returning Vulkan API function pointers
 *  without forcing a cast from a regular pointer.
 *
 *  @sa @ref vulkan_proc
 *  @sa @ref glfwGetInstanceProcAddress
 *
 *  @since Added in version 3.2.
 *
 *  @ingroup vulkan
 */}
  pGLFWvkproc = ^GLFWvkproc;
  GLFWvkproc = procedure; cdecl;




  PGLFWcharmodsfun = ^GLFWcharmodsfun;
  GLFWcharmodsfun = procedure(window: pGLFWwindow; cbfun: pGLFWcharmodsfun);

type
  pGLFWdropfun = ^GLFWdropfun;
  GLFWdropfun = procedure(window: pGLFWwindow; Count: integer; names: PChar);


const
{$IFDEF MSWINDOWS}
  GLFW_DLL = 'GLFW3.DLL';
{$ELSE}
  GLFW_DLL = 'GLFW3.so';
{$ENDIF}
 {  This is only semantic sugar for the number 1.  You can instead use `1` or
   `true` or `_True` or `GL_TRUE` or `VK_TRUE` or anything else that is equal
   to one.
 }

 GLFW_TRUE = 1;

 {
  This is only semantic sugar for the number 0.  You can instead use `0` or
  `false` or `_False` or `GL_FALSE` or `VK_FALSE` or anything else that is
  equal to zero.
}
GLFW_FALSE = 0;


  //========================================================================
  // GLFW version
  //========================================================================

  GLFW_VERSION_MAJOR = 3;

  GLFW_VERSION_MINOR = 3;

  GLFW_VERSION_REVISION = 6;



  GLFW_RELEASE = 0;

  GLFW_PRESS = 1;

  GLFW_REPEAT = 2;

  //Version 334
 {
 defgroup hat_state Joystick hat states
 *  @brief Joystick hat states.
 *
 *  See [joystick hat input](@ref joystick_hat) for how these are used.
 *
 *  @ingroup input
 * }

  GLFW_HAT_CENTERED = 0;
  GLFW_HAT_UP = 1;
  GLFW_HAT_RIGHT = 2;
  GLFW_HAT_DOWN = 4;
  GLFW_HAT_LEFT = 8;
  GLFW_HAT_RIGHT_UP = GLFW_HAT_RIGHT or GLFW_HAT_UP;
  GLFW_HAT_RIGHT_DOWN = GLFW_HAT_RIGHT or GLFW_HAT_DOWN;
  GLFW_HAT_LEFT_UP = GLFW_HAT_LEFT or GLFW_HAT_UP;
  GLFW_HAT_LEFT_DOWN = GLFW_HAT_LEFT or GLFW_HAT_DOWN;



  GLFW_KEY_UNKNOWN = -(1);

  GLFW_KEY_SPACE = 32;
  GLFW_KEY_APOSTROPHE = 39;    // '
  GLFW_KEY_COMMA = 44;         // ;
  GLFW_KEY_MINUS = 45;         // -
  GLFW_KEY_PERIOD = 46;        // .
  GLFW_KEY_SLASH = 47;         // /
  GLFW_KEY_0 = 48;
  GLFW_KEY_1 = 49;
  GLFW_KEY_2 = 50;
  GLFW_KEY_3 = 51;
  GLFW_KEY_4 = 52;
  GLFW_KEY_5 = 53;
  GLFW_KEY_6 = 54;
  GLFW_KEY_7 = 55;
  GLFW_KEY_8 = 56;
  GLFW_KEY_9 = 57;
  GLFW_KEY_SEMICOLON = 59;   // ;
  GLFW_KEY_EQUAL = 61;       // =
  GLFW_KEY_A = 65;
  GLFW_KEY_B = 66;
  GLFW_KEY_C = 67;
  GLFW_KEY_D = 68;
  GLFW_KEY_E = 69;
  GLFW_KEY_F = 70;
  GLFW_KEY_G = 71;
  GLFW_KEY_H = 72;
  GLFW_KEY_I = 73;
  GLFW_KEY_J = 74;
  GLFW_KEY_K = 75;
  GLFW_KEY_L = 76;
  GLFW_KEY_M = 77;
  GLFW_KEY_N = 78;
  GLFW_KEY_O = 79;
  GLFW_KEY_P = 80;
  GLFW_KEY_Q = 81;
  GLFW_KEY_R = 82;
  GLFW_KEY_S = 83;
  GLFW_KEY_T = 84;
  GLFW_KEY_U = 85;
  GLFW_KEY_V = 86;
  GLFW_KEY_W = 87;
  GLFW_KEY_X = 88;
  GLFW_KEY_Y = 89;
  GLFW_KEY_Z = 90;
  GLFW_KEY_LEFT_BRACKET = 91;  // [
  GLFW_KEY_BACKSLASH = 92;     // \
  GLFW_KEY_RIGHT_BRACKET = 93; // ]
  GLFW_KEY_GRAVE_ACCENT = 96;  // `
  GLFW_KEY_WORLD_1 = 161;  // non-US #1


  GLFW_KEY_WORLD_2 = 162; // non-US #2

  GLFW_KEY_ESCAPE = 256;
  GLFW_KEY_ENTER = 257;
  GLFW_KEY_TAB = 258;
  GLFW_KEY_BACKSPACE = 259;
  GLFW_KEY_INSERT = 260;
  GLFW_KEY_DELETE = 261;
  GLFW_KEY_RIGHT = 262;
  GLFW_KEY_LEFT = 263;
  GLFW_KEY_DOWN = 264;
  GLFW_KEY_UP = 265;
  GLFW_KEY_PAGE_UP = 266;
  GLFW_KEY_PAGE_DOWN = 267;
  GLFW_KEY_HOME = 268;
  GLFW_KEY_END = 269;
  GLFW_KEY_CAPS_LOCK = 280;
  GLFW_KEY_SCROLL_LOCK = 281;
  GLFW_KEY_NUM_LOCK = 282;
  GLFW_KEY_PRINT_SCREEN = 283;
  GLFW_KEY_PAUSE = 284;
  GLFW_KEY_F1 = 290;
  GLFW_KEY_F2 = 291;
  GLFW_KEY_F3 = 292;
  GLFW_KEY_F4 = 293;
  GLFW_KEY_F5 = 294;
  GLFW_KEY_F6 = 295;
  GLFW_KEY_F7 = 296;
  GLFW_KEY_F8 = 297;
  GLFW_KEY_F9 = 298;
  GLFW_KEY_F10 = 299;
  GLFW_KEY_F11 = 300;
  GLFW_KEY_F12 = 301;
  GLFW_KEY_F13 = 302;
  GLFW_KEY_F14 = 303;
  GLFW_KEY_F15 = 304;
  GLFW_KEY_F16 = 305;
  GLFW_KEY_F17 = 306;
  GLFW_KEY_F18 = 307;
  GLFW_KEY_F19 = 308;
  GLFW_KEY_F20 = 309;
  GLFW_KEY_F21 = 310;
  GLFW_KEY_F22 = 311;
  GLFW_KEY_F23 = 312;
  GLFW_KEY_F24 = 313;
  GLFW_KEY_F25 = 314;
  GLFW_KEY_KP_0 = 320;
  GLFW_KEY_KP_1 = 321;
  GLFW_KEY_KP_2 = 322;
  GLFW_KEY_KP_3 = 323;
  GLFW_KEY_KP_4 = 324;
  GLFW_KEY_KP_5 = 325;
  GLFW_KEY_KP_6 = 326;
  GLFW_KEY_KP_7 = 327;
  GLFW_KEY_KP_8 = 328;
  GLFW_KEY_KP_9 = 329;
  GLFW_KEY_KP_DECIMAL = 330;
  GLFW_KEY_KP_DIVIDE = 331;
  GLFW_KEY_KP_MULTIPLY = 332;
  GLFW_KEY_KP_SUBTRACT = 333;
  GLFW_KEY_KP_ADD = 334;
  GLFW_KEY_KP_ENTER = 335;
  GLFW_KEY_KP_EQUAL = 336;
  GLFW_KEY_LEFT_SHIFT = 340;
  GLFW_KEY_LEFT_CONTROL = 341;
  GLFW_KEY_LEFT_ALT = 342;
  GLFW_KEY_LEFT_SUPER = 343;
  GLFW_KEY_RIGHT_SHIFT = 344;
  GLFW_KEY_RIGHT_CONTROL = 345;
  GLFW_KEY_RIGHT_ALT = 346;
  GLFW_KEY_RIGHT_SUPER = 347;
  GLFW_KEY_MENU = 348;
  GLFW_KEY_LAST = GLFW_KEY_MENU;



  GLFW_MOD_SHIFT = $0001;

  GLFW_MOD_CONTROL = $0002;

  GLFW_MOD_ALT = $0004;

  GLFW_MOD_SUPER = $0008;


  GLFW_MOUSE_BUTTON_1 = 0;
  GLFW_MOUSE_BUTTON_2 = 1;
  GLFW_MOUSE_BUTTON_3 = 2;
  GLFW_MOUSE_BUTTON_4 = 3;
  GLFW_MOUSE_BUTTON_5 = 4;
  GLFW_MOUSE_BUTTON_6 = 5;
  GLFW_MOUSE_BUTTON_7 = 6;
  GLFW_MOUSE_BUTTON_8 = 7;
  GLFW_MOUSE_BUTTON_LAST = GLFW_MOUSE_BUTTON_8;
  GLFW_MOUSE_BUTTON_LEFT = GLFW_MOUSE_BUTTON_1;
  GLFW_MOUSE_BUTTON_RIGHT = GLFW_MOUSE_BUTTON_2;
  GLFW_MOUSE_BUTTON_MIDDLE = GLFW_MOUSE_BUTTON_3;


  GLFW_JOYSTICK_1 = 0;
  GLFW_JOYSTICK_2 = 1;
  GLFW_JOYSTICK_3 = 2;
  GLFW_JOYSTICK_4 = 3;
  GLFW_JOYSTICK_5 = 4;
  GLFW_JOYSTICK_6 = 5;
  GLFW_JOYSTICK_7 = 6;
  GLFW_JOYSTICK_8 = 7;
  GLFW_JOYSTICK_9 = 8;
  GLFW_JOYSTICK_10 = 9;
  GLFW_JOYSTICK_11 = 10;
  GLFW_JOYSTICK_12 = 11;
  GLFW_JOYSTICK_13 = 12;
  GLFW_JOYSTICK_14 = 13;
  GLFW_JOYSTICK_15 = 14;
  GLFW_JOYSTICK_16 = 15;
  GLFW_JOYSTICK_LAST = GLFW_JOYSTICK_16;

 {defgroup gamepad_buttons Gamepad buttons
 *  @brief Gamepad buttons.
 *
 *  See @ref gamepad for how these are used.
 *
 *  @ingroup input
 *  }

  GLFW_GAMEPAD_BUTTON_A = 0;
  GLFW_GAMEPAD_BUTTON_B = 1;
  GLFW_GAMEPAD_BUTTON_X = 2;
  GLFW_GAMEPAD_BUTTON_Y = 3;
  GLFW_GAMEPAD_BUTTON_LEFT_BUMPER = 4;
  GLFW_GAMEPAD_BUTTON_RIGHT_BUMPER = 5;
  GLFW_GAMEPAD_BUTTON_BACK = 6;
  GLFW_GAMEPAD_BUTTON_START = 7;
  GLFW_GAMEPAD_BUTTON_GUIDE = 8;
  GLFW_GAMEPAD_BUTTON_LEFT_THUMB = 9;
  GLFW_GAMEPAD_BUTTON_RIGHT_THUMB = 10;
  GLFW_GAMEPAD_BUTTON_DPAD_UP = 11;
  GLFW_GAMEPAD_BUTTON_DPAD_RIGHT = 12;
  GLFW_GAMEPAD_BUTTON_DPAD_DOWN = 13;
  GLFW_GAMEPAD_BUTTON_DPAD_LEFT = 14;
  GLFW_GAMEPAD_BUTTON_LAST = GLFW_GAMEPAD_BUTTON_DPAD_LEFT;

  GLFW_GAMEPAD_BUTTON_CROSS = GLFW_GAMEPAD_BUTTON_A;
  GLFW_GAMEPAD_BUTTON_CIRCLE = GLFW_GAMEPAD_BUTTON_B;
  GLFW_GAMEPAD_BUTTON_SQUARE = GLFW_GAMEPAD_BUTTON_X;
  GLFW_GAMEPAD_BUTTON_TRIANGLE = GLFW_GAMEPAD_BUTTON_Y;

  {/*! @defgroup gamepad_axes Gamepad axes
 *  @brief Gamepad axes.
 *
 *  See @ref gamepad for how these are used.
 *
 *  @ingroup input}

  GLFW_GAMEPAD_AXIS_LEFT_X = 0;
  GLFW_GAMEPAD_AXIS_LEFT_Y = 1;
  GLFW_GAMEPAD_AXIS_RIGHT_X = 2;
  GLFW_GAMEPAD_AXIS_RIGHT_Y = 3;
  GLFW_GAMEPAD_AXIS_LEFT_TRIGGER = 4;
  GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER = 5;
  GLFW_GAMEPAD_AXIS_LAST = GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER;



  GLFW_NO_ERROR = $0;

  GLFW_NOT_INITIALIZED = $00010001;

  GLFW_NO_CURRENT_CONTEXT = $00010002;

  GLFW_INVALID_ENUM = $00010003;

  GLFW_INVALID_VALUE = $00010004;

  GLFW_OUT_OF_MEMORY = $00010005;

  GLFW_API_UNAVAILABLE = $00010006;

  GLFW_VERSION_UNAVAILABLE = $00010007;

  GLFW_PLATFORM_ERROR = $00010008;

  GLFW_FORMAT_UNAVAILABLE = $00010009;

  GLFW_FOCUSED = $00020001;
  GLFW_ICONIFIED = $00020002;
  GLFW_RESIZABLE = $00020003;
  GLFW_VISIBLE = $00020004;
  GLFW_DECORATED = $00020005;
  GLFW_AUTO_ICONIFY = $00020006;
  GLFW_FLOATING = $00020007;


  GLFW_RED_BITS = $00021001;
  GLFW_GREEN_BITS = $00021002;
  GLFW_BLUE_BITS = $00021003;
  GLFW_ALPHA_BITS = $00021004;
  GLFW_DEPTH_BITS = $00021005;
  GLFW_STENCIL_BITS = $00021006;
  GLFW_ACCUM_RED_BITS = $00021007;
  GLFW_ACCUM_GREEN_BITS = $00021008;
  GLFW_ACCUM_BLUE_BITS = $00021009;
  GLFW_ACCUM_ALPHA_BITS = $0002100A;
  GLFW_AUX_BUFFERS = $0002100B;
  GLFW_STEREO = $0002100C;
  GLFW_SAMPLES = $0002100D;
  GLFW_SRGB_CAPABLE = $0002100E;
  GLFW_REFRESH_RATE = $0002100F;
  GLFW_DOUBLEBUFFER = $00021010;

  GLFW_CLIENT_API = $00022001;
  GLFW_CONTEXT_VERSION_MAJOR = $00022002;
  GLFW_CONTEXT_VERSION_MINOR = $00022003;
  GLFW_CONTEXT_REVISION = $00022004;
  GLFW_CONTEXT_ROBUSTNESS = $00022005;
  GLFW_OPENGL_FORWARD_COMPAT = $00022006;
  GLFW_OPENGL_DEBUG_CONTEXT = $00022007;
  GLFW_OPENGL_PROFILE = $00022008;
  GLFW_CONTEXT_RELEASE_BEHAVIOR = $00022009;

  GLFW_OPENGL_API = $00030001;
  GLFW_OPENGL_ES_API = $00030002;

  GLFW_NO_ROBUSTNESS = 0;
  GLFW_NO_RESET_NOTIFICATION = $00031001;
  GLFW_LOSE_CONTEXT_ON_RESET = $00031002;

  GLFW_OPENGL_ANY_PROFILE = 0;
  GLFW_OPENGL_CORE_PROFILE = $00032001;
  GLFW_OPENGL_COMPAT_PROFILE = $00032002;

  GLFW_CURSOR = $00033001;
  GLFW_STICKY_KEYS = $00033002;
  GLFW_STICKY_MOUSE_BUTTONS = $00033003;

  GLFW_CURSOR_NORMAL = $00034001;
  GLFW_CURSOR_HIDDEN = $00034002;
  GLFW_CURSOR_DISABLED = $00034003;

  GLFW_ANY_RELEASE_BEHAVIOR = 0;
  GLFW_RELEASE_BEHAVIOR_FLUSH = $00035001;
  GLFW_RELEASE_BEHAVIOR_NONE = $00035002;

  GLFW_ARROW_CURSOR = $00036001;
  GLFW_IBEAM_CURSOR = $00036002;
  GLFW_CROSSHAIR_CURSOR = $00036003;
  GLFW_HAND_CURSOR = $00036004;
  GLFW_HRESIZE_CURSOR = $00036005;
  GLFW_VRESIZE_CURSOR = $00036006;

  GLFW_CONNECTED = $00040001;
  GLFW_DISCONNECTED = $00040002;
  {/*! @addtogroup init

/*! @brief Joystick hat buttons init hint.
 *
 *  Joystick hat buttons [init hint](@ref GLFW_JOYSTICK_HAT_BUTTONS).
 */}

  GLFW_JOYSTICK_HAT_BUTTONS = $00050001;


  {/*! @brief macOS specific init hint.
   *
   *  macOS specific [init hint](@ref GLFW_COCOA_CHDIR_RESOURCES_hint).
   */}

  GLFW_COCOA_CHDIR_RESOURCES = $00051001;

  {*! @brief macOS specific init hint.
   *
   *  macOS specific [init hint](@ref GLFW_COCOA_MENUBAR_hint).
   */ }
  GLFW_COCOA_MENUBAR = $00051002;

  GLFW_DONT_CARE = -1;

//All call must be  cdecl

//========================================================================
//Init
//========================================================================
function glfwInit: integer cdecl; external GLFW_DLL;
procedure glfwTerminate; cdecl; external GLFW_DLL;
procedure glfwGetVersion(var major,  minor,  rev: integer);
  cdecl; external GLFW_DLL;
function glfwGetVersionString: PChar; cdecl; external GLFW_DLL;
function glfwGetError(var description: PChar): integer; cdecl; external GLFW_DLL;

//========================================================================
//Monitor
//========================================================================
function glfwGetMonitors(var Monitors: GLFW_INT): GLFWmonitor; cdecl; external GLFW_DLL;
function glfwGetPrimaryMonitor: pGLFWmonitor; cdecl; external GLFW_DLL;
procedure glfwGetMonitorPos(monitor: pGLFWmonitor; var xpos: GLFW_INT;
  var ypos: GLFW_INT); cdecl; external GLFW_DLL;
{/*! @brief Retrieves the work area of the monitor.
 *
 *  This function returns the position, in screen coordinates, of the upper-left
 *  corner of the work area of the specified monitor along with the work area
 *  size in screen coordinates. The work area is defined as the area of the
 *  monitor not occluded by the operating system task bar where present. If no
 *  task bar exists then the work area is the monitor resolution in screen
 *  coordinates.
 *
 *  Any or all of the position and size arguments may be `NULL`.  If an error
 *  occurs, all non-`NULL` position and size arguments will be set to zero.
 *
 *  @param[in] monitor The monitor to query.
 *  @param[out] xpos Where to store the monitor x-coordinate, or `NULL`.
 *  @param[out] ypos Where to store the monitor y-coordinate, or `NULL`.
 *  @param[out] width Where to store the monitor width, or `NULL`.
 *  @param[out] height Where to store the monitor height, or `NULL`.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
 *  GLFW_PLATFORM_ERROR.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref monitor_workarea
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup monitor
 */
GLFWAPI void glfwGetMonitorWorkarea(GLFWmonitor* monitor, int* xpos, int* ypos, int* width, int* height);}

procedure glfwGetMonitorWorkarea(monitor: pGLFWmonitor;
  var xpos, ypos, Width, Height: GLFW_INT); cdecl; external GLFW_DLL;

procedure glfwGetMonitorPhysicalSize(Monitor: pGLFWmonitor; var Width: GLFW_INT;
  var Height: GLFW_INT); cdecl; external GLFW_DLL;

{/*! @brief Retrieves the content scale for the specified monitor.
 *
 *  This function retrieves the content scale for the specified monitor.  The
 *  content scale is the ratio between the current DPI and the platform's
 *  default DPI.  This is especially important for text and any UI elements.  If
 *  the pixel dimensions of your UI scaled by this look appropriate on your
 *  machine then it should appear at a reasonable size on other machines
 *  regardless of their DPI and scaling settings.  This relies on the system DPI
 *  and scaling settings being somewhat correct.
 *
 *  The content scale may depend on both the monitor resolution and pixel
 *  density and on user settings.  It may be very different from the raw DPI
 *  calculated from the physical size and current resolution.
 *
 *  @param[in] monitor The monitor to query.
 *  @param[out] xscale Where to store the x-axis content scale, or `NULL`.
 *  @param[out] yscale Where to store the y-axis content scale, or `NULL`.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
 *  GLFW_PLATFORM_ERROR.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref monitor_scale
 *  @sa @ref glfwGetWindowContentScale
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup monitor
 */
GLFWAPI void glfwGetMonitorContentScale(GLFWmonitor* monitor, float* xscale, float* yscale);}

procedure glfwGetMonitorContentScale(monitor: pGLFWmonitor; var xscale, yscale: single);
  cdecl; external GLFW_DLL;

function glfwGetMonitorName(Monitor: pGLFWmonitor): PChar; cdecl; external GLFW_DLL;

 {/*! @brief Sets the user pointer of the specified monitor.
 *
 *  This function sets the user-defined pointer of the specified monitor.  The
 *  current value is retained until the monitor is disconnected.  The initial
 *  value is `NULL`.
 *
 *  This function may be called from the monitor callback, even for a monitor
 *  that is being disconnected.
 *
 *  @param[in] monitor The monitor whose pointer to set.
 *  @param[in] pointer The new value.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
 *
 *  @thread_safety This function may be called from any thread.  Access is not
 *  synchronized.
 *
 *  @sa @ref monitor_userptr
 *  @sa @ref glfwGetMonitorUserPointer
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup monitor
 */
GLFWAPI void glfwSetMonitorUserPointer(GLFWmonitor* monitor, void* pointer);}
procedure glfwSetMonitorUserPointer(pGLFWmonitor, UserPointer: Pointer);
  cdecl; external GLFW_DLL;

{/*! @brief Returns the user pointer of the specified monitor.
 *
 *  This function returns the current value of the user-defined pointer of the
 *  specified monitor.  The initial value is `NULL`.
 *
 *  This function may be called from the monitor callback, even for a monitor
 *  that is being disconnected.
 *
 *  @param[in] monitor The monitor whose pointer to return.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
 *
 *  @thread_safety This function may be called from any thread.  Access is not
 *  synchronized.
 *
 *  @sa @ref monitor_userptr
 *  @sa @ref glfwSetMonitorUserPointer
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup monitor
 */
GLFWAPI void* glfwGetMonitorUserPointer(GLFWmonitor* monitor);}
function glfwGetMonitorUserPointer(monitor: pGLFWmonitor): Pointer;
  cdecl; external GLFW_DLL;


function glfwSetMonitorCallback(cbfun: GLFWmonitorfun): pGLFWmonitorfun;
  cdecl; external GLFW_DLL; //Untest

//========================================================================
//Video Mode
//========================================================================
function glfwGetVideoModes(monitor: pGLFWmonitor; var Count: longint): PGLFWvidmode;
  cdecl; external GLFW_DLL;
procedure glfwSetGamma(monitor: pGLFWmonitor; gamma: single); cdecl; external GLFW_DLL;
procedure glfwSetGammaRamp(monitor: pGLFWmonitor; ramp: pGLFWgammaramp);
  cdecl; external GLFW_DLL;

//========================================================================
//Windows (not the SO)
//========================================================================
procedure glfwDefaultWindowHints; cdecl; external GLFW_DLL;
procedure glfwWindowHint(target: integer; hint: integer); cdecl; external GLFW_DLL;
function glfwCreateWindow(Width, Height: integer; title: PChar;
  monitor: pGLFWmonitor; share: pGLFWwindow): pGLFWwindow; cdecl; external GLFW_DLL;
{/*! @brief Sets the specified window hint to the desired value.
 *
 *  This function sets hints for the next call to @ref glfwCreateWindow.  The
 *  hints, once set, retain their values until changed by a call to this
 *  function or @ref glfwDefaultWindowHints, or until the library is terminated.
 *
 *  Only string type hints can be set with this function.  Integer value hints
 *  are set with @ref glfwWindowHint.
 *
 *  This function does not check whether the specified hint values are valid.
 *  If you set hints to invalid values this will instead be reported by the next
 *  call to @ref glfwCreateWindow.
 *
 *  Some hints are platform specific.  These may be set on any platform but they
 *  will only affect their specific platform.  Other platforms will ignore them.
 *  Setting these hints requires no platform specific headers or functions.
 *
 *  @param[in] hint The [window hint](@ref window_hints) to set.
 *  @param[in] value The new value of the window hint.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
 *  GLFW_INVALID_ENUM.
 *
 *  @pointer_lifetime The specified string is copied before this function
 *  returns.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref window_hints
 *  @sa @ref glfwWindowHint
 *  @sa @ref glfwDefaultWindowHints
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup window
 */
GLFWAPI void glfwWindowHintString(int hint, const char* value);}
procedure glfwWindowHintString(hint: integer; Value: PChar); cdecl; external GLFW_DLL;



procedure glfwDestroyWindow(Window: pGLFWwindow); cdecl; external GLFW_DLL;
function glfwWindowShouldClose(Window: pGLFWwindow): integer; cdecl; external GLFW_DLL;
procedure glfwSetWindowShouldClose(window: pGLFWwindow; Action: GLFW_INT);
  cdecl; external GLFW_DLL;
procedure glfwSetWindowTitle(window: pGLFWwindow; title: PChar); cdecl;
  external GLFW_DLL;
procedure glfwGetWindowPos(window: pGLFWWindow; var xpos, ypos: integer);
  cdecl; external GLFW_DLL;
procedure glfwSetWindowPos(window: pGLFWwindow; xpos, ypos: integer);
  cdecl; external GLFW_DLL;
procedure glfwGetWindowSize(window: pGLFWwindow; var Width, Height: integer); cdecl;
  external GLFW_DLL;
procedure glfwSetWindowSize(window: pGLFWwindow; var Width, Height: integer);
  cdecl; external GLFW_DLL;
procedure glfwGetFramebufferSize(window: pGLFWwindow; var Width, Height: integer);
  cdecl; external GLFW_DLL;
procedure glfwGetWindowFrameSize(window: GLFWwindow; left, top, right, bottom: integer);
  cdecl; external GLFW_DLL; //Version 3.1

{
/*! @brief Retrieves the content scale for the specified window.
 *
 *  This function retrieves the content scale for the specified window.  The
 *  content scale is the ratio between the current DPI and the platform's
 *  default DPI.  This is especially important for text and any UI elements.  If
 *  the pixel dimensions of your UI scaled by this look appropriate on your
 *  machine then it should appear at a reasonable size on other machines
 *  regardless of their DPI and scaling settings.  This relies on the system DPI
 *  and scaling settings being somewhat correct.
 *
 *  On systems where each monitors can have its own content scale, the window
 *  content scale will depend on which monitor the system considers the window
 *  to be on.
 *
 *  @param[in] window The window to query.
 *  @param[out] xscale Where to store the x-axis content scale, or `NULL`.
 *  @param[out] yscale Where to store the y-axis content scale, or `NULL`.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
 *  GLFW_PLATFORM_ERROR.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref window_scale
 *  @sa @ref glfwSetWindowContentScaleCallback
 *  @sa @ref glfwGetMonitorContentScale
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup window
 */
GLFWAPI void glfwGetWindowContentScale(GLFWwindow* window, float* xscale, float* yscale);}
procedure glfwGetWindowContentScale(window: pGLFWwindow; var xscale, yscale: single);
  cdecl; external GLFW_DLL;

{/*! @brief Returns the opacity of the whole window.
 *
 *  This function returns the opacity of the window, including any decorations.
 *
 *  The opacity (or alpha) value is a positive finite number between zero and
 *  one, where zero is fully transparent and one is fully opaque.  If the system
 *  does not support whole window transparency, this function always returns one.
 *
 *  The initial opacity value for newly created windows is one.
 *
 *  @param[in] window The window to query.
 *  @return The opacity value of the specified window.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
 *  GLFW_PLATFORM_ERROR.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref window_transparency
 *  @sa @ref glfwSetWindowOpacity
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup window
 */
GLFWAPI float glfwGetWindowOpacity(GLFWwindow* window);}
function glfwGetWindowOpacity(window: pGLFWwindow): single; cdecl; external GLFW_DLL;
{/*! @brief Sets the opacity of the whole window.
 *
 *  This function sets the opacity of the window, including any decorations.
 *
 *  The opacity (or alpha) value is a positive finite number between zero and
 *  one, where zero is fully transparent and one is fully opaque.
 *
 *  The initial opacity value for newly created windows is one.
 *
 *  A window created with framebuffer transparency may not use whole window
 *  transparency.  The results of doing this are undefined.
 *
 *  @param[in] window The window to set the opacity for.
 *  @param[in] opacity The desired opacity of the specified window.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
 *  GLFW_PLATFORM_ERROR.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref window_transparency
 *  @sa @ref glfwGetWindowOpacity
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup window
 */
GLFWAPI void glfwSetWindowOpacity(GLFWwindow* window, float opacity);}
procedure glfwSetWindowOpacity(monitor: pGLFWwindow; opacity: single);
  cdecl; external GLFW_DLL;

procedure glfwIconifyWindow(window: pGLFWwindow); cdecl; external GLFW_DLL;
procedure glfwRestoreWindow(window: pGLFWwindow); cdecl; external GLFW_DLL;
procedure glfwShowWindow(window: pGLFWwindow); cdecl; external GLFW_DLL;
procedure glfwHideWindow(window: pGLFWwindow); cdecl; external GLFW_DLL;
{
/*! @brief Brings the specified window to front and sets input focus.
 *
 *  This function brings the specified window to front and sets input focus.
 *  The window should already be visible and not iconified.
 *
 *  By default, both windowed and full screen mode windows are focused when
 *  initially created.  Set the [GLFW_FOCUSED](@ref GLFW_FOCUSED_hint) to
 *  disable this behavior.
 *
 *  Also by default, windowed mode windows are focused when shown
 *  with @ref glfwShowWindow. Set the
 *  [GLFW_FOCUS_ON_SHOW](@ref GLFW_FOCUS_ON_SHOW_hint) to disable this behavior.
 *
 *  __Do not use this function__ to steal focus from other applications unless
 *  you are certain that is what the user wants.  Focus stealing can be
 *  extremely disruptive.
 *
 *  For a less disruptive way of getting the user's attention, see
 *  [attention requests](@ref window_attention).
 *
 *  @param[in] window The window to give input focus.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
 *  GLFW_PLATFORM_ERROR.
 *
 *  @remark @wayland It is not possible for an application to bring its windows
 *  to front, this function will always emit @ref GLFW_PLATFORM_ERROR.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref window_focus
 *  @sa @ref window_attention
 *
 *  @since Added in version 3.2.
 *
 *  @ingroup window
 */
GLFWAPI void glfwFocusWindow(GLFWwindow* window);}
procedure glfwFocusWindow(window: pGLFWwindow); cdecl; external GLFW_DLL;
{/*! @brief Requests user attention to the specified window.
 *
 *  This function requests user attention to the specified window.  On
 *  platforms where this is not supported, attention is requested to the
 *  application as a whole.
 *
 *  Once the user has given attention, usually by focusing the window or
 *  application, the system will end the request automatically.
 *
 *  @param[in] window The window to request attention to.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
 *  GLFW_PLATFORM_ERROR.
 *
 *  @remark @macos Attention is requested to the application as a whole, not the
 *  specific window.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref window_attention
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup window
 */
GLFWAPI void glfwRequestWindowAttention(GLFWwindow* window);}
procedure glfwRequestWindowAttention(window: pGLFWwindow); cdecl; external GLFW_DLL;

function glfwGetWindowMonitor(window: pGLFWwindow): pGLFWmonitor;
  cdecl; external GLFW_DLL;

{
/*! @brief Sets the mode, monitor, video mode and placement of a window.
 *
 *  This function sets the monitor that the window uses for full screen mode or,
 *  if the monitor is `NULL`, makes it windowed mode.
 *
 *  When setting a monitor, this function updates the width, height and refresh
 *  rate of the desired video mode and switches to the video mode closest to it.
 *  The window position is ignored when setting a monitor.
 *
 *  When the monitor is `NULL`, the position, width and height are used to
 *  place the window content area.  The refresh rate is ignored when no monitor
 *  is specified.
 *
 *  If you only wish to update the resolution of a full screen window or the
 *  size of a windowed mode window, see @ref glfwSetWindowSize.
 *
 *  When a window transitions from full screen to windowed mode, this function
 *  restores any previous window settings such as whether it is decorated,
 *  floating, resizable, has size or aspect ratio limits, etc.
 *
 *  @param[in] window The window whose monitor, size or video mode to set.
 *  @param[in] monitor The desired monitor, or `NULL` to set windowed mode.
 *  @param[in] xpos The desired x-coordinate of the upper-left corner of the
 *  content area.
 *  @param[in] ypos The desired y-coordinate of the upper-left corner of the
 *  content area.
 *  @param[in] width The desired with, in screen coordinates, of the content
 *  area or video mode.
 *  @param[in] height The desired height, in screen coordinates, of the content
 *  area or video mode.
 *  @param[in] refreshRate The desired refresh rate, in Hz, of the video mode,
 *  or `GLFW_DONT_CARE`.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
 *  GLFW_PLATFORM_ERROR.
 *
 *  @remark The OpenGL or OpenGL ES context will not be destroyed or otherwise
 *  affected by any resizing or mode switching, although you may need to update
 *  your viewport if the framebuffer size has changed.
 *
 *  @remark @wayland The desired window position is ignored, as there is no way
 *  for an application to set this property.
 *
 *  @remark @wayland Setting the window to full screen will not attempt to
 *  change the mode, no matter what the requested size or refresh rate.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref window_monitor
 *  @sa @ref window_full_screen
 *  @sa @ref glfwGetWindowMonitor
 *  @sa @ref glfwSetWindowSize
 *
 *  @since Added in version 3.2.
 *
 *  @ingroup window
 */
GLFWAPI void glfwSetWindowMonitor(GLFWwindow* window, GLFWmonitor* monitor, int xpos, int ypos, int width, int height, int refreshRate);}
procedure glfwSetWindowMonitor(window: pGLFWwindow; monitor: pGLFWmonitor;
  xpos, ypos, Width, Height, refreshRate: integer); cdecl; external GLFW_DLL;

procedure glfwGetWindowAttrib(window: pGLFWwindow; attrib: integer);
  cdecl; external GLFW_DLL;

{/*! @brief Sets an attribute of the specified window.
 *
 *  This function sets the value of an attribute of the specified window.
 *
 *  The supported attributes are [GLFW_DECORATED](@ref GLFW_DECORATED_attrib),
 *  [GLFW_RESIZABLE](@ref GLFW_RESIZABLE_attrib),
 *  [GLFW_FLOATING](@ref GLFW_FLOATING_attrib),
 *  [GLFW_AUTO_ICONIFY](@ref GLFW_AUTO_ICONIFY_attrib) and
 *  [GLFW_FOCUS_ON_SHOW](@ref GLFW_FOCUS_ON_SHOW_attrib).
 *
 *  Some of these attributes are ignored for full screen windows.  The new
 *  value will take effect if the window is later made windowed.
 *
 *  Some of these attributes are ignored for windowed mode windows.  The new
 *  value will take effect if the window is later made full screen.
 *
 *  @param[in] window The window to set the attribute for.
 *  @param[in] attrib A supported window attribute.
 *  @param[in] value `GLFW_TRUE` or `GLFW_FALSE`.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED, @ref
 *  GLFW_INVALID_ENUM, @ref GLFW_INVALID_VALUE and @ref GLFW_PLATFORM_ERROR.
 *
 *  @remark Calling @ref glfwGetWindowAttrib will always return the latest
 *  value, even if that value is ignored by the current mode of the window.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref window_attribs
 *  @sa @ref glfwGetWindowAttrib
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup window
 */
GLFWAPI void glfwSetWindowAttrib(GLFWwindow* window, int attrib, int value);}
procedure glfwSetWindowAttrib(Windows: pGLFWwindow; attrib, Value: integer);
  cdecl; external GLFW_DLL;

procedure glfwSetWindowUserPointer(window: pGLFWwindow; p: pointer);
  cdecl; external GLFW_DLL;
function glfwGetWindowUserPointer(window: GLFWwindow): Pointer; cdecl; external GLFW_DLL;
function glfwSetWindowPosCallback(window: pGLFWwindow;
  cbfun: GLFWwindowposfun): pGLFWwindowposfun; cdecl; external GLFW_DLL;
function glfwSetWindowSizeCallback(window: pGLFWwindow;
  cbfun: GLFWwindowsizefun): pGLFWwindowsizefun; cdecl; external GLFW_DLL;
function glfwSetWindowCloseCallback(window: pGLFWwindow;
  ccbfun: GLFWwindowclosefun): pGLFWwindowclosefun; cdecl; external GLFW_DLL;
function glfwSetWindowRefreshCallback(window: pGLFWwindow;
  cbfun: GLFWwindowrefreshfun): pGLFWwindowrefreshfun; cdecl; external GLFW_DLL;
function glfwSetWindowFocusCallback(window: pGLFWwindow;
  cbfun: GLFWwindowfocusfun): pGLFWwindowfocusfun; cdecl; external GLFW_DLL;
function glfwSetWindowIconifyCallback(window: pGLFWwindow;
  cbfun: GLFWwindowiconifyfun): pGLFWwindowiconifyfun; cdecl; external GLFW_DLL;

{/*! @brief Sets the maximize callback for the specified window.
 *
 *  This function sets the maximization callback of the specified window, which
 *  is called when the window is maximized or restored.
 *
 *  @param[in] window The window whose callback to set.
 *  @param[in] callback The new callback, or `NULL` to remove the currently set
 *  callback.
 *  @return The previously set callback, or `NULL` if no callback was set or the
 *  library had not been [initialized](@ref intro_init).
 *
 *  @callback_signature
 *  @code
 *  void function_name(GLFWwindow* window, int maximized)
 *  @endcode
 *  For more information about the callback parameters, see the
 *  [function pointer type](@ref GLFWwindowmaximizefun).
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref window_maximize
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup window
 */
GLFWAPI GLFWwindowmaximizefun glfwSetWindowMaximizeCallback(GLFWwindow* window, GLFWwindowmaximizefun callback);}
function glfwSetWindowMaximizeCallback(Windows: pGLFWwindow;
  cbfun: GLFWwindowmaximizefun): pGLFWwindowmaximizefun; cdecl; external GLFW_DLL;



function glfwSetFramebufferSizeCallback(window: pGLFWwindow;
  cbfun: GLFWframebuffersizefun): pGLFWframebuffersizefun; cdecl; external GLFW_DLL;
{
/*! @brief Sets the window content scale callback for the specified window.
 *
 *  This function sets the window content scale callback of the specified window,
 *  which is called when the content scale of the specified window changes.
 *
 *  @param[in] window The window whose callback to set.
 *  @param[in] callback The new callback, or `NULL` to remove the currently set
 *  callback.
 *  @return The previously set callback, or `NULL` if no callback was set or the
 *  library had not been [initialized](@ref intro_init).
 *
 *  @callback_signature
 *  @code
 *  void function_name(GLFWwindow* window, float xscale, float yscale)
 *  @endcode
 *  For more information about the callback parameters, see the
 *  [function pointer type](@ref GLFWwindowcontentscalefun).
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref window_scale
 *  @sa @ref glfwGetWindowContentScale
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup window
 */
GLFWAPI GLFWwindowcontentscalefun glfwSetWindowContentScaleCallback(GLFWwindow* window, GLFWwindowcontentscalefun callback);}
function glfwSetWindowContentScaleCallback(window: pGLFWwindow;
  cbfun: GLFWwindowcontentscalefun): pGLFWwindowcontentscalefun;
  cdecl; external GLFW_DLL;


procedure glfwPollEvents; cdecl; external GLFW_DLL;
procedure glfwWaitEvents; cdecl; external GLFW_DLL;
{/*! @brief Waits with timeout until events are queued and processes them.
 *
 *  This function puts the calling thread to sleep until at least one event is
 *  available in the event queue, or until the specified timeout is reached.  If
 *  one or more events are available, it behaves exactly like @ref
 *  glfwPollEvents, i.e. the events in the queue are processed and the function
 *  then returns immediately.  Processing events will cause the window and input
 *  callbacks associated with those events to be called.
 *
 *  The timeout value must be a positive finite number.
 *
 *  Since not all events are associated with callbacks, this function may return
 *  without a callback having been called even if you are monitoring all
 *  callbacks.
 *
 *  On some platforms, a window move, resize or menu operation will cause event
 *  processing to block.  This is due to how event processing is designed on
 *  those platforms.  You can use the
 *  [window refresh callback](@ref window_refresh) to redraw the contents of
 *  your window when necessary during such operations.
 *
 *  Do not assume that callbacks you set will _only_ be called in response to
 *  event processing functions like this one.  While it is necessary to poll for
 *  events, window systems that require GLFW to register callbacks of its own
 *  can pass events to GLFW in response to many window system function calls.
 *  GLFW will pass those events on to the application callbacks before
 *  returning.
 *
 *  Event processing is not required for joystick input to work.
 *
 *  @param[in] timeout The maximum amount of time, in seconds, to wait.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED, @ref
 *  GLFW_INVALID_VALUE and @ref GLFW_PLATFORM_ERROR.
 *
 *  @reentrancy This function must not be called from a callback.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref events
 *  @sa @ref glfwPollEvents
 *  @sa @ref glfwWaitEvents
 *
 *  @since Added in version 3.2.
 *
 *  @ingroup window
 */
GLFWAPI void glfwWaitEventsTimeout(double timeout);}
procedure glfwWaitEventsTimeout(timeout: double); cdecl; external GLFW_DLL;

procedure glfwPostEmptyEvent; cdecl; external GLFW_DLL; //Version 3.1

//========================================================================
//Input
//========================================================================
function glfwGetInputMode(window: pGLFWwindow; mode: integer): integer;
  cdecl; external GLFW_DLL;
procedure glfwSetInputMode(window: pGLFWwindow; mode, Value: integer); cdecl;
  external GLFW_DLL;
{/*! @brief Returns whether raw mouse motion is supported.
 *
 *  This function returns whether raw mouse motion is supported on the current
 *  system.  This status does not change after GLFW has been initialized so you
 *  only need to check this once.  If you attempt to enable raw motion on
 *  a system that does not support it, @ref GLFW_PLATFORM_ERROR will be emitted.
 *
 *  Raw mouse motion is closer to the actual motion of the mouse across
 *  a surface.  It is not affected by the scaling and acceleration applied to
 *  the motion of the desktop cursor.  That processing is suitable for a cursor
 *  while raw motion is better for controlling for example a 3D camera.  Because
 *  of this, raw mouse motion is only provided when the cursor is disabled.
 *
 *  @return `GLFW_TRUE` if raw mouse motion is supported on the current machine,
 *  or `GLFW_FALSE` otherwise.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref raw_mouse_motion
 *  @sa @ref glfwSetInputMode
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup input
 */
GLFWAPI int glfwRawMouseMotionSupported(void);}
function glfwRawMouseMotionSupported(): integer; cdecl; external GLFW_DLL;
{
/*! @brief Returns the layout-specific name of the specified printable key.
 *
 *  This function returns the name of the specified printable key, encoded as
 *  UTF-8.  This is typically the character that key would produce without any
 *  modifier keys, intended for displaying key bindings to the user.  For dead
 *  keys, it is typically the diacritic it would add to a character.
 *
 *  __Do not use this function__ for [text input](@ref input_char).  You will
 *  break text input for many languages even if it happens to work for yours.
 *
 *  If the key is `GLFW_KEY_UNKNOWN`, the scancode is used to identify the key,
 *  otherwise the scancode is ignored.  If you specify a non-printable key, or
 *  `GLFW_KEY_UNKNOWN` and a scancode that maps to a non-printable key, this
 *  function returns `NULL` but does not emit an error.
 *
 *  This behavior allows you to always pass in the arguments in the
 *  [key callback](@ref input_key) without modification.
 *
 *  The printable keys are:
 *  - `GLFW_KEY_APOSTROPHE`
 *  - `GLFW_KEY_COMMA`
 *  - `GLFW_KEY_MINUS`
 *  - `GLFW_KEY_PERIOD`
 *  - `GLFW_KEY_SLASH`
 *  - `GLFW_KEY_SEMICOLON`
 *  - `GLFW_KEY_EQUAL`
 *  - `GLFW_KEY_LEFT_BRACKET`
 *  - `GLFW_KEY_RIGHT_BRACKET`
 *  - `GLFW_KEY_BACKSLASH`
 *  - `GLFW_KEY_WORLD_1`
 *  - `GLFW_KEY_WORLD_2`
 *  - `GLFW_KEY_0` to `GLFW_KEY_9`
 *  - `GLFW_KEY_A` to `GLFW_KEY_Z`
 *  - `GLFW_KEY_KP_0` to `GLFW_KEY_KP_9`
 *  - `GLFW_KEY_KP_DECIMAL`
 *  - `GLFW_KEY_KP_DIVIDE`
 *  - `GLFW_KEY_KP_MULTIPLY`
 *  - `GLFW_KEY_KP_SUBTRACT`
 *  - `GLFW_KEY_KP_ADD`
 *  - `GLFW_KEY_KP_EQUAL`
 *
 *  Names for printable keys depend on keyboard layout, while names for
 *  non-printable keys are the same across layouts but depend on the application
 *  language and should be localized along with other user interface text.
 *
 *  @param[in] key The key to query, or `GLFW_KEY_UNKNOWN`.
 *  @param[in] scancode The scancode of the key to query.
 *  @return The UTF-8 encoded, layout-specific name of the key, or `NULL`.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
 *  GLFW_PLATFORM_ERROR.
 *
 *  @remark The contents of the returned string may change when a keyboard
 *  layout change event is received.
 *
 *  @pointer_lifetime The returned string is allocated and freed by GLFW.  You
 *  should not free it yourself.  It is valid until the library is terminated.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref input_key_name
 *
 *  @since Added in version 3.2.
 *
 *  @ingroup input
 */
GLFWAPI const char* glfwGetKeyName(int key, int scancode);}
function glfwGetKeyName(key, scancode: integer): PChar; cdecl; external GLFW_DLL;
{/*! @brief Returns the platform-specific scancode of the specified key.
 *
 *  This function returns the platform-specific scancode of the specified key.
 *
 *  If the key is `GLFW_KEY_UNKNOWN` or does not exist on the keyboard this
 *  method will return `-1`.
 *
 *  @param[in] key Any [named key](@ref keys).
 *  @return The platform-specific scancode for the key, or `-1` if an
 *  [error](@ref error_handling) occurred.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED, @ref
 *  GLFW_INVALID_ENUM and @ref GLFW_PLATFORM_ERROR.
 *
 *  @thread_safety This function may be called from any thread.
 *
 *  @sa @ref input_key
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup input
 */
GLFWAPI int glfwGetKeyScancode(int key);}
function glfwGetKeyScancode(key: integer): integer; cdecl; external GLFW_DLL;

function glfwGetKey(window: pGLFWwindow; key: integer): integer;
  cdecl; external GLFW_DLL;
function glfwGetMouseButton(window: pGLFWwindow; button: integer): integer;
  cdecl; external GLFW_DLL;
function glfwGetCursorPos(window: pGLFWwindow; var xpos, ypos: double): integer;
  cdecl; external GLFW_DLL;
procedure glfwSetCursorPos(window: pGLFWwindow; xpos, ypos: double);
  cdecl; external GLFW_DLL;
function glfwCreateCursor(const image: pGLFWimage; var xhot, yhot: integer): pGLFWcursor;
  cdecl; external GLFW_DLL; //Version 3.1
function glfwCreateStandardCursor(shape: integer): pGLFWcursor;
  cdecl; external GLFW_DLL; //Version 3.1
procedure glfwDestroyCursor(cursor: pGLFWcursor);
  cdecl; external GLFW_DLL;//Version 3.1
procedure glfwSetCursor(window: pGLFWwindow; cursor: pGLFWcursor);
  cdecl; external GLFW_DLL; //Version 3.1
function glfwSetKeyCallback(window: pGLFWwindow; cbfun: GLFWkeyfun): pGLFWKeyFun;
  cdecl; external GLFW_DLL;
function glfwSetCharCallback(window: pGLFWwindow; cdfun: GLFWcharfun): pGLFWcharfun;
  cdecl; external GLFW_DLL;
function glfwSetCharModsCallback(window: GLFWwindow;
  cbfun: PGLFWcharmodsfun): PGLFWcharmodsfun; cdecl; external GLFW_DLL; //Version 3.1
function glfwSetMouseButtonCallback(window: pGLFWwindow;
  cbfun: GLFWmousebuttonfun): pGLFWmousebuttonfun; cdecl; external GLFW_DLL;
function glfwSetCursorPosCallback(window: pGLFWwindow;
  cbfun: GLFWcursorposfun): pGLFWcursorposfun; cdecl; external GLFW_DLL;
function glfwSetCursorEnterCallback(window: pGLFWwindow;
  cbfun: GLFWcursorenterfun): pGLFWcursorenterfun; cdecl; external GLFW_DLL;
function glfwSetScrollCallback(window: pGLFWwindow;
  cbfun: GLFWscrollfun): pGLFWscrollfun; cdecl; external GLFW_DLL;
function glfwJoystickPresent(joy: integer): integer; cdecl; external GLFW_DLL;
function glfwGetJoystickAxes(joy: integer; var Count: integer): pfloat;
  cdecl; external GLFW_DLL;
function glfwSetDropCallback(window: pGLFWwindow; cbfun: GLFWdropfun): pGLFWdropfun;
  cdecl; external GLFW_DLL; //Version 3.1
function glfwGetJoystickButtons(joy: integer; varcount: integer): pCharArray;
  cdecl; external GLFW_DLL;
{

/*! @brief Returns the state of all hats of the specified joystick.
 *
 *  This function returns the state of all hats of the specified joystick.
 *  Each element in the array is one of the following values:
 *
 *  Name                  | Value
 *  ----                  | -----
 *  `GLFW_HAT_CENTERED`   | 0
 *  `GLFW_HAT_UP`         | 1
 *  `GLFW_HAT_RIGHT`      | 2
 *  `GLFW_HAT_DOWN`       | 4
 *  `GLFW_HAT_LEFT`       | 8
 *  `GLFW_HAT_RIGHT_UP`   | `GLFW_HAT_RIGHT` \| `GLFW_HAT_UP`
 *  `GLFW_HAT_RIGHT_DOWN` | `GLFW_HAT_RIGHT` \| `GLFW_HAT_DOWN`
 *  `GLFW_HAT_LEFT_UP`    | `GLFW_HAT_LEFT` \| `GLFW_HAT_UP`
 *  `GLFW_HAT_LEFT_DOWN`  | `GLFW_HAT_LEFT` \| `GLFW_HAT_DOWN`
 *
 *  The diagonal directions are bitwise combinations of the primary (up, right,
 *  down and left) directions and you can test for these individually by ANDing
 *  it with the corresponding direction.
 *
 *  @code
 *  if (hats[2] & GLFW_HAT_RIGHT)
 *  {
 *      // State of hat 2 could be right-up, right or right-down
 *  }
 *  @endcode
 *
 *  If the specified joystick is not present this function will return `NULL`
 *  but will not generate an error.  This can be used instead of first calling
 *  @ref glfwJoystickPresent.
 *
 *  @param[in] jid The [joystick](@ref joysticks) to query.
 *  @param[out] count Where to store the number of hat states in the returned
 *  array.  This is set to zero if the joystick is not present or an error
 *  occurred.
 *  @return An array of hat states, or `NULL` if the joystick is not present
 *  or an [error](@ref error_handling) occurred.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED, @ref
 *  GLFW_INVALID_ENUM and @ref GLFW_PLATFORM_ERROR.
 *
 *  @pointer_lifetime The returned array is allocated and freed by GLFW.  You
 *  should not free it yourself.  It is valid until the specified joystick is
 *  disconnected, this function is called again for that joystick or the library
 *  is terminated.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref joystick_hat
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup input
 */
GLFWAPI const unsigned char* glfwGetJoystickHats(int jid, int* count);
}
function glfwGetJoystickHats(jid: integer; var Count: integer): PChar;
  cdecl; external GLFW_DLL;
function glfwGetJoystickName(joy: integer): PChar; cdecl; external GLFW_DLL;
{/*! @brief Returns the SDL compatible GUID of the specified joystick.
 *
 *  This function returns the SDL compatible GUID, as a UTF-8 encoded
 *  hexadecimal string, of the specified joystick.  The returned string is
 *  allocated and freed by GLFW.  You should not free it yourself.
 *
 *  The GUID is what connects a joystick to a gamepad mapping.  A connected
 *  joystick will always have a GUID even if there is no gamepad mapping
 *  assigned to it.
 *
 *  If the specified joystick is not present this function will return `NULL`
 *  but will not generate an error.  This can be used instead of first calling
 *  @ref glfwJoystickPresent.
 *
 *  The GUID uses the format introduced in SDL 2.0.5.  This GUID tries to
 *  uniquely identify the make and model of a joystick but does not identify
 *  a specific unit, e.g. all wired Xbox 360 controllers will have the same
 *  GUID on that platform.  The GUID for a unit may vary between platforms
 *  depending on what hardware information the platform specific APIs provide.
 *
 *  @param[in] jid The [joystick](@ref joysticks) to query.
 *  @return The UTF-8 encoded GUID of the joystick, or `NULL` if the joystick
 *  is not present or an [error](@ref error_handling) occurred.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED, @ref
 *  GLFW_INVALID_ENUM and @ref GLFW_PLATFORM_ERROR.
 *
 *  @pointer_lifetime The returned string is allocated and freed by GLFW.  You
 *  should not free it yourself.  It is valid until the specified joystick is
 *  disconnected or the library is terminated.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref gamepad
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup input
 */
GLFWAPI const char* glfwGetJoystickGUID(int jid);
}
function glfwGetJoystickGUID(jid: integer): PChar; cdecl; external GLFW_DLL;

{/*! @brief Sets the user pointer of the specified joystick.
 *
 *  This function sets the user-defined pointer of the specified joystick.  The
 *  current value is retained until the joystick is disconnected.  The initial
 *  value is `NULL`.
 *
 *  This function may be called from the joystick callback, even for a joystick
 *  that is being disconnected.
 *
 *  @param[in] jid The joystick whose pointer to set.
 *  @param[in] pointer The new value.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
 *
 *  @thread_safety This function may be called from any thread.  Access is not
 *  synchronized.
 *
 *  @sa @ref joystick_userptr
 *  @sa @ref glfwGetJoystickUserPointer
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup input
 */
GLFWAPI void glfwSetJoystickUserPointer(int jid, void* pointer);}
procedure glfwSetJoystickUserPointer(jid: integer; newvalue: Pointer);
  cdecl; external GLFW_DLL;
 {/*! @brief Returns the user pointer of the specified joystick.
 *
 *  This function returns the current value of the user-defined pointer of the
 *  specified joystick.  The initial value is `NULL`.
 *
 *  This function may be called from the joystick callback, even for a joystick
 *  that is being disconnected.
 *
 *  @param[in] jid The joystick whose pointer to return.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
 *
 *  @thread_safety This function may be called from any thread.  Access is not
 *  synchronized.
 *
 *  @sa @ref joystick_userptr
 *  @sa @ref glfwSetJoystickUserPointer
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup input
 */
GLFWAPI void* glfwGetJoystickUserPointer(int jid);
}
function glfwGetJoystickUserPointer(jid: integer): Pointer; cdecl; external GLFW_DLL;
{/*! @brief Returns whether the specified joystick has a gamepad mapping.
 *
 *  This function returns whether the specified joystick is both present and has
 *  a gamepad mapping.
 *
 *  If the specified joystick is present but does not have a gamepad mapping
 *  this function will return `GLFW_FALSE` but will not generate an error.  Call
 *  @ref glfwJoystickPresent to check if a joystick is present regardless of
 *  whether it has a mapping.
 *
 *  @param[in] jid The [joystick](@ref joysticks) to query.
 *  @return `GLFW_TRUE` if a joystick is both present and has a gamepad mapping,
 *  or `GLFW_FALSE` otherwise.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
 *  GLFW_INVALID_ENUM.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref gamepad
 *  @sa @ref glfwGetGamepadState
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup input
 */
GLFWAPI int glfwJoystickIsGamepad(int jid);}
function glfwJoystickIsGamepad(jid: integer): GLFW_INT; cdecl; external GLFW_DLL;
{/*! @brief Sets the joystick configuration callback.
 *
 *  This function sets the joystick configuration callback, or removes the
 *  currently set callback.  This is called when a joystick is connected to or
 *  disconnected from the system.
 *
 *  For joystick connection and disconnection events to be delivered on all
 *  platforms, you need to call one of the [event processing](@ref events)
 *  functions.  Joystick disconnection may also be detected and the callback
 *  called by joystick functions.  The function will then return whatever it
 *  returns if the joystick is not present.
 *
 *  @param[in] callback The new callback, or `NULL` to remove the currently set
 *  callback.
 *  @return The previously set callback, or `NULL` if no callback was set or the
 *  library had not been [initialized](@ref intro_init).
 *
 *  @callback_signature
 *  @code
 *  void function_name(int jid, int event)
 *  @endcode
 *  For more information about the callback parameters, see the
 *  [function pointer type](@ref GLFWjoystickfun).
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref joystick_event
 *
 *  @since Added in version 3.2.
 *
 *  @ingroup input
 */
GLFWAPI GLFWjoystickfun glfwSetJoystickCallback(GLFWjoystickfun callback);}
function glfwSetJoystickCallback(cbfun: GLFWjoystickfun): pGLFWjoystickfun; cdecl;
  external GLFW_DLL;

{
/*! @brief Adds the specified SDL_GameControllerDB gamepad mappings.
 *
 *  This function parses the specified ASCII encoded string and updates the
 *  internal list with any gamepad mappings it finds.  This string may
 *  contain either a single gamepad mapping or many mappings separated by
 *  newlines.  The parser supports the full format of the `gamecontrollerdb.txt`
 *  source file including empty lines and comments.
 *
 *  See @ref gamepad_mapping for a description of the format.
 *
 *  If there is already a gamepad mapping for a given GUID in the internal list,
 *  it will be replaced by the one passed to this function.  If the library is
 *  terminated and re-initialized the internal list will revert to the built-in
 *  default.
 *
 *  @param[in] string The string containing the gamepad mappings.
 *  @return `GLFW_TRUE` if successful, or `GLFW_FALSE` if an
 *  [error](@ref error_handling) occurred.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
 *  GLFW_INVALID_VALUE.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref gamepad
 *  @sa @ref glfwJoystickIsGamepad
 *  @sa @ref glfwGetGamepadName
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup input
 */
GLFWAPI int glfwUpdateGamepadMappings(const char* string);
}
function glfwUpdateGamepadMappings(mappings: PChar): GLFW_INT; cdecl; external GLFW_DLL;
{
/*! @brief Returns the human-readable gamepad name for the specified joystick.
 *
 *  This function returns the human-readable name of the gamepad from the
 *  gamepad mapping assigned to the specified joystick.
 *
 *  If the specified joystick is not present or does not have a gamepad mapping
 *  this function will return `NULL` but will not generate an error.  Call
 *  @ref glfwJoystickPresent to check whether it is present regardless of
 *  whether it has a mapping.
 *
 *  @param[in] jid The [joystick](@ref joysticks) to query.
 *  @return The UTF-8 encoded name of the gamepad, or `NULL` if the
 *  joystick is not present, does not have a mapping or an
 *  [error](@ref error_handling) occurred.
 *
 *  @pointer_lifetime The returned string is allocated and freed by GLFW.  You
 *  should not free it yourself.  It is valid until the specified joystick is
 *  disconnected, the gamepad mappings are updated or the library is terminated.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref gamepad
 *  @sa @ref glfwJoystickIsGamepad
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup input
 */
GLFWAPI const char* glfwGetGamepadName(int jid);}
function glfwGetGamepadName(jid: GLFW_INT): PChar; cdecl; external GLFW_DLL;

{/*! @brief Retrieves the state of the specified joystick remapped as a gamepad.
 *
 *  This function retrieves the state of the specified joystick remapped to
 *  an Xbox-like gamepad.
 *
 *  If the specified joystick is not present or does not have a gamepad mapping
 *  this function will return `GLFW_FALSE` but will not generate an error.  Call
 *  @ref glfwJoystickPresent to check whether it is present regardless of
 *  whether it has a mapping.
 *
 *  The Guide button may not be available for input as it is often hooked by the
 *  system or the Steam client.
 *
 *  Not all devices have all the buttons or axes provided by @ref
 *  GLFWgamepadstate.  Unavailable buttons and axes will always report
 *  `GLFW_RELEASE` and 0.0 respectively.
 *
 *  @param[in] jid The [joystick](@ref joysticks) to query.
 *  @param[out] state The gamepad input state of the joystick.
 *  @return `GLFW_TRUE` if successful, or `GLFW_FALSE` if no joystick is
 *  connected, it has no gamepad mapping or an [error](@ref error_handling)
 *  occurred.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
 *  GLFW_INVALID_ENUM.
 *
 *  @thread_safety This function must only be called from the main thread.
 *
 *  @sa @ref gamepad
 *  @sa @ref glfwUpdateGamepadMappings
 *  @sa @ref glfwJoystickIsGamepad
 *
 *  @since Added in version 3.3.
 *
 *  @ingroup input
 */
GLFWAPI int glfwGetGamepadState(int jid, GLFWgamepadstate* state);
}
function glfwGetGamepadState(jid: GLFW_INT; state: pGLFWgamepadstate): GLFW_INT;
  cdecl; external GLFW_DLL;


//========================================================================
// clipboard
//========================================================================
procedure glfwSetClipboardString(window: pGLFWwindow; char: string);
  cdecl; external GLFW_DLL;
function glfwGetClipboardString(window: pGLFWwindow): PChar; cdecl; external GLFW_DLL;

//========================================================================
//Time
//========================================================================
function glfwGetTime: double; cdecl; external GLFW_DLL;
procedure glfwSetTime(time: double); cdecl; external GLFW_DLL;
{
/*! @brief Returns the current value of the raw timer.
 *
 *  This function returns the current value of the raw timer, measured in
 *  1&nbsp;/&nbsp;frequency seconds.  To get the frequency, call @ref
 *  glfwGetTimerFrequency.
 *
 *  @return The value of the timer, or zero if an
 *  [error](@ref error_handling) occurred.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
 *
 *  @thread_safety This function may be called from any thread.
 *
 *  @sa @ref time
 *  @sa @ref glfwGetTimerFrequency
 *
 *  @since Added in version 3.2.
 *
 *  @ingroup input
 */
GLFWAPI uint64_t glfwGetTimerValue(void);
}
function glfwGetTimerValue(): uint64; cdecl; external GLFW_DLL;
{
/*! @brief Returns the frequency, in Hz, of the raw timer.
 *
 *  This function returns the frequency, in Hz, of the raw timer.
 *
 *  @return The frequency of the timer, in Hz, or zero if an
 *  [error](@ref error_handling) occurred.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
 *
 *  @thread_safety This function may be called from any thread.
 *
 *  @sa @ref time
 *  @sa @ref glfwGetTimerValue
 *
 *  @since Added in version 3.2.
 *
 *  @ingroup input
 */
GLFWAPI uint64_t glfwGetTimerFrequency(void);}

function glfwGetTimerFrequency(): uint64; cdecl; external GLFW_DLL;

//========================================================================
//Context
//========================================================================
procedure glfwSwapBuffers(window: pGLFWwindow); cdecl; external GLFW_DLL;
procedure glfwMakeContextCurrent(window: pGLFWwindow); cdecl; external GLFW_DLL;
function glfwGetCurrentContext: pGLFWwindow; cdecl; external GLFW_DLL;
procedure glfwSwapInterval(interval: integer); cdecl; external GLFW_DLL;
function glfwExtensionSupported(extension: PChar): integer; cdecl; external GLFW_DLL;
function glfwGetProcAddress(procname: PChar): pGLFWglproc; cdecl; external GLFW_DLL;

//========================================================================
//Vulkan
//========================================================================
{/*! @brief Returns whether the Vulkan loader and an ICD have been found.
 *
 *  This function returns whether the Vulkan loader and any minimally functional
 *  ICD have been found.
 *
 *  The availability of a Vulkan loader and even an ICD does not by itself
 *  guarantee that surface creation or even instance creation is possible.
 *  For example, on Fermi systems Nvidia will install an ICD that provides no
 *  actual Vulkan support.  Call @ref glfwGetRequiredInstanceExtensions to check
 *  whether the extensions necessary for Vulkan surface creation are available
 *  and @ref glfwGetPhysicalDevicePresentationSupport to check whether a queue
 *  family of a physical device supports image presentation.
 *
 *  @return `GLFW_TRUE` if Vulkan is minimally available, or `GLFW_FALSE`
 *  otherwise.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED.
 *
 *  @thread_safety This function may be called from any thread.
 *
 *  @sa @ref vulkan_support
 *
 *  @since Added in version 3.2.
 *
 *  @ingroup vulkan
 */
GLFWAPI int glfwVulkanSupported(void);}

function glfwVulkanSupported(): integer; cdecl; external GLFW_DLL;
 {/*! @brief Returns the Vulkan instance extensions required by GLFW.
 *
 *  This function returns an array of names of Vulkan instance extensions required
 *  by GLFW for creating Vulkan surfaces for GLFW windows.  If successful, the
 *  list will always contain `VK_KHR_surface`, so if you don't require any
 *  additional extensions you can pass this list directly to the
 *  `VkInstanceCreateInfo` struct.
 *
 *  If Vulkan is not available on the machine, this function returns `NULL` and
 *  generates a @ref GLFW_API_UNAVAILABLE error.  Call @ref glfwVulkanSupported
 *  to check whether Vulkan is at least minimally available.
 *
 *  If Vulkan is available but no set of extensions allowing window surface
 *  creation was found, this function returns `NULL`.  You may still use Vulkan
 *  for off-screen rendering and compute work.
 *
 *  @param[out] count Where to store the number of extensions in the returned
 *  array.  This is set to zero if an error occurred.
 *  @return An array of ASCII encoded extension names, or `NULL` if an
 *  [error](@ref error_handling) occurred.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
 *  GLFW_API_UNAVAILABLE.
 *
 *  @remark Additional extensions may be required by future versions of GLFW.
 *  You should check if any extensions you wish to enable are already in the
 *  returned array, as it is an error to specify an extension more than once in
 *  the `VkInstanceCreateInfo` struct.
 *
 *  @remark @macos This function currently supports either the
 *  `VK_MVK_macos_surface` extension from MoltenVK or `VK_EXT_metal_surface`
 *  extension.
 *
 *  @pointer_lifetime The returned array is allocated and freed by GLFW.  You
 *  should not free it yourself.  It is guaranteed to be valid only until the
 *  library is terminated.
 *
 *  @thread_safety This function may be called from any thread.
 *
 *  @sa @ref vulkan_ext
 *  @sa @ref glfwCreateWindowSurface
 *
 *  @since Added in version 3.2.
 *
 *  @ingroup vulkan
 */
GLFWAPI const char** glfwGetRequiredInstanceExtensions(uint32_t* count);}
function glfwGetRequiredInstanceExtensions(var Count: uint32): PChar;
  cdecl; external GLFW_DLL;


{$IFDEF VK_VERSION_1_0}
 {
/*! @brief Returns the address of the specified Vulkan instance function.
 *
 *  This function returns the address of the specified Vulkan core or extension
 *  function for the specified instance.  If instance is set to `NULL` it can
 *  return any function exported from the Vulkan loader, including at least the
 *  following functions:
 *
 *  - `vkEnumerateInstanceExtensionProperties`
 *  - `vkEnumerateInstanceLayerProperties`
 *  - `vkCreateInstance`
 *  - `vkGetInstanceProcAddr`
 *
 *  If Vulkan is not available on the machine, this function returns `NULL` and
 *  generates a @ref GLFW_API_UNAVAILABLE error.  Call @ref glfwVulkanSupported
 *  to check whether Vulkan is at least minimally available.
 *
 *  This function is equivalent to calling `vkGetInstanceProcAddr` with
 *  a platform-specific query of the Vulkan loader as a fallback.
 *
 *  @param[in] instance The Vulkan instance to query, or `NULL` to retrieve
 *  functions related to instance creation.
 *  @param[in] procname The ASCII encoded name of the function.
 *  @return The address of the function, or `NULL` if an
 *  [error](@ref error_handling) occurred.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED and @ref
 *  GLFW_API_UNAVAILABLE.
 *
 *  @pointer_lifetime The returned function pointer is valid until the library
 *  is terminated.
 *
 *  @thread_safety This function may be called from any thread.
 *
 *  @sa @ref vulkan_proc
 *
 *  @since Added in version 3.2.
 *
 *  @ingroup vulkan
 */
GLFWAPI GLFWvkproc glfwGetInstanceProcAddress(VkInstance instance, const char* procname);}
function glfwGetInstanceProcAddress(instance: VkInstance;
  procname: PChar): pglfwGetInstanceProcAddress; cdecl; external GLFW_DLL;
{
/*! @brief Returns whether the specified queue family can present images.
 *
 *  This function returns whether the specified queue family of the specified
 *  physical device supports presentation to the platform GLFW was built for.
 *
 *  If Vulkan or the required window surface creation instance extensions are
 *  not available on the machine, or if the specified instance was not created
 *  with the required extensions, this function returns `GLFW_FALSE` and
 *  generates a @ref GLFW_API_UNAVAILABLE error.  Call @ref glfwVulkanSupported
 *  to check whether Vulkan is at least minimally available and @ref
 *  glfwGetRequiredInstanceExtensions to check what instance extensions are
 *  required.
 *
 *  @param[in] instance The instance that the physical device belongs to.
 *  @param[in] device The physical device that the queue family belongs to.
 *  @param[in] queuefamily The index of the queue family to query.
 *  @return `GLFW_TRUE` if the queue family supports presentation, or
 *  `GLFW_FALSE` otherwise.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED, @ref
 *  GLFW_API_UNAVAILABLE and @ref GLFW_PLATFORM_ERROR.
 *
 *  @remark @macos This function currently always returns `GLFW_TRUE`, as the
 *  `VK_MVK_macos_surface` extension does not provide
 *  a `vkGetPhysicalDevice*PresentationSupport` type function.
 *
 *  @thread_safety This function may be called from any thread.  For
 *  synchronization details of Vulkan objects, see the Vulkan specification.
 *
 *  @sa @ref vulkan_present
 *
 *  @since Added in version 3.2.
 *
 *  @ingroup vulkan
 */
GLFWAPI int glfwGetPhysicalDevicePresentationSupport(VkInstance instance, VkPhysicalDevice device, uint32_t queuefamily);}

function glfwGetPhysicalDevicePresentationSupport(instance: VkInstance;
  device: VkPhysicalDevice; queuefamily: UInt32): integer; cdecl; external GLFW_DLL;
 {/*! @brief Creates a Vulkan surface for the specified window.
 *
 *  This function creates a Vulkan surface for the specified window.
 *
 *  If the Vulkan loader or at least one minimally functional ICD were not found,
 *  this function returns `VK_ERROR_INITIALIZATION_FAILED` and generates a @ref
 *  GLFW_API_UNAVAILABLE error.  Call @ref glfwVulkanSupported to check whether
 *  Vulkan is at least minimally available.
 *
 *  If the required window surface creation instance extensions are not
 *  available or if the specified instance was not created with these extensions
 *  enabled, this function returns `VK_ERROR_EXTENSION_NOT_PRESENT` and
 *  generates a @ref GLFW_API_UNAVAILABLE error.  Call @ref
 *  glfwGetRequiredInstanceExtensions to check what instance extensions are
 *  required.
 *
 *  The window surface cannot be shared with another API so the window must
 *  have been created with the [client api hint](@ref GLFW_CLIENT_API_attrib)
 *  set to `GLFW_NO_API` otherwise it generates a @ref GLFW_INVALID_VALUE error
 *  and returns `VK_ERROR_NATIVE_WINDOW_IN_USE_KHR`.
 *
 *  The window surface must be destroyed before the specified Vulkan instance.
 *  It is the responsibility of the caller to destroy the window surface.  GLFW
 *  does not destroy it for you.  Call `vkDestroySurfaceKHR` to destroy the
 *  surface.
 *
 *  @param[in] instance The Vulkan instance to create the surface in.
 *  @param[in] window The window to create the surface for.
 *  @param[in] allocator The allocator to use, or `NULL` to use the default
 *  allocator.
 *  @param[out] surface Where to store the handle of the surface.  This is set
 *  to `VK_NULL_HANDLE` if an error occurred.
 *  @return `VK_SUCCESS` if successful, or a Vulkan error code if an
 *  [error](@ref error_handling) occurred.
 *
 *  @errors Possible errors include @ref GLFW_NOT_INITIALIZED, @ref
 *  GLFW_API_UNAVAILABLE, @ref GLFW_PLATFORM_ERROR and @ref GLFW_INVALID_VALUE
 *
 *  @remark If an error occurs before the creation call is made, GLFW returns
 *  the Vulkan error code most appropriate for the error.  Appropriate use of
 *  @ref glfwVulkanSupported and @ref glfwGetRequiredInstanceExtensions should
 *  eliminate almost all occurrences of these errors.
 *
 *  @remark @macos This function currently only supports the
 *  `VK_MVK_macos_surface` extension from MoltenVK.
 *
 *  @remark @macos This function creates and sets a `CAMetalLayer` instance for
 *  the window content view, which is required for MoltenVK to function.
 *
 *  @thread_safety This function may be called from any thread.  For
 *  synchronization details of Vulkan objects, see the Vulkan specification.
 *
 *  @sa @ref vulkan_surface
 *  @sa @ref glfwGetRequiredInstanceExtensions
 *
 *  @since Added in version 3.2.
 *
 *  @ingroup vulkan
 */
GLFWAPI VkResult glfwCreateWindowSurface(VkInstance instance, GLFWwindow* window, const VkAllocationCallbacks* allocator, VkSurfaceKHR* surface);}

function glfwCreateWindowSurface(instance: VkInstance; window: pGLFWwindow;
  var allocator: VkAllocationCallbacks; var surface: VkSurfaceKHR): VkResult;
  cdecl; external GLFW_DLL;

{$ENDIF}

//========================================================================
// Error
//========================================================================
function glfwSetErrorCallback(cbfun: GLFWerrorfun): pGLFWerrorfun;
  cdecl; external GLFW_DLL;


implementation

end.
