module: calvino-glu
synopsis: bindings for GLU
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define C-struct <GLUnurbs>
end;

define C-struct <GLUquadric>
end;

define C-struct <GLUtesselator>
end;

define constant <GLUnurbsObj> = <GLUnurbs>;

define constant <GLUquadricObj> = <GLUquadric>;

define constant <GLUtesselatorObj> = <GLUtesselator>;

define constant <GLUtriangulatorObj> = <GLUtesselator>;

define C-pointer-type <GLUnurbs*> => <GLUnurbs>;
define C-function gluBeginCurve
  input parameter nurb_ :: <GLUnurbs*>;
  c-name: "gluBeginCurve";
end;

define C-pointer-type <GLUtesselator*> => <GLUtesselator>;
define C-function gluBeginPolygon
  input parameter tess_ :: <GLUtesselator*>;
  c-name: "gluBeginPolygon";
end;

define C-function gluBeginSurface
  input parameter nurb_ :: <GLUnurbs*>;
  c-name: "gluBeginSurface";
end;

define C-function gluBeginTrim
  input parameter nurb_ :: <GLUnurbs*>;
  c-name: "gluBeginTrim";
end;

define constant <GLint> = <C-signed-int>;

define constant <GLenum> = <C-unsigned-int>;

define constant <GLsizei> = <C-signed-int>;

define C-function gluBuild1DMipmapLevels
  input parameter target_ :: <GLenum>;
  input parameter internalFormat_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter base_ :: <GLint>;
  input parameter max_ :: <GLint>;
  input parameter data_ :: <C-void*>;
  result res :: <GLint>;
  c-name: "gluBuild1DMipmapLevels";
end;

define C-function gluBuild1DMipmaps
  input parameter target_ :: <GLenum>;
  input parameter internalFormat_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter data_ :: <C-void*>;
  result res :: <GLint>;
  c-name: "gluBuild1DMipmaps";
end;

define C-function gluBuild2DMipmapLevels
  input parameter target_ :: <GLenum>;
  input parameter internalFormat_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter base_ :: <GLint>;
  input parameter max_ :: <GLint>;
  input parameter data_ :: <C-void*>;
  result res :: <GLint>;
  c-name: "gluBuild2DMipmapLevels";
end;

define C-function gluBuild2DMipmaps
  input parameter target_ :: <GLenum>;
  input parameter internalFormat_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter data_ :: <C-void*>;
  result res :: <GLint>;
  c-name: "gluBuild2DMipmaps";
end;

define C-function gluBuild3DMipmapLevels
  input parameter target_ :: <GLenum>;
  input parameter internalFormat_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  input parameter depth_ :: <GLsizei>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter base_ :: <GLint>;
  input parameter max_ :: <GLint>;
  input parameter data_ :: <C-void*>;
  result res :: <GLint>;
  c-name: "gluBuild3DMipmapLevels";
end;

define C-function gluBuild3DMipmaps
  input parameter target_ :: <GLenum>;
  input parameter internalFormat_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  input parameter depth_ :: <GLsizei>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter data_ :: <C-void*>;
  result res :: <GLint>;
  c-name: "gluBuild3DMipmaps";
end;

define constant <GLboolean> = <C-unsigned-char>;

define constant <GLubyte> = <C-unsigned-char>;

define C-pointer-type <GLubyte*> => <GLubyte>;
define C-function gluCheckExtension
  input parameter extName_ :: <GLubyte*>;
  input parameter extString_ :: <GLubyte*>;
  result res :: <GLboolean>;
  c-name: "gluCheckExtension";
end;

define C-pointer-type <GLUquadric*> => <GLUquadric>;
define constant <GLdouble> = <C-double>;

define C-function gluCylinder
  input parameter quad_ :: <GLUquadric*>;
  input parameter base_ :: <GLdouble>;
  input parameter top_ :: <GLdouble>;
  input parameter height_ :: <GLdouble>;
  input parameter slices_ :: <GLint>;
  input parameter stacks_ :: <GLint>;
  c-name: "gluCylinder";
end;

define C-function gluDeleteNurbsRenderer
  input parameter nurb_ :: <GLUnurbs*>;
  c-name: "gluDeleteNurbsRenderer";
end;

define C-function gluDeleteQuadric
  input parameter quad_ :: <GLUquadric*>;
  c-name: "gluDeleteQuadric";
end;

define C-function gluDeleteTess
  input parameter tess_ :: <GLUtesselator*>;
  c-name: "gluDeleteTess";
