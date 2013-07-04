module: dylan-user

define library examples-glfw-gears
  use common-dylan;
  use io;
  use c-ffi;
  use calvino-gl-legacy;
  use calvino-glfw3;
end library;

define module examples-glfw-gears
  use common-dylan, exclude: { format-to-string };
  use transcendentals,
    import: { cos, sin, sqrt, $single-pi };
  use format-out;
  use streams;
  use standard-io;
  use c-ffi;
  use calvino-gl-legacy;
  use calvino-glfw3;
end module;
