Module: examples-nanovg-demo
Synopsis: NanoVG demo ported to Dylan
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define method error-callback
  (err :: <integer>, description :: <string>)
  error(description);
end method error-callback;

define C-callable-wrapper error-callback-wrapper of error-callback
  parameter err :: <C-int>;
  parameter description :: <C-string>;
end C-callable-wrapper;

define method key-callback
  (window :: <GLFWWindow*>, key, scancode, action, mods)
  if (key == $GLFW-KEY-ESCAPE & action == $GLFW-PRESS)
    glfwSetWindowShouldClose(window, $GL-TRUE);
  end;
end method key-callback;

define C-callable-wrapper key-callback-wrapper of key-callback
  parameter window :: <GLFWWindow*>;
  parameter key :: <C-int>;
  parameter scancode :: <C-int>;
  parameter action :: <C-int>;
  parameter mods :: <C-int>;
end C-callable-wrapper;

define function main (name :: <string>, arguments :: <vector>)

  glfwSetErrorCallback(error-callback-wrapper);

  if (~glfwInit())
    glfwTerminate();
    exit-application(1);
  end;

  glfwWindowHint($GLFW-CONTEXT-VERSION-MAJOR, 3);
  glfwWindowHint($GLFW-CONTEXT-VERSION-MINOR, 2);
  glfwWindowHint($GLFW-OPENGL-FORWARD-COMPAT, $GL-TRUE);
  glfwWindowHint($GLFW-OPENGL-PROFILE, $GLFW-OPENGL-CORE-PROFILE);
  glfwWindowHint($GLFW-OPENGL-DEBUG-CONTEXT, 1);

  glfwWindowHint($GLFW-VISIBLE, 1);
  glfwWindowHint($GLFW-DECORATED, 1);

  // To start in fullscreen pass glfwGetPrimaryMonitor() as the 4th argument
  let window = glfwCreateWindow(1000, 600,
                               "NanoVG Demo",
                               null-pointer(<GLFWMonitor*>),
                               null-pointer(<GLFWWindow*>));

  glfwMakeContextCurrent(window);

  glClearColor(0.1, 0.08, 0.09, 1.0);
  glfwSetKeyCallback(window, key-callback-wrapper);

  let vg = nvgCreateGL3(logior($NVG-ANTIALIAS, $NVG-STENCIL-STROKES, $NVG-DEBUG));
  if (~vg)
    exit-application(2);
  end if;

  let font-normal = nvgCreateFont(vg, "sans", "Roboto-Regular.ttf");
  if (font-normal == -1)
    exit-application(3);
  end;
  let font-bold = nvgCreateFont(vg, "sans-bold", "Roboto-Bold.ttf");
  if (font-bold == -1)
    exit-application(4);
  end;

  glfwSwapInterval(0);
  glfwSetTime(0.0d0);

  /* Loop until the user closes the window */
  while (~glfwWindowShouldClose(window))
    let t = glfwGetTime();
    let (mx, my) = glfwGetCursorPos(window);
    let (winWidth, winHeight) = glfwGetWindowSize(window);
    let (fbWidth, fbHeight) = glfwGetFramebufferSize(window);
    // Calculate pixel ration for hi-dpi devices.
    let pxRatio = as(<float>, fbWidth) / as(<float>, winWidth);

    // Update and render
    glViewport(0, 0, fbWidth, fbHeight);
    glClearColor(0.3, 0.3, 0.32, 1.0);
    glClear(logior($GL-COLOR-BUFFER-BIT, $GL-DEPTH-BUFFER-BIT, $GL-STENCIL-BUFFER-BIT));

    nvgBeginFrame(vg, winWidth, winHeight, pxRatio);

    let data = #f;
    let f = curry(as, <single-float>);
    render-demo(vg, f(mx), f(my), f(winWidth), f(winHeight), f(t), data);

    nvgEndFrame(vg);

    /* Swap front and back buffers */
    glfwSwapBuffers(window);

    /* Poll for and process events */
    glfwPollEvents();
  end;

  nvgDeleteGL3(vg);
  glfwDestroyWindow(window);
  glfwTerminate();
end function main;

main(application-name(), application-arguments());
