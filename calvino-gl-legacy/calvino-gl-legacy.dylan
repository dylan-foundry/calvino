module: calvino-gl-legacy
synopsis: bindings for OpenGL 1.x and 2.x
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define constant <GLenum> = <C-unsigned-int>;

define constant <GLboolean> = <C-unsigned-char>;

define constant <GLbitfield> = <C-unsigned-int>;

define constant <GLbyte> = <C-signed-char>;

define constant <GLshort> = <C-signed-short>;

define constant <GLint> = <C-signed-int>;

define constant <GLsizei> = <C-signed-int>;

define constant <GLubyte> = <C-unsigned-char>;

define constant <GLushort> = <C-unsigned-short>;

define constant <GLuint> = <C-unsigned-int>;

define constant <GLfloat> = <C-float>;

define constant <GLclampf> = <C-float>;

define constant <GLdouble> = <C-double>;

define constant <GLclampd> = <C-double>;

define constant <GLvoid> = <c-void>;

define constant <GLintptr> = <C-signed-long>;

define constant <GLsizeiptr> = <C-signed-long>;

define constant <GLchar> = <C-signed-char>;

define C-function glAccum
  input parameter op_ :: <GLenum>;
  input parameter value_ :: <GLfloat>;
  c-name: "glAccum";
end;

define C-function glAlphaFunc
  input parameter func_ :: <GLenum>;
  input parameter ref_ :: <GLclampf>;
  c-name: "glAlphaFunc";
end;

define C-pointer-type <GLuint*> => <GLuint>;
define C-pointer-type <GLboolean*> => <GLboolean>;
define C-function glAreTexturesResident
  input parameter n_ :: <GLsizei>;
  input parameter textures_ :: <GLuint*>;
  input parameter residences_ :: <GLboolean*>;
  result res :: <GLboolean>;
  c-name: "glAreTexturesResident";
end;

define C-function glArrayElement
  input parameter i_ :: <GLint>;
  c-name: "glArrayElement";
end;

define C-function glBegin
  input parameter mode_ :: <GLenum>;
  c-name: "glBegin";
end;

define C-function glBindTexture
  input parameter target_ :: <GLenum>;
  input parameter texture_ :: <GLuint>;
  c-name: "glBindTexture";
end;

define C-pointer-type <GLubyte*> => <GLubyte>;
define C-function glBitmap
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  input parameter xorig_ :: <GLfloat>;
  input parameter yorig_ :: <GLfloat>;
  input parameter xmove_ :: <GLfloat>;
  input parameter ymove_ :: <GLfloat>;
  input parameter bitmap_ :: <GLubyte*>;
  c-name: "glBitmap";
end;

define C-function glBlendColor
  input parameter red_ :: <GLclampf>;
  input parameter green_ :: <GLclampf>;
  input parameter blue_ :: <GLclampf>;
  input parameter alpha_ :: <GLclampf>;
  c-name: "glBlendColor";
end;

define C-function glBlendEquation
  input parameter mode_ :: <GLenum>;
  c-name: "glBlendEquation";
end;

define C-function glBlendEquationSeparate
  input parameter modeRGB_ :: <GLenum>;
  input parameter modeAlpha_ :: <GLenum>;
  c-name: "glBlendEquationSeparate";
end;

define C-function glBlendFunc
  input parameter sfactor_ :: <GLenum>;
  input parameter dfactor_ :: <GLenum>;
  c-name: "glBlendFunc";
end;

define C-function glCallList
  input parameter list_ :: <GLuint>;
  c-name: "glCallList";
end;

define C-pointer-type <GLvoid*> => <GLvoid>;
define C-function glCallLists
  input parameter n_ :: <GLsizei>;
  input parameter type_ :: <GLenum>;
  input parameter lists_ :: <GLvoid*>;
  c-name: "glCallLists";
end;

define C-function glClear
  input parameter mask_ :: <GLbitfield>;
  c-name: "glClear";
end;

define C-function glClearAccum
  input parameter red_ :: <GLfloat>;
  input parameter green_ :: <GLfloat>;
  input parameter blue_ :: <GLfloat>;
  input parameter alpha_ :: <GLfloat>;
  c-name: "glClearAccum";
end;

define C-function glClearColor
  input parameter red_ :: <GLclampf>;
  input parameter green_ :: <GLclampf>;
  input parameter blue_ :: <GLclampf>;
  input parameter alpha_ :: <GLclampf>;
  c-name: "glClearColor";
end;

define C-function glClearDepth
  input parameter depth_ :: <GLclampd>;
  c-name: "glClearDepth";
end;

define C-function glClearIndex
  input parameter c_ :: <GLfloat>;
  c-name: "glClearIndex";
end;

define C-function glClearStencil
  input parameter s_ :: <GLint>;
  c-name: "glClearStencil";
end;

define C-pointer-type <GLdouble*> => <GLdouble>;
define C-function glClipPlane
  input parameter plane_ :: <GLenum>;
  input parameter equation_ :: <GLdouble*>;
  c-name: "glClipPlane";
end;

define C-function glColor3b
  input parameter red_ :: <GLbyte>;
  input parameter green_ :: <GLbyte>;
  input parameter blue_ :: <GLbyte>;
  c-name: "glColor3b";
end;

define C-pointer-type <GLbyte*> => <GLbyte>;
define C-function glColor3bv
  input parameter v_ :: <GLbyte*>;
  c-name: "glColor3bv";
end;

define C-function glColor3d
  input parameter red_ :: <GLdouble>;
  input parameter green_ :: <GLdouble>;
  input parameter blue_ :: <GLdouble>;
  c-name: "glColor3d";
end;

define C-function glColor3dv
  input parameter v_ :: <GLdouble*>;
  c-name: "glColor3dv";
end;

define C-function glColor3f
  input parameter red_ :: <GLfloat>;
  input parameter green_ :: <GLfloat>;
  input parameter blue_ :: <GLfloat>;
  c-name: "glColor3f";
end;

define C-pointer-type <GLfloat*> => <GLfloat>;
define C-function glColor3fv
  input parameter v_ :: <GLfloat*>;
  c-name: "glColor3fv";
end;

define C-function glColor3i
  input parameter red_ :: <GLint>;
  input parameter green_ :: <GLint>;
  input parameter blue_ :: <GLint>;
  c-name: "glColor3i";
end;

define C-pointer-type <GLint*> => <GLint>;
define C-function glColor3iv
  input parameter v_ :: <GLint*>;
  c-name: "glColor3iv";
end;

define C-function glColor3s
  input parameter red_ :: <GLshort>;
  input parameter green_ :: <GLshort>;
  input parameter blue_ :: <GLshort>;
  c-name: "glColor3s";
end;

define C-pointer-type <GLshort*> => <GLshort>;
define C-function glColor3sv
  input parameter v_ :: <GLshort*>;
  c-name: "glColor3sv";
end;

define C-function glColor3ub
  input parameter red_ :: <GLubyte>;
  input parameter green_ :: <GLubyte>;
  input parameter blue_ :: <GLubyte>;
  c-name: "glColor3ub";
end;

define C-function glColor3ubv
  input parameter v_ :: <GLubyte*>;
  c-name: "glColor3ubv";
end;

define C-function glColor3ui
  input parameter red_ :: <GLuint>;
  input parameter green_ :: <GLuint>;
  input parameter blue_ :: <GLuint>;
  c-name: "glColor3ui";
end;

define C-function glColor3uiv
  input parameter v_ :: <GLuint*>;
  c-name: "glColor3uiv";
end;

define C-function glColor3us
  input parameter red_ :: <GLushort>;
  input parameter green_ :: <GLushort>;
  input parameter blue_ :: <GLushort>;
  c-name: "glColor3us";
end;

define C-pointer-type <GLushort*> => <GLushort>;
define C-function glColor3usv
  input parameter v_ :: <GLushort*>;
  c-name: "glColor3usv";
end;

define C-function glColor4b
  input parameter red_ :: <GLbyte>;
  input parameter green_ :: <GLbyte>;
  input parameter blue_ :: <GLbyte>;
  input parameter alpha_ :: <GLbyte>;
  c-name: "glColor4b";
end;

define C-function glColor4bv
  input parameter v_ :: <GLbyte*>;
  c-name: "glColor4bv";
end;

define C-function glColor4d
  input parameter red_ :: <GLdouble>;
  input parameter green_ :: <GLdouble>;
  input parameter blue_ :: <GLdouble>;
  input parameter alpha_ :: <GLdouble>;
  c-name: "glColor4d";
end;

define C-function glColor4dv
  input parameter v_ :: <GLdouble*>;
  c-name: "glColor4dv";
end;

define C-function glColor4f
  input parameter red_ :: <GLfloat>;
  input parameter green_ :: <GLfloat>;
  input parameter blue_ :: <GLfloat>;
  input parameter alpha_ :: <GLfloat>;
  c-name: "glColor4f";
end;

define C-function glColor4fv
  input parameter v_ :: <GLfloat*>;
  c-name: "glColor4fv";
end;

define C-function glColor4i
  input parameter red_ :: <GLint>;
  input parameter green_ :: <GLint>;
  input parameter blue_ :: <GLint>;
  input parameter alpha_ :: <GLint>;
  c-name: "glColor4i";
end;

define C-function glColor4iv
  input parameter v_ :: <GLint*>;
  c-name: "glColor4iv";
end;

define C-function glColor4s
  input parameter red_ :: <GLshort>;
  input parameter green_ :: <GLshort>;
  input parameter blue_ :: <GLshort>;
  input parameter alpha_ :: <GLshort>;
  c-name: "glColor4s";
end;

define C-function glColor4sv
  input parameter v_ :: <GLshort*>;
  c-name: "glColor4sv";
end;

define C-function glColor4ub
  input parameter red_ :: <GLubyte>;
  input parameter green_ :: <GLubyte>;
  input parameter blue_ :: <GLubyte>;
  input parameter alpha_ :: <GLubyte>;
  c-name: "glColor4ub";
end;

define C-function glColor4ubv
  input parameter v_ :: <GLubyte*>;
  c-name: "glColor4ubv";
end;

define C-function glColor4ui
  input parameter red_ :: <GLuint>;
  input parameter green_ :: <GLuint>;
  input parameter blue_ :: <GLuint>;
  input parameter alpha_ :: <GLuint>;
  c-name: "glColor4ui";
end;

define C-function glColor4uiv
  input parameter v_ :: <GLuint*>;
  c-name: "glColor4uiv";
end;

define C-function glColor4us
  input parameter red_ :: <GLushort>;
  input parameter green_ :: <GLushort>;
  input parameter blue_ :: <GLushort>;
  input parameter alpha_ :: <GLushort>;
  c-name: "glColor4us";
end;

define C-function glColor4usv
  input parameter v_ :: <GLushort*>;
  c-name: "glColor4usv";
end;

define C-function glColorMask
  input parameter red_ :: <GLboolean>;
  input parameter green_ :: <GLboolean>;
  input parameter blue_ :: <GLboolean>;
  input parameter alpha_ :: <GLboolean>;
  c-name: "glColorMask";
end;

define C-function glColorMaterial
  input parameter face_ :: <GLenum>;
  input parameter mode_ :: <GLenum>;
  c-name: "glColorMaterial";
end;

define C-function glColorPointer
  input parameter size_ :: <GLint>;
  input parameter type_ :: <GLenum>;
  input parameter stride_ :: <GLsizei>;
  input parameter pointer_ :: <GLvoid*>;
  c-name: "glColorPointer";
end;

define C-function glColorSubTable
  input parameter target_ :: <GLenum>;
  input parameter start_ :: <GLsizei>;
  input parameter count_ :: <GLsizei>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter data_ :: <GLvoid*>;
  c-name: "glColorSubTable";
end;

define C-function glColorTable
  input parameter target_ :: <GLenum>;
  input parameter internalformat_ :: <GLenum>;
  input parameter width_ :: <GLsizei>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter table_ :: <GLvoid*>;
  c-name: "glColorTable";
end;

define C-function glColorTableParameterfv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glColorTableParameterfv";
end;

define C-function glColorTableParameteriv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glColorTableParameteriv";
end;

define C-function glConvolutionFilter1D
  input parameter target_ :: <GLenum>;
  input parameter internalformat_ :: <GLenum>;
  input parameter width_ :: <GLsizei>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter image_ :: <GLvoid*>;
  c-name: "glConvolutionFilter1D";
end;

define C-function glConvolutionFilter2D
  input parameter target_ :: <GLenum>;
  input parameter internalformat_ :: <GLenum>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter image_ :: <GLvoid*>;
  c-name: "glConvolutionFilter2D";
end;

define C-function glConvolutionParameterf
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat>;
  c-name: "glConvolutionParameterf";
end;

define C-function glConvolutionParameterfv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glConvolutionParameterfv";
end;

define C-function glConvolutionParameteri
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint>;
  c-name: "glConvolutionParameteri";
end;

define C-function glConvolutionParameteriv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glConvolutionParameteriv";
end;

define C-function glCopyColorSubTable
  input parameter target_ :: <GLenum>;
  input parameter start_ :: <GLsizei>;
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  c-name: "glCopyColorSubTable";
end;

define C-function glCopyColorTable
  input parameter target_ :: <GLenum>;
  input parameter internalformat_ :: <GLenum>;
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  c-name: "glCopyColorTable";
end;

define C-function glCopyConvolutionFilter1D
  input parameter target_ :: <GLenum>;
  input parameter internalformat_ :: <GLenum>;
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  c-name: "glCopyConvolutionFilter1D";
end;

define C-function glCopyConvolutionFilter2D
  input parameter target_ :: <GLenum>;
  input parameter internalformat_ :: <GLenum>;
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  c-name: "glCopyConvolutionFilter2D";
end;

define C-function glCopyPixels
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  input parameter type_ :: <GLenum>;
  c-name: "glCopyPixels";
end;

define C-function glCopyTexImage1D
  input parameter target_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter internalformat_ :: <GLenum>;
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter border_ :: <GLint>;
  c-name: "glCopyTexImage1D";
end;

define C-function glCopyTexImage2D
  input parameter target_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter internalformat_ :: <GLenum>;
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  input parameter border_ :: <GLint>;
  c-name: "glCopyTexImage2D";
end;

define C-function glCopyTexSubImage1D
  input parameter target_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter xoffset_ :: <GLint>;
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  c-name: "glCopyTexSubImage1D";
end;

define C-function glCopyTexSubImage2D
  input parameter target_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter xoffset_ :: <GLint>;
  input parameter yoffset_ :: <GLint>;
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  c-name: "glCopyTexSubImage2D";
end;

define C-function glCopyTexSubImage3D
  input parameter target_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter xoffset_ :: <GLint>;
  input parameter yoffset_ :: <GLint>;
  input parameter zoffset_ :: <GLint>;
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  c-name: "glCopyTexSubImage3D";
end;

define C-function glCullFace
  input parameter mode_ :: <GLenum>;
  c-name: "glCullFace";
end;

define C-function glDeleteLists
  input parameter list_ :: <GLuint>;
  input parameter range_ :: <GLsizei>;
  c-name: "glDeleteLists";
end;

define C-function glDeleteTextures
  input parameter n_ :: <GLsizei>;
  input parameter textures_ :: <GLuint*>;
  c-name: "glDeleteTextures";
end;

define C-function glDepthFunc
  input parameter func_ :: <GLenum>;
  c-name: "glDepthFunc";
end;

define C-function glDepthMask
  input parameter flag_ :: <GLboolean>;
  c-name: "glDepthMask";
end;

define C-function glDepthRange
  input parameter zNear_ :: <GLclampd>;
  input parameter zFar_ :: <GLclampd>;
  c-name: "glDepthRange";
end;

define C-function glDisable
  input parameter cap_ :: <GLenum>;
  c-name: "glDisable";
end;

define C-function glDisableClientState
  input parameter array_ :: <GLenum>;
  c-name: "glDisableClientState";
end;

define C-function glDrawArrays
  input parameter mode_ :: <GLenum>;
  input parameter first_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  c-name: "glDrawArrays";
end;

define C-function glDrawBuffer
  input parameter mode_ :: <GLenum>;
  c-name: "glDrawBuffer";
end;

define C-function glDrawElements
  input parameter mode_ :: <GLenum>;
  input parameter count_ :: <GLsizei>;
  input parameter type_ :: <GLenum>;
  input parameter indices_ :: <GLvoid*>;
  c-name: "glDrawElements";
end;

define C-function glDrawPixels
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter pixels_ :: <GLvoid*>;
  c-name: "glDrawPixels";
end;

define C-function glDrawRangeElements
  input parameter mode_ :: <GLenum>;
  input parameter start_ :: <GLuint>;
  input parameter end_ :: <GLuint>;
  input parameter count_ :: <GLsizei>;
  input parameter type_ :: <GLenum>;
  input parameter indices_ :: <GLvoid*>;
  c-name: "glDrawRangeElements";
end;

define C-function glEdgeFlag
  input parameter flag_ :: <GLboolean>;
  c-name: "glEdgeFlag";
end;

define C-function glEdgeFlagPointer
  input parameter stride_ :: <GLsizei>;
  input parameter pointer_ :: <GLvoid*>;
  c-name: "glEdgeFlagPointer";
end;

define C-function glEdgeFlagv
  input parameter flag_ :: <GLboolean*>;
  c-name: "glEdgeFlagv";
end;

define C-function glEnable
  input parameter cap_ :: <GLenum>;
  c-name: "glEnable";
end;

define C-function glEnableClientState
  input parameter array_ :: <GLenum>;
  c-name: "glEnableClientState";
end;

define C-function glEnd
  c-name: "glEnd";
end;

define C-function glEndList
  c-name: "glEndList";
end;

define C-function glEvalCoord1d
  input parameter u_ :: <GLdouble>;
  c-name: "glEvalCoord1d";
end;

define C-function glEvalCoord1dv
  input parameter u_ :: <GLdouble*>;
  c-name: "glEvalCoord1dv";
end;

define C-function glEvalCoord1f
  input parameter u_ :: <GLfloat>;
  c-name: "glEvalCoord1f";
end;

define C-function glEvalCoord1fv
  input parameter u_ :: <GLfloat*>;
  c-name: "glEvalCoord1fv";
end;

define C-function glEvalCoord2d
  input parameter u_ :: <GLdouble>;
  input parameter v_ :: <GLdouble>;
  c-name: "glEvalCoord2d";
end;

define C-function glEvalCoord2dv
  input parameter u_ :: <GLdouble*>;
  c-name: "glEvalCoord2dv";
end;

define C-function glEvalCoord2f
  input parameter u_ :: <GLfloat>;
  input parameter v_ :: <GLfloat>;
  c-name: "glEvalCoord2f";
end;

define C-function glEvalCoord2fv
  input parameter u_ :: <GLfloat*>;
  c-name: "glEvalCoord2fv";
end;

define C-function glEvalMesh1
  input parameter mode_ :: <GLenum>;
  input parameter i1_ :: <GLint>;
  input parameter i2_ :: <GLint>;
  c-name: "glEvalMesh1";
end;

define C-function glEvalMesh2
  input parameter mode_ :: <GLenum>;
  input parameter i1_ :: <GLint>;
  input parameter i2_ :: <GLint>;
  input parameter j1_ :: <GLint>;
  input parameter j2_ :: <GLint>;
  c-name: "glEvalMesh2";
end;

define C-function glEvalPoint1
  input parameter i_ :: <GLint>;
  c-name: "glEvalPoint1";
end;

define C-function glEvalPoint2
  input parameter i_ :: <GLint>;
  input parameter j_ :: <GLint>;
  c-name: "glEvalPoint2";
end;

