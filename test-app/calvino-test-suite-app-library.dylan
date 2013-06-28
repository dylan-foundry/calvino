module: dylan-user

define library calvino-test-suite-app
  use testworks;

  use calvino-glfw3-test-suite;
  use calvino-math-test-suite;
  use calvino-reactive-test-suite;
end library;

define module calvino-test-suite-app
  use testworks;

  use calvino-glfw3-test-suite;
  use calvino-math-test-suite;
  use calvino-reactive-test-suite;
end module;
