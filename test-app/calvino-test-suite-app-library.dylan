module: dylan-user

define library calvino-test-suite-app
  use testworks;

  use calvino-math-test-suite;
end library;

define module calvino-test-suite-app
  use testworks;

  use calvino-math-test-suite;
end module;