define C-function glFeedbackBuffer
  input parameter size_ :: <GLsizei>;
  input parameter type_ :: <GLenum>;
  input parameter buffer_ :: <GLfloat*>;
  c-name: "glFeedbackBuffer";
end;

define C-function glFinish
  c-name: "glFinish";
end;

define C-function glFlush
  c-name: "glFlush";
end;

define C-function glFogf
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLfloat>;
  c-name: "glFogf";
end;

define C-function glFogfv
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glFogfv";
end;

define C-function glFogi
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLint>;
  c-name: "glFogi";
end;

define C-function glFogiv
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glFogiv";
end;

define C-function glFrontFace
  input parameter mode_ :: <GLenum>;
  c-name: "glFrontFace";
end;

define C-function glFrustum
  input parameter left_ :: <GLdouble>;
  input parameter right_ :: <GLdouble>;
  input parameter bottom_ :: <GLdouble>;
  input parameter top_ :: <GLdouble>;
  input parameter zNear_ :: <GLdouble>;
  input parameter zFar_ :: <GLdouble>;
  c-name: "glFrustum";
end;

define C-function glGenLists
  input parameter range_ :: <GLsizei>;
  result res :: <GLuint>;
  c-name: "glGenLists";
end;

define C-function glGenTextures
  input parameter n_ :: <GLsizei>;
  input parameter textures_ :: <GLuint*>;
  c-name: "glGenTextures";
end;

define C-function glGetBooleanv
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLboolean*>;
  c-name: "glGetBooleanv";
end;

define C-function glGetClipPlane
  input parameter plane_ :: <GLenum>;
  input parameter equation_ :: <GLdouble*>;
  c-name: "glGetClipPlane";
end;

define C-function glGetColorTable
  input parameter target_ :: <GLenum>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter table_ :: <GLvoid*>;
  c-name: "glGetColorTable";
end;

define C-function glGetColorTableParameterfv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glGetColorTableParameterfv";
end;

define C-function glGetColorTableParameteriv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetColorTableParameteriv";
end;

define C-function glGetConvolutionFilter
  input parameter target_ :: <GLenum>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter image_ :: <GLvoid*>;
  c-name: "glGetConvolutionFilter";
end;

define C-function glGetConvolutionParameterfv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glGetConvolutionParameterfv";
end;

define C-function glGetConvolutionParameteriv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetConvolutionParameteriv";
end;

define C-function glGetDoublev
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLdouble*>;
  c-name: "glGetDoublev";
end;

define C-function glGetError
  result res :: <GLenum>;
  c-name: "glGetError";
end;

define C-function glGetFloatv
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glGetFloatv";
end;

define C-function glGetHistogram
  input parameter target_ :: <GLenum>;
  input parameter reset_ :: <GLboolean>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter values_ :: <GLvoid*>;
  c-name: "glGetHistogram";
end;

define C-function glGetHistogramParameterfv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glGetHistogramParameterfv";
end;

define C-function glGetHistogramParameteriv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetHistogramParameteriv";
end;

define C-function glGetIntegerv
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetIntegerv";
end;

define C-function glGetLightfv
  input parameter light_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glGetLightfv";
end;

define C-function glGetLightiv
  input parameter light_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetLightiv";
end;

define C-function glGetMapdv
  input parameter target_ :: <GLenum>;
  input parameter query_ :: <GLenum>;
  input parameter v_ :: <GLdouble*>;
  c-name: "glGetMapdv";
end;

define C-function glGetMapfv
  input parameter target_ :: <GLenum>;
  input parameter query_ :: <GLenum>;
  input parameter v_ :: <GLfloat*>;
  c-name: "glGetMapfv";
end;

define C-function glGetMapiv
  input parameter target_ :: <GLenum>;
  input parameter query_ :: <GLenum>;
  input parameter v_ :: <GLint*>;
  c-name: "glGetMapiv";
end;

define C-function glGetMaterialfv
  input parameter face_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glGetMaterialfv";
end;

define C-function glGetMaterialiv
  input parameter face_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetMaterialiv";
end;

define C-function glGetMinmax
  input parameter target_ :: <GLenum>;
  input parameter reset_ :: <GLboolean>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter values_ :: <GLvoid*>;
  c-name: "glGetMinmax";
end;

define C-function glGetMinmaxParameterfv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glGetMinmaxParameterfv";
end;

define C-function glGetMinmaxParameteriv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetMinmaxParameteriv";
end;

define C-function glGetPixelMapfv
  input parameter map_ :: <GLenum>;
  input parameter values_ :: <GLfloat*>;
  c-name: "glGetPixelMapfv";
end;

define C-function glGetPixelMapuiv
  input parameter map_ :: <GLenum>;
  input parameter values_ :: <GLuint*>;
  c-name: "glGetPixelMapuiv";
end;

define C-function glGetPixelMapusv
  input parameter map_ :: <GLenum>;
  input parameter values_ :: <GLushort*>;
  c-name: "glGetPixelMapusv";
end;

define C-pointer-type <GLvoid**> => <GLvoid*>;
define C-function glGetPointerv
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLvoid**>;
  c-name: "glGetPointerv";
end;

define C-function glGetPolygonStipple
  input parameter mask_ :: <GLubyte*>;
  c-name: "glGetPolygonStipple";
end;

define C-function glGetSeparableFilter
  input parameter target_ :: <GLenum>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter row_ :: <GLvoid*>;
  input parameter column_ :: <GLvoid*>;
  input parameter span_ :: <GLvoid*>;
  c-name: "glGetSeparableFilter";
end;

define C-function glGetString
  input parameter name_ :: <GLenum>;
  result res :: <c-string>;
  c-name: "glGetString";
end;

define C-function glGetTexEnvfv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glGetTexEnvfv";
end;

define C-function glGetTexEnviv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetTexEnviv";
end;

define C-function glGetTexGendv
  input parameter coord_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLdouble*>;
  c-name: "glGetTexGendv";
end;

define C-function glGetTexGenfv
  input parameter coord_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glGetTexGenfv";
end;

define C-function glGetTexGeniv
  input parameter coord_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetTexGeniv";
end;

define C-function glGetTexImage
  input parameter target_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter pixels_ :: <GLvoid*>;
  c-name: "glGetTexImage";
end;

define C-function glGetTexLevelParameterfv
  input parameter target_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glGetTexLevelParameterfv";
end;

define C-function glGetTexLevelParameteriv
  input parameter target_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetTexLevelParameteriv";
end;

define C-function glGetTexParameterfv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glGetTexParameterfv";
end;

define C-function glGetTexParameteriv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetTexParameteriv";
end;

define C-function glHint
  input parameter target_ :: <GLenum>;
  input parameter mode_ :: <GLenum>;
  c-name: "glHint";
end;

define C-function glHistogram
  input parameter target_ :: <GLenum>;
  input parameter width_ :: <GLsizei>;
  input parameter internalformat_ :: <GLenum>;
  input parameter sink_ :: <GLboolean>;
  c-name: "glHistogram";
end;

define C-function glIndexMask
  input parameter mask_ :: <GLuint>;
  c-name: "glIndexMask";
end;

define C-function glIndexPointer
  input parameter type_ :: <GLenum>;
  input parameter stride_ :: <GLsizei>;
  input parameter pointer_ :: <GLvoid*>;
  c-name: "glIndexPointer";
end;

define C-function glIndexd
  input parameter c_ :: <GLdouble>;
  c-name: "glIndexd";
end;

define C-function glIndexdv
  input parameter c_ :: <GLdouble*>;
  c-name: "glIndexdv";
end;

define C-function glIndexf
  input parameter c_ :: <GLfloat>;
  c-name: "glIndexf";
end;

define C-function glIndexfv
  input parameter c_ :: <GLfloat*>;
  c-name: "glIndexfv";
end;

define C-function glIndexi
  input parameter c_ :: <GLint>;
  c-name: "glIndexi";
end;

define C-function glIndexiv
  input parameter c_ :: <GLint*>;
  c-name: "glIndexiv";
end;

define C-function glIndexs
  input parameter c_ :: <GLshort>;
  c-name: "glIndexs";
end;

define C-function glIndexsv
  input parameter c_ :: <GLshort*>;
  c-name: "glIndexsv";
end;

define C-function glIndexub
  input parameter c_ :: <GLubyte>;
  c-name: "glIndexub";
end;

define C-function glIndexubv
  input parameter c_ :: <GLubyte*>;
  c-name: "glIndexubv";
end;

define C-function glInitNames
  c-name: "glInitNames";
end;

define C-function glInterleavedArrays
  input parameter format_ :: <GLenum>;
  input parameter stride_ :: <GLsizei>;
  input parameter pointer_ :: <GLvoid*>;
  c-name: "glInterleavedArrays";
end;

define C-function glIsEnabled
  input parameter cap_ :: <GLenum>;
  result res :: <GLboolean>;
  c-name: "glIsEnabled";
end;

define C-function glIsList
  input parameter list_ :: <GLuint>;
  result res :: <GLboolean>;
  c-name: "glIsList";
end;

define C-function glIsTexture
  input parameter texture_ :: <GLuint>;
  result res :: <GLboolean>;
  c-name: "glIsTexture";
end;

define C-function glLightModelf
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLfloat>;
  c-name: "glLightModelf";
end;

define C-function glLightModelfv
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glLightModelfv";
end;

define C-function glLightModeli
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLint>;
  c-name: "glLightModeli";
end;

define C-function glLightModeliv
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glLightModeliv";
end;

define C-function glLightf
  input parameter light_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLfloat>;
  c-name: "glLightf";
end;

define C-function glLightfv
  input parameter light_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glLightfv";
end;

define C-function glLighti
  input parameter light_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLint>;
  c-name: "glLighti";
end;

define C-function glLightiv
  input parameter light_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glLightiv";
end;

define C-function glLineStipple
  input parameter factor_ :: <GLint>;
  input parameter pattern_ :: <GLushort>;
  c-name: "glLineStipple";
end;

define C-function glLineWidth
  input parameter width_ :: <GLfloat>;
  c-name: "glLineWidth";
end;

define C-function glListBase
  input parameter base_ :: <GLuint>;
  c-name: "glListBase";
end;

define C-function glLoadIdentity
  c-name: "glLoadIdentity";
end;

define C-function glLoadMatrixd
  input parameter m_ :: <GLdouble*>;
  c-name: "glLoadMatrixd";
end;

define C-function glLoadMatrixf
  input parameter m_ :: <GLfloat*>;
  c-name: "glLoadMatrixf";
end;

define C-function glLoadName
  input parameter name_ :: <GLuint>;
  c-name: "glLoadName";
end;

define C-function glLogicOp
  input parameter opcode_ :: <GLenum>;
  c-name: "glLogicOp";
end;

define C-function glMap1d
  input parameter target_ :: <GLenum>;
  input parameter u1_ :: <GLdouble>;
  input parameter u2_ :: <GLdouble>;
  input parameter stride_ :: <GLint>;
  input parameter order_ :: <GLint>;
  input parameter points_ :: <GLdouble*>;
  c-name: "glMap1d";
end;

define C-function glMap1f
  input parameter target_ :: <GLenum>;
  input parameter u1_ :: <GLfloat>;
  input parameter u2_ :: <GLfloat>;
  input parameter stride_ :: <GLint>;
  input parameter order_ :: <GLint>;
  input parameter points_ :: <GLfloat*>;
  c-name: "glMap1f";
end;

define C-function glMap2d
  input parameter target_ :: <GLenum>;
  input parameter u1_ :: <GLdouble>;
  input parameter u2_ :: <GLdouble>;
  input parameter ustride_ :: <GLint>;
  input parameter uorder_ :: <GLint>;
  input parameter v1_ :: <GLdouble>;
  input parameter v2_ :: <GLdouble>;
  input parameter vstride_ :: <GLint>;
  input parameter vorder_ :: <GLint>;
  input parameter points_ :: <GLdouble*>;
  c-name: "glMap2d";
end;

define C-function glMap2f
  input parameter target_ :: <GLenum>;
  input parameter u1_ :: <GLfloat>;
  input parameter u2_ :: <GLfloat>;
  input parameter ustride_ :: <GLint>;
  input parameter uorder_ :: <GLint>;
  input parameter v1_ :: <GLfloat>;
  input parameter v2_ :: <GLfloat>;
  input parameter vstride_ :: <GLint>;
  input parameter vorder_ :: <GLint>;
  input parameter points_ :: <GLfloat*>;
  c-name: "glMap2f";
end;

define C-function glMapGrid1d
  input parameter un_ :: <GLint>;
  input parameter u1_ :: <GLdouble>;
  input parameter u2_ :: <GLdouble>;
  c-name: "glMapGrid1d";
end;

define C-function glMapGrid1f
  input parameter un_ :: <GLint>;
  input parameter u1_ :: <GLfloat>;
  input parameter u2_ :: <GLfloat>;
  c-name: "glMapGrid1f";
end;

define C-function glMapGrid2d
  input parameter un_ :: <GLint>;
  input parameter u1_ :: <GLdouble>;
  input parameter u2_ :: <GLdouble>;
  input parameter vn_ :: <GLint>;
  input parameter v1_ :: <GLdouble>;
  input parameter v2_ :: <GLdouble>;
  c-name: "glMapGrid2d";
end;

define C-function glMapGrid2f
  input parameter un_ :: <GLint>;
  input parameter u1_ :: <GLfloat>;
  input parameter u2_ :: <GLfloat>;
  input parameter vn_ :: <GLint>;
  input parameter v1_ :: <GLfloat>;
  input parameter v2_ :: <GLfloat>;
  c-name: "glMapGrid2f";
end;

define C-function glMaterialf
  input parameter face_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLfloat>;
  c-name: "glMaterialf";
end;

define C-function glMaterialfv
  input parameter face_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glMaterialfv";
end;

define C-function glMateriali
  input parameter face_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLint>;
  c-name: "glMateriali";
end;

define C-function glMaterialiv
  input parameter face_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glMaterialiv";
end;

define C-function glMatrixMode
  input parameter mode_ :: <GLenum>;
  c-name: "glMatrixMode";
end;

define C-function glMinmax
  input parameter target_ :: <GLenum>;
  input parameter internalformat_ :: <GLenum>;
  input parameter sink_ :: <GLboolean>;
  c-name: "glMinmax";
end;

define C-function glMultMatrixd
  input parameter m_ :: <GLdouble*>;
  c-name: "glMultMatrixd";
end;

define C-function glMultMatrixf
  input parameter m_ :: <GLfloat*>;
  c-name: "glMultMatrixf";
end;

define C-function glNewList
  input parameter list_ :: <GLuint>;
  input parameter mode_ :: <GLenum>;
  c-name: "glNewList";
end;

define C-function glNormal3b
  input parameter nx_ :: <GLbyte>;
  input parameter ny_ :: <GLbyte>;
  input parameter nz_ :: <GLbyte>;
  c-name: "glNormal3b";
end;

define C-function glNormal3bv
  input parameter v_ :: <GLbyte*>;
  c-name: "glNormal3bv";
end;

define C-function glNormal3d
  input parameter nx_ :: <GLdouble>;
  input parameter ny_ :: <GLdouble>;
  input parameter nz_ :: <GLdouble>;
  c-name: "glNormal3d";
end;

define C-function glNormal3dv
  input parameter v_ :: <GLdouble*>;
  c-name: "glNormal3dv";
end;

define C-function glNormal3f
  input parameter nx_ :: <GLfloat>;
  input parameter ny_ :: <GLfloat>;
  input parameter nz_ :: <GLfloat>;
  c-name: "glNormal3f";
end;

define C-function glNormal3fv
  input parameter v_ :: <GLfloat*>;
  c-name: "glNormal3fv";
end;

define C-function glNormal3i
  input parameter nx_ :: <GLint>;
  input parameter ny_ :: <GLint>;
  input parameter nz_ :: <GLint>;
  c-name: "glNormal3i";
end;

define C-function glNormal3iv
  input parameter v_ :: <GLint*>;
  c-name: "glNormal3iv";
end;

define C-function glNormal3s
  input parameter nx_ :: <GLshort>;
  input parameter ny_ :: <GLshort>;
  input parameter nz_ :: <GLshort>;
  c-name: "glNormal3s";
end;

define C-function glNormal3sv
  input parameter v_ :: <GLshort*>;
  c-name: "glNormal3sv";
end;

define C-function glNormalPointer
  input parameter type_ :: <GLenum>;
  input parameter stride_ :: <GLsizei>;
  input parameter pointer_ :: <GLvoid*>;
  c-name: "glNormalPointer";
end;

define C-function glOrtho
  input parameter left_ :: <GLdouble>;
  input parameter right_ :: <GLdouble>;
  input parameter bottom_ :: <GLdouble>;
  input parameter top_ :: <GLdouble>;
  input parameter zNear_ :: <GLdouble>;
  input parameter zFar_ :: <GLdouble>;
  c-name: "glOrtho";
end;

define C-function glPassThrough
  input parameter token_ :: <GLfloat>;
  c-name: "glPassThrough";
end;

define C-function glPixelMapfv
  input parameter map_ :: <GLenum>;
  input parameter mapsize_ :: <GLint>;
  input parameter values_ :: <GLfloat*>;
  c-name: "glPixelMapfv";
end;

define C-function glPixelMapuiv
  input parameter map_ :: <GLenum>;
  input parameter mapsize_ :: <GLint>;
  input parameter values_ :: <GLuint*>;
  c-name: "glPixelMapuiv";
end;

define C-function glPixelMapusv
  input parameter map_ :: <GLenum>;
  input parameter mapsize_ :: <GLint>;
  input parameter values_ :: <GLushort*>;
  c-name: "glPixelMapusv";
end;

define C-function glPixelStoref
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLfloat>;
  c-name: "glPixelStoref";
end;

define C-function glPixelStorei
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLint>;
  c-name: "glPixelStorei";
end;

define C-function glPixelTransferf
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLfloat>;
  c-name: "glPixelTransferf";
end;

define C-function glPixelTransferi
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLint>;
  c-name: "glPixelTransferi";
end;

define C-function glPixelZoom
  input parameter xfactor_ :: <GLfloat>;
  input parameter yfactor_ :: <GLfloat>;
  c-name: "glPixelZoom";
end;

define C-function glPointSize
  input parameter size_ :: <GLfloat>;
  c-name: "glPointSize";
end;

define C-function glPolygonMode
  input parameter face_ :: <GLenum>;
  input parameter mode_ :: <GLenum>;
  c-name: "glPolygonMode";
end;

define C-function glPolygonOffset
  input parameter factor_ :: <GLfloat>;
  input parameter units_ :: <GLfloat>;
  c-name: "glPolygonOffset";
end;

define C-function glPolygonStipple
  input parameter mask_ :: <GLubyte*>;
  c-name: "glPolygonStipple";
end;

define C-function glPopAttrib
  c-name: "glPopAttrib";
end;

define C-function glPopClientAttrib
  c-name: "glPopClientAttrib";
end;

define C-function glPopMatrix
  c-name: "glPopMatrix";
end;

define C-function glPopName
  c-name: "glPopName";
end;

define C-pointer-type <GLclampf*> => <GLclampf>;
define C-function glPrioritizeTextures
  input parameter n_ :: <GLsizei>;
  input parameter textures_ :: <GLuint*>;
  input parameter priorities_ :: <GLclampf*>;
  c-name: "glPrioritizeTextures";
end;

define C-function glPushAttrib
  input parameter mask_ :: <GLbitfield>;
  c-name: "glPushAttrib";
end;

define C-function glPushClientAttrib
  input parameter mask_ :: <GLbitfield>;
  c-name: "glPushClientAttrib";
