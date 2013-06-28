module: calvino-gles2
synopsis: bindings for the glfw3 library
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define interface
  #include {
      "ES2/gl.h"
    },

    import: all,

    equate: {"char *" => <c-string>};
end interface;
