module: dylan-user
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define library calvino
  use dylan;
  use common-dylan;

  use calvino-gl, export { calvino-gl };
  use calvino-math, export { calvino-math };
end library;

