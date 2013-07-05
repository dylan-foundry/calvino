module: examples-glfw-splitview
synopsis: glfw's splitview.c ported to calvino
author: Francesco Ceccon
copyright: See LICENSE file in this distribution.

// Mouse position
define variable *xpos* = 0.0;
define variable *ypos* = 0.0;

// Window size
define variable *width* = 0;
define variable *height* = 0;

// Active view: 0 = none, 1 = upper left, 2 = upper right, 3 = lower left,
// 4 = lower right
define variable *active-view* = 0;

// Rotation around each axis
define variable *rot-x* = 0.0;
define variable *rot-y* = 0.0;
define variable *rot-z* = 0.0;

// Do redraw?
define variable *do-redraw* = #t;

define method error-callback
    (err :: <integer>, description :: <string>)
  error(description);
end method error-callback;

define C-callable-wrapper error-callback-wrapper of error-callback
  parameter err :: <C-int>;
  parameter description :: <C-string>;
end C-callable-wrapper;

define method mouse-button-callback
    (window :: <GLFWWindow*>,
     button :: <integer>,
     action :: <integer>,
     mods :: <integer>)
  if (button = $GLFW-MOUSE-BUTTON-LEFT & action = $GLFW-PRESS)
    *active-view* := 1;
    if (*xpos* >= (*width* / 2.0))
      *active-view* := *active-view* + 1;
    end;
    if (*ypos* >= (*height* / 2.0))
      *active-view* := *active-view* + 2;
    end;
  elseif (button = $GLFW-MOUSE-BUTTON-LEFT)
    // Deselect any previously selected view
    *active-view* := 0;
  end;
  *do-redraw* := #t;
end method mouse-button-callback;

define C-callable-wrapper mouse-button-callback-wrapper of mouse-button-callback
  parameter window :: <GLFWWindow*>;
  parameter button :: <C-int>;
  parameter action :: <C-int>;
  parameter mods :: <C-int>;
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

// New window size
define method reshape
    (window :: <GLFWWindow*>, width :: <integer>, height :: <integer>)
  *width* := width;
  *height* := height;
  *do-redraw* := #t;
end method reshape;

define C-callable-wrapper reshape-wrapper of reshape
  parameter window :: <GLFWWindow*>;
  parameter width :: <C-int>;
  parameter height :: <C-int>;
end C-callable-wrapper;

define method refresh
    (window :: <GLFWWindow*>)
  *do-redraw* := #t;
end method refresh;

define C-callable-wrapper refresh-wrapper of refresh
  parameter window :: <GLFWWindow*>;
end C-callable-wrapper;

define method cursor-callback
    (window :: <GLFWWindow*>, x :: <double-float>, y :: <double-float>)
  select (*active-view*)
    1 => *rot-x* := *rot-x* + (as(<single-float>, y) - *ypos*);
         *rot-z* := *rot-z* + (as(<single-float>, x) - *xpos*);
         *do-redraw* := #t;
    3 => *rot-x* := *rot-x* + (as(<single-float>, y) - *ypos*);
         *rot-y* := *rot-y* + (as(<single-float>, x) - *xpos*);
         *do-redraw* := #t;
    4 => *rot-y* := *rot-y* + (as(<single-float>, x) - *xpos*);
         *rot-z* := *rot-z* + (as(<single-float>, y) - *ypos*);
         *do-redraw* := #t;
    otherwise => /* Do nothing for perspective view */;
  end select;

  // Remember cursor position
  *xpos* := as(<single-float>, x);
  *ypos* := as(<single-float>, y);
end method cursor-callback;

define C-callable-wrapper cursor-callback-wrapper of cursor-callback
  parameter window :: <GLFWWindow*>;
  parameter x :: <c-double>;
  parameter y :: <c-double>;
end C-callable-wrapper;

// Draw a solid torus (use a display list for the model)
define constant $torus-major = 1.5;
define constant $torus-minor = 0.5;
define constant $torus-major-res = 32;
define constant $torus-minor-res = 32;
define variable *torus-list* = 0;

