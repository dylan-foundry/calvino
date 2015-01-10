Module: examples-nanovg-demo
Synopsis: NanoVG demo ported to Dylan
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define function draw-eyes
    (vg :: <NVGcontext*>, x :: <float>, y :: <float>,
     w :: <float>, h :: <float>, mx :: <float>, my :: <float>,
     t :: <float>)
 => ()
  let ex :: <single-float> = w * 0.23;
  let ey :: <single-float> = h * 0.5;
  let lx :: <single-float> = x + ex;
  let ly :: <single-float> = y + ey;
  let rx :: <single-float> = x + w - ex;
  let ry :: <single-float> = y + ey;
  let br = as(<single-float>, if (ex < ey) ex else ey end * 0.5);
  let blink = as(<single-float>, 1 - (sin(t * 0.5) ^ 200) * 0.8);

  let bg = nvgLinearGradient(vg, x, y + h * 0.5, x + w * 0.1, y + h,
                             nvgRGBA(0, 0, 0, 32), nvgRGBA(0, 0, 0, 16));
  nvgBeginPath(vg);
  nvgEllipse(vg, lx + 3.0s0, ly + 16.0s0, ex, ey);
  nvgEllipse(vg, rx + 3.0s0, ry + 16.0s0, ex, ey);
  nvgFillPaint(vg, bg);
  nvgFill(vg);

  let bg = nvgLinearGradient(vg, x, y + h * 0.25, x + w * 0.1, y + h,
                             nvgRGBA(220, 220, 220, 255),
                             nvgRGBA(128, 128, 128, 255));
  nvgBeginPath(vg);
  nvgEllipse(vg, lx, ly, ex, ey);
  nvgEllipse(vg, rx, ry, ex, ey);
  nvgFillPaint(vg, bg);
  nvgFill(vg);

  let dx = as(<single-float>, (mx - rx) / (ex * 10.0));
  let dy = as(<single-float>, (my - ry) / (ey * 10.0));
  let d = as(<single-float>, sqrt(dx * dx + dy * dy));
  if (d > 1.0)
    dx := dx / d;
    dy := dy / d;
  end;
  dx := dx * ex * 0.4;
  dy := dy * ey * 0.5;
  nvgBeginPath(vg);
  nvgEllipse(vg, lx + dx, ly + dy + ey * 0.25 * (1 - blink), br, br * blink);
  nvgFillColor(vg, nvgRGBA(32, 32, 32, 255));
  nvgFill(vg);

  let dx = as(<single-float>, (mx - rx) / (ex * 10.0));
  let dy = as(<single-float>, (my - ry) / (ey * 10.0));
  let d = as(<single-float>, sqrt(dx * dx + dy * dy));
  if (d > 1.0)
    dx := dx / d;
    dy := dy / d;
  end;
  dx := dx * ex * 0.4;
  dy := dy * ey * 0.5;
  nvgBeginPath(vg);
  nvgEllipse(vg, rx + dx, ry + dy + ey * 0.25 * (1 - blink), br, br * blink);
  nvgFillColor(vg, nvgRGBA(32, 32, 32, 255));
  nvgFill(vg);

  let gloss = nvgRadialGradient(vg, lx - ex * 0.25, ly - ey * 0.5,
                                ex * 0.1, ex * 0.75,
                                nvgRGBA(255, 255, 255, 128),
                                nvgRGBA(255, 255, 255, 0));
  nvgBeginPath(vg);
  nvgEllipse(vg, lx, ly, ex, ey);
  nvgFillPaint(vg, gloss);
  nvgFill(vg);

  let gloss = nvgRadialGradient(vg, rx - ex * 0.25, ry - ey * 0.5,
                                ex * 0.1, ex * 0.75,
                                nvgRGBA(255, 255, 255, 128),
                                nvgRGBA(255, 255, 255, 0));
  nvgBeginPath(vg);
  nvgEllipse(vg, rx, ry, ex, ey);
  nvgFillPaint(vg, gloss);
  nvgFill(vg);
end;

