module: calvino-nanovg
synopsis: bindings for the nanovg library
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define C-struct <NVGcontext>
end;

define C-struct <anonymous-0>
  slot anonymous-0$r :: <C-float>;
  slot anonymous-0$g :: <C-float>;
  slot anonymous-0$b :: <C-float>;
  slot anonymous-0$a :: <C-float>;
end;

define C-pointer-type <float*> => <C-float>;
define constant <float<@4>> = <float*>;
define C-union <anonymous-1>
  array slot anonymous-1$rgba :: <C-float>, length: 4;
  slot anonymous-1$_anon-field :: <anonymous-0>;
end;

define C-struct <NVGcolor>
  slot NVGcolor$_anon-field :: <anonymous-1>;
end;

define constant <float<@6>> = <float*>;
define constant <float<@2>> = <float*>;
define C-struct <NVGpaint>
  array slot NVGpaint$xform :: <C-float>, length: 6;
  array slot NVGpaint$extent :: <C-float>, length: 2;
  slot NVGpaint$radius :: <C-float>;
  slot NVGpaint$feather :: <C-float>;
  slot NVGpaint$innerColor :: <NVGcolor>;
  slot NVGpaint$outerColor :: <NVGcolor>;
  slot NVGpaint$image :: <C-signed-int>;
end;

define constant <NVGwinding> = <C-int>;
define constant $NVG-CCW = 1;
define constant $NVG-CW = 2;

define constant <NVGsolidity> = <C-int>;
define constant $NVG-SOLID = 1;
define constant $NVG-HOLE = 2;

define constant <NVGlineCap> = <C-int>;
define constant $NVG-BUTT = 0;
define constant $NVG-ROUND = 1;
define constant $NVG-SQUARE = 2;
define constant $NVG-BEVEL = 3;
define constant $NVG-MITER = 4;

define constant <NVGalign> = <C-int>;
define constant $NVG-ALIGN-LEFT = 1;
define constant $NVG-ALIGN-CENTER = 2;
define constant $NVG-ALIGN-RIGHT = 4;
define constant $NVG-ALIGN-TOP = 8;
define constant $NVG-ALIGN-MIDDLE = 16;
define constant $NVG-ALIGN-BOTTOM = 32;
define constant $NVG-ALIGN-BASELINE = 64;

define C-pointer-type <c-string> => <C-signed-char>;
define C-struct <NVGglyphPosition>
  slot NVGglyphPosition$str :: <c-string>;
  slot NVGglyphPosition$x :: <C-float>;
  slot NVGglyphPosition$minx :: <C-float>;
  slot NVGglyphPosition$maxx :: <C-float>;
end;

define C-struct <NVGtextRow>
  slot NVGtextRow$start :: <c-string>;
  slot NVGtextRow$end :: <c-string>;
  slot NVGtextRow$next :: <c-string>;
  slot NVGtextRow$width :: <C-float>;
  slot NVGtextRow$minx :: <C-float>;
  slot NVGtextRow$maxx :: <C-float>;
end;

define constant <NVGimageFlags> = <C-int>;
define constant $NVG-IMAGE-GENERATE-MIPMAPS = 1;
define constant $NVG-IMAGE-REPEATX = 2;
define constant $NVG-IMAGE-REPEATY = 4;
define constant $NVG-IMAGE-FLIPY = 8;
define constant $NVG-IMAGE-PREMULTIPLIED = 16;

define C-pointer-type <NVGcontext*> => <NVGcontext>;
define inline C-function nvgBeginFrame
  input parameter ctx_ :: <NVGcontext*>;
  input parameter windowWidth_ :: <C-signed-int>;
  input parameter windowHeight_ :: <C-signed-int>;
  input parameter devicePixelRatio_ :: <C-float>;
  c-name: "nvgBeginFrame";
end;

define inline C-function nvgCancelFrame
  input parameter ctx_ :: <NVGcontext*>;
  c-name: "nvgCancelFrame";
end;

define inline C-function nvgEndFrame
  input parameter ctx_ :: <NVGcontext*>;
  c-name: "nvgEndFrame";
end;

define inline C-function nvgSave
  input parameter ctx_ :: <NVGcontext*>;
  c-name: "nvgSave";
end;

define inline C-function nvgRestore
  input parameter ctx_ :: <NVGcontext*>;
  c-name: "nvgRestore";