define function draw-torus ()
  if (*torus-list* == 0)
    // Start recording displaylist
    *torus-list* := glGenLists(1);
    glNewList(*torus-list*, $GL-COMPILE-AND-EXECUTE);

    // Draw torus
    let two-pi = 2.0 * $single-pi;
    for (i from 0 to $torus-minor-res)
      glBegin($GL-QUAD-STRIP);
      for (j from 0 to $torus-major-res)
        for (k from 1 to 0 by -1)
          let s = modulo((i + k), $torus-minor-res + 0.5);
          let t = modulo(j, $torus-major-res);

          // Calculate point on surface
          let x = ($torus-major + $torus-minor * cos(s * two-pi / $torus-minor-res)) *
                  cos(t * two-pi / $torus-major-res);
          let y = $torus-minor * sin(s * two-pi / $torus-minor-res);
          let z = ($torus-major + $torus-minor * cos(s * two-pi / $torus-minor-res)) *
                  sin(t * two-pi / $torus-major-res);

          // Calculate surface normal
          let nx = x - $torus-major * cos(t * two-pi / $torus-major-res);
          let ny = y;
          let nz = z - $torus-major * sin(t * two-pi / $torus-major-res);
          let scale = 1.0 / sqrt(nx * nx + ny * ny + nz * nz);
          nx := nx * scale;
          ny := ny * scale;
          nz := nz * scale;

          glNormal3f(nx, ny, nz);
          glVertex3f(x, y, z);
        end for;
      end for;
      glEnd();
    end for;

    // Stop recording displaylist
    glEndList();
  else
    // Playback displaylist
    glCallList(*torus-list*);
  end;
end function draw-torus;

define method as
    (class == <c-float*>, s :: <sequence>)
 => (result :: <c-float*>)
  let len = size(s);
  let result = make(<c-float*>, element-count: len);
  for (value in s, i from 0)
    result[i] := value;
  end;
  result
end method as;

