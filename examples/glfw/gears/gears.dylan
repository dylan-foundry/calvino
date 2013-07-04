module: examples-glfw-gears
synopsis: glfw's gears.c ported to calvino
author: Francesco Ceccon
copyright: See LICENSE file in this distribution.

let view-rotx = 20.0;
let view-roty = 30.0;
let view-rotz = 0.0;
let angle = 0.0;

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

  select (key)
    $GLFW-KEY-Z =>
      if (logand(mods, $GLFW-MOD-SHIFT) ~= 0)
        view-rotz := view-rotz - 5.0;
      else
        view-rotz := view-rotz + 5.0;
      end if;
    $GLFW-KEY-UP => view-rotx := view-rotx + 5.0;
    $GLFW-KEY-DOWN => view-rotx := view-rotx - 5.0;
    $GLFW-KEY-LEFT => view-roty := view-roty + 5.0;
    $GLFW-KEY-RIGHT => view-roty := view-roty - 5.0;
    otherwise => ;
  end select;
end method key-callback;

define C-callable-wrapper key-callback-wrapper of key-callback
  parameter window :: <GLFWWindow*>;
  parameter key :: <C-int>;
  parameter scancode :: <C-int>;
  parameter action :: <C-int>;
  parameter mods :: <C-int>;
end C-callable-wrapper;

// New window size
define method reshape
    (window :: <GLFWWindow*>, width :: <integer>, height :: <integer>)
  let h = as(<float>, height) / as(<float>, width);
  let znear :: <double-float> = 5.0d0;
  let zfar :: <double-float> = 30.0d0;
  let xmax :: <double-float> = znear * 0.5d0;

  glViewport(0, 0, width, height);
  glMatrixMode($GL-PROJECTION);
  glLoadIdentity();
  glFrustum(-xmax, xmax, -xmax * h, xmax * h, znear, zfar);
  glMatrixMode($GL-MODELVIEW);
  glLoadIdentity();
  glTranslatef(0.0, 0.0, -20.0);
end method reshape;

define C-callable-wrapper reshape-wrapper of reshape
  parameter window :: <GLFWWindow*>;
  parameter width :: <C-int>;
  parameter height :: <C-int>;
end C-callable-wrapper;

/*
  Draw a gear wheel.  You'll probably want to call this function when
  building a display list since we do a lot of trig here.

  Input:  inner-radius - radius of hole at center
          outer-radius - radius at center of teeth
          width - width of gear
          teeth - number of teeth
          tooth-depth - depth of tooth
 */