end;

define C-function glPushMatrix
  c-name: "glPushMatrix";
end;

define C-function glPushName
  input parameter name_ :: <GLuint>;
  c-name: "glPushName";
end;

define C-function glRasterPos2d
  input parameter x_ :: <GLdouble>;
  input parameter y_ :: <GLdouble>;
  c-name: "glRasterPos2d";
end;

define C-function glRasterPos2dv
  input parameter v_ :: <GLdouble*>;
  c-name: "glRasterPos2dv";
end;

define C-function glRasterPos2f
  input parameter x_ :: <GLfloat>;
  input parameter y_ :: <GLfloat>;
  c-name: "glRasterPos2f";
end;

define C-function glRasterPos2fv
  input parameter v_ :: <GLfloat*>;
  c-name: "glRasterPos2fv";
end;

define C-function glRasterPos2i
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  c-name: "glRasterPos2i";
end;

define C-function glRasterPos2iv
  input parameter v_ :: <GLint*>;
  c-name: "glRasterPos2iv";
end;

define C-function glRasterPos2s
  input parameter x_ :: <GLshort>;
  input parameter y_ :: <GLshort>;
  c-name: "glRasterPos2s";
end;

define C-function glRasterPos2sv
  input parameter v_ :: <GLshort*>;
  c-name: "glRasterPos2sv";
end;

define C-function glRasterPos3d
  input parameter x_ :: <GLdouble>;
  input parameter y_ :: <GLdouble>;
  input parameter z_ :: <GLdouble>;
  c-name: "glRasterPos3d";
end;

define C-function glRasterPos3dv
  input parameter v_ :: <GLdouble*>;
  c-name: "glRasterPos3dv";
end;

define C-function glRasterPos3f
  input parameter x_ :: <GLfloat>;
  input parameter y_ :: <GLfloat>;
  input parameter z_ :: <GLfloat>;
  c-name: "glRasterPos3f";
end;

define C-function glRasterPos3fv
  input parameter v_ :: <GLfloat*>;
  c-name: "glRasterPos3fv";
end;

define C-function glRasterPos3i
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter z_ :: <GLint>;
  c-name: "glRasterPos3i";
end;

define C-function glRasterPos3iv
  input parameter v_ :: <GLint*>;
  c-name: "glRasterPos3iv";
end;

define C-function glRasterPos3s
  input parameter x_ :: <GLshort>;
  input parameter y_ :: <GLshort>;
  input parameter z_ :: <GLshort>;
  c-name: "glRasterPos3s";
end;

define C-function glRasterPos3sv
  input parameter v_ :: <GLshort*>;
  c-name: "glRasterPos3sv";
end;

define C-function glRasterPos4d
  input parameter x_ :: <GLdouble>;
  input parameter y_ :: <GLdouble>;
  input parameter z_ :: <GLdouble>;
  input parameter w_ :: <GLdouble>;
  c-name: "glRasterPos4d";
end;

define C-function glRasterPos4dv
  input parameter v_ :: <GLdouble*>;
  c-name: "glRasterPos4dv";
end;

define C-function glRasterPos4f
  input parameter x_ :: <GLfloat>;
  input parameter y_ :: <GLfloat>;
  input parameter z_ :: <GLfloat>;
  input parameter w_ :: <GLfloat>;
  c-name: "glRasterPos4f";
end;

define C-function glRasterPos4fv
  input parameter v_ :: <GLfloat*>;
  c-name: "glRasterPos4fv";
end;

define C-function glRasterPos4i
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter z_ :: <GLint>;
  input parameter w_ :: <GLint>;
  c-name: "glRasterPos4i";
end;

define C-function glRasterPos4iv
  input parameter v_ :: <GLint*>;
  c-name: "glRasterPos4iv";
end;

define C-function glRasterPos4s
  input parameter x_ :: <GLshort>;
  input parameter y_ :: <GLshort>;
  input parameter z_ :: <GLshort>;
  input parameter w_ :: <GLshort>;
  c-name: "glRasterPos4s";
end;

define C-function glRasterPos4sv
  input parameter v_ :: <GLshort*>;
  c-name: "glRasterPos4sv";
end;

define C-function glReadBuffer
  input parameter mode_ :: <GLenum>;
  c-name: "glReadBuffer";
end;

define C-function glReadPixels
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter pixels_ :: <GLvoid*>;
  c-name: "glReadPixels";
end;

define C-function glRectd
  input parameter x1_ :: <GLdouble>;
  input parameter y1_ :: <GLdouble>;
  input parameter x2_ :: <GLdouble>;
  input parameter y2_ :: <GLdouble>;
  c-name: "glRectd";
end;

define C-function glRectdv
  input parameter v1_ :: <GLdouble*>;
  input parameter v2_ :: <GLdouble*>;
  c-name: "glRectdv";
end;

define C-function glRectf
  input parameter x1_ :: <GLfloat>;
  input parameter y1_ :: <GLfloat>;
  input parameter x2_ :: <GLfloat>;
  input parameter y2_ :: <GLfloat>;
  c-name: "glRectf";
end;

define C-function glRectfv
  input parameter v1_ :: <GLfloat*>;
  input parameter v2_ :: <GLfloat*>;
  c-name: "glRectfv";
end;

define C-function glRecti
  input parameter x1_ :: <GLint>;
  input parameter y1_ :: <GLint>;
  input parameter x2_ :: <GLint>;
  input parameter y2_ :: <GLint>;
  c-name: "glRecti";
end;

define C-function glRectiv
  input parameter v1_ :: <GLint*>;
  input parameter v2_ :: <GLint*>;
  c-name: "glRectiv";
end;

define C-function glRects
  input parameter x1_ :: <GLshort>;
  input parameter y1_ :: <GLshort>;
  input parameter x2_ :: <GLshort>;
  input parameter y2_ :: <GLshort>;
  c-name: "glRects";
end;

define C-function glRectsv
  input parameter v1_ :: <GLshort*>;
  input parameter v2_ :: <GLshort*>;
  c-name: "glRectsv";
end;

define C-function glRenderMode
  input parameter mode_ :: <GLenum>;
  result res :: <GLint>;
  c-name: "glRenderMode";
end;

define C-function glResetHistogram
  input parameter target_ :: <GLenum>;
  c-name: "glResetHistogram";
end;

define C-function glResetMinmax
  input parameter target_ :: <GLenum>;
  c-name: "glResetMinmax";
end;

define C-function glRotated
  input parameter angle_ :: <GLdouble>;
  input parameter x_ :: <GLdouble>;
  input parameter y_ :: <GLdouble>;
  input parameter z_ :: <GLdouble>;
  c-name: "glRotated";
end;

define C-function glRotatef
  input parameter angle_ :: <GLfloat>;
  input parameter x_ :: <GLfloat>;
  input parameter y_ :: <GLfloat>;
  input parameter z_ :: <GLfloat>;
  c-name: "glRotatef";
end;

define C-function glScaled
  input parameter x_ :: <GLdouble>;
  input parameter y_ :: <GLdouble>;
  input parameter z_ :: <GLdouble>;
  c-name: "glScaled";
end;

define C-function glScalef
  input parameter x_ :: <GLfloat>;
  input parameter y_ :: <GLfloat>;
  input parameter z_ :: <GLfloat>;
  c-name: "glScalef";
end;

define C-function glScissor
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  c-name: "glScissor";
end;

define C-function glSelectBuffer
  input parameter size_ :: <GLsizei>;
  input parameter buffer_ :: <GLuint*>;
  c-name: "glSelectBuffer";
end;

define C-function glSeparableFilter2D
  input parameter target_ :: <GLenum>;
  input parameter internalformat_ :: <GLenum>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter row_ :: <GLvoid*>;
  input parameter column_ :: <GLvoid*>;
  c-name: "glSeparableFilter2D";
end;

define C-function glShadeModel
  input parameter mode_ :: <GLenum>;
  c-name: "glShadeModel";
end;

define C-function glStencilFunc
  input parameter func_ :: <GLenum>;
  input parameter ref_ :: <GLint>;
  input parameter mask_ :: <GLuint>;
  c-name: "glStencilFunc";
end;

define C-function glStencilMask
  input parameter mask_ :: <GLuint>;
  c-name: "glStencilMask";
end;

define C-function glStencilOp
  input parameter fail_ :: <GLenum>;
  input parameter zfail_ :: <GLenum>;
  input parameter zpass_ :: <GLenum>;
  c-name: "glStencilOp";
end;

define C-function glTexCoord1d
  input parameter s_ :: <GLdouble>;
  c-name: "glTexCoord1d";
end;

define C-function glTexCoord1dv
  input parameter v_ :: <GLdouble*>;
  c-name: "glTexCoord1dv";
end;

define C-function glTexCoord1f
  input parameter s_ :: <GLfloat>;
  c-name: "glTexCoord1f";
end;

define C-function glTexCoord1fv
  input parameter v_ :: <GLfloat*>;
  c-name: "glTexCoord1fv";
end;

define C-function glTexCoord1i
  input parameter s_ :: <GLint>;
  c-name: "glTexCoord1i";
end;

define C-function glTexCoord1iv
  input parameter v_ :: <GLint*>;
  c-name: "glTexCoord1iv";
end;

define C-function glTexCoord1s
  input parameter s_ :: <GLshort>;
  c-name: "glTexCoord1s";
end;

define C-function glTexCoord1sv
  input parameter v_ :: <GLshort*>;
  c-name: "glTexCoord1sv";
end;

define C-function glTexCoord2d
  input parameter s_ :: <GLdouble>;
  input parameter t_ :: <GLdouble>;
  c-name: "glTexCoord2d";
end;

define C-function glTexCoord2dv
  input parameter v_ :: <GLdouble*>;
  c-name: "glTexCoord2dv";
end;

define C-function glTexCoord2f
  input parameter s_ :: <GLfloat>;
  input parameter t_ :: <GLfloat>;
  c-name: "glTexCoord2f";
end;

define C-function glTexCoord2fv
  input parameter v_ :: <GLfloat*>;
  c-name: "glTexCoord2fv";
end;

define C-function glTexCoord2i
  input parameter s_ :: <GLint>;
  input parameter t_ :: <GLint>;
  c-name: "glTexCoord2i";
end;

define C-function glTexCoord2iv
  input parameter v_ :: <GLint*>;
  c-name: "glTexCoord2iv";
end;

define C-function glTexCoord2s
  input parameter s_ :: <GLshort>;
  input parameter t_ :: <GLshort>;
  c-name: "glTexCoord2s";
end;

define C-function glTexCoord2sv
  input parameter v_ :: <GLshort*>;
  c-name: "glTexCoord2sv";
end;

define C-function glTexCoord3d
  input parameter s_ :: <GLdouble>;
  input parameter t_ :: <GLdouble>;
  input parameter r_ :: <GLdouble>;
  c-name: "glTexCoord3d";
end;

define C-function glTexCoord3dv
  input parameter v_ :: <GLdouble*>;
  c-name: "glTexCoord3dv";
end;

define C-function glTexCoord3f
  input parameter s_ :: <GLfloat>;
  input parameter t_ :: <GLfloat>;
  input parameter r_ :: <GLfloat>;
  c-name: "glTexCoord3f";
end;

define C-function glTexCoord3fv
  input parameter v_ :: <GLfloat*>;
  c-name: "glTexCoord3fv";
end;

define C-function glTexCoord3i
  input parameter s_ :: <GLint>;
  input parameter t_ :: <GLint>;
  input parameter r_ :: <GLint>;
  c-name: "glTexCoord3i";
end;

define C-function glTexCoord3iv
  input parameter v_ :: <GLint*>;
  c-name: "glTexCoord3iv";
end;

define C-function glTexCoord3s
  input parameter s_ :: <GLshort>;
  input parameter t_ :: <GLshort>;
  input parameter r_ :: <GLshort>;
  c-name: "glTexCoord3s";
end;

define C-function glTexCoord3sv
  input parameter v_ :: <GLshort*>;
  c-name: "glTexCoord3sv";
end;

define C-function glTexCoord4d
  input parameter s_ :: <GLdouble>;
  input parameter t_ :: <GLdouble>;
  input parameter r_ :: <GLdouble>;
  input parameter q_ :: <GLdouble>;
  c-name: "glTexCoord4d";
end;

define C-function glTexCoord4dv
  input parameter v_ :: <GLdouble*>;
  c-name: "glTexCoord4dv";
end;

define C-function glTexCoord4f
  input parameter s_ :: <GLfloat>;
  input parameter t_ :: <GLfloat>;
  input parameter r_ :: <GLfloat>;
  input parameter q_ :: <GLfloat>;
  c-name: "glTexCoord4f";
end;

define C-function glTexCoord4fv
  input parameter v_ :: <GLfloat*>;
  c-name: "glTexCoord4fv";
end;

define C-function glTexCoord4i
  input parameter s_ :: <GLint>;
  input parameter t_ :: <GLint>;
  input parameter r_ :: <GLint>;
  input parameter q_ :: <GLint>;
  c-name: "glTexCoord4i";
end;

define C-function glTexCoord4iv
  input parameter v_ :: <GLint*>;
  c-name: "glTexCoord4iv";
end;

define C-function glTexCoord4s
  input parameter s_ :: <GLshort>;
  input parameter t_ :: <GLshort>;
  input parameter r_ :: <GLshort>;
  input parameter q_ :: <GLshort>;
  c-name: "glTexCoord4s";
end;

define C-function glTexCoord4sv
  input parameter v_ :: <GLshort*>;
  c-name: "glTexCoord4sv";
end;

define C-function glTexCoordPointer
  input parameter size_ :: <GLint>;
  input parameter type_ :: <GLenum>;
  input parameter stride_ :: <GLsizei>;
  input parameter pointer_ :: <GLvoid*>;
  c-name: "glTexCoordPointer";
end;

define C-function glTexEnvf
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLfloat>;
  c-name: "glTexEnvf";
end;

define C-function glTexEnvfv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glTexEnvfv";
end;

define C-function glTexEnvi
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLint>;
  c-name: "glTexEnvi";
end;

define C-function glTexEnviv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glTexEnviv";
end;

define C-function glTexGend
  input parameter coord_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLdouble>;
  c-name: "glTexGend";
end;

define C-function glTexGendv
  input parameter coord_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLdouble*>;
  c-name: "glTexGendv";
end;

define C-function glTexGenf
  input parameter coord_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLfloat>;
  c-name: "glTexGenf";
end;

define C-function glTexGenfv
  input parameter coord_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glTexGenfv";
end;

define C-function glTexGeni
  input parameter coord_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLint>;
  c-name: "glTexGeni";
end;

define C-function glTexGeniv
  input parameter coord_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glTexGeniv";
end;

define C-function glTexImage1D
  input parameter target_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter internalformat_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter border_ :: <GLint>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter pixels_ :: <GLvoid*>;
  c-name: "glTexImage1D";
end;

define C-function glTexImage2D
  input parameter target_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter internalformat_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  input parameter border_ :: <GLint>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter pixels_ :: <GLvoid*>;
  c-name: "glTexImage2D";
end;

define C-function glTexImage3D
  input parameter target_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter internalformat_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  input parameter depth_ :: <GLsizei>;
  input parameter border_ :: <GLint>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter pixels_ :: <GLvoid*>;
  c-name: "glTexImage3D";
end;

define C-function glTexParameterf
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLfloat>;
  c-name: "glTexParameterf";
end;

define C-function glTexParameterfv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glTexParameterfv";
end;

define C-function glTexParameteri
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLint>;
  c-name: "glTexParameteri";
end;

define C-function glTexParameteriv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glTexParameteriv";
end;

define C-function glTexSubImage1D
  input parameter target_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter xoffset_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter pixels_ :: <GLvoid*>;
  c-name: "glTexSubImage1D";
end;

define C-function glTexSubImage2D
  input parameter target_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter xoffset_ :: <GLint>;
  input parameter yoffset_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter pixels_ :: <GLvoid*>;
  c-name: "glTexSubImage2D";
end;

define C-function glTexSubImage3D
  input parameter target_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter xoffset_ :: <GLint>;
  input parameter yoffset_ :: <GLint>;
  input parameter zoffset_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  input parameter depth_ :: <GLsizei>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter pixels_ :: <GLvoid*>;
  c-name: "glTexSubImage3D";
end;

define C-function glTranslated
  input parameter x_ :: <GLdouble>;
  input parameter y_ :: <GLdouble>;
  input parameter z_ :: <GLdouble>;
  c-name: "glTranslated";
end;

define C-function glTranslatef
  input parameter x_ :: <GLfloat>;
  input parameter y_ :: <GLfloat>;
  input parameter z_ :: <GLfloat>;
  c-name: "glTranslatef";
end;

define C-function glVertex2d
  input parameter x_ :: <GLdouble>;
  input parameter y_ :: <GLdouble>;
  c-name: "glVertex2d";
end;

define C-function glVertex2dv
  input parameter v_ :: <GLdouble*>;
  c-name: "glVertex2dv";
end;

define C-function glVertex2f
  input parameter x_ :: <GLfloat>;
  input parameter y_ :: <GLfloat>;
  c-name: "glVertex2f";
end;

define C-function glVertex2fv
  input parameter v_ :: <GLfloat*>;
  c-name: "glVertex2fv";
end;

define C-function glVertex2i
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  c-name: "glVertex2i";
end;

define C-function glVertex2iv
  input parameter v_ :: <GLint*>;
  c-name: "glVertex2iv";
end;

define C-function glVertex2s
  input parameter x_ :: <GLshort>;
  input parameter y_ :: <GLshort>;
  c-name: "glVertex2s";
end;

define C-function glVertex2sv
  input parameter v_ :: <GLshort*>;
  c-name: "glVertex2sv";
end;

define C-function glVertex3d
  input parameter x_ :: <GLdouble>;
  input parameter y_ :: <GLdouble>;
  input parameter z_ :: <GLdouble>;
  c-name: "glVertex3d";
end;

define C-function glVertex3dv
  input parameter v_ :: <GLdouble*>;
  c-name: "glVertex3dv";
end;

define C-function glVertex3f
  input parameter x_ :: <GLfloat>;
  input parameter y_ :: <GLfloat>;
  input parameter z_ :: <GLfloat>;
  c-name: "glVertex3f";
end;

define C-function glVertex3fv
  input parameter v_ :: <GLfloat*>;
  c-name: "glVertex3fv";
end;

define C-function glVertex3i
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter z_ :: <GLint>;
  c-name: "glVertex3i";
end;

define C-function glVertex3iv
  input parameter v_ :: <GLint*>;
  c-name: "glVertex3iv";
end;

define C-function glVertex3s
  input parameter x_ :: <GLshort>;
  input parameter y_ :: <GLshort>;
  input parameter z_ :: <GLshort>;
  c-name: "glVertex3s";
end;

define C-function glVertex3sv
  input parameter v_ :: <GLshort*>;
  c-name: "glVertex3sv";
end;

define C-function glVertex4d
  input parameter x_ :: <GLdouble>;
  input parameter y_ :: <GLdouble>;
  input parameter z_ :: <GLdouble>;
  input parameter w_ :: <GLdouble>;
  c-name: "glVertex4d";
end;

define C-function glVertex4dv
  input parameter v_ :: <GLdouble*>;
  c-name: "glVertex4dv";
end;

define C-function glVertex4f
  input parameter x_ :: <GLfloat>;
  input parameter y_ :: <GLfloat>;
  input parameter z_ :: <GLfloat>;
  input parameter w_ :: <GLfloat>;
  c-name: "glVertex4f";
end;

define C-function glVertex4fv
  input parameter v_ :: <GLfloat*>;
  c-name: "glVertex4fv";
