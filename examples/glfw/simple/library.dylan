module: dylan-user

define library examples-glfw-simple
  use common-dylan;
  use io;
  use c-ffi;
  use calvino-gl-legacy;
  use calvino-glfw3;
end library;

define module examples-glfw-simple
  use common-dylan, exclude: { format-to-string };
  use format-out;
  use streams;
  use standard-io;
  use c-ffi;
  use calvino-gl-legacy;
  use calvino-glfw3;
end module;
