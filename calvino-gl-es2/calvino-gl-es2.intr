module: calvino-gl-es2
synopsis: bindings for OpenGL/ES2
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define interface
  #include {
      "ES2/gl.h"
    },

    import: all,

    equate: {"char *" => <c-string>};
end interface;