end;

define C-function glVertex4i
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter z_ :: <GLint>;
  input parameter w_ :: <GLint>;
  c-name: "glVertex4i";
end;

define C-function glVertex4iv
  input parameter v_ :: <GLint*>;
  c-name: "glVertex4iv";
end;

define C-function glVertex4s
  input parameter x_ :: <GLshort>;
  input parameter y_ :: <GLshort>;
  input parameter z_ :: <GLshort>;
  input parameter w_ :: <GLshort>;
  c-name: "glVertex4s";
end;

define C-function glVertex4sv
  input parameter v_ :: <GLshort*>;
  c-name: "glVertex4sv";
end;

define C-function glVertexPointer
  input parameter size_ :: <GLint>;
  input parameter type_ :: <GLenum>;
  input parameter stride_ :: <GLsizei>;
  input parameter pointer_ :: <GLvoid*>;
  c-name: "glVertexPointer";
end;

define C-function glViewport
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  c-name: "glViewport";
end;

define C-function glSampleCoverage
  input parameter value_ :: <GLclampf>;
  input parameter invert_ :: <GLboolean>;
  c-name: "glSampleCoverage";
end;

define C-function glLoadTransposeMatrixf
  input parameter m_ :: <GLfloat*>;
  c-name: "glLoadTransposeMatrixf";
end;

define C-function glLoadTransposeMatrixd
  input parameter m_ :: <GLdouble*>;
  c-name: "glLoadTransposeMatrixd";
end;

define C-function glMultTransposeMatrixf
  input parameter m_ :: <GLfloat*>;
  c-name: "glMultTransposeMatrixf";
end;

define C-function glMultTransposeMatrixd
  input parameter m_ :: <GLdouble*>;
  c-name: "glMultTransposeMatrixd";
end;

define C-function glCompressedTexImage3D
  input parameter target_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter internalformat_ :: <GLenum>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  input parameter depth_ :: <GLsizei>;
  input parameter border_ :: <GLint>;
  input parameter imageSize_ :: <GLsizei>;
  input parameter data_ :: <GLvoid*>;
  c-name: "glCompressedTexImage3D";
end;

define C-function glCompressedTexImage2D
  input parameter target_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter internalformat_ :: <GLenum>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  input parameter border_ :: <GLint>;
  input parameter imageSize_ :: <GLsizei>;
  input parameter data_ :: <GLvoid*>;
  c-name: "glCompressedTexImage2D";
end;

define C-function glCompressedTexImage1D
  input parameter target_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter internalformat_ :: <GLenum>;
  input parameter width_ :: <GLsizei>;
  input parameter border_ :: <GLint>;
  input parameter imageSize_ :: <GLsizei>;
  input parameter data_ :: <GLvoid*>;
  c-name: "glCompressedTexImage1D";
end;

define C-function glCompressedTexSubImage3D
  input parameter target_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter xoffset_ :: <GLint>;
  input parameter yoffset_ :: <GLint>;
  input parameter zoffset_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  input parameter depth_ :: <GLsizei>;
  input parameter format_ :: <GLenum>;
  input parameter imageSize_ :: <GLsizei>;
  input parameter data_ :: <GLvoid*>;
  c-name: "glCompressedTexSubImage3D";
end;

define C-function glCompressedTexSubImage2D
  input parameter target_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter xoffset_ :: <GLint>;
  input parameter yoffset_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  input parameter format_ :: <GLenum>;
  input parameter imageSize_ :: <GLsizei>;
  input parameter data_ :: <GLvoid*>;
  c-name: "glCompressedTexSubImage2D";
end;

define C-function glCompressedTexSubImage1D
  input parameter target_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter xoffset_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter format_ :: <GLenum>;
  input parameter imageSize_ :: <GLsizei>;
  input parameter data_ :: <GLvoid*>;
  c-name: "glCompressedTexSubImage1D";
end;

define C-function glGetCompressedTexImage
  input parameter target_ :: <GLenum>;
  input parameter lod_ :: <GLint>;
  input parameter img_ :: <GLvoid*>;
  c-name: "glGetCompressedTexImage";
end;

define C-function glActiveTexture
  input parameter texture_ :: <GLenum>;
  c-name: "glActiveTexture";
end;

define C-function glClientActiveTexture
  input parameter texture_ :: <GLenum>;
  c-name: "glClientActiveTexture";
end;

define C-function glMultiTexCoord1d
  input parameter target_ :: <GLenum>;
  input parameter s_ :: <GLdouble>;
  c-name: "glMultiTexCoord1d";
end;

define C-function glMultiTexCoord1dv
  input parameter target_ :: <GLenum>;
  input parameter v_ :: <GLdouble*>;
  c-name: "glMultiTexCoord1dv";
end;

define C-function glMultiTexCoord1f
  input parameter target_ :: <GLenum>;
  input parameter s_ :: <GLfloat>;
  c-name: "glMultiTexCoord1f";
end;

define C-function glMultiTexCoord1fv
  input parameter target_ :: <GLenum>;
  input parameter v_ :: <GLfloat*>;
  c-name: "glMultiTexCoord1fv";
end;

define C-function glMultiTexCoord1i
  input parameter target_ :: <GLenum>;
  input parameter s_ :: <GLint>;
  c-name: "glMultiTexCoord1i";
end;

define C-function glMultiTexCoord1iv
  input parameter target_ :: <GLenum>;
  input parameter v_ :: <GLint*>;
  c-name: "glMultiTexCoord1iv";
end;

define C-function glMultiTexCoord1s
  input parameter target_ :: <GLenum>;
  input parameter s_ :: <GLshort>;
  c-name: "glMultiTexCoord1s";
end;

define C-function glMultiTexCoord1sv
  input parameter target_ :: <GLenum>;
  input parameter v_ :: <GLshort*>;
  c-name: "glMultiTexCoord1sv";
end;

define C-function glMultiTexCoord2d
  input parameter target_ :: <GLenum>;
  input parameter s_ :: <GLdouble>;
  input parameter t_ :: <GLdouble>;
  c-name: "glMultiTexCoord2d";
end;

define C-function glMultiTexCoord2dv
  input parameter target_ :: <GLenum>;
  input parameter v_ :: <GLdouble*>;
  c-name: "glMultiTexCoord2dv";
end;

define C-function glMultiTexCoord2f
  input parameter target_ :: <GLenum>;
  input parameter s_ :: <GLfloat>;
  input parameter t_ :: <GLfloat>;
  c-name: "glMultiTexCoord2f";
end;

define C-function glMultiTexCoord2fv
  input parameter target_ :: <GLenum>;
  input parameter v_ :: <GLfloat*>;
  c-name: "glMultiTexCoord2fv";
end;

define C-function glMultiTexCoord2i
  input parameter target_ :: <GLenum>;
  input parameter s_ :: <GLint>;
  input parameter t_ :: <GLint>;
  c-name: "glMultiTexCoord2i";
end;

define C-function glMultiTexCoord2iv
  input parameter target_ :: <GLenum>;
  input parameter v_ :: <GLint*>;
  c-name: "glMultiTexCoord2iv";
end;

define C-function glMultiTexCoord2s
  input parameter target_ :: <GLenum>;
  input parameter s_ :: <GLshort>;
  input parameter t_ :: <GLshort>;
  c-name: "glMultiTexCoord2s";
end;

define C-function glMultiTexCoord2sv
  input parameter target_ :: <GLenum>;
  input parameter v_ :: <GLshort*>;
  c-name: "glMultiTexCoord2sv";
end;

define C-function glMultiTexCoord3d
  input parameter target_ :: <GLenum>;
  input parameter s_ :: <GLdouble>;
  input parameter t_ :: <GLdouble>;
  input parameter r_ :: <GLdouble>;
  c-name: "glMultiTexCoord3d";
end;

define C-function glMultiTexCoord3dv
  input parameter target_ :: <GLenum>;
  input parameter v_ :: <GLdouble*>;
  c-name: "glMultiTexCoord3dv";
end;

define C-function glMultiTexCoord3f
  input parameter target_ :: <GLenum>;
  input parameter s_ :: <GLfloat>;
  input parameter t_ :: <GLfloat>;
  input parameter r_ :: <GLfloat>;
  c-name: "glMultiTexCoord3f";
end;

define C-function glMultiTexCoord3fv
  input parameter target_ :: <GLenum>;
  input parameter v_ :: <GLfloat*>;
  c-name: "glMultiTexCoord3fv";
end;

define C-function glMultiTexCoord3i
  input parameter target_ :: <GLenum>;
  input parameter s_ :: <GLint>;
  input parameter t_ :: <GLint>;
  input parameter r_ :: <GLint>;
  c-name: "glMultiTexCoord3i";
end;

define C-function glMultiTexCoord3iv
  input parameter target_ :: <GLenum>;
  input parameter v_ :: <GLint*>;
  c-name: "glMultiTexCoord3iv";
end;

define C-function glMultiTexCoord3s
  input parameter target_ :: <GLenum>;
  input parameter s_ :: <GLshort>;
  input parameter t_ :: <GLshort>;
  input parameter r_ :: <GLshort>;
  c-name: "glMultiTexCoord3s";
end;

define C-function glMultiTexCoord3sv
  input parameter target_ :: <GLenum>;
  input parameter v_ :: <GLshort*>;
  c-name: "glMultiTexCoord3sv";
end;

define C-function glMultiTexCoord4d
  input parameter target_ :: <GLenum>;
  input parameter s_ :: <GLdouble>;
  input parameter t_ :: <GLdouble>;
  input parameter r_ :: <GLdouble>;
  input parameter q_ :: <GLdouble>;
  c-name: "glMultiTexCoord4d";
end;

define C-function glMultiTexCoord4dv
  input parameter target_ :: <GLenum>;
  input parameter v_ :: <GLdouble*>;
  c-name: "glMultiTexCoord4dv";
end;

define C-function glMultiTexCoord4f
  input parameter target_ :: <GLenum>;
  input parameter s_ :: <GLfloat>;
  input parameter t_ :: <GLfloat>;
  input parameter r_ :: <GLfloat>;
  input parameter q_ :: <GLfloat>;
  c-name: "glMultiTexCoord4f";
end;

define C-function glMultiTexCoord4fv
  input parameter target_ :: <GLenum>;
  input parameter v_ :: <GLfloat*>;
  c-name: "glMultiTexCoord4fv";
end;

define C-function glMultiTexCoord4i
  input parameter target_ :: <GLenum>;
  input parameter s_ :: <GLint>;
  input parameter t_ :: <GLint>;
  input parameter r_ :: <GLint>;
  input parameter q_ :: <GLint>;
  c-name: "glMultiTexCoord4i";
end;

define C-function glMultiTexCoord4iv
  input parameter target_ :: <GLenum>;
  input parameter v_ :: <GLint*>;
  c-name: "glMultiTexCoord4iv";
end;

define C-function glMultiTexCoord4s
  input parameter target_ :: <GLenum>;
  input parameter s_ :: <GLshort>;
  input parameter t_ :: <GLshort>;
  input parameter r_ :: <GLshort>;
  input parameter q_ :: <GLshort>;
  c-name: "glMultiTexCoord4s";
end;

define C-function glMultiTexCoord4sv
  input parameter target_ :: <GLenum>;
  input parameter v_ :: <GLshort*>;
  c-name: "glMultiTexCoord4sv";
end;

define C-function glFogCoordf
  input parameter coord_ :: <GLfloat>;
  c-name: "glFogCoordf";
end;

define C-function glFogCoordfv
  input parameter coord_ :: <GLfloat*>;
  c-name: "glFogCoordfv";
end;

define C-function glFogCoordd
  input parameter coord_ :: <GLdouble>;
  c-name: "glFogCoordd";
end;

define C-function glFogCoorddv
  input parameter coord_ :: <GLdouble*>;
  c-name: "glFogCoorddv";
end;

define C-function glFogCoordPointer
  input parameter type_ :: <GLenum>;
  input parameter stride_ :: <GLsizei>;
  input parameter pointer_ :: <GLvoid*>;
  c-name: "glFogCoordPointer";
end;

define C-function glSecondaryColor3b
  input parameter red_ :: <GLbyte>;
  input parameter green_ :: <GLbyte>;
  input parameter blue_ :: <GLbyte>;
  c-name: "glSecondaryColor3b";
end;

define C-function glSecondaryColor3bv
  input parameter v_ :: <GLbyte*>;
  c-name: "glSecondaryColor3bv";
end;

define C-function glSecondaryColor3d
  input parameter red_ :: <GLdouble>;
  input parameter green_ :: <GLdouble>;
  input parameter blue_ :: <GLdouble>;
  c-name: "glSecondaryColor3d";
end;

define C-function glSecondaryColor3dv
  input parameter v_ :: <GLdouble*>;
  c-name: "glSecondaryColor3dv";
end;

define C-function glSecondaryColor3f
  input parameter red_ :: <GLfloat>;
  input parameter green_ :: <GLfloat>;
  input parameter blue_ :: <GLfloat>;
  c-name: "glSecondaryColor3f";
end;

define C-function glSecondaryColor3fv
  input parameter v_ :: <GLfloat*>;
  c-name: "glSecondaryColor3fv";
end;

define C-function glSecondaryColor3i
  input parameter red_ :: <GLint>;
  input parameter green_ :: <GLint>;
  input parameter blue_ :: <GLint>;
  c-name: "glSecondaryColor3i";
end;

define C-function glSecondaryColor3iv
  input parameter v_ :: <GLint*>;
  c-name: "glSecondaryColor3iv";
end;

define C-function glSecondaryColor3s
  input parameter red_ :: <GLshort>;
  input parameter green_ :: <GLshort>;
  input parameter blue_ :: <GLshort>;
  c-name: "glSecondaryColor3s";
end;

define C-function glSecondaryColor3sv
  input parameter v_ :: <GLshort*>;
  c-name: "glSecondaryColor3sv";
end;

define C-function glSecondaryColor3ub
  input parameter red_ :: <GLubyte>;
  input parameter green_ :: <GLubyte>;
  input parameter blue_ :: <GLubyte>;
  c-name: "glSecondaryColor3ub";
end;

define C-function glSecondaryColor3ubv
  input parameter v_ :: <GLubyte*>;
  c-name: "glSecondaryColor3ubv";
end;

define C-function glSecondaryColor3ui
  input parameter red_ :: <GLuint>;
  input parameter green_ :: <GLuint>;
  input parameter blue_ :: <GLuint>;
  c-name: "glSecondaryColor3ui";
end;

define C-function glSecondaryColor3uiv
  input parameter v_ :: <GLuint*>;
  c-name: "glSecondaryColor3uiv";
end;

define C-function glSecondaryColor3us
  input parameter red_ :: <GLushort>;
  input parameter green_ :: <GLushort>;
  input parameter blue_ :: <GLushort>;
  c-name: "glSecondaryColor3us";
end;

define C-function glSecondaryColor3usv
  input parameter v_ :: <GLushort*>;
  c-name: "glSecondaryColor3usv";
end;

define C-function glSecondaryColorPointer
  input parameter size_ :: <GLint>;
  input parameter type_ :: <GLenum>;
  input parameter stride_ :: <GLsizei>;
  input parameter pointer_ :: <GLvoid*>;
  c-name: "glSecondaryColorPointer";
end;

define C-function glPointParameterf
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLfloat>;
  c-name: "glPointParameterf";
end;

define C-function glPointParameterfv
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glPointParameterfv";
end;

define C-function glPointParameteri
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLint>;
  c-name: "glPointParameteri";
end;

define C-function glPointParameteriv
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glPointParameteriv";
end;

define C-function glBlendFuncSeparate
  input parameter srcRGB_ :: <GLenum>;
  input parameter dstRGB_ :: <GLenum>;
  input parameter srcAlpha_ :: <GLenum>;
  input parameter dstAlpha_ :: <GLenum>;
  c-name: "glBlendFuncSeparate";
end;

define C-pointer-type <GLsizei*> => <GLsizei>;
define C-function glMultiDrawArrays
  input parameter mode_ :: <GLenum>;
  input parameter first_ :: <GLint*>;
  input parameter count_ :: <GLsizei*>;
  input parameter primcount_ :: <GLsizei>;
  c-name: "glMultiDrawArrays";
end;

define C-function glMultiDrawElements
  input parameter mode_ :: <GLenum>;
  input parameter count_ :: <GLsizei*>;
  input parameter type_ :: <GLenum>;
  input parameter indices_ :: <GLvoid**>;
  input parameter primcount_ :: <GLsizei>;
  c-name: "glMultiDrawElements";
end;

define C-function glWindowPos2d
  input parameter x_ :: <GLdouble>;
  input parameter y_ :: <GLdouble>;
  c-name: "glWindowPos2d";
end;

define C-function glWindowPos2dv
  input parameter v_ :: <GLdouble*>;
  c-name: "glWindowPos2dv";
end;

define C-function glWindowPos2f
  input parameter x_ :: <GLfloat>;
  input parameter y_ :: <GLfloat>;
  c-name: "glWindowPos2f";
end;

define C-function glWindowPos2fv
  input parameter v_ :: <GLfloat*>;
  c-name: "glWindowPos2fv";
end;

define C-function glWindowPos2i
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  c-name: "glWindowPos2i";
end;

define C-function glWindowPos2iv
  input parameter v_ :: <GLint*>;
  c-name: "glWindowPos2iv";
end;

define C-function glWindowPos2s
  input parameter x_ :: <GLshort>;
  input parameter y_ :: <GLshort>;
  c-name: "glWindowPos2s";
end;

define C-function glWindowPos2sv
  input parameter v_ :: <GLshort*>;
  c-name: "glWindowPos2sv";
end;

define C-function glWindowPos3d
  input parameter x_ :: <GLdouble>;
  input parameter y_ :: <GLdouble>;
  input parameter z_ :: <GLdouble>;
  c-name: "glWindowPos3d";
end;

define C-function glWindowPos3dv
  input parameter v_ :: <GLdouble*>;
  c-name: "glWindowPos3dv";
end;

define C-function glWindowPos3f
  input parameter x_ :: <GLfloat>;
  input parameter y_ :: <GLfloat>;
  input parameter z_ :: <GLfloat>;
  c-name: "glWindowPos3f";
end;

define C-function glWindowPos3fv
  input parameter v_ :: <GLfloat*>;
  c-name: "glWindowPos3fv";
end;

define C-function glWindowPos3i
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter z_ :: <GLint>;
  c-name: "glWindowPos3i";
end;

define C-function glWindowPos3iv
  input parameter v_ :: <GLint*>;
  c-name: "glWindowPos3iv";
end;

define C-function glWindowPos3s
  input parameter x_ :: <GLshort>;
  input parameter y_ :: <GLshort>;
  input parameter z_ :: <GLshort>;
  c-name: "glWindowPos3s";
end;

define C-function glWindowPos3sv
  input parameter v_ :: <GLshort*>;
  c-name: "glWindowPos3sv";
end;

define C-function glGenQueries
  input parameter n_ :: <GLsizei>;
  input parameter ids_ :: <GLuint*>;
  c-name: "glGenQueries";
end;

define C-function glDeleteQueries
  input parameter n_ :: <GLsizei>;
  input parameter ids_ :: <GLuint*>;
  c-name: "glDeleteQueries";
end;

define C-function glIsQuery
  input parameter id_ :: <GLuint>;
  result res :: <GLboolean>;
  c-name: "glIsQuery";
end;

define C-function glBeginQuery
  input parameter target_ :: <GLenum>;
  input parameter id_ :: <GLuint>;
  c-name: "glBeginQuery";
end;

