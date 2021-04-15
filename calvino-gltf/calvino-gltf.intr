module: calvino-gltf
synopsis: bindings for cgltf
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define interface
  #include {
      "cgltf.h"
    },

    import: all,

    equate: {"char *" => <c-string>};
end interface;