end;

define C-function gluDisk
  input parameter quad_ :: <GLUquadric*>;
  input parameter inner_ :: <GLdouble>;
  input parameter outer_ :: <GLdouble>;
  input parameter slices_ :: <GLint>;
  input parameter loops_ :: <GLint>;
  c-name: "gluDisk";
end;

define C-function gluEndCurve
  input parameter nurb_ :: <GLUnurbs*>;
  c-name: "gluEndCurve";
end;

define C-function gluEndPolygon
  input parameter tess_ :: <GLUtesselator*>;
  c-name: "gluEndPolygon";
end;

define C-function gluEndSurface
  input parameter nurb_ :: <GLUnurbs*>;
  c-name: "gluEndSurface";
end;

define C-function gluEndTrim
  input parameter nurb_ :: <GLUnurbs*>;
  c-name: "gluEndTrim";
end;

define C-function gluErrorString
  input parameter error_ :: <GLenum>;
  result res :: <GLubyte*>;
  c-name: "gluErrorString";
end;

define constant <GLfloat> = <C-float>;

define C-pointer-type <GLfloat*> => <GLfloat>;
define C-function gluGetNurbsProperty
  input parameter nurb_ :: <GLUnurbs*>;
  input parameter property_ :: <GLenum>;
  input parameter data_ :: <GLfloat*>;
  c-name: "gluGetNurbsProperty";
end;

define C-function gluGetString
  input parameter name_ :: <GLenum>;
  result res :: <GLubyte*>;
  c-name: "gluGetString";
end;

define C-pointer-type <GLdouble*> => <GLdouble>;
define C-function gluGetTessProperty
  input parameter tess_ :: <GLUtesselator*>;
  input parameter which_ :: <GLenum>;
  input parameter data_ :: <GLdouble*>;
  c-name: "gluGetTessProperty";
end;

define C-pointer-type <GLint*> => <GLint>;
define C-function gluLoadSamplingMatrices
  input parameter nurb_ :: <GLUnurbs*>;
  input parameter model_ :: <GLfloat*>;
  input parameter perspective_ :: <GLfloat*>;
  input parameter view_ :: <GLint*>;
  c-name: "gluLoadSamplingMatrices";
end;

define C-function gluLookAt
  input parameter eyeX_ :: <GLdouble>;
  input parameter eyeY_ :: <GLdouble>;
  input parameter eyeZ_ :: <GLdouble>;
  input parameter centerX_ :: <GLdouble>;
  input parameter centerY_ :: <GLdouble>;
  input parameter centerZ_ :: <GLdouble>;
  input parameter upX_ :: <GLdouble>;
  input parameter upY_ :: <GLdouble>;
  input parameter upZ_ :: <GLdouble>;
  c-name: "gluLookAt";
end;

define C-function gluNewNurbsRenderer
  result res :: <GLUnurbs*>;
  c-name: "gluNewNurbsRenderer";
end;

define C-function gluNewQuadric
  result res :: <GLUquadric*>;
  c-name: "gluNewQuadric";
end;

define C-function gluNewTess
  result res :: <GLUtesselator*>;
  c-name: "gluNewTess";
end;

define C-function gluNextContour
  input parameter tess_ :: <GLUtesselator*>;
  input parameter type_ :: <GLenum>;
  c-name: "gluNextContour";
end;

define constant <GLvoid> = <c-void>;

define constant <CallBackFunc> = <C-function-pointer>;
define C-function gluNurbsCallback
  input parameter nurb_ :: <GLUnurbs*>;
  input parameter which_ :: <GLenum>;
  input parameter CallBackFunc_ :: <CallBackFunc>;
  c-name: "gluNurbsCallback";
end;

define C-pointer-type <GLvoid*> => <GLvoid>;
define C-function gluNurbsCallbackData
  input parameter nurb_ :: <GLUnurbs*>;
  input parameter userData_ :: <GLvoid*>;
  c-name: "gluNurbsCallbackData";
end;

define C-function gluNurbsCallbackDataEXT
  input parameter nurb_ :: <GLUnurbs*>;
  input parameter userData_ :: <GLvoid*>;
  c-name: "gluNurbsCallbackDataEXT";
end;

define C-function gluNurbsCurve
  input parameter nurb_ :: <GLUnurbs*>;
  input parameter knotCount_ :: <GLint>;
  input parameter knots_ :: <GLfloat*>;
  input parameter stride_ :: <GLint>;
  input parameter control_ :: <GLfloat*>;
  input parameter order_ :: <GLint>;
  input parameter type_ :: <GLenum>;
  c-name: "gluNurbsCurve";