define C-function glEndQuery
  input parameter target_ :: <GLenum>;
  c-name: "glEndQuery";
end;

define C-function glGetQueryiv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetQueryiv";
end;

define C-function glGetQueryObjectiv
  input parameter id_ :: <GLuint>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetQueryObjectiv";
end;

define C-function glGetQueryObjectuiv
  input parameter id_ :: <GLuint>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLuint*>;
  c-name: "glGetQueryObjectuiv";
end;

define C-function glBindBuffer
  input parameter target_ :: <GLenum>;
  input parameter buffer_ :: <GLuint>;
  c-name: "glBindBuffer";
end;

define C-function glDeleteBuffers
  input parameter n_ :: <GLsizei>;
  input parameter buffers_ :: <GLuint*>;
  c-name: "glDeleteBuffers";
end;

define C-function glGenBuffers
  input parameter n_ :: <GLsizei>;
  input parameter buffers_ :: <GLuint*>;
  c-name: "glGenBuffers";
end;

define C-function glIsBuffer
  input parameter buffer_ :: <GLuint>;
  result res :: <GLboolean>;
  c-name: "glIsBuffer";
end;

define C-function glBufferData
  input parameter target_ :: <GLenum>;
  input parameter size_ :: <GLsizeiptr>;
  input parameter data_ :: <GLvoid*>;
  input parameter usage_ :: <GLenum>;
  c-name: "glBufferData";
end;

define C-function glBufferSubData
  input parameter target_ :: <GLenum>;
  input parameter offset_ :: <GLintptr>;
  input parameter size_ :: <GLsizeiptr>;
  input parameter data_ :: <GLvoid*>;
  c-name: "glBufferSubData";
end;

define C-function glGetBufferSubData
  input parameter target_ :: <GLenum>;
  input parameter offset_ :: <GLintptr>;
  input parameter size_ :: <GLsizeiptr>;
  input parameter data_ :: <GLvoid*>;
  c-name: "glGetBufferSubData";
end;

define C-function glMapBuffer
  input parameter target_ :: <GLenum>;
  input parameter access_ :: <GLenum>;
  result res :: <GLvoid*>;
  c-name: "glMapBuffer";
end;

define C-function glUnmapBuffer
  input parameter target_ :: <GLenum>;
  result res :: <GLboolean>;
  c-name: "glUnmapBuffer";
end;

define C-function glGetBufferParameteriv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetBufferParameteriv";
end;

define C-function glGetBufferPointerv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLvoid**>;
  c-name: "glGetBufferPointerv";
end;

define C-pointer-type <GLenum*> => <GLenum>;
define C-function glDrawBuffers
  input parameter n_ :: <GLsizei>;
  input parameter bufs_ :: <GLenum*>;
  c-name: "glDrawBuffers";
end;

define C-function glVertexAttrib1d
  input parameter index_ :: <GLuint>;
  input parameter x_ :: <GLdouble>;
  c-name: "glVertexAttrib1d";
end;

define C-function glVertexAttrib1dv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLdouble*>;
  c-name: "glVertexAttrib1dv";
end;

define C-function glVertexAttrib1f
  input parameter index_ :: <GLuint>;
  input parameter x_ :: <GLfloat>;
  c-name: "glVertexAttrib1f";
end;

define C-function glVertexAttrib1fv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLfloat*>;
  c-name: "glVertexAttrib1fv";
end;

define C-function glVertexAttrib1s
  input parameter index_ :: <GLuint>;
  input parameter x_ :: <GLshort>;
  c-name: "glVertexAttrib1s";
end;

define C-function glVertexAttrib1sv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLshort*>;
  c-name: "glVertexAttrib1sv";
end;

define C-function glVertexAttrib2d
  input parameter index_ :: <GLuint>;
  input parameter x_ :: <GLdouble>;
  input parameter y_ :: <GLdouble>;
  c-name: "glVertexAttrib2d";
end;

define C-function glVertexAttrib2dv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLdouble*>;
  c-name: "glVertexAttrib2dv";
end;

define C-function glVertexAttrib2f
  input parameter index_ :: <GLuint>;
  input parameter x_ :: <GLfloat>;
  input parameter y_ :: <GLfloat>;
  c-name: "glVertexAttrib2f";
end;

define C-function glVertexAttrib2fv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLfloat*>;
  c-name: "glVertexAttrib2fv";
end;

define C-function glVertexAttrib2s
  input parameter index_ :: <GLuint>;
  input parameter x_ :: <GLshort>;
  input parameter y_ :: <GLshort>;
  c-name: "glVertexAttrib2s";
end;

define C-function glVertexAttrib2sv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLshort*>;
  c-name: "glVertexAttrib2sv";
end;

define C-function glVertexAttrib3d
  input parameter index_ :: <GLuint>;
  input parameter x_ :: <GLdouble>;
  input parameter y_ :: <GLdouble>;
  input parameter z_ :: <GLdouble>;
  c-name: "glVertexAttrib3d";
end;

define C-function glVertexAttrib3dv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLdouble*>;
  c-name: "glVertexAttrib3dv";
end;

define C-function glVertexAttrib3f
  input parameter index_ :: <GLuint>;
  input parameter x_ :: <GLfloat>;
  input parameter y_ :: <GLfloat>;
  input parameter z_ :: <GLfloat>;
  c-name: "glVertexAttrib3f";
end;

define C-function glVertexAttrib3fv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLfloat*>;
  c-name: "glVertexAttrib3fv";
end;

define C-function glVertexAttrib3s
  input parameter index_ :: <GLuint>;
  input parameter x_ :: <GLshort>;
  input parameter y_ :: <GLshort>;
  input parameter z_ :: <GLshort>;
  c-name: "glVertexAttrib3s";
end;

define C-function glVertexAttrib3sv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLshort*>;
  c-name: "glVertexAttrib3sv";
end;

define C-function glVertexAttrib4Nbv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLbyte*>;
  c-name: "glVertexAttrib4Nbv";
end;

define C-function glVertexAttrib4Niv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLint*>;
  c-name: "glVertexAttrib4Niv";
end;

define C-function glVertexAttrib4Nsv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLshort*>;
  c-name: "glVertexAttrib4Nsv";
end;

define C-function glVertexAttrib4Nub
  input parameter index_ :: <GLuint>;
  input parameter x_ :: <GLubyte>;
  input parameter y_ :: <GLubyte>;
  input parameter z_ :: <GLubyte>;
  input parameter w_ :: <GLubyte>;
  c-name: "glVertexAttrib4Nub";
end;

define C-function glVertexAttrib4Nubv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLubyte*>;
  c-name: "glVertexAttrib4Nubv";
end;

define C-function glVertexAttrib4Nuiv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLuint*>;
  c-name: "glVertexAttrib4Nuiv";
end;

define C-function glVertexAttrib4Nusv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLushort*>;
  c-name: "glVertexAttrib4Nusv";
end;

define C-function glVertexAttrib4bv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLbyte*>;
  c-name: "glVertexAttrib4bv";
end;

define C-function glVertexAttrib4d
  input parameter index_ :: <GLuint>;
  input parameter x_ :: <GLdouble>;
  input parameter y_ :: <GLdouble>;
  input parameter z_ :: <GLdouble>;
  input parameter w_ :: <GLdouble>;
  c-name: "glVertexAttrib4d";
end;

define C-function glVertexAttrib4dv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLdouble*>;
  c-name: "glVertexAttrib4dv";
end;

define C-function glVertexAttrib4f
  input parameter index_ :: <GLuint>;
  input parameter x_ :: <GLfloat>;
  input parameter y_ :: <GLfloat>;
  input parameter z_ :: <GLfloat>;
  input parameter w_ :: <GLfloat>;
  c-name: "glVertexAttrib4f";
end;

define C-function glVertexAttrib4fv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLfloat*>;
  c-name: "glVertexAttrib4fv";
end;

define C-function glVertexAttrib4iv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLint*>;
  c-name: "glVertexAttrib4iv";
end;

define C-function glVertexAttrib4s
  input parameter index_ :: <GLuint>;
  input parameter x_ :: <GLshort>;
  input parameter y_ :: <GLshort>;
  input parameter z_ :: <GLshort>;
  input parameter w_ :: <GLshort>;
  c-name: "glVertexAttrib4s";
end;

define C-function glVertexAttrib4sv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLshort*>;
  c-name: "glVertexAttrib4sv";
end;

define C-function glVertexAttrib4ubv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLubyte*>;
  c-name: "glVertexAttrib4ubv";
end;

define C-function glVertexAttrib4uiv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLuint*>;
  c-name: "glVertexAttrib4uiv";
end;

define C-function glVertexAttrib4usv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLushort*>;
  c-name: "glVertexAttrib4usv";
end;

define C-function glVertexAttribPointer
  input parameter index_ :: <GLuint>;
  input parameter size_ :: <GLint>;
  input parameter type_ :: <GLenum>;
  input parameter normalized_ :: <GLboolean>;
  input parameter stride_ :: <GLsizei>;
  input parameter pointer_ :: <GLvoid*>;
  c-name: "glVertexAttribPointer";
end;

define C-function glEnableVertexAttribArray
  input parameter index_ :: <GLuint>;
  c-name: "glEnableVertexAttribArray";
end;

define C-function glDisableVertexAttribArray
  input parameter index_ :: <GLuint>;
  c-name: "glDisableVertexAttribArray";
end;

define C-function glGetVertexAttribdv
  input parameter index_ :: <GLuint>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLdouble*>;
  c-name: "glGetVertexAttribdv";
end;

define C-function glGetVertexAttribfv
  input parameter index_ :: <GLuint>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glGetVertexAttribfv";
end;

define C-function glGetVertexAttribiv
  input parameter index_ :: <GLuint>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetVertexAttribiv";
end;

define C-function glGetVertexAttribPointerv
  input parameter index_ :: <GLuint>;
  input parameter pname_ :: <GLenum>;
  input parameter pointer_ :: <GLvoid**>;
  c-name: "glGetVertexAttribPointerv";
end;

define C-function glDeleteShader
  input parameter shader_ :: <GLuint>;
  c-name: "glDeleteShader";
end;

define C-function glDetachShader
  input parameter program_ :: <GLuint>;
  input parameter shader_ :: <GLuint>;
  c-name: "glDetachShader";
end;

define C-function glCreateShader
  input parameter type_ :: <GLenum>;
  result res :: <GLuint>;
  c-name: "glCreateShader";
end;

define C-pointer-type <GLchar*> => <GLchar>;
define C-pointer-type <GLchar**> => <GLchar*>;
define C-function glShaderSource
  input parameter shader_ :: <GLuint>;
  input parameter count_ :: <GLsizei>;
  input parameter string_ :: <GLchar**>;
  input parameter length_ :: <GLint*>;
  c-name: "glShaderSource";
end;

define C-function glCompileShader
  input parameter shader_ :: <GLuint>;
  c-name: "glCompileShader";
end;

define C-function glCreateProgram
  result res :: <GLuint>;
  c-name: "glCreateProgram";
end;

define C-function glAttachShader
  input parameter program_ :: <GLuint>;
  input parameter shader_ :: <GLuint>;
  c-name: "glAttachShader";
end;

define C-function glLinkProgram
  input parameter program_ :: <GLuint>;
  c-name: "glLinkProgram";
end;

define C-function glUseProgram
  input parameter program_ :: <GLuint>;
  c-name: "glUseProgram";
end;

define C-function glDeleteProgram
  input parameter program_ :: <GLuint>;
  c-name: "glDeleteProgram";
end;

define C-function glValidateProgram
  input parameter program_ :: <GLuint>;
  c-name: "glValidateProgram";
end;

define C-function glUniform1f
  input parameter location_ :: <GLint>;
  input parameter v0_ :: <GLfloat>;
  c-name: "glUniform1f";
end;

define C-function glUniform2f
  input parameter location_ :: <GLint>;
  input parameter v0_ :: <GLfloat>;
  input parameter v1_ :: <GLfloat>;
  c-name: "glUniform2f";
end;

define C-function glUniform3f
  input parameter location_ :: <GLint>;
  input parameter v0_ :: <GLfloat>;
  input parameter v1_ :: <GLfloat>;
  input parameter v2_ :: <GLfloat>;
  c-name: "glUniform3f";
end;

define C-function glUniform4f
  input parameter location_ :: <GLint>;
  input parameter v0_ :: <GLfloat>;
  input parameter v1_ :: <GLfloat>;
  input parameter v2_ :: <GLfloat>;
  input parameter v3_ :: <GLfloat>;
  c-name: "glUniform4f";
end;

define C-function glUniform1i
  input parameter location_ :: <GLint>;
  input parameter v0_ :: <GLint>;
  c-name: "glUniform1i";
end;

define C-function glUniform2i
  input parameter location_ :: <GLint>;
  input parameter v0_ :: <GLint>;
  input parameter v1_ :: <GLint>;
  c-name: "glUniform2i";
end;

define C-function glUniform3i
  input parameter location_ :: <GLint>;
  input parameter v0_ :: <GLint>;
  input parameter v1_ :: <GLint>;
  input parameter v2_ :: <GLint>;
  c-name: "glUniform3i";
end;

define C-function glUniform4i
  input parameter location_ :: <GLint>;
  input parameter v0_ :: <GLint>;
  input parameter v1_ :: <GLint>;
  input parameter v2_ :: <GLint>;
  input parameter v3_ :: <GLint>;
  c-name: "glUniform4i";
end;

define C-function glUniform1fv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter value_ :: <GLfloat*>;
  c-name: "glUniform1fv";
end;

define C-function glUniform2fv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter value_ :: <GLfloat*>;
  c-name: "glUniform2fv";
end;

define C-function glUniform3fv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter value_ :: <GLfloat*>;
  c-name: "glUniform3fv";
end;

define C-function glUniform4fv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter value_ :: <GLfloat*>;
  c-name: "glUniform4fv";
end;

define C-function glUniform1iv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter value_ :: <GLint*>;
  c-name: "glUniform1iv";
end;

define C-function glUniform2iv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter value_ :: <GLint*>;
  c-name: "glUniform2iv";
end;

define C-function glUniform3iv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter value_ :: <GLint*>;
  c-name: "glUniform3iv";
end;

define C-function glUniform4iv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter value_ :: <GLint*>;
  c-name: "glUniform4iv";
end;

define C-function glUniformMatrix2fv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter transpose_ :: <GLboolean>;
  input parameter value_ :: <GLfloat*>;
  c-name: "glUniformMatrix2fv";
end;

define C-function glUniformMatrix3fv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter transpose_ :: <GLboolean>;
  input parameter value_ :: <GLfloat*>;
  c-name: "glUniformMatrix3fv";
end;

define C-function glUniformMatrix4fv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter transpose_ :: <GLboolean>;
  input parameter value_ :: <GLfloat*>;
  c-name: "glUniformMatrix4fv";
end;

define C-function glIsShader
  input parameter shader_ :: <GLuint>;
  result res :: <GLboolean>;
  c-name: "glIsShader";
end;

define C-function glIsProgram
  input parameter program_ :: <GLuint>;
  result res :: <GLboolean>;
  c-name: "glIsProgram";
end;

define C-function glGetShaderiv
  input parameter shader_ :: <GLuint>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetShaderiv";
end;

define C-function glGetProgramiv
  input parameter program_ :: <GLuint>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetProgramiv";
end;

define C-function glGetAttachedShaders
  input parameter program_ :: <GLuint>;
  input parameter maxCount_ :: <GLsizei>;
  input parameter count_ :: <GLsizei*>;
  input parameter shaders_ :: <GLuint*>;
  c-name: "glGetAttachedShaders";
end;

define C-function glGetShaderInfoLog
  input parameter shader_ :: <GLuint>;
  input parameter bufSize_ :: <GLsizei>;
  input parameter length_ :: <GLsizei*>;
  input parameter infoLog_ :: <GLchar*>;
  c-name: "glGetShaderInfoLog";
end;

define C-function glGetProgramInfoLog
  input parameter program_ :: <GLuint>;
  input parameter bufSize_ :: <GLsizei>;
  input parameter length_ :: <GLsizei*>;
  input parameter infoLog_ :: <GLchar*>;
  c-name: "glGetProgramInfoLog";
end;

define C-function glGetUniformLocation
  input parameter program_ :: <GLuint>;
  input parameter name_ :: <GLchar*>;
  result res :: <GLint>;
  c-name: "glGetUniformLocation";
end;

define C-function glGetActiveUniform
  input parameter program_ :: <GLuint>;
  input parameter index_ :: <GLuint>;
  input parameter bufSize_ :: <GLsizei>;
  input parameter length_ :: <GLsizei*>;
  input parameter size_ :: <GLint*>;
  input parameter type_ :: <GLenum*>;
  input parameter name_ :: <GLchar*>;
  c-name: "glGetActiveUniform";
end;

define C-function glGetUniformfv
  input parameter program_ :: <GLuint>;
  input parameter location_ :: <GLint>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glGetUniformfv";
end;

define C-function glGetUniformiv
  input parameter program_ :: <GLuint>;
  input parameter location_ :: <GLint>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetUniformiv";
end;

define C-function glGetShaderSource
  input parameter shader_ :: <GLuint>;
  input parameter bufSize_ :: <GLsizei>;
  input parameter length_ :: <GLsizei*>;
  input parameter source_ :: <GLchar*>;
  c-name: "glGetShaderSource";
end;

define C-function glBindAttribLocation
  input parameter program_ :: <GLuint>;
  input parameter index_ :: <GLuint>;
  input parameter name_ :: <GLchar*>;
  c-name: "glBindAttribLocation";
end;

define C-function glGetActiveAttrib
  input parameter program_ :: <GLuint>;
  input parameter index_ :: <GLuint>;
  input parameter bufSize_ :: <GLsizei>;
  input parameter length_ :: <GLsizei*>;
  input parameter size_ :: <GLint*>;
  input parameter type_ :: <GLenum*>;
  input parameter name_ :: <GLchar*>;
  c-name: "glGetActiveAttrib";
end;

define C-function glGetAttribLocation
  input parameter program_ :: <GLuint>;
  input parameter name_ :: <GLchar*>;
  result res :: <GLint>;
  c-name: "glGetAttribLocation";
end;

define C-function glStencilFuncSeparate
  input parameter face_ :: <GLenum>;
  input parameter func_ :: <GLenum>;
  input parameter ref_ :: <GLint>;
  input parameter mask_ :: <GLuint>;
  c-name: "glStencilFuncSeparate";
end;

define C-function glStencilOpSeparate
  input parameter face_ :: <GLenum>;
  input parameter fail_ :: <GLenum>;
  input parameter zfail_ :: <GLenum>;
  input parameter zpass_ :: <GLenum>;
  c-name: "glStencilOpSeparate";
end;

define C-function glStencilMaskSeparate
  input parameter face_ :: <GLenum>;
  input parameter mask_ :: <GLuint>;
  c-name: "glStencilMaskSeparate";
end;

define C-function glUniformMatrix2x3fv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter transpose_ :: <GLboolean>;
  input parameter value_ :: <GLfloat*>;
  c-name: "glUniformMatrix2x3fv";
end;

define C-function glUniformMatrix3x2fv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter transpose_ :: <GLboolean>;
  input parameter value_ :: <GLfloat*>;
  c-name: "glUniformMatrix3x2fv";
end;

define C-function glUniformMatrix2x4fv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter transpose_ :: <GLboolean>;
  input parameter value_ :: <GLfloat*>;
  c-name: "glUniformMatrix2x4fv";
end;

define C-function glUniformMatrix4x2fv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter transpose_ :: <GLboolean>;
  input parameter value_ :: <GLfloat*>;
  c-name: "glUniformMatrix4x2fv";
