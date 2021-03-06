module: dylan-user
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define library calvino
  use dylan;
  use common-dylan;

  use calvino-gl, export: { calvino-gl };
  use calvino-glfw3, export: { calvino-glfw3 };
  use calvino-math, export: { calvino-math };
  use calvino-reactive, export: { calvino-reactive };
end library;