end;

define inline C-function nvgReset
  input parameter ctx_ :: <NVGcontext*>;
  c-name: "nvgReset";
end;

define inline C-function nvgStrokeColor
  input parameter ctx_ :: <NVGcontext*>;
  input parameter color_ :: <NVGcolor>;
  c-name: "nvgStrokeColor";
end;

define inline C-function nvgStrokePaint
  input parameter ctx_ :: <NVGcontext*>;
  input parameter paint_ :: <NVGpaint>;
  c-name: "nvgStrokePaint";
end;

define inline C-function nvgFillColor
  input parameter ctx_ :: <NVGcontext*>;
  input parameter color_ :: <NVGcolor>;
  c-name: "nvgFillColor";
end;

define inline C-function nvgFillPaint
  input parameter ctx_ :: <NVGcontext*>;
  input parameter paint_ :: <NVGpaint>;
  c-name: "nvgFillPaint";
end;

define inline C-function nvgMiterLimit
  input parameter ctx_ :: <NVGcontext*>;
  input parameter limit_ :: <C-float>;
  c-name: "nvgMiterLimit";
end;

define inline C-function nvgStrokeWidth
  input parameter ctx_ :: <NVGcontext*>;
  input parameter size_ :: <C-float>;
  c-name: "nvgStrokeWidth";
end;

define inline C-function nvgLineCap
  input parameter ctx_ :: <NVGcontext*>;
  input parameter cap_ :: <C-signed-int>;
  c-name: "nvgLineCap";
end;

define inline C-function nvgLineJoin
  input parameter ctx_ :: <NVGcontext*>;
  input parameter join_ :: <C-signed-int>;
  c-name: "nvgLineJoin";
end;

define inline C-function nvgGlobalAlpha
  input parameter ctx_ :: <NVGcontext*>;
  input parameter alpha_ :: <C-float>;
  c-name: "nvgGlobalAlpha";
end;

define inline C-function nvgResetTransform
  input parameter ctx_ :: <NVGcontext*>;
  c-name: "nvgResetTransform";
end;

define inline C-function nvgTransform
  input parameter ctx_ :: <NVGcontext*>;
  input parameter a_ :: <C-float>;
  input parameter b_ :: <C-float>;
  input parameter c_ :: <C-float>;
  input parameter d_ :: <C-float>;
  input parameter e_ :: <C-float>;
  input parameter f_ :: <C-float>;
  c-name: "nvgTransform";
end;

define inline C-function nvgTranslate
  input parameter ctx_ :: <NVGcontext*>;
  input parameter x_ :: <C-float>;
  input parameter y_ :: <C-float>;
  c-name: "nvgTranslate";
end;

define inline C-function nvgRotate
  input parameter ctx_ :: <NVGcontext*>;
  input parameter angle_ :: <C-float>;
  c-name: "nvgRotate";
end;

define inline C-function nvgSkewX
  input parameter ctx_ :: <NVGcontext*>;
  input parameter angle_ :: <C-float>;
  c-name: "nvgSkewX";
end;

define inline C-function nvgSkewY
  input parameter ctx_ :: <NVGcontext*>;
  input parameter angle_ :: <C-float>;
  c-name: "nvgSkewY";
end;

define inline C-function nvgScale
  input parameter ctx_ :: <NVGcontext*>;
  input parameter x_ :: <C-float>;
  input parameter y_ :: <C-float>;
  c-name: "nvgScale";
end;

define inline C-function nvgCurrentTransform
  input parameter ctx_ :: <NVGcontext*>;
  input parameter xform_ :: <float*>;
  c-name: "nvgCurrentTransform";
end;

define inline C-function nvgTransformIdentity
  input parameter dst_ :: <float*>;
  c-name: "nvgTransformIdentity";
end;

define inline C-function nvgTransformTranslate
  input parameter dst_ :: <float*>;
  input parameter tx_ :: <C-float>;
  input parameter ty_ :: <C-float>;
  c-name: "nvgTransformTranslate";
end;

define inline C-function nvgTransformScale
  input parameter dst_ :: <float*>;
  input parameter sx_ :: <C-float>;
  input parameter sy_ :: <C-float>;
  c-name: "nvgTransformScale";
end;