end;

define C-function glUniformMatrix3x4fv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter transpose_ :: <GLboolean>;
  input parameter value_ :: <GLfloat*>;
  c-name: "glUniformMatrix3x4fv";
end;

define C-function glUniformMatrix4x3fv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter transpose_ :: <GLboolean>;
  input parameter value_ :: <GLfloat*>;
  c-name: "glUniformMatrix4x3fv";
end;

define constant $GL-LOGIC-OP = 3057;

define constant $GL-TEXTURE-COMPONENTS = 4099;

define constant $GL-VERSION-1-1 = 1;

define constant $GL-VERSION-1-2 = 1;

define constant $GL-VERSION-1-3 = 1;

define constant $GL-VERSION-1-4 = 1;

define constant $GL-VERSION-1-5 = 1;

define constant $GL-VERSION-2-0 = 1;

define constant $GL-VERSION-2-1 = 1;

define constant $GL-ACCUM = 256;

define constant $GL-LOAD = 257;

define constant $GL-RETURN = 258;

define constant $GL-MULT = 259;

define constant $GL-ADD = 260;

define constant $GL-NEVER = 512;

define constant $GL-LESS = 513;

define constant $GL-EQUAL = 514;

define constant $GL-LEQUAL = 515;

define constant $GL-GREATER = 516;

define constant $GL-NOTEQUAL = 517;

define constant $GL-GEQUAL = 518;

define constant $GL-ALWAYS = 519;

define constant $GL-CURRENT-BIT = 1;

define constant $GL-POINT-BIT = 2;

define constant $GL-LINE-BIT = 4;

define constant $GL-POLYGON-BIT = 8;

define constant $GL-POLYGON-STIPPLE-BIT = 16;

define constant $GL-PIXEL-MODE-BIT = 32;

define constant $GL-LIGHTING-BIT = 64;

define constant $GL-FOG-BIT = 128;

define constant $GL-DEPTH-BUFFER-BIT = 256;

define constant $GL-ACCUM-BUFFER-BIT = 512;

define constant $GL-STENCIL-BUFFER-BIT = 1024;

define constant $GL-VIEWPORT-BIT = 2048;

define constant $GL-TRANSFORM-BIT = 4096;

define constant $GL-ENABLE-BIT = 8192;

define constant $GL-COLOR-BUFFER-BIT = 16384;

define constant $GL-HINT-BIT = 32768;

define constant $GL-EVAL-BIT = 65536;

define constant $GL-LIST-BIT = 131072;

define constant $GL-TEXTURE-BIT = 262144;

define constant $GL-SCISSOR-BIT = 524288;

define constant $GL-ALL-ATTRIB-BITS = 1048575;

define constant $GL-POINTS = 0;

define constant $GL-LINES = 1;

define constant $GL-LINE-LOOP = 2;

define constant $GL-LINE-STRIP = 3;

define constant $GL-TRIANGLES = 4;

define constant $GL-TRIANGLE-STRIP = 5;

define constant $GL-TRIANGLE-FAN = 6;

define constant $GL-QUADS = 7;

define constant $GL-QUAD-STRIP = 8;

define constant $GL-POLYGON = 9;

define constant $GL-ZERO = 0;

define constant $GL-ONE = 1;

define constant $GL-SRC-COLOR = 768;

define constant $GL-ONE-MINUS-SRC-COLOR = 769;

define constant $GL-SRC-ALPHA = 770;

define constant $GL-ONE-MINUS-SRC-ALPHA = 771;

define constant $GL-DST-ALPHA = 772;

define constant $GL-ONE-MINUS-DST-ALPHA = 773;

define constant $GL-DST-COLOR = 774;

define constant $GL-ONE-MINUS-DST-COLOR = 775;

define constant $GL-SRC-ALPHA-SATURATE = 776;

define constant $GL-TRUE = 1;

define constant $GL-FALSE = 0;

define constant $GL-CLIP-PLANE0 = 12288;

define constant $GL-CLIP-PLANE1 = 12289;

define constant $GL-CLIP-PLANE2 = 12290;

define constant $GL-CLIP-PLANE3 = 12291;

define constant $GL-CLIP-PLANE4 = 12292;

define constant $GL-CLIP-PLANE5 = 12293;

define constant $GL-BYTE = 5120;

define constant $GL-UNSIGNED-BYTE = 5121;

define constant $GL-SHORT = 5122;

define constant $GL-UNSIGNED-SHORT = 5123;

define constant $GL-INT = 5124;

define constant $GL-UNSIGNED-INT = 5125;

define constant $GL-FLOAT = 5126;

define constant $GL-2-BYTES = 5127;

define constant $GL-3-BYTES = 5128;

define constant $GL-4-BYTES = 5129;

define constant $GL-DOUBLE = 5130;

define constant $GL-NONE = 0;

define constant $GL-FRONT-LEFT = 1024;

define constant $GL-FRONT-RIGHT = 1025;

define constant $GL-BACK-LEFT = 1026;

define constant $GL-BACK-RIGHT = 1027;

define constant $GL-FRONT = 1028;

define constant $GL-BACK = 1029;

define constant $GL-LEFT = 1030;

define constant $GL-RIGHT = 1031;

define constant $GL-FRONT-AND-BACK = 1032;

define constant $GL-AUX0 = 1033;

define constant $GL-AUX1 = 1034;

define constant $GL-AUX2 = 1035;

define constant $GL-AUX3 = 1036;

define constant $GL-NO-ERROR = 0;

define constant $GL-INVALID-ENUM = 1280;

define constant $GL-INVALID-VALUE = 1281;

define constant $GL-INVALID-OPERATION = 1282;

define constant $GL-STACK-OVERFLOW = 1283;

define constant $GL-STACK-UNDERFLOW = 1284;

define constant $GL-OUT-OF-MEMORY = 1285;

define constant $GL-2D = 1536;

define constant $GL-3D = 1537;

define constant $GL-3D-COLOR = 1538;

define constant $GL-3D-COLOR-TEXTURE = 1539;

define constant $GL-4D-COLOR-TEXTURE = 1540;

define constant $GL-PASS-THROUGH-TOKEN = 1792;

define constant $GL-POINT-TOKEN = 1793;

define constant $GL-LINE-TOKEN = 1794;

define constant $GL-POLYGON-TOKEN = 1795;

define constant $GL-BITMAP-TOKEN = 1796;

define constant $GL-DRAW-PIXEL-TOKEN = 1797;

define constant $GL-COPY-PIXEL-TOKEN = 1798;

define constant $GL-LINE-RESET-TOKEN = 1799;

define constant $GL-EXP = 2048;

define constant $GL-EXP2 = 2049;

define constant $GL-CW = 2304;

define constant $GL-CCW = 2305;

define constant $GL-COEFF = 2560;

define constant $GL-ORDER = 2561;

define constant $GL-DOMAIN = 2562;

define constant $GL-CURRENT-COLOR = 2816;

define constant $GL-CURRENT-INDEX = 2817;

define constant $GL-CURRENT-NORMAL = 2818;

define constant $GL-CURRENT-TEXTURE-COORDS = 2819;

define constant $GL-CURRENT-RASTER-COLOR = 2820;

define constant $GL-CURRENT-RASTER-INDEX = 2821;

define constant $GL-CURRENT-RASTER-TEXTURE-COORDS = 2822;

define constant $GL-CURRENT-RASTER-POSITION = 2823;

define constant $GL-CURRENT-RASTER-POSITION-VALID = 2824;

define constant $GL-CURRENT-RASTER-DISTANCE = 2825;

define constant $GL-POINT-SMOOTH = 2832;

define constant $GL-POINT-SIZE = 2833;

define constant $GL-POINT-SIZE-RANGE = 2834;

define constant $GL-POINT-SIZE-GRANULARITY = 2835;

define constant $GL-LINE-SMOOTH = 2848;

define constant $GL-LINE-WIDTH = 2849;

define constant $GL-LINE-WIDTH-RANGE = 2850;

define constant $GL-LINE-WIDTH-GRANULARITY = 2851;

define constant $GL-LINE-STIPPLE = 2852;

define constant $GL-LINE-STIPPLE-PATTERN = 2853;

define constant $GL-LINE-STIPPLE-REPEAT = 2854;

define constant $GL-LIST-MODE = 2864;

define constant $GL-MAX-LIST-NESTING = 2865;

define constant $GL-LIST-BASE = 2866;

define constant $GL-LIST-INDEX = 2867;

define constant $GL-POLYGON-MODE = 2880;

define constant $GL-POLYGON-SMOOTH = 2881;

define constant $GL-POLYGON-STIPPLE = 2882;

define constant $GL-EDGE-FLAG = 2883;

define constant $GL-CULL-FACE = 2884;

define constant $GL-CULL-FACE-MODE = 2885;

define constant $GL-FRONT-FACE = 2886;

define constant $GL-LIGHTING = 2896;

define constant $GL-LIGHT-MODEL-LOCAL-VIEWER = 2897;

define constant $GL-LIGHT-MODEL-TWO-SIDE = 2898;

define constant $GL-LIGHT-MODEL-AMBIENT = 2899;

define constant $GL-SHADE-MODEL = 2900;

define constant $GL-COLOR-MATERIAL-FACE = 2901;

define constant $GL-COLOR-MATERIAL-PARAMETER = 2902;

define constant $GL-COLOR-MATERIAL = 2903;

define constant $GL-FOG = 2912;

define constant $GL-FOG-INDEX = 2913;

define constant $GL-FOG-DENSITY = 2914;

define constant $GL-FOG-START = 2915;

define constant $GL-FOG-END = 2916;

define constant $GL-FOG-MODE = 2917;

define constant $GL-FOG-COLOR = 2918;

define constant $GL-DEPTH-RANGE = 2928;

define constant $GL-DEPTH-TEST = 2929;

define constant $GL-DEPTH-WRITEMASK = 2930;

define constant $GL-DEPTH-CLEAR-VALUE = 2931;

define constant $GL-DEPTH-FUNC = 2932;

define constant $GL-ACCUM-CLEAR-VALUE = 2944;

define constant $GL-STENCIL-TEST = 2960;

define constant $GL-STENCIL-CLEAR-VALUE = 2961;

define constant $GL-STENCIL-FUNC = 2962;

define constant $GL-STENCIL-VALUE-MASK = 2963;

define constant $GL-STENCIL-FAIL = 2964;

define constant $GL-STENCIL-PASS-DEPTH-FAIL = 2965;

define constant $GL-STENCIL-PASS-DEPTH-PASS = 2966;

define constant $GL-STENCIL-REF = 2967;

define constant $GL-STENCIL-WRITEMASK = 2968;

define constant $GL-MATRIX-MODE = 2976;

define constant $GL-NORMALIZE = 2977;

define constant $GL-VIEWPORT = 2978;

define constant $GL-MODELVIEW-STACK-DEPTH = 2979;

define constant $GL-PROJECTION-STACK-DEPTH = 2980;

define constant $GL-TEXTURE-STACK-DEPTH = 2981;

define constant $GL-MODELVIEW-MATRIX = 2982;

define constant $GL-PROJECTION-MATRIX = 2983;

define constant $GL-TEXTURE-MATRIX = 2984;

define constant $GL-ATTRIB-STACK-DEPTH = 2992;

define constant $GL-CLIENT-ATTRIB-STACK-DEPTH = 2993;

define constant $GL-ALPHA-TEST = 3008;

define constant $GL-ALPHA-TEST-FUNC = 3009;

define constant $GL-ALPHA-TEST-REF = 3010;

define constant $GL-DITHER = 3024;

define constant $GL-BLEND-DST = 3040;

define constant $GL-BLEND-SRC = 3041;

define constant $GL-BLEND = 3042;

define constant $GL-LOGIC-OP-MODE = 3056;

define constant $GL-INDEX-LOGIC-OP = 3057;

define constant $GL-COLOR-LOGIC-OP = 3058;

define constant $GL-AUX-BUFFERS = 3072;

define constant $GL-DRAW-BUFFER = 3073;

define constant $GL-READ-BUFFER = 3074;

define constant $GL-SCISSOR-BOX = 3088;

define constant $GL-SCISSOR-TEST = 3089;

define constant $GL-INDEX-CLEAR-VALUE = 3104;

define constant $GL-INDEX-WRITEMASK = 3105;

define constant $GL-COLOR-CLEAR-VALUE = 3106;

define constant $GL-COLOR-WRITEMASK = 3107;

define constant $GL-INDEX-MODE = 3120;

define constant $GL-RGBA-MODE = 3121;

define constant $GL-DOUBLEBUFFER = 3122;

define constant $GL-STEREO = 3123;

define constant $GL-RENDER-MODE = 3136;

define constant $GL-PERSPECTIVE-CORRECTION-HINT = 3152;

define constant $GL-POINT-SMOOTH-HINT = 3153;

define constant $GL-LINE-SMOOTH-HINT = 3154;

define constant $GL-POLYGON-SMOOTH-HINT = 3155;

define constant $GL-FOG-HINT = 3156;

define constant $GL-TEXTURE-GEN-S = 3168;

define constant $GL-TEXTURE-GEN-T = 3169;

define constant $GL-TEXTURE-GEN-R = 3170;

define constant $GL-TEXTURE-GEN-Q = 3171;

define constant $GL-PIXEL-MAP-I-TO-I = 3184;

define constant $GL-PIXEL-MAP-S-TO-S = 3185;

define constant $GL-PIXEL-MAP-I-TO-R = 3186;

define constant $GL-PIXEL-MAP-I-TO-G = 3187;

define constant $GL-PIXEL-MAP-I-TO-B = 3188;

define constant $GL-PIXEL-MAP-I-TO-A = 3189;

define constant $GL-PIXEL-MAP-R-TO-R = 3190;

define constant $GL-PIXEL-MAP-G-TO-G = 3191;

define constant $GL-PIXEL-MAP-B-TO-B = 3192;

define constant $GL-PIXEL-MAP-A-TO-A = 3193;

define constant $GL-PIXEL-MAP-I-TO-I-SIZE = 3248;

define constant $GL-PIXEL-MAP-S-TO-S-SIZE = 3249;

define constant $GL-PIXEL-MAP-I-TO-R-SIZE = 3250;

define constant $GL-PIXEL-MAP-I-TO-G-SIZE = 3251;

define constant $GL-PIXEL-MAP-I-TO-B-SIZE = 3252;

define constant $GL-PIXEL-MAP-I-TO-A-SIZE = 3253;

define constant $GL-PIXEL-MAP-R-TO-R-SIZE = 3254;

define constant $GL-PIXEL-MAP-G-TO-G-SIZE = 3255;

define constant $GL-PIXEL-MAP-B-TO-B-SIZE = 3256;

define constant $GL-PIXEL-MAP-A-TO-A-SIZE = 3257;

define constant $GL-UNPACK-SWAP-BYTES = 3312;

define constant $GL-UNPACK-LSB-FIRST = 3313;

define constant $GL-UNPACK-ROW-LENGTH = 3314;

define constant $GL-UNPACK-SKIP-ROWS = 3315;

define constant $GL-UNPACK-SKIP-PIXELS = 3316;

define constant $GL-UNPACK-ALIGNMENT = 3317;

define constant $GL-PACK-SWAP-BYTES = 3328;

define constant $GL-PACK-LSB-FIRST = 3329;

define constant $GL-PACK-ROW-LENGTH = 3330;

define constant $GL-PACK-SKIP-ROWS = 3331;

define constant $GL-PACK-SKIP-PIXELS = 3332;

define constant $GL-PACK-ALIGNMENT = 3333;

define constant $GL-MAP-COLOR = 3344;

define constant $GL-MAP-STENCIL = 3345;

define constant $GL-INDEX-SHIFT = 3346;

define constant $GL-INDEX-OFFSET = 3347;

define constant $GL-RED-SCALE = 3348;

define constant $GL-RED-BIAS = 3349;

define constant $GL-ZOOM-X = 3350;

define constant $GL-ZOOM-Y = 3351;

define constant $GL-GREEN-SCALE = 3352;

define constant $GL-GREEN-BIAS = 3353;

define constant $GL-BLUE-SCALE = 3354;

define constant $GL-BLUE-BIAS = 3355;

define constant $GL-ALPHA-SCALE = 3356;

define constant $GL-ALPHA-BIAS = 3357;

define constant $GL-DEPTH-SCALE = 3358;

define constant $GL-DEPTH-BIAS = 3359;

define constant $GL-MAX-EVAL-ORDER = 3376;

define constant $GL-MAX-LIGHTS = 3377;

define constant $GL-MAX-CLIP-PLANES = 3378;

define constant $GL-MAX-TEXTURE-SIZE = 3379;

define constant $GL-MAX-PIXEL-MAP-TABLE = 3380;

define constant $GL-MAX-ATTRIB-STACK-DEPTH = 3381;

define constant $GL-MAX-MODELVIEW-STACK-DEPTH = 3382;

define constant $GL-MAX-NAME-STACK-DEPTH = 3383;

define constant $GL-MAX-PROJECTION-STACK-DEPTH = 3384;

define constant $GL-MAX-TEXTURE-STACK-DEPTH = 3385;

define constant $GL-MAX-VIEWPORT-DIMS = 3386;

define constant $GL-MAX-CLIENT-ATTRIB-STACK-DEPTH = 3387;

define constant $GL-SUBPIXEL-BITS = 3408;

define constant $GL-INDEX-BITS = 3409;

define constant $GL-RED-BITS = 3410;

define constant $GL-GREEN-BITS = 3411;

define constant $GL-BLUE-BITS = 3412;

define constant $GL-ALPHA-BITS = 3413;

define constant $GL-DEPTH-BITS = 3414;

define constant $GL-STENCIL-BITS = 3415;

define constant $GL-ACCUM-RED-BITS = 3416;

define constant $GL-ACCUM-GREEN-BITS = 3417;

define constant $GL-ACCUM-BLUE-BITS = 3418;

define constant $GL-ACCUM-ALPHA-BITS = 3419;

define constant $GL-NAME-STACK-DEPTH = 3440;

define constant $GL-AUTO-NORMAL = 3456;

define constant $GL-MAP1-COLOR-4 = 3472;

define constant $GL-MAP1-INDEX = 3473;

define constant $GL-MAP1-NORMAL = 3474;

define constant $GL-MAP1-TEXTURE-COORD-1 = 3475;

define constant $GL-MAP1-TEXTURE-COORD-2 = 3476;

define constant $GL-MAP1-TEXTURE-COORD-3 = 3477;

define constant $GL-MAP1-TEXTURE-COORD-4 = 3478;

define constant $GL-MAP1-VERTEX-3 = 3479;

define constant $GL-MAP1-VERTEX-4 = 3480;

define constant $GL-MAP2-COLOR-4 = 3504;

define constant $GL-MAP2-INDEX = 3505;

define constant $GL-MAP2-NORMAL = 3506;

define constant $GL-MAP2-TEXTURE-COORD-1 = 3507;

define constant $GL-MAP2-TEXTURE-COORD-2 = 3508;

define constant $GL-MAP2-TEXTURE-COORD-3 = 3509;

define constant $GL-MAP2-TEXTURE-COORD-4 = 3510;

define constant $GL-MAP2-VERTEX-3 = 3511;

define constant $GL-MAP2-VERTEX-4 = 3512;

define constant $GL-MAP1-GRID-DOMAIN = 3536;

define constant $GL-MAP1-GRID-SEGMENTS = 3537;

define constant $GL-MAP2-GRID-DOMAIN = 3538;

define constant $GL-MAP2-GRID-SEGMENTS = 3539;

define constant $GL-TEXTURE-1D = 3552;