end;

define C-function gluNurbsProperty
  input parameter nurb_ :: <GLUnurbs*>;
  input parameter property_ :: <GLenum>;
  input parameter value_ :: <GLfloat>;
  c-name: "gluNurbsProperty";
end;

define C-function gluNurbsSurface
  input parameter nurb_ :: <GLUnurbs*>;
  input parameter sKnotCount_ :: <GLint>;
  input parameter sKnots_ :: <GLfloat*>;
  input parameter tKnotCount_ :: <GLint>;
  input parameter tKnots_ :: <GLfloat*>;
  input parameter sStride_ :: <GLint>;
  input parameter tStride_ :: <GLint>;
  input parameter control_ :: <GLfloat*>;
  input parameter sOrder_ :: <GLint>;
  input parameter tOrder_ :: <GLint>;
  input parameter type_ :: <GLenum>;
  c-name: "gluNurbsSurface";
end;

define C-function gluOrtho2D
  input parameter left_ :: <GLdouble>;
  input parameter right_ :: <GLdouble>;
  input parameter bottom_ :: <GLdouble>;
  input parameter top_ :: <GLdouble>;
  c-name: "gluOrtho2D";
end;

define C-function gluPartialDisk
  input parameter quad_ :: <GLUquadric*>;
  input parameter inner_ :: <GLdouble>;
  input parameter outer_ :: <GLdouble>;
  input parameter slices_ :: <GLint>;
  input parameter loops_ :: <GLint>;
  input parameter start_ :: <GLdouble>;
  input parameter sweep_ :: <GLdouble>;
  c-name: "gluPartialDisk";
end;

define C-function gluPerspective
  input parameter fovy_ :: <GLdouble>;
  input parameter aspect_ :: <GLdouble>;
  input parameter zNear_ :: <GLdouble>;
  input parameter zFar_ :: <GLdouble>;
  c-name: "gluPerspective";
end;

define C-function gluPickMatrix
  input parameter x_ :: <GLdouble>;
  input parameter y_ :: <GLdouble>;
  input parameter delX_ :: <GLdouble>;
  input parameter delY_ :: <GLdouble>;
  input parameter viewport_ :: <GLint*>;
  c-name: "gluPickMatrix";
end;

define C-function gluProject
  input parameter objX_ :: <GLdouble>;
  input parameter objY_ :: <GLdouble>;
  input parameter objZ_ :: <GLdouble>;
  input parameter model_ :: <GLdouble*>;
  input parameter proj_ :: <GLdouble*>;
  input parameter view_ :: <GLint*>;
  input parameter winX_ :: <GLdouble*>;
  input parameter winY_ :: <GLdouble*>;
  input parameter winZ_ :: <GLdouble*>;
  result res :: <GLint>;
  c-name: "gluProject";
end;

define C-function gluPwlCurve
  input parameter nurb_ :: <GLUnurbs*>;
  input parameter count_ :: <GLint>;
  input parameter data_ :: <GLfloat*>;
  input parameter stride_ :: <GLint>;
  input parameter type_ :: <GLenum>;
  c-name: "gluPwlCurve";
end;

define constant <CallBackFunc> = <C-function-pointer>;
define C-function gluQuadricCallback
  input parameter quad_ :: <GLUquadric*>;
  input parameter which_ :: <GLenum>;
  input parameter CallBackFunc_ :: <CallBackFunc>;
  c-name: "gluQuadricCallback";
end;

define C-function gluQuadricDrawStyle
  input parameter quad_ :: <GLUquadric*>;
  input parameter draw_ :: <GLenum>;
  c-name: "gluQuadricDrawStyle";
end;

define C-function gluQuadricNormals
  input parameter quad_ :: <GLUquadric*>;
  input parameter normal_ :: <GLenum>;
  c-name: "gluQuadricNormals";
end;

define C-function gluQuadricOrientation
  input parameter quad_ :: <GLUquadric*>;
  input parameter orientation_ :: <GLenum>;
  c-name: "gluQuadricOrientation";
end;

define C-function gluQuadricTexture
  input parameter quad_ :: <GLUquadric*>;
  input parameter texture_ :: <GLboolean>;
  c-name: "gluQuadricTexture";
end;