define function draw-graph
    (vg :: <NVGcontext*>, x :: <single-float>, y :: <single-float>,
     w :: <single-float>, h :: <single-float>, t :: <single-float>)
 => ()
  let dx = w / 5.0;

  let samples = vector(
    (1 + sin(t * 1.2345s0 + cos(t * 0.33457s0) * 0.44s0)) * 0.5s0,
    (1 + sin(t * 0.68363s0 + cos(t * 1.3s0) * 1.55s0)) * 0.5s0,
    (1 + sin(t * 1.1642s0 + cos(t * 0.33457s0) * 1.24s0)) * 0.5s0,
    (1 + sin(t * 0.56345s0 + cos(t * 1.63s0) * 0.14s0)) * 0.5s0,
    (1 + sin(t * 1.6245s0 + cos(t * 0.254s0) * 0.3s0)) * 0.5s0,
    (1 + sin(t * 0.345s0 + cos(t * 0.03s0) * 0.6s0)) * 0.5s0
  );

  let sx = make(<vector>, size: 8);
  let sy = make(<vector>, size: 8);
  for (i from 0 below 6)
    sx[i] := x + i * dx;
    sy[i] := y + h * samples[i] * 0.8s0;
  end;

  // Graph background
  let bg = nvgLinearGradient(vg, x, y, x, y + h,
                             nvgRGBA(0, 160, 192, 0),
                             nvgRGBA(0, 160, 192, 64));
  nvgBeginPath(vg);
  nvgMoveTo(vg, sx[0], sy[0]);
  for (i from 1 below 6)
    nvgBezierTo(vg, sx[i - 1] + dx * 0.5s0, sy[i - 1],
                sx[i] - dx * 0.5s0, sy[i], sx[i], sy[i]);
  end;
  nvgLineTo(vg, x + w, y + h);
  nvgLineTo(vg, x, y + h);
  nvgFillPaint(vg, bg);
  nvgFill(vg);

  // Graph line
  nvgBeginPath(vg);
  nvgMoveTo(vg, sx[0], sy[0] + 2);
  for (i from 1 below 6)
    nvgBezierTo(vg, sx[i - 1] + dx * 0.5s0, sy[i - 1] + 2,
                sx[i] - dx * 0.5s0, sy[i] + 2, sx[i], sy[i] + 2);
  end;
  nvgStrokeColor(vg, nvgRGBA(0, 0, 0, 32));
  nvgStrokeWidth(vg, 3.0s0);
  nvgStroke(vg);

  nvgBeginPath(vg);
  nvgMoveTo(vg, sx[0], sy[0]);
  for (i from 1 below 6)
    nvgBezierTo(vg, sx[i - 1] + dx * 0.5s0, sy[i - 1], sx[i] - dx * 0.5s0,
                sy[i], sx[i], sy[i]);
  end;
  nvgStrokeColor(vg, nvgRGBA(0, 160, 192, 255));
  nvgStrokeWidth(vg, 3.0s0);
  nvgStroke(vg);

  // Graph sample pos
  for (i from 1 below 6)
    let bg = nvgRadialGradient(vg, sx[i], sy[i] + 2, 3.0s0, 8.0s0,
                               nvgRGBA(0, 0, 0, 32), nvgRGBA(0, 0, 0, 0));
    nvgBeginPath(vg);
    nvgRect(vg, sx[i] - 10, sy[i] - 10 + 2, 20.0s0, 20.0s0);
    nvgFillPaint(vg, bg);
    nvgFill(vg);
  end;

  nvgBeginPath(vg);
  for (i from 0 below 6)
    nvgCircle(vg, sx[i], sy[i], 4.0s0);
  end;
  nvgFillColor(vg, nvgRGBA(0, 160, 192, 255));
  nvgFill(vg);
  nvgBeginPath(vg);
  for (i from 0 below 6)
    nvgCircle(vg, sx[i], sy[i], 2.0s0);
  end;
  nvgFillColor(vg, nvgRGBA(220, 220, 220, 255));
  nvgFill(vg);

  nvgStrokeWidth(vg, 1.0s0);
end;

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
    (vg :: <NVGcontext*>, mx :: <single-float>, my :: <single-float>,
     width :: <single-float>, height :: <single-float>,
     t :: <single-float>, data)
 => ()
  draw-eyes(vg, width - 250, 50.0, 150.0, 100.0, mx, my, t);
  draw-graph(vg, 0.0, height / 2, width, height / 2, t);
  draw-lines(vg, 120.0, height - 50, 600.0, 50.0, t);
end;
