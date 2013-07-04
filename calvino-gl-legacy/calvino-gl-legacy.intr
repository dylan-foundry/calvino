module: calvino-gl-legacy
synopsis: bindings for OpenGL 1.x and 2.x
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define interface
  #include {
      "gl.h"
    },

    import: all,

    equate: {"char *" => <c-string>};

  function "glGetString",
    map-result: <c-string>;
end interface;