define inline C-function nvgTransformRotate
  input parameter dst_ :: <float*>;
  input parameter a_ :: <C-float>;
  c-name: "nvgTransformRotate";
end;

define inline C-function nvgTransformSkewX
  input parameter dst_ :: <float*>;
  input parameter a_ :: <C-float>;
  c-name: "nvgTransformSkewX";
end;

define inline C-function nvgTransformSkewY
  input parameter dst_ :: <float*>;
  input parameter a_ :: <C-float>;
  c-name: "nvgTransformSkewY";
end;

define inline C-function nvgTransformMultiply
  input parameter dst_ :: <float*>;
  input parameter src_ :: <float*>;
  c-name: "nvgTransformMultiply";
end;

define inline C-function nvgTransformPremultiply
  input parameter dst_ :: <float*>;
  input parameter src_ :: <float*>;
  c-name: "nvgTransformPremultiply";
end;

define inline C-function nvgTransformInverse
  input parameter dst_ :: <float*>;
  input parameter src_ :: <float*>;
  result res :: <C-signed-int>;
  c-name: "nvgTransformInverse";
end;

define inline C-function nvgTransformPoint
  input parameter dstx_ :: <float*>;
  input parameter dsty_ :: <float*>;
  input parameter xform_ :: <float*>;
  input parameter srcx_ :: <C-float>;
  input parameter srcy_ :: <C-float>;
  c-name: "nvgTransformPoint";
end;

define inline C-function nvgDegToRad
  input parameter deg_ :: <C-float>;
  result res :: <C-float>;
  c-name: "nvgDegToRad";
end;

define inline C-function nvgRadToDeg
  input parameter rad_ :: <C-float>;
  result res :: <C-float>;
  c-name: "nvgRadToDeg";
end;

define inline C-function nvgCreateImage
  input parameter ctx_ :: <NVGcontext*>;
  input parameter filename_ :: <c-string>;
  input parameter imageFlags_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "nvgCreateImage";
end;

define C-pointer-type <unsigned-char*> => <C-unsigned-char>;
define inline C-function nvgCreateImageMem
  input parameter ctx_ :: <NVGcontext*>;
  input parameter imageFlags_ :: <C-signed-int>;
  input parameter data_ :: <unsigned-char*>;
  input parameter ndata_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "nvgCreateImageMem";
end;

define inline C-function nvgCreateImageRGBA
  input parameter ctx_ :: <NVGcontext*>;
  input parameter w_ :: <C-signed-int>;
  input parameter h_ :: <C-signed-int>;
  input parameter imageFlags_ :: <C-signed-int>;
  input parameter data_ :: <unsigned-char*>;
  result res :: <C-signed-int>;
  c-name: "nvgCreateImageRGBA";
end;

define inline C-function nvgUpdateImage
  input parameter ctx_ :: <NVGcontext*>;
  input parameter image_ :: <C-signed-int>;
  input parameter data_ :: <unsigned-char*>;
  c-name: "nvgUpdateImage";
end;

define C-pointer-type <int*> => <C-signed-int>;
define inline C-function nvgImageSize
  input parameter ctx_ :: <NVGcontext*>;
  input parameter image_ :: <C-signed-int>;
  input parameter w_ :: <int*>;
  input parameter h_ :: <int*>;
  c-name: "nvgImageSize";
end;

define inline C-function nvgDeleteImage
  input parameter ctx_ :: <NVGcontext*>;
  input parameter image_ :: <C-signed-int>;
  c-name: "nvgDeleteImage";
end;

define inline C-function nvgScissor
  input parameter ctx_ :: <NVGcontext*>;
  input parameter x_ :: <C-float>;
  input parameter y_ :: <C-float>;
  input parameter w_ :: <C-float>;
  input parameter h_ :: <C-float>;
  c-name: "nvgScissor";
end;

define inline C-function nvgIntersectScissor
  input parameter ctx_ :: <NVGcontext*>;
  input parameter x_ :: <C-float>;
  input parameter y_ :: <C-float>;
  input parameter w_ :: <C-float>;
  input parameter h_ :: <C-float>;
  c-name: "nvgIntersectScissor";
end;

define inline C-function nvgResetScissor
  input parameter ctx_ :: <NVGcontext*>;
  c-name: "nvgResetScissor";
end;

