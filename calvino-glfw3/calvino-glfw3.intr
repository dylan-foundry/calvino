module: calvino-glfw3
synopsis: bindings for the glfw3 library
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define interface
  #include {
      "GLFW/glfw3.h"
    },

    import: all,

    equate: {"char *" => <c-string>};
end interface;
