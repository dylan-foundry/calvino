module: calvino-nanovg-gl
synopsis: bindings for the nanovg-gl library
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define interface
  #include {
      "nanovg.h",
      "nanovg_gl.h"
    },
    define: {
      "NANOVG_GL3",
      "GLuint" => "unsigned int"
    },
    import: "nanovg.h" => none,
    import: "nanovg_gl.h" => all,
    inline-functions: inline,
    exclude: {
      "NVGcontext*",
      "NANOVG_GL_USE_STATE_FILTER"
    },
    equate: { "char *" => <c-string> };
end interface;