define inline C-function nvgBeginPath
  input parameter ctx_ :: <NVGcontext*>;
  c-name: "nvgBeginPath";
end;

define inline C-function nvgMoveTo
  input parameter ctx_ :: <NVGcontext*>;
  input parameter x_ :: <C-float>;
  input parameter y_ :: <C-float>;
  c-name: "nvgMoveTo";
end;

define inline C-function nvgLineTo
  input parameter ctx_ :: <NVGcontext*>;
  input parameter x_ :: <C-float>;
  input parameter y_ :: <C-float>;
  c-name: "nvgLineTo";
end;

define inline C-function nvgBezierTo
  input parameter ctx_ :: <NVGcontext*>;
  input parameter c1x_ :: <C-float>;
  input parameter c1y_ :: <C-float>;
  input parameter c2x_ :: <C-float>;
  input parameter c2y_ :: <C-float>;
  input parameter x_ :: <C-float>;
  input parameter y_ :: <C-float>;
  c-name: "nvgBezierTo";
end;

define inline C-function nvgQuadTo
  input parameter ctx_ :: <NVGcontext*>;
  input parameter cx_ :: <C-float>;
  input parameter cy_ :: <C-float>;
  input parameter x_ :: <C-float>;
  input parameter y_ :: <C-float>;
  c-name: "nvgQuadTo";
end;

define inline C-function nvgArcTo
  input parameter ctx_ :: <NVGcontext*>;
  input parameter x1_ :: <C-float>;
  input parameter y1_ :: <C-float>;
  input parameter x2_ :: <C-float>;
  input parameter y2_ :: <C-float>;
  input parameter radius_ :: <C-float>;
  c-name: "nvgArcTo";
end;

define inline C-function nvgClosePath
  input parameter ctx_ :: <NVGcontext*>;
  c-name: "nvgClosePath";
end;

define inline C-function nvgPathWinding
  input parameter ctx_ :: <NVGcontext*>;
  input parameter dir_ :: <C-signed-int>;
  c-name: "nvgPathWinding";
end;

define inline C-function nvgArc
  input parameter ctx_ :: <NVGcontext*>;
  input parameter cx_ :: <C-float>;
  input parameter cy_ :: <C-float>;
  input parameter r_ :: <C-float>;
  input parameter a0_ :: <C-float>;
  input parameter a1_ :: <C-float>;
  input parameter dir_ :: <C-signed-int>;
  c-name: "nvgArc";
end;

define inline C-function nvgRect
  input parameter ctx_ :: <NVGcontext*>;
  input parameter x_ :: <C-float>;
  input parameter y_ :: <C-float>;
  input parameter w_ :: <C-float>;
  input parameter h_ :: <C-float>;
  c-name: "nvgRect";
end;

define inline C-function nvgRoundedRect
  input parameter ctx_ :: <NVGcontext*>;
  input parameter x_ :: <C-float>;
  input parameter y_ :: <C-float>;
  input parameter w_ :: <C-float>;
  input parameter h_ :: <C-float>;
  input parameter r_ :: <C-float>;
  c-name: "nvgRoundedRect";
end;

define inline C-function nvgEllipse
  input parameter ctx_ :: <NVGcontext*>;
  input parameter cx_ :: <C-float>;
  input parameter cy_ :: <C-float>;
  input parameter rx_ :: <C-float>;
  input parameter ry_ :: <C-float>;
  c-name: "nvgEllipse";
end;

define inline C-function nvgCircle
  input parameter ctx_ :: <NVGcontext*>;
  input parameter cx_ :: <C-float>;
  input parameter cy_ :: <C-float>;
  input parameter r_ :: <C-float>;
  c-name: "nvgCircle";
end;

define inline C-function nvgFill
  input parameter ctx_ :: <NVGcontext*>;
  c-name: "nvgFill";
end;

define inline C-function nvgStroke
  input parameter ctx_ :: <NVGcontext*>;
  c-name: "nvgStroke";
end;

define inline C-function nvgCreateFont
  input parameter ctx_ :: <NVGcontext*>;
  input parameter name_ :: <c-string>;
  input parameter filename_ :: <c-string>;
  result res :: <C-signed-int>;
  c-name: "nvgCreateFont";
end;

