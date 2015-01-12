module: calvino-nanovg-gl
synopsis: bindings for the nanovg-gl library
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define constant <NVGcreateFlags> = <C-int>;
define constant $NVG-ANTIALIAS = 1;
define constant $NVG-STENCIL-STROKES = 2;
define constant $NVG-DEBUG = 4;

define inline C-function nvgCreateGL3
  input parameter flags_ :: <C-signed-int>;
  result res :: <NVGcontext*>;
  c-name: "nvgCreateGL3";
end;

define inline C-function nvgDeleteGL3
  input parameter ctx_ :: <NVGcontext*>;
  c-name: "nvgDeleteGL3";
end;

define constant <NVGimageFlagsGL> = <C-int>;
define constant $NVG-IMAGE-NODELETE = 65536;

define inline C-function nvglCreateImageFromHandle
  input parameter ctx_ :: <NVGcontext*>;
  input parameter textureId_ :: <C-unsigned-int>;
  input parameter w_ :: <C-signed-int>;
  input parameter h_ :: <C-signed-int>;
  input parameter flags_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "nvglCreateImageFromHandle";
end;

define inline C-function nvglImageHandle
  input parameter ctx_ :: <NVGcontext*>;
  input parameter image_ :: <C-signed-int>;
  result res :: <C-unsigned-int>;
  c-name: "nvglImageHandle";
end;