define method gear
    (inner-radius :: <float>,
     outer-radius :: <float>,
     width :: <float>,
     teeth :: <integer>,
     tooth-depth :: <float>)
  let r0 = inner-radius;
  let r1 = outer-radius - tooth-depth / 2.0;
  let r2 = outer-radius + tooth-depth / 2.0;

  let da = 2.0 * $single-pi / teeth / 4.0;

  glShadeModel($GL-FLAT);

  glNormal3f(0.0, 0.0, 0.0);

  // Draw front face
  glBegin($GL-QUAD-STRIP);
  for (i from 0 to teeth)
    let angle = i * 2.0 * $single-pi / teeth;
    glVertex3f(r0 * cos(angle), r0 * sin(angle), width * 0.5);
    glVertex3f(r1 * cos(angle), r1 * sin(angle), width * 0.5);
    if (i < teeth)
      glVertex3f(r0 * cos(angle), r0 * sin(angle), width * 0.5);
      glVertex3f(r1 * cos(angle + 3 * da), r1 * sin(angle + 3 * da), width * 0.5);
    end if;
  end for;
  glEnd();

  // Draw front sides of teeth
  glBegin($GL-QUADS);
  for (i from 0 to teeth)
    let angle = i * 2.0 * $single-pi / teeth;

    glVertex3f(r1 * cos(angle), r1 * sin(angle), width * 0.5);
    glVertex3f(r2 * cos(angle + da), r2 * sin(angle + da), width * 0.5);
    glVertex3f(r2 * cos(angle + 2 * da), r2 * sin(angle + 2 * da), width * 0.5);
    glVertex3f(r1 * cos(angle + 3 * da), r1 * sin(angle + 3 * da), width * 0.5);
  end for;
  glEnd();

  glNormal3f(0.0, 0.0, -1.0);

  // Draw back face
  glBegin($GL-QUAD-STRIP);
  for (i from 0 to teeth)
    let angle = i * 2.0 * $single-pi / teeth;
    glVertex3f(r1 * cos(angle), r1 * sin(angle), -width * 0.5);
    glVertex3f(r0 * cos(angle), r0 * sin(angle), -width * 0.5);
    if (i < teeth)
      glVertex3f(r1 * cos(angle + 3 * da), r1 * sin(angle + 3 * da), -width * 0.5);
      glVertex3f(r0 * cos(angle), r0 * sin(angle), -width * 0.5);
    end if;
  end for;
  glEnd();

  // Draw back sides of teeth
  glBegin($GL-QUADS);
  for (i from 0 to teeth)
    let angle = i * 2.0 * $single-pi / teeth;

    glVertex3f(r1 * cos(angle + 3 * da), r1 * sin(angle + 3 * da), -width * 0.5);
    glVertex3f(r2 * cos(angle + 2 * da), r2 * sin(angle + 2 * da), -width * 0.5);
    glVertex3f(r2 * cos(angle + da), r2 * sin(angle + da), -width * 0.5);
    glVertex3f(r1 * cos(angle), r1 * sin(angle), -width * 0.5);
  end for;
  glEnd();

  // Draw outward faces of teeth
  glBegin($GL-QUAD-STRIP);
  for (i from 0 to teeth)
    let angle = i * 2.0 * $single-pi / teeth;

    glVertex3f(r1 * cos(angle), r1 * sin(angle), width * 0.5);
    glVertex3f(r1 * cos(angle), r1 * sin(angle), -width * 0.5);
    let u = r2 * cos(angle + da) - r1 * cos(angle);
    let v = r2 * sin(angle + da) - r1 * sin(angle);
    let len = sqrt(u * u + v * v);
    u := u / len;
    v := v / len;
    glNormal3f(v, -u, 0.0);
    glVertex3f(r2 * cos(angle + da), r2 * sin(angle + da), width * 0.5);
    glVertex3f(r2 * cos(angle + da), r2 * sin(angle + da), -width * 0.5);
    glNormal3f(cos(angle), sin(angle), 0.0);
    glVertex3f(r2 * cos(angle + 2 * da), r2 * sin(angle + 2 * da), width * 0.5);
    glVertex3f(r2 * cos(angle + 2 * da), r2 * sin(angle + 2 * da), -width * 0.5);
    u := r1 * cos(angle + 3 * da) - r2 * cos(angle + 2 * da);
    v := r1 * sin(angle + 3 * da) - r2 * sin(angle + 2 * da);
    glNormal3f(v, -u, 0.0);
    glVertex3f(r1 * cos(angle + 3 * da), r1 * sin(angle + 3 * da), width * 0.5);
    glVertex3f(r1 * cos(angle + 3 * da), r1 * sin(angle + 3 * da), -width * 0.5);
    glNormal3f(cos(angle), sin(angle), 0.0);
  end for;

  glVertex3f(r1 * cos(0.0), r1 * sin(0.0), width * 0.5);
  glVertex3f(r1 * cos(0.0), r1 * sin(0.0), -width * 0.5);
  glEnd();

  glShadeModel($GL-SMOOTH);

  // Draw inside radius cylinder
  glBegin($GL-QUAD-STRIP);
  for (i from 0 to teeth)
    let angle = i * 2.0 * $single-pi / teeth;

    glNormal3f(-cos(angle), -sin(angle), 0.0);
    glVertex3f(r0 * cos(angle), r0 * sin(angle), -width * 0.5);
    glVertex3f(r0 * cos(angle), r0 * sin(angle), width * 0.5);
  end for;
  glEnd();
end method gear;

define method draw
    (gear1, gear2, gear3)
  glClear(logior($GL-COLOR-BUFFER-BIT, $GL-DEPTH-BUFFER-BIT));

  glPushMatrix();
    glRotatef(view-rotx, 1.0, 0.0, 0.0);
    glRotatef(view-roty, 0.0, 1.0, 0.0);
    glRotatef(view-rotz, 0.0, 0.0, 1.0);

    glPushMatrix();
      glTranslatef(-3.0, -2.0, 0.0);
      glRotatef(angle, 0.0, 0.0, 1.0);
      glCallList(gear1);
    glPopMatrix();

    glPushMatrix();
      glTranslatef(3.1, -2.0, 0.0);
      glRotatef(-2.0 * angle - 9.0, 0.0, 0.0, 1.0);
      glCallList(gear2);
    glPopMatrix();

    glPushMatrix();
      glTranslatef(-3.1, 4.2, 0.0);
      glRotatef(-2.0 * angle - 25.0, 0.0, 0.0, 1.0);
      glCallList(gear3);
    glPopMatrix();
  glPopMatrix();