define inline C-function nvgCreateFontMem
  input parameter ctx_ :: <NVGcontext*>;
  input parameter name_ :: <c-string>;
  input parameter data_ :: <unsigned-char*>;
  input parameter ndata_ :: <C-signed-int>;
  input parameter freeData_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "nvgCreateFontMem";
end;

define inline C-function nvgFindFont
  input parameter ctx_ :: <NVGcontext*>;
  input parameter name_ :: <c-string>;
  result res :: <C-signed-int>;
  c-name: "nvgFindFont";
end;

define inline C-function nvgFontSize
  input parameter ctx_ :: <NVGcontext*>;
  input parameter size_ :: <C-float>;
  c-name: "nvgFontSize";
end;

define inline C-function nvgFontBlur
  input parameter ctx_ :: <NVGcontext*>;
  input parameter blur_ :: <C-float>;
  c-name: "nvgFontBlur";
end;

define inline C-function nvgTextLetterSpacing
  input parameter ctx_ :: <NVGcontext*>;
  input parameter spacing_ :: <C-float>;
  c-name: "nvgTextLetterSpacing";
end;

define inline C-function nvgTextLineHeight
  input parameter ctx_ :: <NVGcontext*>;
  input parameter lineHeight_ :: <C-float>;
  c-name: "nvgTextLineHeight";
end;

define inline C-function nvgTextAlign
  input parameter ctx_ :: <NVGcontext*>;
  input parameter align_ :: <C-signed-int>;
  c-name: "nvgTextAlign";
end;

define inline C-function nvgFontFaceId
  input parameter ctx_ :: <NVGcontext*>;
  input parameter font_ :: <C-signed-int>;
  c-name: "nvgFontFaceId";
end;

define inline C-function nvgFontFace
  input parameter ctx_ :: <NVGcontext*>;
  input parameter font_ :: <c-string>;
  c-name: "nvgFontFace";
end;

define inline C-function nvgText
  input parameter ctx_ :: <NVGcontext*>;
  input parameter x_ :: <C-float>;
  input parameter y_ :: <C-float>;
  input parameter string_ :: <c-string>;
  input parameter end_ :: <c-string>;
  result res :: <C-float>;
  c-name: "nvgText";
end;

define inline C-function nvgTextBox
  input parameter ctx_ :: <NVGcontext*>;
  input parameter x_ :: <C-float>;
  input parameter y_ :: <C-float>;
  input parameter breakRowWidth_ :: <C-float>;
  input parameter string_ :: <c-string>;
  input parameter end_ :: <c-string>;
  c-name: "nvgTextBox";
end;

define inline C-function nvgTextBounds
  input parameter ctx_ :: <NVGcontext*>;
  input parameter x_ :: <C-float>;
  input parameter y_ :: <C-float>;
  input parameter string_ :: <c-string>;
  input parameter end_ :: <c-string>;
  input parameter bounds_ :: <float*>;
  result res :: <C-float>;
  c-name: "nvgTextBounds";
end;

define inline C-function nvgTextBoxBounds
  input parameter ctx_ :: <NVGcontext*>;
  input parameter x_ :: <C-float>;
  input parameter y_ :: <C-float>;
  input parameter breakRowWidth_ :: <C-float>;
  input parameter string_ :: <c-string>;
  input parameter end_ :: <c-string>;
  input parameter bounds_ :: <float*>;
  c-name: "nvgTextBoxBounds";
end;

define C-pointer-type <NVGglyphPosition*> => <NVGglyphPosition>;
define inline C-function nvgTextGlyphPositions
  input parameter ctx_ :: <NVGcontext*>;
  input parameter x_ :: <C-float>;
  input parameter y_ :: <C-float>;
  input parameter string_ :: <c-string>;
  input parameter end_ :: <c-string>;
  input parameter positions_ :: <NVGglyphPosition*>;
  input parameter maxPositions_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "nvgTextGlyphPositions";
end;

define inline C-function nvgTextMetrics
  input parameter ctx_ :: <NVGcontext*>;
  input parameter ascender_ :: <float*>;
  input parameter descender_ :: <float*>;
  input parameter lineh_ :: <float*>;
  c-name: "nvgTextMetrics";
end;

