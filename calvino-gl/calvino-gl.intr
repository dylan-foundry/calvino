module: calvino-gl
synopsis: bindings for OpenGL 3.x
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define interface
  #include {
      "gl3.h"
    },

    import: all,

    equate: {"char *" => <c-string>};
end interface;