// Draw the scene (a rotating torus)
define function draw-scene ()
  let model-diffuse = as(<c-float*>, #[1.0, 0.8, 0.8, 1.0]);
  let model-specular = as(<c-float*>, #[0.6, 0.6, 0.6, 1.0]);
  let model-shininess = 20.0;

  glPushMatrix();

  // Rotate the object
  glRotatef(*rot-x* * 0.5, 1.0, 0.0, 0.0);
  glRotatef(*rot-y* * 0.5, 0.0, 1.0, 0.0);
  glRotatef(*rot-z* * 0.5, 0.0, 0.0, 1.0);

  // Set model color (used for orthogonal views, lighting disabled)
  glColor4fv(model-diffuse);

  // Set model material (used for perspective view, lighting enabled)
  glMaterialfv($GL-FRONT, $GL-DIFFUSE, model-diffuse);
  glMaterialfv($GL-FRONT, $GL-SPECULAR, model-specular);
  glMaterialf($GL-FRONT, $GL-SHININESS, model-shininess);

  // Draw torus
  draw-torus();

  glPopMatrix();
end function draw-scene;

// Draw a 2D grid (used for orthogonal views)
define function draw-grid
    (scale :: <float>, steps :: <integer>)
  glPushMatrix();

  // Set background to some dark bluish grey
  glClearColor(0.05, 0.05, 0.2, 0.0);
  glClear($GL-COLOR-BUFFER-BIT);

  // Setup modelview matrix (flat XY view)
  glLoadIdentity();
  gluLookAt(0.0d0, 0.0d0, 1.0d0,
            0.0d0, 0.0d0, 0.0d0,
            0.0d0, 1.0d0, 0.0d0);

  // We don't want to update the Z-buffer
  glDepthMask($GL-FALSE);

  // Set grid color
  glColor3f(0.0, 0.5, 0.5);

  glBegin($GL-LINES);

  // Horizontal lines
  let x = scale * 0.5 * (steps - 1);
  let y = -scale * 0.5 * (steps - 1);
  for (i from 0 to steps)
    glVertex3f(-x, y, 0.0);
    glVertex3f(x, y, 0.0);
    y := y + scale;
  end for;

  // Vertical lines
  let x = -scale * 0.5 * (steps - 1);
  let y = scale * 0.5 * (steps - 1);
  for (i from 0 to steps)
    glVertex3f(x, -y, 0.0);
    glVertex3f(x, y, 0.0);
    x := x + scale;
  end for;

  glEnd();

  // Enable Z-buffer writing again
  glDepthMask($GL-TRUE);

  glPopMatrix();
end function draw-grid;

define function draw-all-views ()
  let light-position = as(<c-float*>, #[0.0, 8.0, 8.0, 1.0]);
  let light-diffuse = as(<c-float*>, #[1.0, 1.0, 1.0, 1.0]);
  let light-specular = as(<c-float*>, #[1.0, 1.0, 1.0, 1.0]);
  let light-ambient = as(<c-float*>, #[0.2, 0.2, 0.3, 1.0]);
  let aspect = 1.0;

  if (*height* > 0)
    aspect := *width* / as(<float>, *height*);
  end;

  // Clear screen
  glClearColor(0.0, 0.0, 0.0, 0.0);
  glClear(logior($GL-COLOR-BUFFER-BIT, $GL-DEPTH-BUFFER-BIT));

  // Enable scissor test
  glEnable($GL-SCISSOR-TEST);

  // Enable depth test
  glEnable($GL-DEPTH-TEST);
  glDepthFunc($GL-LEQUAL);

  // ** ORTHOGONAL VIEWS **

  // For orthogonal views, use wireframe rendering
  glPolygonMode($GL-FRONT-AND-BACK, $GL-LINE);

  // Enable line anti-aliasing
  glEnable($GL-LINE-SMOOTH);
  glEnable($GL-BLEND);
  glBlendFunc($GL-SRC-ALPHA, $GL-ONE-MINUS-SRC-ALPHA);

  // Setup orthogonal projection matrix
  glMatrixMode($GL-PROJECTION);
  glLoadIdentity();
  glOrtho(-3.0d0 * aspect, 3.0d0 * aspect, -3.0d0, 3.0d0, 1.0d0, 50.0d0);

  let half-width = truncate/(*width*, 2);
  let half-height = truncate/(*height*, 2);

  // Upper left view (TOP VIEW)
  glViewport(0, half-height, half-width, half-height);
  glScissor(0, half-height, half-width, half-height);
  glMatrixMode($GL-MODELVIEW);
  glLoadIdentity();
  gluLookAt(0.0d0, 10.0d0, 1.0d0 * 1e-3,   // Eye-position (above)
            0.0d0, 0.0d0, 0.0d0,           // View-point
            0.0d0, 1.0d0, 0.0d0);          // Up-vector
  draw-grid(0.5, 12);
  draw-scene();

  // Lower left view (FRONT VIEW)
  glViewport(0, 0, half-width, half-height);
  glScissor(0, 0, half-width, half-height);
  glMatrixMode($GL-MODELVIEW);
  glLoadIdentity();
  gluLookAt(0.0d0, 0.0d0, 10.0d0,          // Eye-position (to the right)
            0.0d0, 0.0d0, 0.0d0,           // View-point
            0.0d0, 1.0d0, 0.0d0);          // Up-vector
  draw-grid(0.5, 12);
  draw-scene();

  // Lower left view (SIDE VIEW)
  glViewport(half-width, 0, half-width, half-height);
  glScissor(half-width, 0, half-width, half-height);
  glMatrixMode($GL-MODELVIEW);
  glLoadIdentity();
  gluLookAt(10.0d0, 0.0d0, 0.0d0,          // Eye-position (to the right)
            0.0d0, 0.0d0, 0.0d0,           // View-point
            0.0d0, 1.0d0, 0.0d0);          // Up-vector
  draw-grid(0.5, 12);
  draw-scene();

  // Disable line anti-aliasing
  glDisable($GL-LINE-SMOOTH);
  glDisable($GL-BLEND);

  // ** PERSPECTIVE VIEW **

  // For perspective view, use solid rendering
  glPolygonMode($GL-FRONT-AND-BACK, $GL-FILL);

  // Enable face culling (faster rendering)
  glEnable($GL-CULL-FACE);
  glCullFace($GL-BACK);
  glFrontFace($GL-CW);

  // Setup perspective projection matrix
  glMatrixMode($GL-PROJECTION);
  glLoadIdentity();
  gluPerspective(65.0d0, as(<double-float>, aspect), 1.0d0, 50.0d0);

  // Upper right view (PERSPECTIVE VIEW)
  glViewport(half-width, half-height, half-width, half-height);
  glScissor(half-width, half-height, half-width, half-height);
  glMatrixMode($GL-MODELVIEW);
  glLoadIdentity();
  gluLookAt(3.0d0, 1.5d0, 3.0d0,     // Eye-position
            0.0d0, 0.0d0, 0.0d0,     // View-point
            0.0d0, 1.0d0, 0.0d0 );   // Up-vector

  // Configure and enable light source 1
  glLightfv($GL-LIGHT1, $GL-POSITION, light-position);
  glLightfv($GL-LIGHT1, $GL-AMBIENT, light-ambient);
  glLightfv($GL-LIGHT1, $GL-DIFFUSE, light-diffuse);
  glLightfv($GL-LIGHT1, $GL-SPECULAR, light-specular);
  glEnable($GL-LIGHT1);
  glEnable($GL-LIGHTING);

  // Draw scene
  draw-scene();

  // Disable lighting
  glDisable($GL-LIGHTING);

  // Disable face culling
  glDisable($GL-CULL-FACE);

  // Disable depth test
  glDisable($GL-DEPTH-TEST);

  // Disable scissor test
  glDisable($GL-SCISSOR-TEST);

  // Draw a border around the active view
  if (*active-view* > 0 & *active-view* ~= 2)
    glViewport(0, 0, *width*, *height*);
    glMatrixMode($GL-PROJECTION);
    glLoadIdentity();
    glOrtho(0.0d0, 2.0d0, 0.0d0, 2.0d0, 0.0d0, 1.0d0);

    glMatrixMode($GL-MODELVIEW);
    glLoadIdentity();
    glTranslatef(as(<float>, logand(*active-view* - 1, 1)),
                 1.0 - truncate/(*active-view* - 1.0, 2.0),
                 0.0);

    glColor3f(1.0, 1.0, 0.6);
    glBegin($GL-LINE-STRIP);
      glVertex2i(0, 0);
      glVertex2i(1, 0);
      glVertex2i(1, 1);
      glVertex2i(0, 1);
      glVertex2i(0, 0);
    glEnd();
  end;
end function draw-all-views;

define function main (name :: <string>, arguments :: <vector>)

  glfwSetErrorCallback(error-callback-wrapper);

  if (~glfwInit())
    exit-application(1);
  end;

  glfwWindowHint($GLFW-VISIBLE, 1);
  glfwWindowHint($GLFW-DECORATED, 1);

  // To start in fullscreen pass glfwGetPrimaryMonitor() as the 4th argument
  let window = glfwCreateWindow(640, 480,
                                "Split view demo",
                                null-pointer(<GLFWMonitor*>),
                                null-pointer(<GLFWWindow*>));

  // Set callback functions
  glfwSetFramebufferSizeCallback(window, reshape-wrapper);
  glfwSetWindowRefreshCallback(window, refresh-wrapper);
  glfwSetCursorPosCallback(window, cursor-callback-wrapper);
  glfwSetMouseButtonCallback(window, mouse-button-callback-wrapper);
  glfwSetKeyCallback(window, key-callback-wrapper);

  // Enable vsync
  glfwMakeContextCurrent(window);
  glfwSwapInterval(1);

  let (width, height) = glfwGetFramebufferSize(window);
  reshape(window, width, height);

  glClearColor(0.1, 0.08, 0.09, 1.0);

  // Main loop
  block(done)
    while (#t)
      if (*do-redraw*)
        // Draw all views
        draw-all-views();

        // Swap buffers
        glfwSwapBuffers(window);
        *do-redraw* := #f;
      end;

      // Wait for new events
      glfwWaitEvents();

      // Check if the window should be closed
      if (glfwWindowShouldClose(window))
        done();
      end;
    end while;
  end block;

  glfwDestroyWindow(window);
  glfwTerminate();
end function main;

main(application-name(), application-arguments());