define constant $GL-TEXTURE-2D = 3553;

define constant $GL-FEEDBACK-BUFFER-POINTER = 3568;

define constant $GL-FEEDBACK-BUFFER-SIZE = 3569;

define constant $GL-FEEDBACK-BUFFER-TYPE = 3570;

define constant $GL-SELECTION-BUFFER-POINTER = 3571;

define constant $GL-SELECTION-BUFFER-SIZE = 3572;

define constant $GL-TEXTURE-WIDTH = 4096;

define constant $GL-TEXTURE-HEIGHT = 4097;

define constant $GL-TEXTURE-INTERNAL-FORMAT = 4099;

define constant $GL-TEXTURE-BORDER-COLOR = 4100;

define constant $GL-TEXTURE-BORDER = 4101;

define constant $GL-DONT-CARE = 4352;

define constant $GL-FASTEST = 4353;

define constant $GL-NICEST = 4354;

define constant $GL-LIGHT0 = 16384;

define constant $GL-LIGHT1 = 16385;

define constant $GL-LIGHT2 = 16386;

define constant $GL-LIGHT3 = 16387;

define constant $GL-LIGHT4 = 16388;

define constant $GL-LIGHT5 = 16389;

define constant $GL-LIGHT6 = 16390;

define constant $GL-LIGHT7 = 16391;

define constant $GL-AMBIENT = 4608;

define constant $GL-DIFFUSE = 4609;

define constant $GL-SPECULAR = 4610;

define constant $GL-POSITION = 4611;

define constant $GL-SPOT-DIRECTION = 4612;

define constant $GL-SPOT-EXPONENT = 4613;

define constant $GL-SPOT-CUTOFF = 4614;

define constant $GL-CONSTANT-ATTENUATION = 4615;

define constant $GL-LINEAR-ATTENUATION = 4616;

define constant $GL-QUADRATIC-ATTENUATION = 4617;

define constant $GL-COMPILE = 4864;

define constant $GL-COMPILE-AND-EXECUTE = 4865;

define constant $GL-CLEAR = 5376;

define constant $GL-AND = 5377;

define constant $GL-AND-REVERSE = 5378;

define constant $GL-COPY = 5379;

define constant $GL-AND-INVERTED = 5380;

define constant $GL-NOOP = 5381;

define constant $GL-XOR = 5382;

define constant $GL-OR = 5383;

define constant $GL-NOR = 5384;

define constant $GL-EQUIV = 5385;

define constant $GL-INVERT = 5386;

define constant $GL-OR-REVERSE = 5387;

define constant $GL-COPY-INVERTED = 5388;

define constant $GL-OR-INVERTED = 5389;

define constant $GL-NAND = 5390;

define constant $GL-SET = 5391;

define constant $GL-EMISSION = 5632;

define constant $GL-SHININESS = 5633;

define constant $GL-AMBIENT-AND-DIFFUSE = 5634;

define constant $GL-COLOR-INDEXES = 5635;

define constant $GL-MODELVIEW = 5888;

define constant $GL-PROJECTION = 5889;

define constant $GL-TEXTURE = 5890;

define constant $GL-COLOR = 6144;

define constant $GL-DEPTH = 6145;

define constant $GL-STENCIL = 6146;

define constant $GL-COLOR-INDEX = 6400;

define constant $GL-STENCIL-INDEX = 6401;

define constant $GL-DEPTH-COMPONENT = 6402;

define constant $GL-RED = 6403;

define constant $GL-GREEN = 6404;

define constant $GL-BLUE = 6405;

define constant $GL-ALPHA = 6406;

define constant $GL-RGB = 6407;

define constant $GL-RGBA = 6408;

define constant $GL-LUMINANCE = 6409;

define constant $GL-LUMINANCE-ALPHA = 6410;

define constant $GL-BITMAP = 6656;

define constant $GL-POINT = 6912;

define constant $GL-LINE = 6913;

define constant $GL-FILL = 6914;

define constant $GL-RENDER = 7168;

define constant $GL-FEEDBACK = 7169;

define constant $GL-SELECT = 7170;

define constant $GL-FLAT = 7424;

define constant $GL-SMOOTH = 7425;

define constant $GL-KEEP = 7680;

define constant $GL-REPLACE = 7681;

define constant $GL-INCR = 7682;

define constant $GL-DECR = 7683;

define constant $GL-VENDOR = 7936;

define constant $GL-RENDERER = 7937;

define constant $GL-VERSION = 7938;

define constant $GL-EXTENSIONS = 7939;

define constant $GL-S = 8192;

define constant $GL-T = 8193;

define constant $GL-R = 8194;

define constant $GL-Q = 8195;

define constant $GL-MODULATE = 8448;

define constant $GL-DECAL = 8449;

define constant $GL-TEXTURE-ENV-MODE = 8704;

define constant $GL-TEXTURE-ENV-COLOR = 8705;

define constant $GL-TEXTURE-ENV = 8960;

define constant $GL-EYE-LINEAR = 9216;

define constant $GL-OBJECT-LINEAR = 9217;

define constant $GL-SPHERE-MAP = 9218;

define constant $GL-TEXTURE-GEN-MODE = 9472;

define constant $GL-OBJECT-PLANE = 9473;

define constant $GL-EYE-PLANE = 9474;

define constant $GL-NEAREST = 9728;

define constant $GL-LINEAR = 9729;

define constant $GL-NEAREST-MIPMAP-NEAREST = 9984;

define constant $GL-LINEAR-MIPMAP-NEAREST = 9985;

define constant $GL-NEAREST-MIPMAP-LINEAR = 9986;

define constant $GL-LINEAR-MIPMAP-LINEAR = 9987;

define constant $GL-TEXTURE-MAG-FILTER = 10240;

define constant $GL-TEXTURE-MIN-FILTER = 10241;

define constant $GL-TEXTURE-WRAP-S = 10242;

define constant $GL-TEXTURE-WRAP-T = 10243;

define constant $GL-CLAMP = 10496;

define constant $GL-REPEAT = 10497;

define constant $GL-CLIENT-PIXEL-STORE-BIT = 1;

define constant $GL-CLIENT-VERTEX-ARRAY-BIT = 2;

define constant $GL-CLIENT-ALL-ATTRIB-BITS = -1;

define constant $GL-POLYGON-OFFSET-FACTOR = 32824;

define constant $GL-POLYGON-OFFSET-UNITS = 10752;

define constant $GL-POLYGON-OFFSET-POINT = 10753;

define constant $GL-POLYGON-OFFSET-LINE = 10754;

define constant $GL-POLYGON-OFFSET-FILL = 32823;

define constant $GL-ALPHA4 = 32827;

define constant $GL-ALPHA8 = 32828;

define constant $GL-ALPHA12 = 32829;

define constant $GL-ALPHA16 = 32830;

define constant $GL-LUMINANCE4 = 32831;

define constant $GL-LUMINANCE8 = 32832;

define constant $GL-LUMINANCE12 = 32833;

define constant $GL-LUMINANCE16 = 32834;

define constant $GL-LUMINANCE4-ALPHA4 = 32835;

define constant $GL-LUMINANCE6-ALPHA2 = 32836;

define constant $GL-LUMINANCE8-ALPHA8 = 32837;

define constant $GL-LUMINANCE12-ALPHA4 = 32838;

define constant $GL-LUMINANCE12-ALPHA12 = 32839;

define constant $GL-LUMINANCE16-ALPHA16 = 32840;

define constant $GL-INTENSITY = 32841;

define constant $GL-INTENSITY4 = 32842;

define constant $GL-INTENSITY8 = 32843;

define constant $GL-INTENSITY12 = 32844;

define constant $GL-INTENSITY16 = 32845;

define constant $GL-R3-G3-B2 = 10768;

define constant $GL-RGB4 = 32847;

define constant $GL-RGB5 = 32848;

define constant $GL-RGB8 = 32849;

define constant $GL-RGB10 = 32850;

define constant $GL-RGB12 = 32851;

define constant $GL-RGB16 = 32852;

define constant $GL-RGBA2 = 32853;

define constant $GL-RGBA4 = 32854;

define constant $GL-RGB5-A1 = 32855;

define constant $GL-RGBA8 = 32856;

define constant $GL-RGB10-A2 = 32857;

define constant $GL-RGBA12 = 32858;

define constant $GL-RGBA16 = 32859;

define constant $GL-TEXTURE-RED-SIZE = 32860;

define constant $GL-TEXTURE-GREEN-SIZE = 32861;

define constant $GL-TEXTURE-BLUE-SIZE = 32862;

define constant $GL-TEXTURE-ALPHA-SIZE = 32863;

define constant $GL-TEXTURE-LUMINANCE-SIZE = 32864;

define constant $GL-TEXTURE-INTENSITY-SIZE = 32865;

define constant $GL-PROXY-TEXTURE-1D = 32867;

define constant $GL-PROXY-TEXTURE-2D = 32868;

define constant $GL-TEXTURE-PRIORITY = 32870;

define constant $GL-TEXTURE-RESIDENT = 32871;

define constant $GL-TEXTURE-BINDING-1D = 32872;

define constant $GL-TEXTURE-BINDING-2D = 32873;

define constant $GL-TEXTURE-BINDING-3D = 32874;

define constant $GL-VERTEX-ARRAY = 32884;

define constant $GL-NORMAL-ARRAY = 32885;

define constant $GL-COLOR-ARRAY = 32886;

define constant $GL-INDEX-ARRAY = 32887;

define constant $GL-TEXTURE-COORD-ARRAY = 32888;

define constant $GL-EDGE-FLAG-ARRAY = 32889;

define constant $GL-VERTEX-ARRAY-SIZE = 32890;

define constant $GL-VERTEX-ARRAY-TYPE = 32891;

define constant $GL-VERTEX-ARRAY-STRIDE = 32892;

define constant $GL-NORMAL-ARRAY-TYPE = 32894;

define constant $GL-NORMAL-ARRAY-STRIDE = 32895;

define constant $GL-COLOR-ARRAY-SIZE = 32897;

define constant $GL-COLOR-ARRAY-TYPE = 32898;

define constant $GL-COLOR-ARRAY-STRIDE = 32899;

define constant $GL-INDEX-ARRAY-TYPE = 32901;

define constant $GL-INDEX-ARRAY-STRIDE = 32902;

define constant $GL-TEXTURE-COORD-ARRAY-SIZE = 32904;

define constant $GL-TEXTURE-COORD-ARRAY-TYPE = 32905;

define constant $GL-TEXTURE-COORD-ARRAY-STRIDE = 32906;

define constant $GL-EDGE-FLAG-ARRAY-STRIDE = 32908;

define constant $GL-VERTEX-ARRAY-POINTER = 32910;

define constant $GL-NORMAL-ARRAY-POINTER = 32911;

define constant $GL-COLOR-ARRAY-POINTER = 32912;

define constant $GL-INDEX-ARRAY-POINTER = 32913;

define constant $GL-TEXTURE-COORD-ARRAY-POINTER = 32914;

define constant $GL-EDGE-FLAG-ARRAY-POINTER = 32915;

define constant $GL-V2F = 10784;

define constant $GL-V3F = 10785;

define constant $GL-C4UB-V2F = 10786;

define constant $GL-C4UB-V3F = 10787;

define constant $GL-C3F-V3F = 10788;

define constant $GL-N3F-V3F = 10789;

define constant $GL-C4F-N3F-V3F = 10790;

define constant $GL-T2F-V3F = 10791;

define constant $GL-T4F-V4F = 10792;

define constant $GL-T2F-C4UB-V3F = 10793;

define constant $GL-T2F-C3F-V3F = 10794;

define constant $GL-T2F-N3F-V3F = 10795;

define constant $GL-T2F-C4F-N3F-V3F = 10796;

define constant $GL-T4F-C4F-N3F-V4F = 10797;

define constant $GL-BGR = 32992;

define constant $GL-BGRA = 32993;

define constant $GL-CONSTANT-COLOR = 32769;

define constant $GL-ONE-MINUS-CONSTANT-COLOR = 32770;

define constant $GL-CONSTANT-ALPHA = 32771;

define constant $GL-ONE-MINUS-CONSTANT-ALPHA = 32772;

define constant $GL-BLEND-COLOR = 32773;

define constant $GL-FUNC-ADD = 32774;

define constant $GL-MIN = 32775;

define constant $GL-MAX = 32776;

define constant $GL-BLEND-EQUATION = 32777;

define constant $GL-BLEND-EQUATION-RGB = 32777;

define constant $GL-BLEND-EQUATION-ALPHA = 34877;

define constant $GL-FUNC-SUBTRACT = 32778;

define constant $GL-FUNC-REVERSE-SUBTRACT = 32779;

define constant $GL-COLOR-MATRIX = 32945;

define constant $GL-COLOR-MATRIX-STACK-DEPTH = 32946;

define constant $GL-MAX-COLOR-MATRIX-STACK-DEPTH = 32947;

define constant $GL-POST-COLOR-MATRIX-RED-SCALE = 32948;

define constant $GL-POST-COLOR-MATRIX-GREEN-SCALE = 32949;

define constant $GL-POST-COLOR-MATRIX-BLUE-SCALE = 32950;

define constant $GL-POST-COLOR-MATRIX-ALPHA-SCALE = 32951;

define constant $GL-POST-COLOR-MATRIX-RED-BIAS = 32952;

define constant $GL-POST-COLOR-MATRIX-GREEN-BIAS = 32953;

define constant $GL-POST-COLOR-MATRIX-BLUE-BIAS = 32954;

define constant $GL-POST-COLOR-MATRIX-ALPHA-BIAS = 32955;

define constant $GL-COLOR-TABLE = 32976;

define constant $GL-POST-CONVOLUTION-COLOR-TABLE = 32977;

define constant $GL-POST-COLOR-MATRIX-COLOR-TABLE = 32978;

define constant $GL-PROXY-COLOR-TABLE = 32979;

define constant $GL-PROXY-POST-CONVOLUTION-COLOR-TABLE = 32980;

define constant $GL-PROXY-POST-COLOR-MATRIX-COLOR-TABLE = 32981;

define constant $GL-COLOR-TABLE-SCALE = 32982;

define constant $GL-COLOR-TABLE-BIAS = 32983;

define constant $GL-COLOR-TABLE-FORMAT = 32984;

define constant $GL-COLOR-TABLE-WIDTH = 32985;

define constant $GL-COLOR-TABLE-RED-SIZE = 32986;

define constant $GL-COLOR-TABLE-GREEN-SIZE = 32987;

define constant $GL-COLOR-TABLE-BLUE-SIZE = 32988;

define constant $GL-COLOR-TABLE-ALPHA-SIZE = 32989;

define constant $GL-COLOR-TABLE-LUMINANCE-SIZE = 32990;

define constant $GL-COLOR-TABLE-INTENSITY-SIZE = 32991;

define constant $GL-CONVOLUTION-1D = 32784;

define constant $GL-CONVOLUTION-2D = 32785;

define constant $GL-SEPARABLE-2D = 32786;

define constant $GL-CONVOLUTION-BORDER-MODE = 32787;

define constant $GL-CONVOLUTION-FILTER-SCALE = 32788;

define constant $GL-CONVOLUTION-FILTER-BIAS = 32789;

define constant $GL-REDUCE = 32790;

define constant $GL-CONVOLUTION-FORMAT = 32791;

define constant $GL-CONVOLUTION-WIDTH = 32792;

define constant $GL-CONVOLUTION-HEIGHT = 32793;

define constant $GL-MAX-CONVOLUTION-WIDTH = 32794;

define constant $GL-MAX-CONVOLUTION-HEIGHT = 32795;

define constant $GL-POST-CONVOLUTION-RED-SCALE = 32796;

define constant $GL-POST-CONVOLUTION-GREEN-SCALE = 32797;

define constant $GL-POST-CONVOLUTION-BLUE-SCALE = 32798;

define constant $GL-POST-CONVOLUTION-ALPHA-SCALE = 32799;

define constant $GL-POST-CONVOLUTION-RED-BIAS = 32800;

define constant $GL-POST-CONVOLUTION-GREEN-BIAS = 32801;

define constant $GL-POST-CONVOLUTION-BLUE-BIAS = 32802;

define constant $GL-POST-CONVOLUTION-ALPHA-BIAS = 32803;

define constant $GL-CONSTANT-BORDER = 33105;

define constant $GL-REPLICATE-BORDER = 33107;

define constant $GL-CONVOLUTION-BORDER-COLOR = 33108;

define constant $GL-MAX-ELEMENTS-VERTICES = 33000;

define constant $GL-MAX-ELEMENTS-INDICES = 33001;

define constant $GL-HISTOGRAM = 32804;

define constant $GL-PROXY-HISTOGRAM = 32805;

define constant $GL-HISTOGRAM-WIDTH = 32806;

define constant $GL-HISTOGRAM-FORMAT = 32807;

define constant $GL-HISTOGRAM-RED-SIZE = 32808;

define constant $GL-HISTOGRAM-GREEN-SIZE = 32809;

define constant $GL-HISTOGRAM-BLUE-SIZE = 32810;

define constant $GL-HISTOGRAM-ALPHA-SIZE = 32811;

define constant $GL-HISTOGRAM-LUMINANCE-SIZE = 32812;

define constant $GL-HISTOGRAM-SINK = 32813;

define constant $GL-MINMAX = 32814;

define constant $GL-MINMAX-FORMAT = 32815;

define constant $GL-MINMAX-SINK = 32816;

define constant $GL-TABLE-TOO-LARGE = 32817;

define constant $GL-UNSIGNED-BYTE-3-3-2 = 32818;

define constant $GL-UNSIGNED-SHORT-4-4-4-4 = 32819;

define constant $GL-UNSIGNED-SHORT-5-5-5-1 = 32820;

define constant $GL-UNSIGNED-INT-8-8-8-8 = 32821;

define constant $GL-UNSIGNED-INT-10-10-10-2 = 32822;

define constant $GL-UNSIGNED-BYTE-2-3-3-REV = 33634;

define constant $GL-UNSIGNED-SHORT-5-6-5 = 33635;

define constant $GL-UNSIGNED-SHORT-5-6-5-REV = 33636;

define constant $GL-UNSIGNED-SHORT-4-4-4-4-REV = 33637;

define constant $GL-UNSIGNED-SHORT-1-5-5-5-REV = 33638;

define constant $GL-UNSIGNED-INT-8-8-8-8-REV = 33639;

define constant $GL-UNSIGNED-INT-2-10-10-10-REV = 33640;

define constant $GL-RESCALE-NORMAL = 32826;

define constant $GL-LIGHT-MODEL-COLOR-CONTROL = 33272;

define constant $GL-SINGLE-COLOR = 33273;

define constant $GL-SEPARATE-SPECULAR-COLOR = 33274;

define constant $GL-PACK-SKIP-IMAGES = 32875;

define constant $GL-PACK-IMAGE-HEIGHT = 32876;

define constant $GL-UNPACK-SKIP-IMAGES = 32877;

define constant $GL-UNPACK-IMAGE-HEIGHT = 32878;

define constant $GL-TEXTURE-3D = 32879;

define constant $GL-PROXY-TEXTURE-3D = 32880;

define constant $GL-TEXTURE-DEPTH = 32881;

define constant $GL-TEXTURE-WRAP-R = 32882;

define constant $GL-MAX-3D-TEXTURE-SIZE = 32883;

define constant $GL-CLAMP-TO-EDGE = 33071;

define constant $GL-CLAMP-TO-BORDER = 33069;

define constant $GL-TEXTURE-MIN-LOD = 33082;

define constant $GL-TEXTURE-MAX-LOD = 33083;