define C-function gluScaleImage
  input parameter format_ :: <GLenum>;
  input parameter wIn_ :: <GLsizei>;
  input parameter hIn_ :: <GLsizei>;
  input parameter typeIn_ :: <GLenum>;
  input parameter dataIn_ :: <C-void*>;
  input parameter wOut_ :: <GLsizei>;
  input parameter hOut_ :: <GLsizei>;
  input parameter typeOut_ :: <GLenum>;
  input parameter dataOut_ :: <GLvoid*>;
  result res :: <GLint>;
  c-name: "gluScaleImage";
end;

define C-function gluSphere
  input parameter quad_ :: <GLUquadric*>;
  input parameter radius_ :: <GLdouble>;
  input parameter slices_ :: <GLint>;
  input parameter stacks_ :: <GLint>;
  c-name: "gluSphere";
end;

define C-function gluTessBeginContour
  input parameter tess_ :: <GLUtesselator*>;
  c-name: "gluTessBeginContour";
end;

define C-function gluTessBeginPolygon
  input parameter tess_ :: <GLUtesselator*>;
  input parameter data_ :: <GLvoid*>;
  c-name: "gluTessBeginPolygon";
end;

define constant <CallBackFunc> = <C-function-pointer>;
define C-function gluTessCallback
  input parameter tess_ :: <GLUtesselator*>;
  input parameter which_ :: <GLenum>;
  input parameter CallBackFunc_ :: <CallBackFunc>;
  c-name: "gluTessCallback";
end;

define C-function gluTessEndContour
  input parameter tess_ :: <GLUtesselator*>;
  c-name: "gluTessEndContour";
end;

define C-function gluTessEndPolygon
  input parameter tess_ :: <GLUtesselator*>;
  c-name: "gluTessEndPolygon";
end;

define C-function gluTessNormal
  input parameter tess_ :: <GLUtesselator*>;
  input parameter valueX_ :: <GLdouble>;
  input parameter valueY_ :: <GLdouble>;
  input parameter valueZ_ :: <GLdouble>;
  c-name: "gluTessNormal";
end;

define C-function gluTessProperty
  input parameter tess_ :: <GLUtesselator*>;
  input parameter which_ :: <GLenum>;
  input parameter data_ :: <GLdouble>;
  c-name: "gluTessProperty";
end;

define C-function gluTessVertex
  input parameter tess_ :: <GLUtesselator*>;
  input parameter location_ :: <GLdouble*>;
  input parameter data_ :: <GLvoid*>;
  c-name: "gluTessVertex";
end;

define C-function gluUnProject
  input parameter winX_ :: <GLdouble>;
  input parameter winY_ :: <GLdouble>;
  input parameter winZ_ :: <GLdouble>;
  input parameter model_ :: <GLdouble*>;
  input parameter proj_ :: <GLdouble*>;
  input parameter view_ :: <GLint*>;
  input parameter objX_ :: <GLdouble*>;
  input parameter objY_ :: <GLdouble*>;
  input parameter objZ_ :: <GLdouble*>;
  result res :: <GLint>;
  c-name: "gluUnProject";
end;

define C-function gluUnProject4
  input parameter winX_ :: <GLdouble>;
  input parameter winY_ :: <GLdouble>;
  input parameter winZ_ :: <GLdouble>;
  input parameter clipW_ :: <GLdouble>;
  input parameter model_ :: <GLdouble*>;
  input parameter proj_ :: <GLdouble*>;
  input parameter view_ :: <GLint*>;
  input parameter nearPlane_ :: <GLdouble>;
  input parameter farPlane_ :: <GLdouble>;
  input parameter objX_ :: <GLdouble*>;
  input parameter objY_ :: <GLdouble*>;
  input parameter objZ_ :: <GLdouble*>;
  input parameter objW_ :: <GLdouble*>;
  result res :: <GLint>;
  c-name: "gluUnProject4";
end;

define constant $GLU-EXT-object-space-tess = 1;

define constant $GLU-EXT-nurbs-tessellator = 1;

define constant $GLU-FALSE = 0;

define constant $GLU-TRUE = 1;

define constant $GLU-VERSION-1-1 = 1;

define constant $GLU-VERSION-1-2 = 1;

define constant $GLU-VERSION-1-3 = 1;

define constant $GLU-VERSION = 100800;

define constant $GLU-EXTENSIONS = 100801;

define constant $GLU-INVALID-ENUM = 100900;

define constant $GLU-INVALID-VALUE = 100901;

define constant $GLU-OUT-OF-MEMORY = 100902;

define constant $GLU-INCOMPATIBLE-GL-VERSION = 100903;

