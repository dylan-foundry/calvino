module: dylan-user

define library calvino-glfw3-test-suite
  use common-dylan;
  use calvino-glfw3;
  use testworks;

  export calvino-glfw3-test-suite;
end library;

define module calvino-glfw3-test-suite
  use common-dylan, exclude: { format-to-string };
  use calvino-glfw3;
  use testworks;

  export calvino-glfw3-test-suite;
end module;
