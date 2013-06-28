module: dylan-user

define library calvino-gles2-test-suite
  use common-dylan;
  use calvino-gles2;
  use testworks;

  export calvino-gles2-test-suite;
end library;

define module calvino-gles2-test-suite
  use common-dylan, exclude: { format-to-string };
  use calvino-gles2;
  use testworks;

  export calvino-gles2-test-suite;
end module;