define constant $GLU-INVALID-OPERATION = 100904;

define constant $GLU-OUTLINE-POLYGON = 100240;

define constant $GLU-OUTLINE-PATCH = 100241;

define constant $GLU-NURBS-ERROR = 100103;

define constant $GLU-ERROR = 100103;

define constant $GLU-NURBS-BEGIN = 100164;

define constant $GLU-NURBS-BEGIN-EXT = 100164;

define constant $GLU-NURBS-VERTEX = 100165;

define constant $GLU-NURBS-VERTEX-EXT = 100165;

define constant $GLU-NURBS-NORMAL = 100166;

define constant $GLU-NURBS-NORMAL-EXT = 100166;

define constant $GLU-NURBS-COLOR = 100167;

define constant $GLU-NURBS-COLOR-EXT = 100167;

define constant $GLU-NURBS-TEXTURE-COORD = 100168;

define constant $GLU-NURBS-TEX-COORD-EXT = 100168;

define constant $GLU-NURBS-END = 100169;

define constant $GLU-NURBS-END-EXT = 100169;

define constant $GLU-NURBS-BEGIN-DATA = 100170;

define constant $GLU-NURBS-BEGIN-DATA-EXT = 100170;

define constant $GLU-NURBS-VERTEX-DATA = 100171;

define constant $GLU-NURBS-VERTEX-DATA-EXT = 100171;

define constant $GLU-NURBS-NORMAL-DATA = 100172;

define constant $GLU-NURBS-NORMAL-DATA-EXT = 100172;

define constant $GLU-NURBS-COLOR-DATA = 100173;

define constant $GLU-NURBS-COLOR-DATA-EXT = 100173;

define constant $GLU-NURBS-TEXTURE-COORD-DATA = 100174;

define constant $GLU-NURBS-TEX-COORD-DATA-EXT = 100174;

define constant $GLU-NURBS-END-DATA = 100175;

define constant $GLU-NURBS-END-DATA-EXT = 100175;

define constant $GLU-NURBS-ERROR1 = 100251;

define constant $GLU-NURBS-ERROR2 = 100252;

define constant $GLU-NURBS-ERROR3 = 100253;

define constant $GLU-NURBS-ERROR4 = 100254;

define constant $GLU-NURBS-ERROR5 = 100255;

define constant $GLU-NURBS-ERROR6 = 100256;

define constant $GLU-NURBS-ERROR7 = 100257;

define constant $GLU-NURBS-ERROR8 = 100258;

define constant $GLU-NURBS-ERROR9 = 100259;

define constant $GLU-NURBS-ERROR10 = 100260;

define constant $GLU-NURBS-ERROR11 = 100261;

define constant $GLU-NURBS-ERROR12 = 100262;

define constant $GLU-NURBS-ERROR13 = 100263;

define constant $GLU-NURBS-ERROR14 = 100264;

define constant $GLU-NURBS-ERROR15 = 100265;

define constant $GLU-NURBS-ERROR16 = 100266;

define constant $GLU-NURBS-ERROR17 = 100267;

define constant $GLU-NURBS-ERROR18 = 100268;

define constant $GLU-NURBS-ERROR19 = 100269;

define constant $GLU-NURBS-ERROR20 = 100270;

define constant $GLU-NURBS-ERROR21 = 100271;

define constant $GLU-NURBS-ERROR22 = 100272;

define constant $GLU-NURBS-ERROR23 = 100273;

define constant $GLU-NURBS-ERROR24 = 100274;

define constant $GLU-NURBS-ERROR25 = 100275;

define constant $GLU-NURBS-ERROR26 = 100276;

define constant $GLU-NURBS-ERROR27 = 100277;

define constant $GLU-NURBS-ERROR28 = 100278;

define constant $GLU-NURBS-ERROR29 = 100279;

define constant $GLU-NURBS-ERROR30 = 100280;

define constant $GLU-NURBS-ERROR31 = 100281;

define constant $GLU-NURBS-ERROR32 = 100282;

define constant $GLU-NURBS-ERROR33 = 100283;

define constant $GLU-NURBS-ERROR34 = 100284;

define constant $GLU-NURBS-ERROR35 = 100285;

define constant $GLU-NURBS-ERROR36 = 100286;

define constant $GLU-NURBS-ERROR37 = 100287;

define constant $GLU-AUTO-LOAD-MATRIX = 100200;

define constant $GLU-CULLING = 100201;

define constant $GLU-SAMPLING-TOLERANCE = 100203;

