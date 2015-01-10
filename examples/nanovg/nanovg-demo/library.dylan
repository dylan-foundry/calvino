Module: dylan-user

define library examples-nanovg-demo
  use common-dylan;
  use c-ffi;
  use io;
  use calvino-gl;
  use calvino-glfw3;
  use calvino-nanovg;
  use calvino-nanovg-gl;
end library examples-nanovg-demo;

define module examples-nanovg-demo
  use common-dylan;
  use transcendentals;
  use c-ffi;
  use format-out;
  use calvino-gl;
  use calvino-glfw3;
  use calvino-nanovg;
  use calvino-nanovg-gl;
end module examples-nanovg-demo;
