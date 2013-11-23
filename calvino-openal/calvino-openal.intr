module: calvino-openal
synopsis: bindings for OpenAL
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define interface
  #include {
      "al.h"
    },

    import: all,

    equate: { "char *" => <c-string> };
end interface;
