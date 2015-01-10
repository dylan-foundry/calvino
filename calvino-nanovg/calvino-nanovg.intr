module: calvino-nanovg
synopsis: bindings for the nanovg library
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define interface
  #include {
      "nanovg.h"
    },
    import: all,
    equate: {"char *" => <c-string>},
    exclude: {
      "nvgRGB",
      "nvgRGBf",
      "nvgRGBA",
      "nvgRGBAf",
      "nvgLerpRGBA",
      "nvgTransRGBA",
      "nvgTransRGBAf",
      "nvgHSL",
      "nvgHSLA",
      "nvgLinearGradient",
      "nvgBoxGradient",
      "nvgRadialGradient",
      "nvgImagePattern"
    };
end interface;

define C-pointer-type <NVGcolor*> => <NVGcolor>;

define inline-only C-function %nvgRGBA
  parameter color :: <NVGcolor*>;
  parameter r :: <C-unsigned-char>;
  parameter g :: <C-unsigned-char>;
  parameter b :: <C-unsigned-char>;
  parameter a :: <C-unsigned-char>;
  c-name: "dylan_nvg_rgba";
end;

define inline-only C-function %nvgRGB
  parameter color :: <NVGcolor*>;
  parameter r :: <C-unsigned-char>;
  parameter g :: <C-unsigned-char>;
  parameter b :: <C-unsigned-char>;
  c-name: "dylan_nvg_rgb";
end;

define inline-only C-function %nvgRGBAf
  parameter color :: <NVGcolor*>;
  parameter r :: <C-float>;
  parameter g :: <C-float>;
  parameter b :: <C-float>;
  parameter a :: <C-float>;
  c-name: "dylan_nvg_rgbaf";
end;

define inline-only C-function %nvgRGBf
  parameter color :: <NVGcolor*>;
  parameter r :: <C-float>;
  parameter g :: <C-float>;
  parameter b :: <C-float>;
  c-name: "dylan_nvg_rgbf";
end;

define inline-only function nvgRGBA (r, g, b, a) => (color)
  let c = make(<NVGcolor*>);
  %nvgRGBA(c, r, g, b, a);
  c
end;

define inline-only function nvgRGB (r, g, b) => (color)
  let c = make(<NVGcolor*>);
  %nvgRGB(c, r, g, b);
  c
end;

define inline-only function nvgRGBAf (r, g, b, a) => (color)
  let c = make(<NVGcolor*>);
  %nvgRGBAf(c, r, g, b, a);
  c
end;

define inline-only function nvgRGBf (r, g, b) => (color)
  let c = make(<NVGcolor*>);
  %nvgRGBf(c, r, g, b);
  c
end;
