module: dylan-user

define library calvino-gltf-test-suite
  use common-dylan;
  use calvino-gltf;
  use testworks;

  export calvino-gltf-test-suite;
end library;

define module calvino-gltf-test-suite
  use common-dylan, exclude: { format-to-string };
  use calvino-gltf;
  use testworks;

  export calvino-gltf-test-suite;
end module;
