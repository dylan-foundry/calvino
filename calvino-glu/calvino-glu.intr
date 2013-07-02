module: calvino-glu
synopsis: bindings for GLU
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define interface
  #include {
      "glu.h"
    },

    import: all,

    equate: {"char *" => <c-string>};
end interface;