define constant $GLU-DISPLAY-MODE = 100204;

define constant $GLU-PARAMETRIC-TOLERANCE = 100202;

define constant $GLU-SAMPLING-METHOD = 100205;

define constant $GLU-U-STEP = 100206;

define constant $GLU-V-STEP = 100207;

define constant $GLU-NURBS-MODE = 100160;

define constant $GLU-NURBS-MODE-EXT = 100160;

define constant $GLU-NURBS-TESSELLATOR = 100161;

define constant $GLU-NURBS-TESSELLATOR-EXT = 100161;

define constant $GLU-NURBS-RENDERER = 100162;

define constant $GLU-NURBS-RENDERER-EXT = 100162;

define constant $GLU-OBJECT-PARAMETRIC-ERROR = 100208;

define constant $GLU-OBJECT-PARAMETRIC-ERROR-EXT = 100208;

define constant $GLU-OBJECT-PATH-LENGTH = 100209;

define constant $GLU-OBJECT-PATH-LENGTH-EXT = 100209;

define constant $GLU-PATH-LENGTH = 100215;

define constant $GLU-PARAMETRIC-ERROR = 100216;

define constant $GLU-DOMAIN-DISTANCE = 100217;

define constant $GLU-MAP1-TRIM-2 = 100210;

define constant $GLU-MAP1-TRIM-3 = 100211;

define constant $GLU-POINT = 100010;

define constant $GLU-LINE = 100011;

define constant $GLU-FILL = 100012;

define constant $GLU-SILHOUETTE = 100013;

define constant $GLU-SMOOTH = 100000;

define constant $GLU-FLAT = 100001;

define constant $GLU-NONE = 100002;

define constant $GLU-OUTSIDE = 100020;

define constant $GLU-INSIDE = 100021;

define constant $GLU-TESS-BEGIN = 100100;

define constant $GLU-BEGIN = 100100;

define constant $GLU-TESS-VERTEX = 100101;

define constant $GLU-VERTEX = 100101;

define constant $GLU-TESS-END = 100102;

define constant $GLU-END = 100102;

define constant $GLU-TESS-ERROR = 100103;

define constant $GLU-TESS-EDGE-FLAG = 100104;

define constant $GLU-EDGE-FLAG = 100104;

define constant $GLU-TESS-COMBINE = 100105;

define constant $GLU-TESS-BEGIN-DATA = 100106;

define constant $GLU-TESS-VERTEX-DATA = 100107;

define constant $GLU-TESS-END-DATA = 100108;

define constant $GLU-TESS-ERROR-DATA = 100109;

define constant $GLU-TESS-EDGE-FLAG-DATA = 100110;

define constant $GLU-TESS-COMBINE-DATA = 100111;

define constant $GLU-CW = 100120;

define constant $GLU-CCW = 100121;

define constant $GLU-INTERIOR = 100122;

define constant $GLU-EXTERIOR = 100123;

define constant $GLU-UNKNOWN = 100124;

define constant $GLU-TESS-WINDING-RULE = 100140;

define constant $GLU-TESS-BOUNDARY-ONLY = 100141;

define constant $GLU-TESS-TOLERANCE = 100142;

define constant $GLU-TESS-ERROR1 = 100151;

define constant $GLU-TESS-ERROR2 = 100152;

define constant $GLU-TESS-ERROR3 = 100153;

define constant $GLU-TESS-ERROR4 = 100154;

define constant $GLU-TESS-ERROR5 = 100155;

define constant $GLU-TESS-ERROR6 = 100156;

define constant $GLU-TESS-ERROR7 = 100157;

define constant $GLU-TESS-ERROR8 = 100158;

define constant $GLU-TESS-MISSING-BEGIN-POLYGON = 100151;

define constant $GLU-TESS-MISSING-BEGIN-CONTOUR = 100152;

define constant $GLU-TESS-MISSING-END-POLYGON = 100153;

define constant $GLU-TESS-MISSING-END-CONTOUR = 100154;

define constant $GLU-TESS-COORD-TOO-LARGE = 100155;

define constant $GLU-TESS-NEED-COMBINE-CALLBACK = 100156;

define constant $GLU-TESS-WINDING-ODD = 100130;

define constant $GLU-TESS-WINDING-NONZERO = 100131;

define constant $GLU-TESS-WINDING-POSITIVE = 100132;

define constant $GLU-TESS-WINDING-NEGATIVE = 100133;

define constant $GLU-TESS-WINDING-ABS-GEQ-TWO = 100134;

