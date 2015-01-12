module: calvino-nanovg
synopsis: bindings for the nanovg library
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define interface
  #include {
      "nanovg.h"
    },
    import: all,
    inline-functions: inline,
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

define inline C-function %nvgRGBA
  parameter color :: <NVGcolor*>;
  parameter r :: <C-unsigned-char>;
  parameter g :: <C-unsigned-char>;
  parameter b :: <C-unsigned-char>;
  parameter a :: <C-unsigned-char>;
  c-name: "dylan_nvgRGBA";
end;

define inline function nvgRGBA (r, g, b, a) => (color)
  let c = make(<NVGcolor*>);
  %nvgRGBA(c, r, g, b, a);
  c
end;

define inline C-function %nvgRGB
  parameter color :: <NVGcolor*>;
  parameter r :: <C-unsigned-char>;
  parameter g :: <C-unsigned-char>;
  parameter b :: <C-unsigned-char>;
  c-name: "dylan_nvgRGB";
end;

define inline function nvgRGB (r, g, b) => (color)
  let c = make(<NVGcolor*>);
  %nvgRGB(c, r, g, b);
  c
end;

define inline C-function %nvgRGBAf
  parameter color :: <NVGcolor*>;
  parameter r :: <C-float>;
  parameter g :: <C-float>;
  parameter b :: <C-float>;
  parameter a :: <C-float>;
  c-name: "dylan_nvgRGBAf";
end;

define inline function nvgRGBAf (r, g, b, a) => (color)
  let c = make(<NVGcolor*>);
  %nvgRGBAf(c, r, g, b, a);
  c
end;

define inline C-function %nvgRGBf
  parameter color :: <NVGcolor*>;
  parameter r :: <C-float>;
  parameter g :: <C-float>;
  parameter b :: <C-float>;
  c-name: "dylan_nvgRGBf";
end;

define inline function nvgRGBf (r, g, b) => (color)
  let c = make(<NVGcolor*>);
  %nvgRGBf(c, r, g, b);
  c
end;

define inline C-function %nvgLerpRGBA
  parameter res :: <NVGcolor*>;
  parameter c0 :: <NVGcolor*>;
  parameter c1 :: <NVGcolor*>;
  parameter u :: <C-float>;
  c-name: "dylan_nvgLerpRGBA";
end;

define inline function nvgLerpRGBA (c0, c1, u) => (color)
  let c = make(<NVGcolor*>);
  %nvgLerpRGBA(c, c0, c1, u);
  c
end;

define inline C-function %nvgTransRGBA
  parameter res :: <NVGcolor*>;
  parameter c0 :: <NVGcolor*>;
  parameter a :: <C-unsigned-char>;
  c-name: "dylan_nvgTransRGBA";
end;

define inline function nvgTransRGBA (c0, a) => (color)
  let c = make(<NVGcolor*>);
  %nvgTransRGBA(c, c0, a);
  c
end;

define inline C-function %nvgTransRGBAf
  parameter res :: <NVGcolor*>;
  parameter c0 :: <NVGcolor*>;
  parameter a :: <C-float>;
  c-name: "dylan_nvgTransRGBAf";
end;

define inline function nvgTransRGBAf (c0, a) => (color)
  let c = make(<NVGcolor*>);
  %nvgTransRGBAf(c, c0, a);
  c
end;

define inline C-function %nvgHSL
  parameter res :: <NVGcolor*>;
  parameter h :: <C-float>;
  parameter s :: <C-float>;
  parameter l :: <C-float>;
  c-name: "dylan_nvgHSL";
end;

define inline function nvgHSL (h, s, l) => (color)
  let c = make(<NVGcolor*>);
  %nvgHSL(c, h, s, l);
  c
end;

define inline C-function %nvgHSLA
  parameter res :: <NVGcolor*>;
  parameter h :: <C-float>;
  parameter s :: <C-float>;
  parameter l :: <C-float>;
  parameter a :: <C-unsigned-char>;
  c-name: "dylan_nvgHSLA";
end;

define inline function nvgHSLA (h, s, l, a) => (color)
  let c = make(<NVGcolor*>);
  %nvgHSLA(c, h, s, l, a);
  c
end;

define inline C-function %nvgLinearGradient
  parameter res :: <NVGpaint*>;
  parameter ctx :: <NVGcontext*>;
  parameter sx :: <C-float>;
  parameter sy :: <C-float>;
  parameter ex :: <C-float>;
  parameter ey :: <C-float>;
  parameter icol :: <NVGcolor*>;
  parameter ocol :: <NVGcolor*>;
  c-name: "dylan_nvgLinearGradient";
end;

define inline function nvgLinearGradient
    (ctx, sx, sy, ex, ey, icol, ocol)
 => (paint)
  let p = make(<NVGpaint*>);
  %nvgLinearGradient(p, ctx, sx, sy, ex, ey, icol, ocol);
  p
end;

define inline C-function %nvgBoxGradient
  parameter res :: <NVGpaint*>;
  parameter ctx :: <NVGcontext*>;
  parameter x :: <C-float>;
  parameter y :: <C-float>;
  parameter w :: <C-float>;
  parameter h :: <C-float>;
  parameter r :: <C-float>;
  parameter f :: <C-float>;
  parameter icol :: <NVGcolor*>;
  parameter ocol :: <NVGcolor*>;
  c-name: "dylan_nvgBoxGradient";
end;

define inline function nvgBoxGradient
    (ctx, x, y, w, h, r, f, icol, ocol)
 => (paint)
  let p = make(<NVGpaint*>);
  %nvgBoxGradient(p, ctx, x, y, w, h, r, f, icol, ocol);
  p
end;

define inline C-function %nvgRadialGradient
  parameter res :: <NVGpaint*>;
  parameter ctx :: <NVGcontext*>;
  parameter cx :: <C-float>;
  parameter cy :: <C-float>;
  parameter inr :: <C-float>;
  parameter outr :: <C-float>;
  parameter icol :: <NVGcolor*>;
  parameter ocol :: <NVGcolor*>;
  c-name: "dylan_nvgRadialGradient";
end;

define inline function nvgRadialGradient
    (ctx, cx, cy, inr, outr, icol, ocol)
 => (paint)
  let p = make(<NVGpaint*>);
  %nvgRadialGradient(p, ctx, cx, cy, inr, outr, icol, ocol);
  p
end;

define inline C-function %nvgImagePattern
  parameter res :: <NVGpaint*>;
  parameter ctx :: <NVGcontext*>;
  parameter ox :: <C-float>;
  parameter oy :: <C-float>;
  parameter ex :: <C-float>;
  parameter ey :: <C-float>;
  parameter angle :: <C-float>;
  parameter image :: <C-signed-int>;
  parameter alpha :: <C-float>;
  c-name: "dylan_nvgImagePattern";
end;

define inline function nvgImagePattern
    (ctx, ox, oy, ex, ey, angle, image, alpha)
 => (paint)
  let p = make(<NVGpaint*>);
  %nvgImagePattern(p, ctx, ox, oy, ex, ey, angle, image, alpha);
  p
end;
