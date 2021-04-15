module: calvino-test-suite-app

define suite calvino-test-suite ()
  suite calvino-math-test-suite;
  suite calvino-reactive-test-suite;
  suite calvino-glfw3-test-suite;
  suite calvino-gltf-test-suite;
end suite;

run-test-application(calvino-test-suite);
