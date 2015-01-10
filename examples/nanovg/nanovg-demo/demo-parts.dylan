Module: examples-nanovg-demo
Synopsis: NanoVG demo ported to Dylan
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define function draw-lines
    (vg :: <NVGcontext*>,
     x :: <float>, y :: <float>,
     w :: <float>, h :: <float>,
     t :: <float>)
 => ()
  let pad = 5.0;
  let s = w / 9.0 - pad * 2;
  let joins = vector($NVG-MITER, $NVG-ROUND, $NVG-BEVEL);
  let caps = vector($NVG-BUTT, $NVG-ROUND, $NVG-SQUARE);

  nvgSave(vg);
  let pts
   = vector(as(<single-float>, -s * 0.25 + cos(t * 0.3) * s * 0.5),
            as(<single-float>, sin(t * 0.3) * s * 0.5),
            as(<single-float>, -s * 0.25),
            as(<single-float>, 0.0),
            as(<single-float>, s * 0.25),
            as(<single-float>, 0.0),
            as(<single-float>, s * 0.25 + cos(-t * 0.3) * s * 0.5),
            as(<single-float>, sin(-t * 0.3) * s * 0.5));

  for (i from 0 below 3)
    for (j from 0 below 3)
      let fx = x + s * 0.5 + (i * 3 + j) / 9.0 * w + pad;
      let fy = y - s * 0.5 + pad;

      nvgLineCap(vg, caps[i]);
      nvgLineJoin(vg, joins[j]);

      nvgStrokeWidth(vg, s * 0.3);
      nvgStrokeColor(vg, nvgRGBA(0, 0, 0, 160));
      nvgBeginPath(vg);
      nvgMoveTo(vg, fx + pts[0], fy + pts[1]);
      nvgLineTo(vg, fx + pts[2], fy + pts[3]);
      nvgLineTo(vg, fx + pts[4], fy + pts[5]);
      nvgLineTo(vg, fx + pts[6], fy + pts[7]);
      nvgStroke(vg);

      nvgLineCap(vg, $NVG-BUTT);
      nvgLineJoin(vg, $NVG-BEVEL);

      nvgStrokeWidth(vg, 1.0);
      nvgStrokeColor(vg, nvgRGBA(0, 192, 255, 255));
      nvgBeginPath(vg);
      nvgMoveTo(vg, fx + pts[0], fy + pts[1]);
      nvgLineTo(vg, fx + pts[2], fy + pts[3]);
      nvgLineTo(vg, fx + pts[4], fy + pts[5]);
      nvgLineTo(vg, fx + pts[6], fy + pts[7]);
      nvgStroke(vg);
    end for;
  end for;

  nvgRestore(vg);
end function;

define function render-demo
    (vg :: <NVGcontext*>, mx :: <float>, my :: <float>,
     width :: <float>, height :: <float>,
     t :: <float>, data)
 => ()
  draw-lines(vg, 120.0, height - 50, 600.0, 50.0, t);
end;
