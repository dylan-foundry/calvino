module: dylan-user
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define library calvino-nanovg-gl
  use dylan;
  use common-dylan;
  use c-ffi;
  use calvino-nanovg;
  use calvino-gl;

  export calvino-nanovg-gl;
end library;

define module calvino-nanovg-gl
  use common-dylan;
  use c-ffi;
  use calvino-nanovg;
  use calvino-gl;

  export
    $NVG-ANTIALIAS,
    $NVG-DEBUG,
    $NVG-IMAGE-NODELETE,
    $NVG-STENCIL-STROKES,
    <NVGcreateFlags>,
    <NVGimageFlagsGL>,
    nvgCreateGL3,
    nvgDeleteGL3,
    nvglCreateImageFromHandle,
    nvglImageHandle;
end module;
