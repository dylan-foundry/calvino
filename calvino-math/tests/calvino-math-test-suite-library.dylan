module: dylan-user

define library calvino-math-test-suite
  use common-dylan;
  use calvino-math;
  use testworks;

  export calvino-math-test-suite;
end library;

define module calvino-math-test-suite
  use common-dylan, exclude: { format-to-string };
  use calvino-math;
  use testworks;

  export calvino-math-test-suite;
end module;