define constant $GL-TEXTURE-BASE-LEVEL = 33084;

define constant $GL-TEXTURE-MAX-LEVEL = 33085;

define constant $GL-SMOOTH-POINT-SIZE-RANGE = 2834;

define constant $GL-SMOOTH-POINT-SIZE-GRANULARITY = 2835;

define constant $GL-SMOOTH-LINE-WIDTH-RANGE = 2850;

define constant $GL-SMOOTH-LINE-WIDTH-GRANULARITY = 2851;

define constant $GL-ALIASED-POINT-SIZE-RANGE = 33901;

define constant $GL-ALIASED-LINE-WIDTH-RANGE = 33902;

define constant $GL-TEXTURE0 = 33984;

define constant $GL-TEXTURE1 = 33985;

define constant $GL-TEXTURE2 = 33986;

define constant $GL-TEXTURE3 = 33987;

define constant $GL-TEXTURE4 = 33988;

define constant $GL-TEXTURE5 = 33989;

define constant $GL-TEXTURE6 = 33990;

define constant $GL-TEXTURE7 = 33991;

define constant $GL-TEXTURE8 = 33992;

define constant $GL-TEXTURE9 = 33993;

define constant $GL-TEXTURE10 = 33994;

define constant $GL-TEXTURE11 = 33995;

define constant $GL-TEXTURE12 = 33996;

define constant $GL-TEXTURE13 = 33997;

define constant $GL-TEXTURE14 = 33998;

define constant $GL-TEXTURE15 = 33999;

define constant $GL-TEXTURE16 = 34000;

define constant $GL-TEXTURE17 = 34001;

define constant $GL-TEXTURE18 = 34002;

define constant $GL-TEXTURE19 = 34003;

define constant $GL-TEXTURE20 = 34004;

define constant $GL-TEXTURE21 = 34005;

define constant $GL-TEXTURE22 = 34006;

define constant $GL-TEXTURE23 = 34007;

define constant $GL-TEXTURE24 = 34008;

define constant $GL-TEXTURE25 = 34009;

define constant $GL-TEXTURE26 = 34010;

define constant $GL-TEXTURE27 = 34011;

define constant $GL-TEXTURE28 = 34012;

define constant $GL-TEXTURE29 = 34013;

define constant $GL-TEXTURE30 = 34014;

define constant $GL-TEXTURE31 = 34015;

define constant $GL-ACTIVE-TEXTURE = 34016;

define constant $GL-CLIENT-ACTIVE-TEXTURE = 34017;

define constant $GL-MAX-TEXTURE-UNITS = 34018;

define constant $GL-COMBINE = 34160;

define constant $GL-COMBINE-RGB = 34161;

define constant $GL-COMBINE-ALPHA = 34162;

define constant $GL-RGB-SCALE = 34163;

define constant $GL-ADD-SIGNED = 34164;

define constant $GL-INTERPOLATE = 34165;

define constant $GL-CONSTANT = 34166;

define constant $GL-PRIMARY-COLOR = 34167;

define constant $GL-PREVIOUS = 34168;

define constant $GL-SUBTRACT = 34023;

define constant $GL-SRC0-RGB = 34176;

define constant $GL-SRC1-RGB = 34177;

define constant $GL-SRC2-RGB = 34178;

define constant $GL-SRC0-ALPHA = 34184;

define constant $GL-SRC1-ALPHA = 34185;

define constant $GL-SRC2-ALPHA = 34186;

define constant $GL-SOURCE0-RGB = 34176;

define constant $GL-SOURCE1-RGB = 34177;

define constant $GL-SOURCE2-RGB = 34178;

define constant $GL-SOURCE0-ALPHA = 34184;

define constant $GL-SOURCE1-ALPHA = 34185;

define constant $GL-SOURCE2-ALPHA = 34186;

define constant $GL-OPERAND0-RGB = 34192;

define constant $GL-OPERAND1-RGB = 34193;

define constant $GL-OPERAND2-RGB = 34194;

define constant $GL-OPERAND0-ALPHA = 34200;

define constant $GL-OPERAND1-ALPHA = 34201;

define constant $GL-OPERAND2-ALPHA = 34202;

define constant $GL-DOT3-RGB = 34478;

define constant $GL-DOT3-RGBA = 34479;

define constant $GL-TRANSPOSE-MODELVIEW-MATRIX = 34019;

define constant $GL-TRANSPOSE-PROJECTION-MATRIX = 34020;

define constant $GL-TRANSPOSE-TEXTURE-MATRIX = 34021;

define constant $GL-TRANSPOSE-COLOR-MATRIX = 34022;

define constant $GL-NORMAL-MAP = 34065;

define constant $GL-REFLECTION-MAP = 34066;

define constant $GL-TEXTURE-CUBE-MAP = 34067;

define constant $GL-TEXTURE-BINDING-CUBE-MAP = 34068;

define constant $GL-TEXTURE-CUBE-MAP-POSITIVE-X = 34069;

define constant $GL-TEXTURE-CUBE-MAP-NEGATIVE-X = 34070;

define constant $GL-TEXTURE-CUBE-MAP-POSITIVE-Y = 34071;

define constant $GL-TEXTURE-CUBE-MAP-NEGATIVE-Y = 34072;

define constant $GL-TEXTURE-CUBE-MAP-POSITIVE-Z = 34073;

define constant $GL-TEXTURE-CUBE-MAP-NEGATIVE-Z = 34074;

define constant $GL-PROXY-TEXTURE-CUBE-MAP = 34075;

define constant $GL-MAX-CUBE-MAP-TEXTURE-SIZE = 34076;

define constant $GL-COMPRESSED-ALPHA = 34025;

define constant $GL-COMPRESSED-LUMINANCE = 34026;

define constant $GL-COMPRESSED-LUMINANCE-ALPHA = 34027;

define constant $GL-COMPRESSED-INTENSITY = 34028;

define constant $GL-COMPRESSED-RGB = 34029;

define constant $GL-COMPRESSED-RGBA = 34030;

define constant $GL-TEXTURE-COMPRESSION-HINT = 34031;

define constant $GL-TEXTURE-COMPRESSED-IMAGE-SIZE = 34464;

define constant $GL-TEXTURE-COMPRESSED = 34465;

define constant $GL-NUM-COMPRESSED-TEXTURE-FORMATS = 34466;

define constant $GL-COMPRESSED-TEXTURE-FORMATS = 34467;

define constant $GL-MULTISAMPLE = 32925;

define constant $GL-SAMPLE-ALPHA-TO-COVERAGE = 32926;

define constant $GL-SAMPLE-ALPHA-TO-ONE = 32927;

define constant $GL-SAMPLE-COVERAGE = 32928;

define constant $GL-SAMPLE-BUFFERS = 32936;

define constant $GL-SAMPLES = 32937;

define constant $GL-SAMPLE-COVERAGE-VALUE = 32938;

define constant $GL-SAMPLE-COVERAGE-INVERT = 32939;

define constant $GL-MULTISAMPLE-BIT = -536870912;

define constant $GL-DEPTH-COMPONENT16 = 33189;

define constant $GL-DEPTH-COMPONENT24 = 33190;

define constant $GL-DEPTH-COMPONENT32 = 33191;

define constant $GL-TEXTURE-DEPTH-SIZE = 34890;

define constant $GL-DEPTH-TEXTURE-MODE = 34891;

define constant $GL-TEXTURE-COMPARE-MODE = 34892;

define constant $GL-TEXTURE-COMPARE-FUNC = 34893;

define constant $GL-COMPARE-R-TO-TEXTURE = 34894;

define constant $GL-QUERY-COUNTER-BITS = 34916;

define constant $GL-CURRENT-QUERY = 34917;

define constant $GL-QUERY-RESULT = 34918;

define constant $GL-QUERY-RESULT-AVAILABLE = 34919;

define constant $GL-SAMPLES-PASSED = 35092;

define constant $GL-FOG-COORD-SRC = 33872;

define constant $GL-FOG-COORD = 33873;

define constant $GL-FRAGMENT-DEPTH = 33874;

define constant $GL-CURRENT-FOG-COORD = 33875;

define constant $GL-FOG-COORD-ARRAY-TYPE = 33876;

define constant $GL-FOG-COORD-ARRAY-STRIDE = 33877;

define constant $GL-FOG-COORD-ARRAY-POINTER = 33878;

define constant $GL-FOG-COORD-ARRAY = 33879;

define constant $GL-FOG-COORDINATE-SOURCE = 33872;

define constant $GL-FOG-COORDINATE = 33873;

define constant $GL-CURRENT-FOG-COORDINATE = 33875;

define constant $GL-FOG-COORDINATE-ARRAY-TYPE = 33876;

define constant $GL-FOG-COORDINATE-ARRAY-STRIDE = 33877;

define constant $GL-FOG-COORDINATE-ARRAY-POINTER = 33878;

define constant $GL-FOG-COORDINATE-ARRAY = 33879;

define constant $GL-COLOR-SUM = 33880;

define constant $GL-CURRENT-SECONDARY-COLOR = 33881;

define constant $GL-SECONDARY-COLOR-ARRAY-SIZE = 33882;

define constant $GL-SECONDARY-COLOR-ARRAY-TYPE = 33883;

define constant $GL-SECONDARY-COLOR-ARRAY-STRIDE = 33884;

define constant $GL-SECONDARY-COLOR-ARRAY-POINTER = 33885;

define constant $GL-SECONDARY-COLOR-ARRAY = 33886;

define constant $GL-POINT-SIZE-MIN = 33062;

define constant $GL-POINT-SIZE-MAX = 33063;

define constant $GL-POINT-FADE-THRESHOLD-SIZE = 33064;

define constant $GL-POINT-DISTANCE-ATTENUATION = 33065;

define constant $GL-BLEND-DST-RGB = 32968;

define constant $GL-BLEND-SRC-RGB = 32969;

define constant $GL-BLEND-DST-ALPHA = 32970;

define constant $GL-BLEND-SRC-ALPHA = 32971;

define constant $GL-GENERATE-MIPMAP = 33169;

define constant $GL-GENERATE-MIPMAP-HINT = 33170;

define constant $GL-INCR-WRAP = 34055;

define constant $GL-DECR-WRAP = 34056;

define constant $GL-MIRRORED-REPEAT = 33648;

define constant $GL-MAX-TEXTURE-LOD-BIAS = 34045;

define constant $GL-TEXTURE-FILTER-CONTROL = 34048;

define constant $GL-TEXTURE-LOD-BIAS = 34049;

define constant $GL-ARRAY-BUFFER = 34962;

define constant $GL-ELEMENT-ARRAY-BUFFER = 34963;

define constant $GL-ARRAY-BUFFER-BINDING = 34964;

define constant $GL-ELEMENT-ARRAY-BUFFER-BINDING = 34965;

define constant $GL-VERTEX-ARRAY-BUFFER-BINDING = 34966;

define constant $GL-NORMAL-ARRAY-BUFFER-BINDING = 34967;

define constant $GL-COLOR-ARRAY-BUFFER-BINDING = 34968;

define constant $GL-INDEX-ARRAY-BUFFER-BINDING = 34969;

define constant $GL-TEXTURE-COORD-ARRAY-BUFFER-BINDING = 34970;

define constant $GL-EDGE-FLAG-ARRAY-BUFFER-BINDING = 34971;

define constant $GL-SECONDARY-COLOR-ARRAY-BUFFER-BINDING = 34972;

define constant $GL-FOG-COORD-ARRAY-BUFFER-BINDING = 34973;

define constant $GL-WEIGHT-ARRAY-BUFFER-BINDING = 34974;

define constant $GL-VERTEX-ATTRIB-ARRAY-BUFFER-BINDING = 34975;

define constant $GL-STREAM-DRAW = 35040;

define constant $GL-STREAM-READ = 35041;

define constant $GL-STREAM-COPY = 35042;

define constant $GL-STATIC-DRAW = 35044;

define constant $GL-STATIC-READ = 35045;

define constant $GL-STATIC-COPY = 35046;

define constant $GL-DYNAMIC-DRAW = 35048;

define constant $GL-DYNAMIC-READ = 35049;

define constant $GL-DYNAMIC-COPY = 35050;

define constant $GL-READ-ONLY = 35000;

define constant $GL-WRITE-ONLY = 35001;

define constant $GL-READ-WRITE = 35002;

define constant $GL-BUFFER-SIZE = 34660;

define constant $GL-BUFFER-USAGE = 34661;

define constant $GL-BUFFER-ACCESS = 35003;

define constant $GL-BUFFER-MAPPED = 35004;

define constant $GL-BUFFER-MAP-POINTER = 35005;

define constant $GL-FOG-COORDINATE-ARRAY-BUFFER-BINDING = 34973;

define constant $GL-CURRENT-PROGRAM = 35725;

define constant $GL-SHADER-TYPE = 35663;

define constant $GL-DELETE-STATUS = 35712;

define constant $GL-COMPILE-STATUS = 35713;

define constant $GL-LINK-STATUS = 35714;

define constant $GL-VALIDATE-STATUS = 35715;

define constant $GL-INFO-LOG-LENGTH = 35716;

define constant $GL-ATTACHED-SHADERS = 35717;

define constant $GL-ACTIVE-UNIFORMS = 35718;

define constant $GL-ACTIVE-UNIFORM-MAX-LENGTH = 35719;

define constant $GL-SHADER-SOURCE-LENGTH = 35720;

define constant $GL-FLOAT-VEC2 = 35664;

define constant $GL-FLOAT-VEC3 = 35665;

define constant $GL-FLOAT-VEC4 = 35666;

define constant $GL-INT-VEC2 = 35667;

define constant $GL-INT-VEC3 = 35668;

define constant $GL-INT-VEC4 = 35669;

define constant $GL-BOOL = 35670;

define constant $GL-BOOL-VEC2 = 35671;

define constant $GL-BOOL-VEC3 = 35672;

define constant $GL-BOOL-VEC4 = 35673;

define constant $GL-FLOAT-MAT2 = 35674;

define constant $GL-FLOAT-MAT3 = 35675;

define constant $GL-FLOAT-MAT4 = 35676;

define constant $GL-SAMPLER-1D = 35677;

define constant $GL-SAMPLER-2D = 35678;

define constant $GL-SAMPLER-3D = 35679;

define constant $GL-SAMPLER-CUBE = 35680;

define constant $GL-SAMPLER-1D-SHADOW = 35681;

define constant $GL-SAMPLER-2D-SHADOW = 35682;

define constant $GL-SHADING-LANGUAGE-VERSION = 35724;

define constant $GL-VERTEX-SHADER = 35633;

define constant $GL-MAX-VERTEX-UNIFORM-COMPONENTS = 35658;

define constant $GL-MAX-VARYING-FLOATS = 35659;

define constant $GL-MAX-VERTEX-TEXTURE-IMAGE-UNITS = 35660;

define constant $GL-MAX-COMBINED-TEXTURE-IMAGE-UNITS = 35661;

define constant $GL-ACTIVE-ATTRIBUTES = 35721;

define constant $GL-ACTIVE-ATTRIBUTE-MAX-LENGTH = 35722;

define constant $GL-FRAGMENT-SHADER = 35632;

define constant $GL-MAX-FRAGMENT-UNIFORM-COMPONENTS = 35657;

define constant $GL-FRAGMENT-SHADER-DERIVATIVE-HINT = 35723;

define constant $GL-MAX-VERTEX-ATTRIBS = 34921;

define constant $GL-VERTEX-ATTRIB-ARRAY-ENABLED = 34338;

define constant $GL-VERTEX-ATTRIB-ARRAY-SIZE = 34339;

define constant $GL-VERTEX-ATTRIB-ARRAY-STRIDE = 34340;

define constant $GL-VERTEX-ATTRIB-ARRAY-TYPE = 34341;

define constant $GL-VERTEX-ATTRIB-ARRAY-NORMALIZED = 34922;

define constant $GL-CURRENT-VERTEX-ATTRIB = 34342;

define constant $GL-VERTEX-ATTRIB-ARRAY-POINTER = 34373;

define constant $GL-VERTEX-PROGRAM-POINT-SIZE = 34370;

define constant $GL-VERTEX-PROGRAM-TWO-SIDE = 34371;

define constant $GL-MAX-TEXTURE-COORDS = 34929;

define constant $GL-MAX-TEXTURE-IMAGE-UNITS = 34930;

define constant $GL-MAX-DRAW-BUFFERS = 34852;

define constant $GL-DRAW-BUFFER0 = 34853;

define constant $GL-DRAW-BUFFER1 = 34854;

define constant $GL-DRAW-BUFFER2 = 34855;

define constant $GL-DRAW-BUFFER3 = 34856;

define constant $GL-DRAW-BUFFER4 = 34857;

define constant $GL-DRAW-BUFFER5 = 34858;

define constant $GL-DRAW-BUFFER6 = 34859;

define constant $GL-DRAW-BUFFER7 = 34860;

define constant $GL-DRAW-BUFFER8 = 34861;

define constant $GL-DRAW-BUFFER9 = 34862;

define constant $GL-DRAW-BUFFER10 = 34863;

define constant $GL-DRAW-BUFFER11 = 34864;

define constant $GL-DRAW-BUFFER12 = 34865;

define constant $GL-DRAW-BUFFER13 = 34866;

define constant $GL-DRAW-BUFFER14 = 34867;

define constant $GL-DRAW-BUFFER15 = 34868;

define constant $GL-POINT-SPRITE = 34913;

define constant $GL-COORD-REPLACE = 34914;

define constant $GL-POINT-SPRITE-COORD-ORIGIN = 36000;

define constant $GL-LOWER-LEFT = 36001;

define constant $GL-UPPER-LEFT = 36002;

define constant $GL-STENCIL-BACK-FUNC = 34816;

define constant $GL-STENCIL-BACK-VALUE-MASK = 36004;

define constant $GL-STENCIL-BACK-REF = 36003;

define constant $GL-STENCIL-BACK-FAIL = 34817;

define constant $GL-STENCIL-BACK-PASS-DEPTH-FAIL = 34818;

define constant $GL-STENCIL-BACK-PASS-DEPTH-PASS = 34819;

define constant $GL-STENCIL-BACK-WRITEMASK = 36005;

define constant $GL-CURRENT-RASTER-SECONDARY-COLOR = 33887;

define constant $GL-PIXEL-PACK-BUFFER = 35051;

define constant $GL-PIXEL-UNPACK-BUFFER = 35052;

define constant $GL-PIXEL-PACK-BUFFER-BINDING = 35053;

define constant $GL-PIXEL-UNPACK-BUFFER-BINDING = 35055;

define constant $GL-FLOAT-MAT2x3 = 35685;

define constant $GL-FLOAT-MAT2x4 = 35686;

define constant $GL-FLOAT-MAT3x2 = 35687;

define constant $GL-FLOAT-MAT3x4 = 35688;

define constant $GL-FLOAT-MAT4x2 = 35689;

define constant $GL-FLOAT-MAT4x3 = 35690;

define constant $GL-SRGB = 35904;

define constant $GL-SRGB8 = 35905;

define constant $GL-SRGB-ALPHA = 35906;

define constant $GL-SRGB8-ALPHA8 = 35907;

define constant $GL-SLUMINANCE-ALPHA = 35908;

define constant $GL-SLUMINANCE8-ALPHA8 = 35909;

define constant $GL-SLUMINANCE = 35910;

define constant $GL-SLUMINANCE8 = 35911;

define constant $GL-COMPRESSED-SRGB = 35912;

define constant $GL-COMPRESSED-SRGB-ALPHA = 35913;

define constant $GL-COMPRESSED-SLUMINANCE = 35914;

define constant $GL-COMPRESSED-SLUMINANCE-ALPHA = 35915;

