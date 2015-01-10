#include "nanovg.h"

void dylan_nvg_rgba(NVGcolor *color, unsigned char r,
                    unsigned char b, unsigned char g,
                    unsigned char a)
{
  *color = nvgRGBA(r, b, g, a);
}

void dylan_nvg_rgb(NVGcolor *color, unsigned char r,
                   unsigned char b, unsigned char g)
{
  *color = nvgRGB(r, b, g);
}

void dylan_nvg_rgbaf(NVGcolor *color, float r, float b, float g, float a)
{
  *color = nvgRGBAf(r, b, g, a);
}

void dylan_nvg_rgbf(NVGcolor *color, float r, float b, float g)
{
  *color = nvgRGBf(r, b, g);
}
