#include "nanovg.h"

void dylan_nvgRGBA(NVGcolor *color, unsigned char r,
                    unsigned char b, unsigned char g,
                    unsigned char a)
{
  *color = nvgRGBA(r, b, g, a);
}

void dylan_nvgRGB(NVGcolor *color, unsigned char r,
                   unsigned char b, unsigned char g)
{
  *color = nvgRGB(r, b, g);
}

void dylan_nvgRGBAf(NVGcolor *color, float r, float b, float g, float a)
{
  *color = nvgRGBAf(r, b, g, a);
}

void dylan_nvgRGBf(NVGcolor *color, float r, float b, float g)
{
  *color = nvgRGBf(r, b, g);
}

void dylan_nvgLerpRGBA(NVGcolor *res, NVGcolor *c0, NVGcolor *c1, float u)
{
  *res = nvgLerpRGBA(*c0, *c1, u);
}

void dylan_nvgTransRGBA(NVGcolor *res, NVGcolor *c0, unsigned char a)
{
  *res = nvgTransRGBA(*c0, a);
}

void dylan_nvgTransRGBAf(NVGcolor *res, NVGcolor *c0, float a)
{
  *res = nvgTransRGBAf(*c0, a);
}

void dylan_nvgHSL(NVGcolor *res, float h, float s, float l)
{
  *res = nvgHSL(h, s, l);
}

void dylan_nvgHSLA(NVGcolor *res, float h, float s, float l, unsigned char a)
{
  *res = nvgHSLA(h, s, l, a);
}

void dylan_nvgLinearGradient(NVGpaint *res, NVGcontext* ctx, float sx,
                             float sy, float ex, float ey,
                             NVGcolor *icol, NVGcolor *ocol)
{
  *res = nvgLinearGradient(ctx, sx, sy, ex, ey, *icol, *ocol);
}

void dylan_nvgBoxGradient(NVGpaint *res, NVGcontext* ctx, float x,
                          float y, float w, float h, float r,
                          float f, NVGcolor *icol, NVGcolor *ocol)
{
  *res = nvgBoxGradient(ctx, x, y, w, h, r, f, *icol, *ocol);
}

void dylan_nvgRadialGradient(NVGpaint *res, NVGcontext* ctx, float cx,
                             float cy, float inr, float outr,
                             NVGcolor *icol, NVGcolor *ocol)
{
  *res = nvgRadialGradient(ctx, cx, cy, inr, outr, *icol, *ocol);
}

void dylan_nvgImagePattern(NVGpaint *res, NVGcontext* ctx, float ox,
                           float oy, float ex, float ey, float angle,
                           int image, float alpha)
{
  *res = nvgImagePattern(ctx, ox, oy, ex, ey, angle, image, alpha);
}
