module: examples-glfw-simple
synopsis: glfw's simple.c ported to calvino
author: Francesco Ceccon
copyright: See LICENSE file in this distribution.

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
    exit-application(1);
  end;

  glfwWindowHint($GLFW-VISIBLE, 1);
  glfwWindowHint($GLFW-DECORATED, 1);

  // To start in fullscreen pass glfwGetPrimaryMonitor() as the 4th argument
  let window = glfwCreateWindow(640, 480,
                                "Test!",
                                null-pointer(<GLFWMonitor*>),
                                null-pointer(<GLFWWindow*>));

  glfwMakeContextCurrent(window);

  glClearColor(0.1, 0.08, 0.09, 1.0);
  glfwSetKeyCallback(window, key-callback-wrapper);

  /* Loop until the user closes the window */
  while (~glfwWindowShouldClose(window))
    /* Render here */
    let (width, height) = glfwGetFramebufferSize(window);

    glViewport(0, 0, width, height);
    glClear($GL-COLOR-BUFFER-BIT);

    let ratio = as(<double-float>, as(<float>, width) / as(<float>, height));
    let one = as(<double-float>, 1.0);
    glMatrixMode($GL-PROJECTION);
    glLoadIdentity();
    glOrtho(-ratio, ratio, -one, one, one, -one);

    glMatrixMode($GL-MODELVIEW);
    glBegin($GL-TRIANGLES);
      glColor3f(1.0, 0.0, 0.0);
      glVertex3f(-0.6, -0.4, 0.0);
      glColor3f(0.0, 1.0, 0.0);
      glVertex3f(0.6, -0.4, 0.0);
      glColor3f(0.0, 0.0, 1.0);
      glVertex3f(0.0, 0.6, 0.0);
    glEnd();

    /* Swap front and back buffers */
    glfwSwapBuffers(window);

    /* Poll for and process events */
    glfwPollEvents();
  end;

  glfwDestroyWindow(window);
  glfwTerminate();
end function main;

main(application-name(), application-arguments());
