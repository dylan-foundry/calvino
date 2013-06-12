module: dylan-user

define library calvino-reactive-test-suite
  use common-dylan;
  use calvino-reactive;
  use testworks;

  export calvino-reactive-test-suite;
end library;

define module calvino-reactive-test-suite
  use common-dylan, exclude: { format-to-string };
  use calvino-reactive;
  use testworks;

  export calvino-reactive-test-suite;
end module;
