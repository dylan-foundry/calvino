module: dylan-user

define library calvino-gl-es2-test-suite
  use common-dylan;
  use calvino-gl-es2;
  use testworks;

  export calvino-gl-es2-test-suite;
end library;

define module calvino-gl-es2-test-suite
  use common-dylan, exclude: { format-to-string };
  use calvino-gl-es2;
  use testworks;

  export calvino-gl-es2-test-suite;
end module;
