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

  function "cgltf_parse",
    output-argument: 4;

  function "cgltf_parse_file",
    output-argument: 3;

  function "cgltf_load_buffer_base64",
    output-argument: 4;
end interface;