end method draw;

// Update animation parameters
define method animate ()
  angle := 100.0 * as(<single-float>, glfwGetTime());
end method animate;

// Program & OpenGL initialization
define method init
    (arguments :: <vector>)
 => (gear1, gear2, gear3)

  let pos = make(<C-float*>, element-count: 4);
  pos[0] := 5.0; pos[1] := 5.0; pos[2] := 10.0; pos[3] := 0.0;

  let red = make(<C-float*>, element-count: 4);
  red[0] := 0.8; red[1] := 0.1; red[2] := 0.0; red[3] := 1.0;

  let green = make(<C-float*>, element-count: 4);
  green[0] := 0.0; green[1] := 0.8; green[2] := 0.2; green[3] := 1.0;

  let blue = make(<C-float*>, element-count: 4);
  blue[0] := 0.2; blue[1] := 0.2; blue[2] := 1.0; blue[3] := 1.0;

  glLightfv($GL-LIGHT0, $GL-POSITION, pos);
  glEnable($GL-CULL-FACE);
  glEnable($GL-LIGHTING);
  glEnable($GL-LIGHT0);
  glEnable($GL-DEPTH-TEST);

  // Make the gears
  let gear1 = glGenLists(1);
  glNewList(gear1, $GL-COMPILE);
    glMaterialfv($GL-FRONT, $GL-AMBIENT-AND-DIFFUSE, red);
    gear(1.0, 4.0, 1.0, 20, 0.7);
  glEndList();

  let gear2 = glGenLists(1);
  glNewList(gear2, $GL-COMPILE);
    glMaterialfv($GL-FRONT, $GL-AMBIENT-AND-DIFFUSE, green);
    gear(0.5, 2.0, 2.0, 10, 0.7);
  glEndList();

  let gear3 = glGenLists(1);
  glNewList(gear3, $GL-COMPILE);
    glMaterialfv($GL-FRONT, $GL-AMBIENT-AND-DIFFUSE, blue);
    gear(1.3, 2.0, 0.5, 10, 0.7);
  glEndList();

  glEnable($GL-NORMALIZE);

  // Parse options
  for (argument in arguments)
    if (argument = "-info")
      format-out("GL_RENDERER   =%s\n", glGetString($GL-RENDERER));
      format-out("GL_VERSION    =%s\n", glGetString($GL-VERSION));
      format-out("GL_VENDOR     =%s\n", glGetString($GL-VENDOR));
      format-out("GL_EXTENSIONS =%s\n", glGetString($GL-EXTENSIONS));
      force-output(*standard-output*);
    elseif (argument = "-exit")
      //
    end;
  end for;

  values(gear1, gear2, gear3)
end method init;

define function main
    (name :: <string>, arguments :: <vector>)

  glfwSetErrorCallback(error-callback-wrapper);

  if (~glfwInit())
    exit-application(1);
  end;

  glfwWindowHint($GLFW-VISIBLE, 1);
  glfwWindowHint($GLFW-DECORATED, 1);
  glfwWindowHint($GLFW-DEPTH-BITS, 16);

  // To start in fullscreen pass glfwGetPrimaryMonitor() as the 4th argument
  let window = glfwCreateWindow(640, 480,
                                "Gears!",
                                null-pointer(<GLFWMonitor*>),
                                null-pointer(<GLFWWindow*>));

  // Set callback functions
  glfwSetFramebufferSizeCallback(window, reshape-wrapper);
  glfwSetKeyCallback(window, key-callback-wrapper);

  glfwMakeContextCurrent(window);

  let (width, height) = glfwGetFramebufferSize(window);
  reshape(window, width, height);

  // Parse command line options
  let (gear1, gear2, gear3) = init(arguments);

  // Loop until the user closes the window
  while (~glfwWindowShouldClose(window))
    // Draw gears
    draw(gear1, gear2, gear3);

    // Update animation
    animate();

    // Swap front and back buffers
    glfwSwapBuffers(window);

    // Poll for and process events
    glfwPollEvents();
  end;

  glfwDestroyWindow(window);
  glfwTerminate();
end function main;

main(application-name(), application-arguments());