define C-pointer-type <NVGtextRow*> => <NVGtextRow>;
define inline C-function nvgTextBreakLines
  input parameter ctx_ :: <NVGcontext*>;
  input parameter string_ :: <c-string>;
  input parameter end_ :: <c-string>;
  input parameter breakRowWidth_ :: <C-float>;
  input parameter rows_ :: <NVGtextRow*>;
  input parameter maxRows_ :: <C-signed-int>;
  result res :: <C-signed-int>;
  c-name: "nvgTextBreakLines";
end;

define constant <NVGtexture> = <C-int>;
define constant $NVG-TEXTURE-ALPHA = 1;
define constant $NVG-TEXTURE-RGBA = 2;

define C-struct <NVGscissor>
  array slot NVGscissor$xform :: <C-float>, length: 6;
  array slot NVGscissor$extent :: <C-float>, length: 2;
end;

define C-struct <NVGvertex>
  slot NVGvertex$x :: <C-float>;
  slot NVGvertex$y :: <C-float>;
  slot NVGvertex$u :: <C-float>;
  slot NVGvertex$v :: <C-float>;
end;

define C-pointer-type <NVGvertex*> => <NVGvertex>;
define C-struct <NVGpath>
  slot NVGpath$first :: <C-signed-int>;
  slot NVGpath$count :: <C-signed-int>;
  slot NVGpath$closed :: <C-unsigned-char>;
  slot NVGpath$nbevel :: <C-signed-int>;
  slot NVGpath$fill :: <NVGvertex*>;
  slot NVGpath$nfill :: <C-signed-int>;
  slot NVGpath$stroke :: <NVGvertex*>;
  slot NVGpath$nstroke :: <C-signed-int>;
  slot NVGpath$winding :: <C-signed-int>;
  slot NVGpath$convex :: <C-signed-int>;
end;

define constant <renderCreate> = <C-function-pointer>;
define constant <renderCreateTexture> = <C-function-pointer>;
define constant <renderDeleteTexture> = <C-function-pointer>;
define constant <renderUpdateTexture> = <C-function-pointer>;
define constant <renderGetTextureSize> = <C-function-pointer>;
define constant <renderViewport> = <C-function-pointer>;
define constant <renderCancel> = <C-function-pointer>;
define constant <renderFlush> = <C-function-pointer>;
define C-pointer-type <NVGpaint*> => <NVGpaint>;
define C-pointer-type <NVGscissor*> => <NVGscissor>;
define C-pointer-type <NVGpath*> => <NVGpath>;
define constant <renderFill> = <C-function-pointer>;
define constant <renderStroke> = <C-function-pointer>;
define constant <renderTriangles> = <C-function-pointer>;
define constant <renderDelete> = <C-function-pointer>;
define C-struct <NVGparams>
  slot NVGparams$userPtr :: <C-void*>;
  slot NVGparams$edgeAntiAlias :: <C-signed-int>;
  slot NVGparams$renderCreate :: <renderCreate>;
  slot NVGparams$renderCreateTexture :: <renderCreateTexture>;
  slot NVGparams$renderDeleteTexture :: <renderDeleteTexture>;
  slot NVGparams$renderUpdateTexture :: <renderUpdateTexture>;
  slot NVGparams$renderGetTextureSize :: <renderGetTextureSize>;
  slot NVGparams$renderViewport :: <renderViewport>;
  slot NVGparams$renderCancel :: <renderCancel>;
  slot NVGparams$renderFlush :: <renderFlush>;
  slot NVGparams$renderFill :: <renderFill>;
  slot NVGparams$renderStroke :: <renderStroke>;
  slot NVGparams$renderTriangles :: <renderTriangles>;
  slot NVGparams$renderDelete :: <renderDelete>;
end;

define C-pointer-type <NVGparams*> => <NVGparams>;
define inline C-function nvgCreateInternal
  input parameter params_ :: <NVGparams*>;
  result res :: <NVGcontext*>;
  c-name: "nvgCreateInternal";
end;

define inline C-function nvgDeleteInternal
  input parameter ctx_ :: <NVGcontext*>;
  c-name: "nvgDeleteInternal";
end;

define inline C-function nvgInternalParams
  input parameter ctx_ :: <NVGcontext*>;
  result res :: <NVGparams*>;
  c-name: "nvgInternalParams";
end;

define inline C-function nvgDebugDumpPathCache
  input parameter ctx_ :: <NVGcontext*>;
  c-name: "nvgDebugDumpPathCache";
end;

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
