module: calvino-gl
synopsis: bindings for OpenGL 3.x
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

define constant <int64-t> = <C-signed-long>;

define constant <GLint64> = <int64-t>;

define constant <uint64-t> = <C-unsigned-long>;

define constant <GLuint64> = <uint64-t>;

define C-struct <__GLsync>
end;

define C-pointer-type <__GLsync*> => <__GLsync>;
define constant <GLsync> = <__GLsync*>;

define constant <GLhalf> = <C-unsigned-short>;

define C-function glCullFace
  input parameter mode_ :: <GLenum>;
  c-name: "glCullFace";
end;

define C-function glFrontFace
  input parameter mode_ :: <GLenum>;
  c-name: "glFrontFace";
end;

define C-function glHint
  input parameter target_ :: <GLenum>;
  input parameter mode_ :: <GLenum>;
  c-name: "glHint";
end;

define C-function glLineWidth
  input parameter width_ :: <GLfloat>;
  c-name: "glLineWidth";
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

define C-function glScissor
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  c-name: "glScissor";
end;

define C-function glTexParameterf
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLfloat>;
  c-name: "glTexParameterf";
end;

define C-pointer-type <GLfloat*> => <GLfloat>;
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

define C-pointer-type <GLint*> => <GLint>;
define C-function glTexParameteriv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glTexParameteriv";
end;

define C-pointer-type <GLvoid*> => <GLvoid>;
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

define C-function glDrawBuffer
  input parameter mode_ :: <GLenum>;
  c-name: "glDrawBuffer";
end;

define C-function glClear
  input parameter mask_ :: <GLbitfield>;
  c-name: "glClear";
end;

define C-function glClearColor
  input parameter red_ :: <GLclampf>;
  input parameter green_ :: <GLclampf>;
  input parameter blue_ :: <GLclampf>;
  input parameter alpha_ :: <GLclampf>;
  c-name: "glClearColor";
end;

define C-function glClearStencil
  input parameter s_ :: <GLint>;
  c-name: "glClearStencil";
end;

define C-function glClearDepth
  input parameter depth_ :: <GLclampd>;
  c-name: "glClearDepth";
end;

define C-function glStencilMask
  input parameter mask_ :: <GLuint>;
  c-name: "glStencilMask";
end;

define C-function glColorMask
  input parameter red_ :: <GLboolean>;
  input parameter green_ :: <GLboolean>;
  input parameter blue_ :: <GLboolean>;
  input parameter alpha_ :: <GLboolean>;
  c-name: "glColorMask";
end;

define C-function glDepthMask
  input parameter flag_ :: <GLboolean>;
  c-name: "glDepthMask";
end;

define C-function glDisable
  input parameter cap_ :: <GLenum>;
  c-name: "glDisable";
end;

define C-function glEnable
  input parameter cap_ :: <GLenum>;
  c-name: "glEnable";
end;

define C-function glFinish
  c-name: "glFinish";
end;

define C-function glFlush
  c-name: "glFlush";
end;

define C-function glBlendFunc
  input parameter sfactor_ :: <GLenum>;
  input parameter dfactor_ :: <GLenum>;
  c-name: "glBlendFunc";
end;

define C-function glLogicOp
  input parameter opcode_ :: <GLenum>;
  c-name: "glLogicOp";
end;

define C-function glStencilFunc
  input parameter func_ :: <GLenum>;
  input parameter ref_ :: <GLint>;
  input parameter mask_ :: <GLuint>;
  c-name: "glStencilFunc";
end;

define C-function glStencilOp
  input parameter fail_ :: <GLenum>;
  input parameter zfail_ :: <GLenum>;
  input parameter zpass_ :: <GLenum>;
  c-name: "glStencilOp";
end;

define C-function glDepthFunc
  input parameter func_ :: <GLenum>;
  c-name: "glDepthFunc";
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

define C-pointer-type <GLboolean*> => <GLboolean>;
define C-function glGetBooleanv
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLboolean*>;
  c-name: "glGetBooleanv";
end;

define C-pointer-type <GLdouble*> => <GLdouble>;
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

define C-function glGetIntegerv
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetIntegerv";
end;

define C-pointer-type <GLubyte*> => <GLubyte>;
define C-function glGetString
  input parameter name_ :: <GLenum>;
  result res :: <GLubyte*>;
  c-name: "glGetString";
end;

define C-function glGetTexImage
  input parameter target_ :: <GLenum>;
  input parameter level_ :: <GLint>;
  input parameter format_ :: <GLenum>;
  input parameter type_ :: <GLenum>;
  input parameter pixels_ :: <GLvoid*>;
  c-name: "glGetTexImage";
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

define C-function glIsEnabled
  input parameter cap_ :: <GLenum>;
  result res :: <GLboolean>;
  c-name: "glIsEnabled";
end;

define C-function glDepthRange
  input parameter near_ :: <GLclampd>;
  input parameter far_ :: <GLclampd>;
  c-name: "glDepthRange";
end;

define C-function glViewport
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  c-name: "glViewport";
end;

define constant <PFNGLCULLFACEPROC> = <C-function-pointer>;
define constant <PFNGLFRONTFACEPROC> = <C-function-pointer>;
define constant <PFNGLHINTPROC> = <C-function-pointer>;
define constant <PFNGLLINEWIDTHPROC> = <C-function-pointer>;
define constant <PFNGLPOINTSIZEPROC> = <C-function-pointer>;
define constant <PFNGLPOLYGONMODEPROC> = <C-function-pointer>;
define constant <PFNGLSCISSORPROC> = <C-function-pointer>;
define constant <PFNGLTEXPARAMETERFPROC> = <C-function-pointer>;
define constant <PFNGLTEXPARAMETERFVPROC> = <C-function-pointer>;
define constant <PFNGLTEXPARAMETERIPROC> = <C-function-pointer>;
define constant <PFNGLTEXPARAMETERIVPROC> = <C-function-pointer>;
define constant <PFNGLTEXIMAGE1DPROC> = <C-function-pointer>;
define constant <PFNGLTEXIMAGE2DPROC> = <C-function-pointer>;
define constant <PFNGLDRAWBUFFERPROC> = <C-function-pointer>;
define constant <PFNGLCLEARPROC> = <C-function-pointer>;
define constant <PFNGLCLEARCOLORPROC> = <C-function-pointer>;
define constant <PFNGLCLEARSTENCILPROC> = <C-function-pointer>;
define constant <PFNGLCLEARDEPTHPROC> = <C-function-pointer>;
define constant <PFNGLSTENCILMASKPROC> = <C-function-pointer>;
define constant <PFNGLCOLORMASKPROC> = <C-function-pointer>;
define constant <PFNGLDEPTHMASKPROC> = <C-function-pointer>;
define constant <PFNGLDISABLEPROC> = <C-function-pointer>;
define constant <PFNGLENABLEPROC> = <C-function-pointer>;
define constant <PFNGLFINISHPROC> = <C-function-pointer>;
define constant <PFNGLFLUSHPROC> = <C-function-pointer>;
define constant <PFNGLBLENDFUNCPROC> = <C-function-pointer>;
define constant <PFNGLLOGICOPPROC> = <C-function-pointer>;
define constant <PFNGLSTENCILFUNCPROC> = <C-function-pointer>;
define constant <PFNGLSTENCILOPPROC> = <C-function-pointer>;
define constant <PFNGLDEPTHFUNCPROC> = <C-function-pointer>;
define constant <PFNGLPIXELSTOREFPROC> = <C-function-pointer>;
define constant <PFNGLPIXELSTOREIPROC> = <C-function-pointer>;
define constant <PFNGLREADBUFFERPROC> = <C-function-pointer>;
define constant <PFNGLREADPIXELSPROC> = <C-function-pointer>;
define constant <PFNGLGETBOOLEANVPROC> = <C-function-pointer>;
define constant <PFNGLGETDOUBLEVPROC> = <C-function-pointer>;
define constant <PFNGLGETERRORPROC> = <C-function-pointer>;
define constant <PFNGLGETFLOATVPROC> = <C-function-pointer>;
define constant <PFNGLGETINTEGERVPROC> = <C-function-pointer>;
define constant <PFNGLGETSTRINGPROC> = <C-function-pointer>;
define constant <PFNGLGETTEXIMAGEPROC> = <C-function-pointer>;
define constant <PFNGLGETTEXPARAMETERFVPROC> = <C-function-pointer>;
define constant <PFNGLGETTEXPARAMETERIVPROC> = <C-function-pointer>;
define constant <PFNGLGETTEXLEVELPARAMETERFVPROC> = <C-function-pointer>;
define constant <PFNGLGETTEXLEVELPARAMETERIVPROC> = <C-function-pointer>;
define constant <PFNGLISENABLEDPROC> = <C-function-pointer>;
define constant <PFNGLDEPTHRANGEPROC> = <C-function-pointer>;
define constant <PFNGLVIEWPORTPROC> = <C-function-pointer>;
define C-function glDrawArrays
  input parameter mode_ :: <GLenum>;
  input parameter first_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  c-name: "glDrawArrays";
end;

define C-function glDrawElements
  input parameter mode_ :: <GLenum>;
  input parameter count_ :: <GLsizei>;
  input parameter type_ :: <GLenum>;
  input parameter indices_ :: <GLvoid*>;
  c-name: "glDrawElements";
end;

define C-function glPolygonOffset
  input parameter factor_ :: <GLfloat>;
  input parameter units_ :: <GLfloat>;
  c-name: "glPolygonOffset";
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

define C-function glBindTexture
  input parameter target_ :: <GLenum>;
  input parameter texture_ :: <GLuint>;
  c-name: "glBindTexture";
end;

define C-pointer-type <GLuint*> => <GLuint>;
define C-function glDeleteTextures
  input parameter n_ :: <GLsizei>;
  input parameter textures_ :: <GLuint*>;
  c-name: "glDeleteTextures";
end;

define C-function glGenTextures
  input parameter n_ :: <GLsizei>;
  input parameter textures_ :: <GLuint*>;
  c-name: "glGenTextures";
end;

define C-function glIsTexture
  input parameter texture_ :: <GLuint>;
  result res :: <GLboolean>;
  c-name: "glIsTexture";
end;

define constant <PFNGLDRAWARRAYSPROC> = <C-function-pointer>;
define constant <PFNGLDRAWELEMENTSPROC> = <C-function-pointer>;
define constant <PFNGLPOLYGONOFFSETPROC> = <C-function-pointer>;
define constant <PFNGLCOPYTEXIMAGE1DPROC> = <C-function-pointer>;
define constant <PFNGLCOPYTEXIMAGE2DPROC> = <C-function-pointer>;
define constant <PFNGLCOPYTEXSUBIMAGE1DPROC> = <C-function-pointer>;
define constant <PFNGLCOPYTEXSUBIMAGE2DPROC> = <C-function-pointer>;
define constant <PFNGLTEXSUBIMAGE1DPROC> = <C-function-pointer>;
define constant <PFNGLTEXSUBIMAGE2DPROC> = <C-function-pointer>;
define constant <PFNGLBINDTEXTUREPROC> = <C-function-pointer>;
define constant <PFNGLDELETETEXTURESPROC> = <C-function-pointer>;
define constant <PFNGLGENTEXTURESPROC> = <C-function-pointer>;
define constant <PFNGLISTEXTUREPROC> = <C-function-pointer>;
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

define C-function glDrawRangeElements
  input parameter mode_ :: <GLenum>;
  input parameter start_ :: <GLuint>;
  input parameter end_ :: <GLuint>;
  input parameter count_ :: <GLsizei>;
  input parameter type_ :: <GLenum>;
  input parameter indices_ :: <GLvoid*>;
  c-name: "glDrawRangeElements";
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

define constant <PFNGLBLENDCOLORPROC> = <C-function-pointer>;
define constant <PFNGLBLENDEQUATIONPROC> = <C-function-pointer>;
define constant <PFNGLDRAWRANGEELEMENTSPROC> = <C-function-pointer>;
define constant <PFNGLTEXIMAGE3DPROC> = <C-function-pointer>;
define constant <PFNGLTEXSUBIMAGE3DPROC> = <C-function-pointer>;
define constant <PFNGLCOPYTEXSUBIMAGE3DPROC> = <C-function-pointer>;
define C-function glActiveTexture
  input parameter texture_ :: <GLenum>;
  c-name: "glActiveTexture";
end;

define C-function glSampleCoverage
  input parameter value_ :: <GLclampf>;
  input parameter invert_ :: <GLboolean>;
  c-name: "glSampleCoverage";
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
  input parameter level_ :: <GLint>;
  input parameter img_ :: <GLvoid*>;
  c-name: "glGetCompressedTexImage";
end;

define constant <PFNGLACTIVETEXTUREPROC> = <C-function-pointer>;
define constant <PFNGLSAMPLECOVERAGEPROC> = <C-function-pointer>;
define constant <PFNGLCOMPRESSEDTEXIMAGE3DPROC> = <C-function-pointer>;
define constant <PFNGLCOMPRESSEDTEXIMAGE2DPROC> = <C-function-pointer>;
define constant <PFNGLCOMPRESSEDTEXIMAGE1DPROC> = <C-function-pointer>;
define constant <PFNGLCOMPRESSEDTEXSUBIMAGE3DPROC> = <C-function-pointer>;
define constant <PFNGLCOMPRESSEDTEXSUBIMAGE2DPROC> = <C-function-pointer>;
define constant <PFNGLCOMPRESSEDTEXSUBIMAGE1DPROC> = <C-function-pointer>;
define constant <PFNGLGETCOMPRESSEDTEXIMAGEPROC> = <C-function-pointer>;
define C-function glBlendFuncSeparate
  input parameter sfactorRGB_ :: <GLenum>;
  input parameter dfactorRGB_ :: <GLenum>;
  input parameter sfactorAlpha_ :: <GLenum>;
  input parameter dfactorAlpha_ :: <GLenum>;
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

define C-pointer-type <GLvoid**> => <GLvoid*>;
define C-function glMultiDrawElements
  input parameter mode_ :: <GLenum>;
  input parameter count_ :: <GLsizei*>;
  input parameter type_ :: <GLenum>;
  input parameter indices_ :: <GLvoid**>;
  input parameter primcount_ :: <GLsizei>;
  c-name: "glMultiDrawElements";
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

define constant <PFNGLBLENDFUNCSEPARATEPROC> = <C-function-pointer>;
define constant <PFNGLMULTIDRAWARRAYSPROC> = <C-function-pointer>;
define constant <PFNGLMULTIDRAWELEMENTSPROC> = <C-function-pointer>;
define constant <PFNGLPOINTPARAMETERFPROC> = <C-function-pointer>;
define constant <PFNGLPOINTPARAMETERFVPROC> = <C-function-pointer>;
define constant <PFNGLPOINTPARAMETERIPROC> = <C-function-pointer>;
define constant <PFNGLPOINTPARAMETERIVPROC> = <C-function-pointer>;
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

define constant <PFNGLGENQUERIESPROC> = <C-function-pointer>;
define constant <PFNGLDELETEQUERIESPROC> = <C-function-pointer>;
define constant <PFNGLISQUERYPROC> = <C-function-pointer>;
define constant <PFNGLBEGINQUERYPROC> = <C-function-pointer>;
define constant <PFNGLENDQUERYPROC> = <C-function-pointer>;
define constant <PFNGLGETQUERYIVPROC> = <C-function-pointer>;
define constant <PFNGLGETQUERYOBJECTIVPROC> = <C-function-pointer>;
define constant <PFNGLGETQUERYOBJECTUIVPROC> = <C-function-pointer>;
define constant <PFNGLBINDBUFFERPROC> = <C-function-pointer>;
define constant <PFNGLDELETEBUFFERSPROC> = <C-function-pointer>;
define constant <PFNGLGENBUFFERSPROC> = <C-function-pointer>;
define constant <PFNGLISBUFFERPROC> = <C-function-pointer>;
define constant <PFNGLBUFFERDATAPROC> = <C-function-pointer>;
define constant <PFNGLBUFFERSUBDATAPROC> = <C-function-pointer>;
define constant <PFNGLGETBUFFERSUBDATAPROC> = <C-function-pointer>;
define constant <PFNGLMAPBUFFERPROC> = <C-function-pointer>;
define constant <PFNGLUNMAPBUFFERPROC> = <C-function-pointer>;
define constant <PFNGLGETBUFFERPARAMETERIVPROC> = <C-function-pointer>;
define constant <PFNGLGETBUFFERPOINTERVPROC> = <C-function-pointer>;
define C-function glBlendEquationSeparate
  input parameter modeRGB_ :: <GLenum>;
  input parameter modeAlpha_ :: <GLenum>;
  c-name: "glBlendEquationSeparate";
end;

define C-pointer-type <GLenum*> => <GLenum>;
define C-function glDrawBuffers
  input parameter n_ :: <GLsizei>;
  input parameter bufs_ :: <GLenum*>;
  c-name: "glDrawBuffers";
end;

define C-function glStencilOpSeparate
  input parameter face_ :: <GLenum>;
  input parameter sfail_ :: <GLenum>;
  input parameter dpfail_ :: <GLenum>;
  input parameter dppass_ :: <GLenum>;
  c-name: "glStencilOpSeparate";
end;

define C-function glStencilFuncSeparate
  input parameter face_ :: <GLenum>;
  input parameter func_ :: <GLenum>;
  input parameter ref_ :: <GLint>;
  input parameter mask_ :: <GLuint>;
  c-name: "glStencilFuncSeparate";
end;

define C-function glStencilMaskSeparate
  input parameter face_ :: <GLenum>;
  input parameter mask_ :: <GLuint>;
  c-name: "glStencilMaskSeparate";
end;

define C-function glAttachShader
  input parameter program_ :: <GLuint>;
  input parameter shader_ :: <GLuint>;
  c-name: "glAttachShader";
end;

define C-pointer-type <GLchar*> => <GLchar>;
define C-function glBindAttribLocation
  input parameter program_ :: <GLuint>;
  input parameter index_ :: <GLuint>;
  input parameter name_ :: <GLchar*>;
  c-name: "glBindAttribLocation";
end;

define C-function glCompileShader
  input parameter shader_ :: <GLuint>;
  c-name: "glCompileShader";
end;

define C-function glCreateProgram
  result res :: <GLuint>;
  c-name: "glCreateProgram";
end;

define C-function glCreateShader
  input parameter type_ :: <GLenum>;
  result res :: <GLuint>;
  c-name: "glCreateShader";
end;

define C-function glDeleteProgram
  input parameter program_ :: <GLuint>;
  c-name: "glDeleteProgram";
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

define C-function glDisableVertexAttribArray
  input parameter index_ :: <GLuint>;
  c-name: "glDisableVertexAttribArray";
end;

define C-function glEnableVertexAttribArray
  input parameter index_ :: <GLuint>;
  c-name: "glEnableVertexAttribArray";
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

define C-function glGetAttachedShaders
  input parameter program_ :: <GLuint>;
  input parameter maxCount_ :: <GLsizei>;
  input parameter count_ :: <GLsizei*>;
  input parameter obj_ :: <GLuint*>;
  c-name: "glGetAttachedShaders";
end;

define C-function glGetAttribLocation
  input parameter program_ :: <GLuint>;
  input parameter name_ :: <GLchar*>;
  result res :: <GLint>;
  c-name: "glGetAttribLocation";
end;

define C-function glGetProgramiv
  input parameter program_ :: <GLuint>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetProgramiv";
end;

define C-function glGetProgramInfoLog
  input parameter program_ :: <GLuint>;
  input parameter bufSize_ :: <GLsizei>;
  input parameter length_ :: <GLsizei*>;
  input parameter infoLog_ :: <GLchar*>;
  c-name: "glGetProgramInfoLog";
end;

define C-function glGetShaderiv
  input parameter shader_ :: <GLuint>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetShaderiv";
end;

define C-function glGetShaderInfoLog
  input parameter shader_ :: <GLuint>;
  input parameter bufSize_ :: <GLsizei>;
  input parameter length_ :: <GLsizei*>;
  input parameter infoLog_ :: <GLchar*>;
  c-name: "glGetShaderInfoLog";
end;

define C-function glGetShaderSource
  input parameter shader_ :: <GLuint>;
  input parameter bufSize_ :: <GLsizei>;
  input parameter length_ :: <GLsizei*>;
  input parameter source_ :: <GLchar*>;
  c-name: "glGetShaderSource";
end;

define C-function glGetUniformLocation
  input parameter program_ :: <GLuint>;
  input parameter name_ :: <GLchar*>;
  result res :: <GLint>;
  c-name: "glGetUniformLocation";
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

define C-function glIsProgram
  input parameter program_ :: <GLuint>;
  result res :: <GLboolean>;
  c-name: "glIsProgram";
end;

define C-function glIsShader
  input parameter shader_ :: <GLuint>;
  result res :: <GLboolean>;
  c-name: "glIsShader";
end;

define C-function glLinkProgram
  input parameter program_ :: <GLuint>;
  c-name: "glLinkProgram";
end;

define C-pointer-type <GLchar**> => <GLchar*>;
define C-function glShaderSource
  input parameter shader_ :: <GLuint>;
  input parameter count_ :: <GLsizei>;
  input parameter string_ :: <GLchar**>;
  input parameter length_ :: <GLint*>;
  c-name: "glShaderSource";
end;

define C-function glUseProgram
  input parameter program_ :: <GLuint>;
  c-name: "glUseProgram";
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

define C-function glValidateProgram
  input parameter program_ :: <GLuint>;
  c-name: "glValidateProgram";
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

define C-pointer-type <GLshort*> => <GLshort>;
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

define C-pointer-type <GLbyte*> => <GLbyte>;
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

define C-pointer-type <GLushort*> => <GLushort>;
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

define constant <PFNGLBLENDEQUATIONSEPARATEPROC> = <C-function-pointer>;
define constant <PFNGLDRAWBUFFERSPROC> = <C-function-pointer>;
define constant <PFNGLSTENCILOPSEPARATEPROC> = <C-function-pointer>;
define constant <PFNGLSTENCILFUNCSEPARATEPROC> = <C-function-pointer>;
define constant <PFNGLSTENCILMASKSEPARATEPROC> = <C-function-pointer>;
define constant <PFNGLATTACHSHADERPROC> = <C-function-pointer>;
define constant <PFNGLBINDATTRIBLOCATIONPROC> = <C-function-pointer>;
define constant <PFNGLCOMPILESHADERPROC> = <C-function-pointer>;
define constant <PFNGLCREATEPROGRAMPROC> = <C-function-pointer>;
define constant <PFNGLCREATESHADERPROC> = <C-function-pointer>;
define constant <PFNGLDELETEPROGRAMPROC> = <C-function-pointer>;
define constant <PFNGLDELETESHADERPROC> = <C-function-pointer>;
define constant <PFNGLDETACHSHADERPROC> = <C-function-pointer>;
define constant <PFNGLDISABLEVERTEXATTRIBARRAYPROC> = <C-function-pointer>;
define constant <PFNGLENABLEVERTEXATTRIBARRAYPROC> = <C-function-pointer>;
define constant <PFNGLGETACTIVEATTRIBPROC> = <C-function-pointer>;
define constant <PFNGLGETACTIVEUNIFORMPROC> = <C-function-pointer>;
define constant <PFNGLGETATTACHEDSHADERSPROC> = <C-function-pointer>;
define constant <PFNGLGETATTRIBLOCATIONPROC> = <C-function-pointer>;
define constant <PFNGLGETPROGRAMIVPROC> = <C-function-pointer>;
define constant <PFNGLGETPROGRAMINFOLOGPROC> = <C-function-pointer>;
define constant <PFNGLGETSHADERIVPROC> = <C-function-pointer>;
define constant <PFNGLGETSHADERINFOLOGPROC> = <C-function-pointer>;
define constant <PFNGLGETSHADERSOURCEPROC> = <C-function-pointer>;
define constant <PFNGLGETUNIFORMLOCATIONPROC> = <C-function-pointer>;
define constant <PFNGLGETUNIFORMFVPROC> = <C-function-pointer>;
define constant <PFNGLGETUNIFORMIVPROC> = <C-function-pointer>;
define constant <PFNGLGETVERTEXATTRIBDVPROC> = <C-function-pointer>;
define constant <PFNGLGETVERTEXATTRIBFVPROC> = <C-function-pointer>;
define constant <PFNGLGETVERTEXATTRIBIVPROC> = <C-function-pointer>;
define constant <PFNGLGETVERTEXATTRIBPOINTERVPROC> = <C-function-pointer>;
define constant <PFNGLISPROGRAMPROC> = <C-function-pointer>;
define constant <PFNGLISSHADERPROC> = <C-function-pointer>;
define constant <PFNGLLINKPROGRAMPROC> = <C-function-pointer>;
define constant <PFNGLSHADERSOURCEPROC> = <C-function-pointer>;
define constant <PFNGLUSEPROGRAMPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM1FPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM2FPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM3FPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM4FPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM1IPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM2IPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM3IPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM4IPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM1FVPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM2FVPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM3FVPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM4FVPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM1IVPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM2IVPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM3IVPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM4IVPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORMMATRIX2FVPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORMMATRIX3FVPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORMMATRIX4FVPROC> = <C-function-pointer>;
define constant <PFNGLVALIDATEPROGRAMPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB1DPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB1DVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB1FPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB1FVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB1SPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB1SVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB2DPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB2DVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB2FPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB2FVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB2SPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB2SVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB3DPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB3DVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB3FPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB3FVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB3SPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB3SVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB4NBVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB4NIVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB4NSVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB4NUBPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB4NUBVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB4NUIVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB4NUSVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB4BVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB4DPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB4DVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB4FPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB4FVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB4IVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB4SPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB4SVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB4UBVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB4UIVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIB4USVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBPOINTERPROC> = <C-function-pointer>;
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

define constant <PFNGLUNIFORMMATRIX2X3FVPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORMMATRIX3X2FVPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORMMATRIX2X4FVPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORMMATRIX4X2FVPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORMMATRIX3X4FVPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORMMATRIX4X3FVPROC> = <C-function-pointer>;
define C-function glColorMaski
  input parameter index_ :: <GLuint>;
  input parameter r_ :: <GLboolean>;
  input parameter g_ :: <GLboolean>;
  input parameter b_ :: <GLboolean>;
  input parameter a_ :: <GLboolean>;
  c-name: "glColorMaski";
end;

define C-function glGetBooleani-v
  input parameter target_ :: <GLenum>;
  input parameter index_ :: <GLuint>;
  input parameter data_ :: <GLboolean*>;
  c-name: "glGetBooleani_v";
end;

define C-function glGetIntegeri-v
  input parameter target_ :: <GLenum>;
  input parameter index_ :: <GLuint>;
  input parameter data_ :: <GLint*>;
  c-name: "glGetIntegeri_v";
end;

define C-function glEnablei
  input parameter target_ :: <GLenum>;
  input parameter index_ :: <GLuint>;
  c-name: "glEnablei";
end;

define C-function glDisablei
  input parameter target_ :: <GLenum>;
  input parameter index_ :: <GLuint>;
  c-name: "glDisablei";
end;

define C-function glIsEnabledi
  input parameter target_ :: <GLenum>;
  input parameter index_ :: <GLuint>;
  result res :: <GLboolean>;
  c-name: "glIsEnabledi";
end;

define C-function glBeginTransformFeedback
  input parameter primitiveMode_ :: <GLenum>;
  c-name: "glBeginTransformFeedback";
end;

define C-function glEndTransformFeedback
  c-name: "glEndTransformFeedback";
end;

define C-function glBindBufferRange
  input parameter target_ :: <GLenum>;
  input parameter index_ :: <GLuint>;
  input parameter buffer_ :: <GLuint>;
  input parameter offset_ :: <GLintptr>;
  input parameter size_ :: <GLsizeiptr>;
  c-name: "glBindBufferRange";
end;

define C-function glBindBufferBase
  input parameter target_ :: <GLenum>;
  input parameter index_ :: <GLuint>;
  input parameter buffer_ :: <GLuint>;
  c-name: "glBindBufferBase";
end;

define C-function glTransformFeedbackVaryings
  input parameter program_ :: <GLuint>;
  input parameter count_ :: <GLsizei>;
  input parameter varyings_ :: <GLchar**>;
  input parameter bufferMode_ :: <GLenum>;
  c-name: "glTransformFeedbackVaryings";
end;

define C-function glGetTransformFeedbackVarying
  input parameter program_ :: <GLuint>;
  input parameter index_ :: <GLuint>;
  input parameter bufSize_ :: <GLsizei>;
  input parameter length_ :: <GLsizei*>;
  input parameter size_ :: <GLsizei*>;
  input parameter type_ :: <GLenum*>;
  input parameter name_ :: <GLchar*>;
  c-name: "glGetTransformFeedbackVarying";
end;

define C-function glClampColor
  input parameter target_ :: <GLenum>;
  input parameter clamp_ :: <GLenum>;
  c-name: "glClampColor";
end;

define C-function glBeginConditionalRender
  input parameter id_ :: <GLuint>;
  input parameter mode_ :: <GLenum>;
  c-name: "glBeginConditionalRender";
end;

define C-function glEndConditionalRender
  c-name: "glEndConditionalRender";
end;

define C-function glVertexAttribIPointer
  input parameter index_ :: <GLuint>;
  input parameter size_ :: <GLint>;
  input parameter type_ :: <GLenum>;
  input parameter stride_ :: <GLsizei>;
  input parameter pointer_ :: <GLvoid*>;
  c-name: "glVertexAttribIPointer";
end;

define C-function glGetVertexAttribIiv
  input parameter index_ :: <GLuint>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetVertexAttribIiv";
end;

define C-function glGetVertexAttribIuiv
  input parameter index_ :: <GLuint>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLuint*>;
  c-name: "glGetVertexAttribIuiv";
end;

define C-function glVertexAttribI1i
  input parameter index_ :: <GLuint>;
  input parameter x_ :: <GLint>;
  c-name: "glVertexAttribI1i";
end;

define C-function glVertexAttribI2i
  input parameter index_ :: <GLuint>;
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  c-name: "glVertexAttribI2i";
end;

define C-function glVertexAttribI3i
  input parameter index_ :: <GLuint>;
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter z_ :: <GLint>;
  c-name: "glVertexAttribI3i";
end;

define C-function glVertexAttribI4i
  input parameter index_ :: <GLuint>;
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter z_ :: <GLint>;
  input parameter w_ :: <GLint>;
  c-name: "glVertexAttribI4i";
end;

define C-function glVertexAttribI1ui
  input parameter index_ :: <GLuint>;
  input parameter x_ :: <GLuint>;
  c-name: "glVertexAttribI1ui";
end;

define C-function glVertexAttribI2ui
  input parameter index_ :: <GLuint>;
  input parameter x_ :: <GLuint>;
  input parameter y_ :: <GLuint>;
  c-name: "glVertexAttribI2ui";
end;

define C-function glVertexAttribI3ui
  input parameter index_ :: <GLuint>;
  input parameter x_ :: <GLuint>;
  input parameter y_ :: <GLuint>;
  input parameter z_ :: <GLuint>;
  c-name: "glVertexAttribI3ui";
end;

define C-function glVertexAttribI4ui
  input parameter index_ :: <GLuint>;
  input parameter x_ :: <GLuint>;
  input parameter y_ :: <GLuint>;
  input parameter z_ :: <GLuint>;
  input parameter w_ :: <GLuint>;
  c-name: "glVertexAttribI4ui";
end;

define C-function glVertexAttribI1iv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLint*>;
  c-name: "glVertexAttribI1iv";
end;

define C-function glVertexAttribI2iv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLint*>;
  c-name: "glVertexAttribI2iv";
end;

define C-function glVertexAttribI3iv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLint*>;
  c-name: "glVertexAttribI3iv";
end;

define C-function glVertexAttribI4iv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLint*>;
  c-name: "glVertexAttribI4iv";
end;

define C-function glVertexAttribI1uiv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLuint*>;
  c-name: "glVertexAttribI1uiv";
end;

define C-function glVertexAttribI2uiv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLuint*>;
  c-name: "glVertexAttribI2uiv";
end;

define C-function glVertexAttribI3uiv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLuint*>;
  c-name: "glVertexAttribI3uiv";
end;

define C-function glVertexAttribI4uiv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLuint*>;
  c-name: "glVertexAttribI4uiv";
end;

define C-function glVertexAttribI4bv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLbyte*>;
  c-name: "glVertexAttribI4bv";
end;

define C-function glVertexAttribI4sv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLshort*>;
  c-name: "glVertexAttribI4sv";
end;

define C-function glVertexAttribI4ubv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLubyte*>;
  c-name: "glVertexAttribI4ubv";
end;

define C-function glVertexAttribI4usv
  input parameter index_ :: <GLuint>;
  input parameter v_ :: <GLushort*>;
  c-name: "glVertexAttribI4usv";
end;

define C-function glGetUniformuiv
  input parameter program_ :: <GLuint>;
  input parameter location_ :: <GLint>;
  input parameter params_ :: <GLuint*>;
  c-name: "glGetUniformuiv";
end;

define C-function glBindFragDataLocation
  input parameter program_ :: <GLuint>;
  input parameter color_ :: <GLuint>;
  input parameter name_ :: <GLchar*>;
  c-name: "glBindFragDataLocation";
end;

define C-function glGetFragDataLocation
  input parameter program_ :: <GLuint>;
  input parameter name_ :: <GLchar*>;
  result res :: <GLint>;
  c-name: "glGetFragDataLocation";
end;

define C-function glUniform1ui
  input parameter location_ :: <GLint>;
  input parameter v0_ :: <GLuint>;
  c-name: "glUniform1ui";
end;

define C-function glUniform2ui
  input parameter location_ :: <GLint>;
  input parameter v0_ :: <GLuint>;
  input parameter v1_ :: <GLuint>;
  c-name: "glUniform2ui";
end;

define C-function glUniform3ui
  input parameter location_ :: <GLint>;
  input parameter v0_ :: <GLuint>;
  input parameter v1_ :: <GLuint>;
  input parameter v2_ :: <GLuint>;
  c-name: "glUniform3ui";
end;

define C-function glUniform4ui
  input parameter location_ :: <GLint>;
  input parameter v0_ :: <GLuint>;
  input parameter v1_ :: <GLuint>;
  input parameter v2_ :: <GLuint>;
  input parameter v3_ :: <GLuint>;
  c-name: "glUniform4ui";
end;

define C-function glUniform1uiv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter value_ :: <GLuint*>;
  c-name: "glUniform1uiv";
end;

define C-function glUniform2uiv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter value_ :: <GLuint*>;
  c-name: "glUniform2uiv";
end;

define C-function glUniform3uiv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter value_ :: <GLuint*>;
  c-name: "glUniform3uiv";
end;

define C-function glUniform4uiv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter value_ :: <GLuint*>;
  c-name: "glUniform4uiv";
end;

define C-function glTexParameterIiv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glTexParameterIiv";
end;

define C-function glTexParameterIuiv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLuint*>;
  c-name: "glTexParameterIuiv";
end;

define C-function glGetTexParameterIiv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetTexParameterIiv";
end;

define C-function glGetTexParameterIuiv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLuint*>;
  c-name: "glGetTexParameterIuiv";
end;

define C-function glClearBufferiv
  input parameter buffer_ :: <GLenum>;
  input parameter drawbuffer_ :: <GLint>;
  input parameter value_ :: <GLint*>;
  c-name: "glClearBufferiv";
end;

define C-function glClearBufferuiv
  input parameter buffer_ :: <GLenum>;
  input parameter drawbuffer_ :: <GLint>;
  input parameter value_ :: <GLuint*>;
  c-name: "glClearBufferuiv";
end;

define C-function glClearBufferfv
  input parameter buffer_ :: <GLenum>;
  input parameter drawbuffer_ :: <GLint>;
  input parameter value_ :: <GLfloat*>;
  c-name: "glClearBufferfv";
end;

define C-function glClearBufferfi
  input parameter buffer_ :: <GLenum>;
  input parameter drawbuffer_ :: <GLint>;
  input parameter depth_ :: <GLfloat>;
  input parameter stencil_ :: <GLint>;
  c-name: "glClearBufferfi";
end;

define C-function glGetStringi
  input parameter name_ :: <GLenum>;
  input parameter index_ :: <GLuint>;
  result res :: <GLubyte*>;
  c-name: "glGetStringi";
end;

define constant <PFNGLCOLORMASKIPROC> = <C-function-pointer>;
define constant <PFNGLGETBOOLEANI-VPROC> = <C-function-pointer>;
define constant <PFNGLGETINTEGERI-VPROC> = <C-function-pointer>;
define constant <PFNGLENABLEIPROC> = <C-function-pointer>;
define constant <PFNGLDISABLEIPROC> = <C-function-pointer>;
define constant <PFNGLISENABLEDIPROC> = <C-function-pointer>;
define constant <PFNGLBEGINTRANSFORMFEEDBACKPROC> = <C-function-pointer>;
define constant <PFNGLENDTRANSFORMFEEDBACKPROC> = <C-function-pointer>;
define constant <PFNGLBINDBUFFERRANGEPROC> = <C-function-pointer>;
define constant <PFNGLBINDBUFFERBASEPROC> = <C-function-pointer>;
define constant <PFNGLTRANSFORMFEEDBACKVARYINGSPROC> = <C-function-pointer>;
define constant <PFNGLGETTRANSFORMFEEDBACKVARYINGPROC> = <C-function-pointer>;
define constant <PFNGLCLAMPCOLORPROC> = <C-function-pointer>;
define constant <PFNGLBEGINCONDITIONALRENDERPROC> = <C-function-pointer>;
define constant <PFNGLENDCONDITIONALRENDERPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBIPOINTERPROC> = <C-function-pointer>;
define constant <PFNGLGETVERTEXATTRIBIIVPROC> = <C-function-pointer>;
define constant <PFNGLGETVERTEXATTRIBIUIVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBI1IPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBI2IPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBI3IPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBI4IPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBI1UIPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBI2UIPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBI3UIPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBI4UIPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBI1IVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBI2IVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBI3IVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBI4IVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBI1UIVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBI2UIVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBI3UIVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBI4UIVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBI4BVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBI4SVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBI4UBVPROC> = <C-function-pointer>;
define constant <PFNGLVERTEXATTRIBI4USVPROC> = <C-function-pointer>;
define constant <PFNGLGETUNIFORMUIVPROC> = <C-function-pointer>;
define constant <PFNGLBINDFRAGDATALOCATIONPROC> = <C-function-pointer>;
define constant <PFNGLGETFRAGDATALOCATIONPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM1UIPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM2UIPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM3UIPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM4UIPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM1UIVPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM2UIVPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM3UIVPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORM4UIVPROC> = <C-function-pointer>;
define constant <PFNGLTEXPARAMETERIIVPROC> = <C-function-pointer>;
define constant <PFNGLTEXPARAMETERIUIVPROC> = <C-function-pointer>;
define constant <PFNGLGETTEXPARAMETERIIVPROC> = <C-function-pointer>;
define constant <PFNGLGETTEXPARAMETERIUIVPROC> = <C-function-pointer>;
define constant <PFNGLCLEARBUFFERIVPROC> = <C-function-pointer>;
define constant <PFNGLCLEARBUFFERUIVPROC> = <C-function-pointer>;
define constant <PFNGLCLEARBUFFERFVPROC> = <C-function-pointer>;
define constant <PFNGLCLEARBUFFERFIPROC> = <C-function-pointer>;
define constant <PFNGLGETSTRINGIPROC> = <C-function-pointer>;
define C-function glDrawArraysInstanced
  input parameter mode_ :: <GLenum>;
  input parameter first_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter primcount_ :: <GLsizei>;
  c-name: "glDrawArraysInstanced";
end;

define C-function glDrawElementsInstanced
  input parameter mode_ :: <GLenum>;
  input parameter count_ :: <GLsizei>;
  input parameter type_ :: <GLenum>;
  input parameter indices_ :: <GLvoid*>;
  input parameter primcount_ :: <GLsizei>;
  c-name: "glDrawElementsInstanced";
end;

define C-function glTexBuffer
  input parameter target_ :: <GLenum>;
  input parameter internalformat_ :: <GLenum>;
  input parameter buffer_ :: <GLuint>;
  c-name: "glTexBuffer";
end;

define C-function glPrimitiveRestartIndex
  input parameter index_ :: <GLuint>;
  c-name: "glPrimitiveRestartIndex";
end;

define constant <PFNGLDRAWARRAYSINSTANCEDPROC> = <C-function-pointer>;
define constant <PFNGLDRAWELEMENTSINSTANCEDPROC> = <C-function-pointer>;
define constant <PFNGLTEXBUFFERPROC> = <C-function-pointer>;
define constant <PFNGLPRIMITIVERESTARTINDEXPROC> = <C-function-pointer>;
define C-pointer-type <GLint64*> => <GLint64>;
define C-function glGetInteger64i-v
  input parameter target_ :: <GLenum>;
  input parameter index_ :: <GLuint>;
  input parameter data_ :: <GLint64*>;
  c-name: "glGetInteger64i_v";
end;

define C-function glGetBufferParameteri64v
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint64*>;
  c-name: "glGetBufferParameteri64v";
end;

define C-function glFramebufferTexture
  input parameter target_ :: <GLenum>;
  input parameter attachment_ :: <GLenum>;
  input parameter texture_ :: <GLuint>;
  input parameter level_ :: <GLint>;
  c-name: "glFramebufferTexture";
end;

define constant <PFNGLGETINTEGER64I-VPROC> = <C-function-pointer>;
define constant <PFNGLGETBUFFERPARAMETERI64VPROC> = <C-function-pointer>;
define constant <PFNGLFRAMEBUFFERTEXTUREPROC> = <C-function-pointer>;
define C-function glIsRenderbuffer
  input parameter renderbuffer_ :: <GLuint>;
  result res :: <GLboolean>;
  c-name: "glIsRenderbuffer";
end;

define C-function glBindRenderbuffer
  input parameter target_ :: <GLenum>;
  input parameter renderbuffer_ :: <GLuint>;
  c-name: "glBindRenderbuffer";
end;

define C-function glDeleteRenderbuffers
  input parameter n_ :: <GLsizei>;
  input parameter renderbuffers_ :: <GLuint*>;
  c-name: "glDeleteRenderbuffers";
end;

define C-function glGenRenderbuffers
  input parameter n_ :: <GLsizei>;
  input parameter renderbuffers_ :: <GLuint*>;
  c-name: "glGenRenderbuffers";
end;

define C-function glRenderbufferStorage
  input parameter target_ :: <GLenum>;
  input parameter internalformat_ :: <GLenum>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  c-name: "glRenderbufferStorage";
end;

define C-function glGetRenderbufferParameteriv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetRenderbufferParameteriv";
end;

define C-function glIsFramebuffer
  input parameter framebuffer_ :: <GLuint>;
  result res :: <GLboolean>;
  c-name: "glIsFramebuffer";
end;

define C-function glBindFramebuffer
  input parameter target_ :: <GLenum>;
  input parameter framebuffer_ :: <GLuint>;
  c-name: "glBindFramebuffer";
end;

define C-function glDeleteFramebuffers
  input parameter n_ :: <GLsizei>;
  input parameter framebuffers_ :: <GLuint*>;
  c-name: "glDeleteFramebuffers";
end;

define C-function glGenFramebuffers
  input parameter n_ :: <GLsizei>;
  input parameter framebuffers_ :: <GLuint*>;
  c-name: "glGenFramebuffers";
end;

define C-function glCheckFramebufferStatus
  input parameter target_ :: <GLenum>;
  result res :: <GLenum>;
  c-name: "glCheckFramebufferStatus";
end;

define C-function glFramebufferTexture1D
  input parameter target_ :: <GLenum>;
  input parameter attachment_ :: <GLenum>;
  input parameter textarget_ :: <GLenum>;
  input parameter texture_ :: <GLuint>;
  input parameter level_ :: <GLint>;
  c-name: "glFramebufferTexture1D";
end;

define C-function glFramebufferTexture2D
  input parameter target_ :: <GLenum>;
  input parameter attachment_ :: <GLenum>;
  input parameter textarget_ :: <GLenum>;
  input parameter texture_ :: <GLuint>;
  input parameter level_ :: <GLint>;
  c-name: "glFramebufferTexture2D";
end;

define C-function glFramebufferTexture3D
  input parameter target_ :: <GLenum>;
  input parameter attachment_ :: <GLenum>;
  input parameter textarget_ :: <GLenum>;
  input parameter texture_ :: <GLuint>;
  input parameter level_ :: <GLint>;
  input parameter zoffset_ :: <GLint>;
  c-name: "glFramebufferTexture3D";
end;

define C-function glFramebufferRenderbuffer
  input parameter target_ :: <GLenum>;
  input parameter attachment_ :: <GLenum>;
  input parameter renderbuffertarget_ :: <GLenum>;
  input parameter renderbuffer_ :: <GLuint>;
  c-name: "glFramebufferRenderbuffer";
end;

define C-function glGetFramebufferAttachmentParameteriv
  input parameter target_ :: <GLenum>;
  input parameter attachment_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetFramebufferAttachmentParameteriv";
end;

define C-function glGenerateMipmap
  input parameter target_ :: <GLenum>;
  c-name: "glGenerateMipmap";
end;

define C-function glBlitFramebuffer
  input parameter srcX0_ :: <GLint>;
  input parameter srcY0_ :: <GLint>;
  input parameter srcX1_ :: <GLint>;
  input parameter srcY1_ :: <GLint>;
  input parameter dstX0_ :: <GLint>;
  input parameter dstY0_ :: <GLint>;
  input parameter dstX1_ :: <GLint>;
  input parameter dstY1_ :: <GLint>;
  input parameter mask_ :: <GLbitfield>;
  input parameter filter_ :: <GLenum>;
  c-name: "glBlitFramebuffer";
end;

define C-function glRenderbufferStorageMultisample
  input parameter target_ :: <GLenum>;
  input parameter samples_ :: <GLsizei>;
  input parameter internalformat_ :: <GLenum>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  c-name: "glRenderbufferStorageMultisample";
end;

define C-function glFramebufferTextureLayer
  input parameter target_ :: <GLenum>;
  input parameter attachment_ :: <GLenum>;
  input parameter texture_ :: <GLuint>;
  input parameter level_ :: <GLint>;
  input parameter layer_ :: <GLint>;
  c-name: "glFramebufferTextureLayer";
end;

define constant <PFNGLISRENDERBUFFERPROC> = <C-function-pointer>;
define constant <PFNGLBINDRENDERBUFFERPROC> = <C-function-pointer>;
define constant <PFNGLDELETERENDERBUFFERSPROC> = <C-function-pointer>;
define constant <PFNGLGENRENDERBUFFERSPROC> = <C-function-pointer>;
define constant <PFNGLRENDERBUFFERSTORAGEPROC> = <C-function-pointer>;
define constant <PFNGLGETRENDERBUFFERPARAMETERIVPROC> = <C-function-pointer>;
define constant <PFNGLISFRAMEBUFFERPROC> = <C-function-pointer>;
define constant <PFNGLBINDFRAMEBUFFERPROC> = <C-function-pointer>;
define constant <PFNGLDELETEFRAMEBUFFERSPROC> = <C-function-pointer>;
define constant <PFNGLGENFRAMEBUFFERSPROC> = <C-function-pointer>;
define constant <PFNGLCHECKFRAMEBUFFERSTATUSPROC> = <C-function-pointer>;
define constant <PFNGLFRAMEBUFFERTEXTURE1DPROC> = <C-function-pointer>;
define constant <PFNGLFRAMEBUFFERTEXTURE2DPROC> = <C-function-pointer>;
define constant <PFNGLFRAMEBUFFERTEXTURE3DPROC> = <C-function-pointer>;
define constant <PFNGLFRAMEBUFFERRENDERBUFFERPROC> = <C-function-pointer>;
define constant <PFNGLGETFRAMEBUFFERATTACHMENTPARAMETERIVPROC> = <C-function-pointer>;
define constant <PFNGLGENERATEMIPMAPPROC> = <C-function-pointer>;
define constant <PFNGLBLITFRAMEBUFFERPROC> = <C-function-pointer>;
define constant <PFNGLRENDERBUFFERSTORAGEMULTISAMPLEPROC> = <C-function-pointer>;
define constant <PFNGLFRAMEBUFFERTEXTURELAYERPROC> = <C-function-pointer>;
define C-function glMapBufferRange
  input parameter target_ :: <GLenum>;
  input parameter offset_ :: <GLintptr>;
  input parameter length_ :: <GLsizeiptr>;
  input parameter access_ :: <GLbitfield>;
  result res :: <GLvoid*>;
  c-name: "glMapBufferRange";
end;

define C-function glFlushMappedBufferRange
  input parameter target_ :: <GLenum>;
  input parameter offset_ :: <GLintptr>;
  input parameter length_ :: <GLsizeiptr>;
  c-name: "glFlushMappedBufferRange";
end;

define constant <PFNGLMAPBUFFERRANGEPROC> = <C-function-pointer>;
define constant <PFNGLFLUSHMAPPEDBUFFERRANGEPROC> = <C-function-pointer>;
define C-function glBindVertexArray
  input parameter array_ :: <GLuint>;
  c-name: "glBindVertexArray";
end;

define C-function glDeleteVertexArrays
  input parameter n_ :: <GLsizei>;
  input parameter arrays_ :: <GLuint*>;
  c-name: "glDeleteVertexArrays";
end;

define C-function glGenVertexArrays
  input parameter n_ :: <GLsizei>;
  input parameter arrays_ :: <GLuint*>;
  c-name: "glGenVertexArrays";
end;

define C-function glIsVertexArray
  input parameter array_ :: <GLuint>;
  result res :: <GLboolean>;
  c-name: "glIsVertexArray";
end;

define constant <PFNGLBINDVERTEXARRAYPROC> = <C-function-pointer>;
define constant <PFNGLDELETEVERTEXARRAYSPROC> = <C-function-pointer>;
define constant <PFNGLGENVERTEXARRAYSPROC> = <C-function-pointer>;
define constant <PFNGLISVERTEXARRAYPROC> = <C-function-pointer>;
define C-function glGetUniformIndices
  input parameter program_ :: <GLuint>;
  input parameter uniformCount_ :: <GLsizei>;
  input parameter uniformNames_ :: <GLchar**>;
  input parameter uniformIndices_ :: <GLuint*>;
  c-name: "glGetUniformIndices";
end;

define C-function glGetActiveUniformsiv
  input parameter program_ :: <GLuint>;
  input parameter uniformCount_ :: <GLsizei>;
  input parameter uniformIndices_ :: <GLuint*>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetActiveUniformsiv";
end;

define C-function glGetActiveUniformName
  input parameter program_ :: <GLuint>;
  input parameter uniformIndex_ :: <GLuint>;
  input parameter bufSize_ :: <GLsizei>;
  input parameter length_ :: <GLsizei*>;
  input parameter uniformName_ :: <GLchar*>;
  c-name: "glGetActiveUniformName";
end;

define C-function glGetUniformBlockIndex
  input parameter program_ :: <GLuint>;
  input parameter uniformBlockName_ :: <GLchar*>;
  result res :: <GLuint>;
  c-name: "glGetUniformBlockIndex";
end;

define C-function glGetActiveUniformBlockiv
  input parameter program_ :: <GLuint>;
  input parameter uniformBlockIndex_ :: <GLuint>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetActiveUniformBlockiv";
end;

define C-function glGetActiveUniformBlockName
  input parameter program_ :: <GLuint>;
  input parameter uniformBlockIndex_ :: <GLuint>;
  input parameter bufSize_ :: <GLsizei>;
  input parameter length_ :: <GLsizei*>;
  input parameter uniformBlockName_ :: <GLchar*>;
  c-name: "glGetActiveUniformBlockName";
end;

define C-function glUniformBlockBinding
  input parameter program_ :: <GLuint>;
  input parameter uniformBlockIndex_ :: <GLuint>;
  input parameter uniformBlockBinding_ :: <GLuint>;
  c-name: "glUniformBlockBinding";
end;

define constant <PFNGLGETUNIFORMINDICESPROC> = <C-function-pointer>;
define constant <PFNGLGETACTIVEUNIFORMSIVPROC> = <C-function-pointer>;
define constant <PFNGLGETACTIVEUNIFORMNAMEPROC> = <C-function-pointer>;
define constant <PFNGLGETUNIFORMBLOCKINDEXPROC> = <C-function-pointer>;
define constant <PFNGLGETACTIVEUNIFORMBLOCKIVPROC> = <C-function-pointer>;
define constant <PFNGLGETACTIVEUNIFORMBLOCKNAMEPROC> = <C-function-pointer>;
define constant <PFNGLUNIFORMBLOCKBINDINGPROC> = <C-function-pointer>;
define C-function glCopyBufferSubData
  input parameter readTarget_ :: <GLenum>;
  input parameter writeTarget_ :: <GLenum>;
  input parameter readOffset_ :: <GLintptr>;
  input parameter writeOffset_ :: <GLintptr>;
  input parameter size_ :: <GLsizeiptr>;
  c-name: "glCopyBufferSubData";
end;

define constant <PFNGLCOPYBUFFERSUBDATAPROC> = <C-function-pointer>;
define C-function glDrawElementsBaseVertex
  input parameter mode_ :: <GLenum>;
  input parameter count_ :: <GLsizei>;
  input parameter type_ :: <GLenum>;
  input parameter indices_ :: <GLvoid*>;
  input parameter basevertex_ :: <GLint>;
  c-name: "glDrawElementsBaseVertex";
end;

define C-function glDrawRangeElementsBaseVertex
  input parameter mode_ :: <GLenum>;
  input parameter start_ :: <GLuint>;
  input parameter end_ :: <GLuint>;
  input parameter count_ :: <GLsizei>;
  input parameter type_ :: <GLenum>;
  input parameter indices_ :: <GLvoid*>;
  input parameter basevertex_ :: <GLint>;
  c-name: "glDrawRangeElementsBaseVertex";
end;

define C-function glDrawElementsInstancedBaseVertex
  input parameter mode_ :: <GLenum>;
  input parameter count_ :: <GLsizei>;
  input parameter type_ :: <GLenum>;
  input parameter indices_ :: <GLvoid*>;
  input parameter primcount_ :: <GLsizei>;
  input parameter basevertex_ :: <GLint>;
  c-name: "glDrawElementsInstancedBaseVertex";
end;

define C-function glMultiDrawElementsBaseVertex
  input parameter mode_ :: <GLenum>;
  input parameter count_ :: <GLsizei*>;
  input parameter type_ :: <GLenum>;
  input parameter indices_ :: <GLvoid**>;
  input parameter primcount_ :: <GLsizei>;
  input parameter basevertex_ :: <GLint*>;
  c-name: "glMultiDrawElementsBaseVertex";
end;

define constant <PFNGLDRAWELEMENTSBASEVERTEXPROC> = <C-function-pointer>;
define constant <PFNGLDRAWRANGEELEMENTSBASEVERTEXPROC> = <C-function-pointer>;
define constant <PFNGLDRAWELEMENTSINSTANCEDBASEVERTEXPROC> = <C-function-pointer>;
define constant <PFNGLMULTIDRAWELEMENTSBASEVERTEXPROC> = <C-function-pointer>;
define C-function glProvokingVertex
  input parameter mode_ :: <GLenum>;
  c-name: "glProvokingVertex";
end;

define constant <PFNGLPROVOKINGVERTEXPROC> = <C-function-pointer>;
define C-function glFenceSync
  input parameter condition_ :: <GLenum>;
  input parameter flags_ :: <GLbitfield>;
  result res :: <GLsync>;
  c-name: "glFenceSync";
end;

define C-function glIsSync
  input parameter sync_ :: <GLsync>;
  result res :: <GLboolean>;
  c-name: "glIsSync";
end;

define C-function glDeleteSync
  input parameter sync_ :: <GLsync>;
  c-name: "glDeleteSync";
end;

define C-function glClientWaitSync
  input parameter sync_ :: <GLsync>;
  input parameter flags_ :: <GLbitfield>;
  input parameter timeout_ :: <GLuint64>;
  result res :: <GLenum>;
  c-name: "glClientWaitSync";
end;

define C-function glWaitSync
  input parameter sync_ :: <GLsync>;
  input parameter flags_ :: <GLbitfield>;
  input parameter timeout_ :: <GLuint64>;
  c-name: "glWaitSync";
end;

define C-function glGetInteger64v
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint64*>;
  c-name: "glGetInteger64v";
end;

define C-function glGetSynciv
  input parameter sync_ :: <GLsync>;
  input parameter pname_ :: <GLenum>;
  input parameter bufSize_ :: <GLsizei>;
  input parameter length_ :: <GLsizei*>;
  input parameter values_ :: <GLint*>;
  c-name: "glGetSynciv";
end;

define constant <PFNGLFENCESYNCPROC> = <C-function-pointer>;
define constant <PFNGLISSYNCPROC> = <C-function-pointer>;
define constant <PFNGLDELETESYNCPROC> = <C-function-pointer>;
define constant <PFNGLCLIENTWAITSYNCPROC> = <C-function-pointer>;
define constant <PFNGLWAITSYNCPROC> = <C-function-pointer>;
define constant <PFNGLGETINTEGER64VPROC> = <C-function-pointer>;
define constant <PFNGLGETSYNCIVPROC> = <C-function-pointer>;
define C-function glTexImage2DMultisample
  input parameter target_ :: <GLenum>;
  input parameter samples_ :: <GLsizei>;
  input parameter internalformat_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  input parameter fixedsamplelocations_ :: <GLboolean>;
  c-name: "glTexImage2DMultisample";
end;

define C-function glTexImage3DMultisample
  input parameter target_ :: <GLenum>;
  input parameter samples_ :: <GLsizei>;
  input parameter internalformat_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  input parameter depth_ :: <GLsizei>;
  input parameter fixedsamplelocations_ :: <GLboolean>;
  c-name: "glTexImage3DMultisample";
end;

define C-function glGetMultisamplefv
  input parameter pname_ :: <GLenum>;
  input parameter index_ :: <GLuint>;
  input parameter val_ :: <GLfloat*>;
  c-name: "glGetMultisamplefv";
end;

define C-function glSampleMaski
  input parameter index_ :: <GLuint>;
  input parameter mask_ :: <GLbitfield>;
  c-name: "glSampleMaski";
end;

define constant <PFNGLTEXIMAGE2DMULTISAMPLEPROC> = <C-function-pointer>;
define constant <PFNGLTEXIMAGE3DMULTISAMPLEPROC> = <C-function-pointer>;
define constant <PFNGLGETMULTISAMPLEFVPROC> = <C-function-pointer>;
define constant <PFNGLSAMPLEMASKIPROC> = <C-function-pointer>;
define constant $GL-DEPTH-BUFFER-BIT = 256;

define constant $GL-STENCIL-BUFFER-BIT = 1024;

define constant $GL-COLOR-BUFFER-BIT = 16384;

define constant $GL-FALSE = 0;

define constant $GL-TRUE = 1;

define constant $GL-POINTS = 0;

define constant $GL-LINES = 1;

define constant $GL-LINE-LOOP = 2;

define constant $GL-LINE-STRIP = 3;

define constant $GL-TRIANGLES = 4;

define constant $GL-TRIANGLE-STRIP = 5;

define constant $GL-TRIANGLE-FAN = 6;

define constant $GL-NEVER = 512;

define constant $GL-LESS = 513;

define constant $GL-EQUAL = 514;

define constant $GL-LEQUAL = 515;

define constant $GL-GREATER = 516;

define constant $GL-NOTEQUAL = 517;

define constant $GL-GEQUAL = 518;

define constant $GL-ALWAYS = 519;

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

define constant $GL-NO-ERROR = 0;

define constant $GL-INVALID-ENUM = 1280;

define constant $GL-INVALID-VALUE = 1281;

define constant $GL-INVALID-OPERATION = 1282;

define constant $GL-OUT-OF-MEMORY = 1285;

define constant $GL-CW = 2304;

define constant $GL-CCW = 2305;

define constant $GL-POINT-SIZE = 2833;

define constant $GL-POINT-SIZE-RANGE = 2834;

define constant $GL-POINT-SIZE-GRANULARITY = 2835;

define constant $GL-LINE-SMOOTH = 2848;

define constant $GL-LINE-WIDTH = 2849;

define constant $GL-LINE-WIDTH-RANGE = 2850;

define constant $GL-LINE-WIDTH-GRANULARITY = 2851;

define constant $GL-POLYGON-SMOOTH = 2881;

define constant $GL-CULL-FACE = 2884;

define constant $GL-CULL-FACE-MODE = 2885;

define constant $GL-FRONT-FACE = 2886;

define constant $GL-DEPTH-RANGE = 2928;

define constant $GL-DEPTH-TEST = 2929;

define constant $GL-DEPTH-WRITEMASK = 2930;

define constant $GL-DEPTH-CLEAR-VALUE = 2931;

define constant $GL-DEPTH-FUNC = 2932;

define constant $GL-STENCIL-TEST = 2960;

define constant $GL-STENCIL-CLEAR-VALUE = 2961;

define constant $GL-STENCIL-FUNC = 2962;

define constant $GL-STENCIL-VALUE-MASK = 2963;

define constant $GL-STENCIL-FAIL = 2964;

define constant $GL-STENCIL-PASS-DEPTH-FAIL = 2965;

define constant $GL-STENCIL-PASS-DEPTH-PASS = 2966;

define constant $GL-STENCIL-REF = 2967;

define constant $GL-STENCIL-WRITEMASK = 2968;

define constant $GL-VIEWPORT = 2978;

define constant $GL-DITHER = 3024;

define constant $GL-BLEND-DST = 3040;

define constant $GL-BLEND-SRC = 3041;

define constant $GL-BLEND = 3042;

define constant $GL-LOGIC-OP-MODE = 3056;

define constant $GL-COLOR-LOGIC-OP = 3058;

define constant $GL-DRAW-BUFFER = 3073;

define constant $GL-READ-BUFFER = 3074;

define constant $GL-SCISSOR-BOX = 3088;

define constant $GL-SCISSOR-TEST = 3089;

define constant $GL-COLOR-CLEAR-VALUE = 3106;

define constant $GL-COLOR-WRITEMASK = 3107;

define constant $GL-DOUBLEBUFFER = 3122;

define constant $GL-STEREO = 3123;

define constant $GL-LINE-SMOOTH-HINT = 3154;

define constant $GL-POLYGON-SMOOTH-HINT = 3155;

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

define constant $GL-MAX-TEXTURE-SIZE = 3379;

define constant $GL-MAX-VIEWPORT-DIMS = 3386;

define constant $GL-SUBPIXEL-BITS = 3408;

define constant $GL-TEXTURE-1D = 3552;

define constant $GL-TEXTURE-2D = 3553;

define constant $GL-POLYGON-OFFSET-UNITS = 10752;

define constant $GL-POLYGON-OFFSET-POINT = 10753;

define constant $GL-POLYGON-OFFSET-LINE = 10754;

define constant $GL-POLYGON-OFFSET-FILL = 32823;

define constant $GL-POLYGON-OFFSET-FACTOR = 32824;

define constant $GL-TEXTURE-BINDING-1D = 32872;

define constant $GL-TEXTURE-BINDING-2D = 32873;

define constant $GL-TEXTURE-WIDTH = 4096;

define constant $GL-TEXTURE-HEIGHT = 4097;

define constant $GL-TEXTURE-INTERNAL-FORMAT = 4099;

define constant $GL-TEXTURE-BORDER-COLOR = 4100;

define constant $GL-TEXTURE-RED-SIZE = 32860;

define constant $GL-TEXTURE-GREEN-SIZE = 32861;

define constant $GL-TEXTURE-BLUE-SIZE = 32862;

define constant $GL-TEXTURE-ALPHA-SIZE = 32863;

define constant $GL-DONT-CARE = 4352;

define constant $GL-FASTEST = 4353;

define constant $GL-NICEST = 4354;

define constant $GL-BYTE = 5120;

define constant $GL-UNSIGNED-BYTE = 5121;

define constant $GL-SHORT = 5122;

define constant $GL-UNSIGNED-SHORT = 5123;

define constant $GL-INT = 5124;

define constant $GL-UNSIGNED-INT = 5125;

define constant $GL-FLOAT = 5126;

define constant $GL-DOUBLE = 5130;

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

define constant $GL-TEXTURE = 5890;

define constant $GL-COLOR = 6144;

define constant $GL-DEPTH = 6145;

define constant $GL-STENCIL = 6146;

define constant $GL-STENCIL-INDEX = 6401;

define constant $GL-DEPTH-COMPONENT = 6402;

define constant $GL-RED = 6403;

define constant $GL-GREEN = 6404;

define constant $GL-BLUE = 6405;

define constant $GL-ALPHA = 6406;

define constant $GL-RGB = 6407;

define constant $GL-RGBA = 6408;

define constant $GL-POINT = 6912;

define constant $GL-LINE = 6913;

define constant $GL-FILL = 6914;

define constant $GL-KEEP = 7680;

define constant $GL-REPLACE = 7681;

define constant $GL-INCR = 7682;

define constant $GL-DECR = 7683;

define constant $GL-VENDOR = 7936;

define constant $GL-RENDERER = 7937;

define constant $GL-VERSION = 7938;

define constant $GL-EXTENSIONS = 7939;

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

define constant $GL-PROXY-TEXTURE-1D = 32867;

define constant $GL-PROXY-TEXTURE-2D = 32868;

define constant $GL-REPEAT = 10497;

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

define constant $GL-UNSIGNED-BYTE-3-3-2 = 32818;

define constant $GL-UNSIGNED-SHORT-4-4-4-4 = 32819;

define constant $GL-UNSIGNED-SHORT-5-5-5-1 = 32820;

define constant $GL-UNSIGNED-INT-8-8-8-8 = 32821;

define constant $GL-UNSIGNED-INT-10-10-10-2 = 32822;

define constant $GL-TEXTURE-BINDING-3D = 32874;

define constant $GL-PACK-SKIP-IMAGES = 32875;

define constant $GL-PACK-IMAGE-HEIGHT = 32876;

define constant $GL-UNPACK-SKIP-IMAGES = 32877;

define constant $GL-UNPACK-IMAGE-HEIGHT = 32878;

define constant $GL-TEXTURE-3D = 32879;

define constant $GL-PROXY-TEXTURE-3D = 32880;

define constant $GL-TEXTURE-DEPTH = 32881;

define constant $GL-TEXTURE-WRAP-R = 32882;

define constant $GL-MAX-3D-TEXTURE-SIZE = 32883;

define constant $GL-UNSIGNED-BYTE-2-3-3-REV = 33634;

define constant $GL-UNSIGNED-SHORT-5-6-5 = 33635;

define constant $GL-UNSIGNED-SHORT-5-6-5-REV = 33636;

define constant $GL-UNSIGNED-SHORT-4-4-4-4-REV = 33637;

define constant $GL-UNSIGNED-SHORT-1-5-5-5-REV = 33638;

define constant $GL-UNSIGNED-INT-8-8-8-8-REV = 33639;

define constant $GL-UNSIGNED-INT-2-10-10-10-REV = 33640;

define constant $GL-BGR = 32992;

define constant $GL-BGRA = 32993;

define constant $GL-MAX-ELEMENTS-VERTICES = 33000;

define constant $GL-MAX-ELEMENTS-INDICES = 33001;

define constant $GL-CLAMP-TO-EDGE = 33071;

define constant $GL-TEXTURE-MIN-LOD = 33082;

define constant $GL-TEXTURE-MAX-LOD = 33083;

define constant $GL-TEXTURE-BASE-LEVEL = 33084;

define constant $GL-TEXTURE-MAX-LEVEL = 33085;

define constant $GL-SMOOTH-POINT-SIZE-RANGE = 2834;

define constant $GL-SMOOTH-POINT-SIZE-GRANULARITY = 2835;

define constant $GL-SMOOTH-LINE-WIDTH-RANGE = 2850;

define constant $GL-SMOOTH-LINE-WIDTH-GRANULARITY = 2851;

define constant $GL-ALIASED-LINE-WIDTH-RANGE = 33902;

define constant $GL-CONSTANT-COLOR = 32769;

define constant $GL-ONE-MINUS-CONSTANT-COLOR = 32770;

define constant $GL-CONSTANT-ALPHA = 32771;

define constant $GL-ONE-MINUS-CONSTANT-ALPHA = 32772;

define constant $GL-BLEND-COLOR = 32773;

define constant $GL-FUNC-ADD = 32774;

define constant $GL-MIN = 32775;

define constant $GL-MAX = 32776;

define constant $GL-BLEND-EQUATION = 32777;

define constant $GL-FUNC-SUBTRACT = 32778;

define constant $GL-FUNC-REVERSE-SUBTRACT = 32779;

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

define constant $GL-MULTISAMPLE = 32925;

define constant $GL-SAMPLE-ALPHA-TO-COVERAGE = 32926;

define constant $GL-SAMPLE-ALPHA-TO-ONE = 32927;

define constant $GL-SAMPLE-COVERAGE = 32928;

define constant $GL-SAMPLE-BUFFERS = 32936;

define constant $GL-SAMPLES = 32937;

define constant $GL-SAMPLE-COVERAGE-VALUE = 32938;

define constant $GL-SAMPLE-COVERAGE-INVERT = 32939;

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

define constant $GL-COMPRESSED-RGB = 34029;

define constant $GL-COMPRESSED-RGBA = 34030;

define constant $GL-TEXTURE-COMPRESSION-HINT = 34031;

define constant $GL-TEXTURE-COMPRESSED-IMAGE-SIZE = 34464;

define constant $GL-TEXTURE-COMPRESSED = 34465;

define constant $GL-NUM-COMPRESSED-TEXTURE-FORMATS = 34466;

define constant $GL-COMPRESSED-TEXTURE-FORMATS = 34467;

define constant $GL-CLAMP-TO-BORDER = 33069;

define constant $GL-BLEND-DST-RGB = 32968;

define constant $GL-BLEND-SRC-RGB = 32969;

define constant $GL-BLEND-DST-ALPHA = 32970;

define constant $GL-BLEND-SRC-ALPHA = 32971;

define constant $GL-POINT-FADE-THRESHOLD-SIZE = 33064;

define constant $GL-DEPTH-COMPONENT16 = 33189;

define constant $GL-DEPTH-COMPONENT24 = 33190;

define constant $GL-DEPTH-COMPONENT32 = 33191;

define constant $GL-MIRRORED-REPEAT = 33648;

define constant $GL-MAX-TEXTURE-LOD-BIAS = 34045;

define constant $GL-TEXTURE-LOD-BIAS = 34049;

define constant $GL-INCR-WRAP = 34055;

define constant $GL-DECR-WRAP = 34056;

define constant $GL-TEXTURE-DEPTH-SIZE = 34890;

define constant $GL-TEXTURE-COMPARE-MODE = 34892;

define constant $GL-TEXTURE-COMPARE-FUNC = 34893;

define constant $GL-BUFFER-SIZE = 34660;

define constant $GL-BUFFER-USAGE = 34661;

define constant $GL-QUERY-COUNTER-BITS = 34916;

define constant $GL-CURRENT-QUERY = 34917;

define constant $GL-QUERY-RESULT = 34918;

define constant $GL-QUERY-RESULT-AVAILABLE = 34919;

define constant $GL-ARRAY-BUFFER = 34962;

define constant $GL-ELEMENT-ARRAY-BUFFER = 34963;

define constant $GL-ARRAY-BUFFER-BINDING = 34964;

define constant $GL-ELEMENT-ARRAY-BUFFER-BINDING = 34965;

define constant $GL-VERTEX-ATTRIB-ARRAY-BUFFER-BINDING = 34975;

define constant $GL-READ-ONLY = 35000;

define constant $GL-WRITE-ONLY = 35001;

define constant $GL-READ-WRITE = 35002;

define constant $GL-BUFFER-ACCESS = 35003;

define constant $GL-BUFFER-MAPPED = 35004;

define constant $GL-BUFFER-MAP-POINTER = 35005;

define constant $GL-STREAM-DRAW = 35040;

define constant $GL-STREAM-READ = 35041;

define constant $GL-STREAM-COPY = 35042;

define constant $GL-STATIC-DRAW = 35044;

define constant $GL-STATIC-READ = 35045;

define constant $GL-STATIC-COPY = 35046;

define constant $GL-DYNAMIC-DRAW = 35048;

define constant $GL-DYNAMIC-READ = 35049;

define constant $GL-DYNAMIC-COPY = 35050;

define constant $GL-SAMPLES-PASSED = 35092;

define constant $GL-BLEND-EQUATION-RGB = 32777;

define constant $GL-VERTEX-ATTRIB-ARRAY-ENABLED = 34338;

define constant $GL-VERTEX-ATTRIB-ARRAY-SIZE = 34339;

define constant $GL-VERTEX-ATTRIB-ARRAY-STRIDE = 34340;

define constant $GL-VERTEX-ATTRIB-ARRAY-TYPE = 34341;

define constant $GL-CURRENT-VERTEX-ATTRIB = 34342;

define constant $GL-VERTEX-PROGRAM-POINT-SIZE = 34370;

define constant $GL-VERTEX-ATTRIB-ARRAY-POINTER = 34373;

define constant $GL-STENCIL-BACK-FUNC = 34816;

define constant $GL-STENCIL-BACK-FAIL = 34817;

define constant $GL-STENCIL-BACK-PASS-DEPTH-FAIL = 34818;

define constant $GL-STENCIL-BACK-PASS-DEPTH-PASS = 34819;

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

define constant $GL-BLEND-EQUATION-ALPHA = 34877;

define constant $GL-MAX-VERTEX-ATTRIBS = 34921;

define constant $GL-VERTEX-ATTRIB-ARRAY-NORMALIZED = 34922;

define constant $GL-MAX-TEXTURE-IMAGE-UNITS = 34930;

define constant $GL-FRAGMENT-SHADER = 35632;

define constant $GL-VERTEX-SHADER = 35633;

define constant $GL-MAX-FRAGMENT-UNIFORM-COMPONENTS = 35657;

define constant $GL-MAX-VERTEX-UNIFORM-COMPONENTS = 35658;

define constant $GL-MAX-VARYING-FLOATS = 35659;

define constant $GL-MAX-VERTEX-TEXTURE-IMAGE-UNITS = 35660;

define constant $GL-MAX-COMBINED-TEXTURE-IMAGE-UNITS = 35661;

define constant $GL-SHADER-TYPE = 35663;

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

define constant $GL-DELETE-STATUS = 35712;

define constant $GL-COMPILE-STATUS = 35713;

define constant $GL-LINK-STATUS = 35714;

define constant $GL-VALIDATE-STATUS = 35715;

define constant $GL-INFO-LOG-LENGTH = 35716;

define constant $GL-ATTACHED-SHADERS = 35717;

define constant $GL-ACTIVE-UNIFORMS = 35718;

define constant $GL-ACTIVE-UNIFORM-MAX-LENGTH = 35719;

define constant $GL-SHADER-SOURCE-LENGTH = 35720;

define constant $GL-ACTIVE-ATTRIBUTES = 35721;

define constant $GL-ACTIVE-ATTRIBUTE-MAX-LENGTH = 35722;

define constant $GL-FRAGMENT-SHADER-DERIVATIVE-HINT = 35723;

define constant $GL-SHADING-LANGUAGE-VERSION = 35724;

define constant $GL-CURRENT-PROGRAM = 35725;

define constant $GL-POINT-SPRITE-COORD-ORIGIN = 36000;

define constant $GL-LOWER-LEFT = 36001;

define constant $GL-UPPER-LEFT = 36002;

define constant $GL-STENCIL-BACK-REF = 36003;

define constant $GL-STENCIL-BACK-VALUE-MASK = 36004;

define constant $GL-STENCIL-BACK-WRITEMASK = 36005;

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

define constant $GL-COMPRESSED-SRGB = 35912;

define constant $GL-COMPRESSED-SRGB-ALPHA = 35913;

define constant $GL-COMPARE-REF-TO-TEXTURE = 34894;

define constant $GL-CLIP-DISTANCE0 = 12288;

define constant $GL-CLIP-DISTANCE1 = 12289;

define constant $GL-CLIP-DISTANCE2 = 12290;

define constant $GL-CLIP-DISTANCE3 = 12291;

define constant $GL-CLIP-DISTANCE4 = 12292;

define constant $GL-CLIP-DISTANCE5 = 12293;

define constant $GL-CLIP-DISTANCE6 = 12294;

define constant $GL-CLIP-DISTANCE7 = 12295;

define constant $GL-MAX-CLIP-DISTANCES = 3378;

define constant $GL-MAJOR-VERSION = 33307;

define constant $GL-MINOR-VERSION = 33308;

define constant $GL-NUM-EXTENSIONS = 33309;

define constant $GL-CONTEXT-FLAGS = 33310;

define constant $GL-COMPRESSED-RED = 33317;

define constant $GL-COMPRESSED-RG = 33318;

define constant $GL-CONTEXT-FLAG-FORWARD-COMPATIBLE-BIT = 1;

define constant $GL-RGBA32F = 34836;

define constant $GL-RGB32F = 34837;

define constant $GL-RGBA16F = 34842;

define constant $GL-RGB16F = 34843;

define constant $GL-VERTEX-ATTRIB-ARRAY-INTEGER = 35069;

define constant $GL-MAX-ARRAY-TEXTURE-LAYERS = 35071;

define constant $GL-MIN-PROGRAM-TEXEL-OFFSET = 35076;

define constant $GL-MAX-PROGRAM-TEXEL-OFFSET = 35077;

define constant $GL-CLAMP-READ-COLOR = 35100;

define constant $GL-FIXED-ONLY = 35101;

define constant $GL-MAX-VARYING-COMPONENTS = 35659;

define constant $GL-TEXTURE-1D-ARRAY = 35864;

define constant $GL-PROXY-TEXTURE-1D-ARRAY = 35865;

define constant $GL-TEXTURE-2D-ARRAY = 35866;

define constant $GL-PROXY-TEXTURE-2D-ARRAY = 35867;

define constant $GL-TEXTURE-BINDING-1D-ARRAY = 35868;

define constant $GL-TEXTURE-BINDING-2D-ARRAY = 35869;

define constant $GL-R11F-G11F-B10F = 35898;

define constant $GL-UNSIGNED-INT-10F-11F-11F-REV = 35899;

define constant $GL-RGB9-E5 = 35901;

define constant $GL-UNSIGNED-INT-5-9-9-9-REV = 35902;

define constant $GL-TEXTURE-SHARED-SIZE = 35903;

define constant $GL-TRANSFORM-FEEDBACK-VARYING-MAX-LENGTH = 35958;

define constant $GL-TRANSFORM-FEEDBACK-BUFFER-MODE = 35967;

define constant $GL-MAX-TRANSFORM-FEEDBACK-SEPARATE-COMPONENTS = 35968;

define constant $GL-TRANSFORM-FEEDBACK-VARYINGS = 35971;

define constant $GL-TRANSFORM-FEEDBACK-BUFFER-START = 35972;

define constant $GL-TRANSFORM-FEEDBACK-BUFFER-SIZE = 35973;

define constant $GL-PRIMITIVES-GENERATED = 35975;

define constant $GL-TRANSFORM-FEEDBACK-PRIMITIVES-WRITTEN = 35976;

define constant $GL-RASTERIZER-DISCARD = 35977;

define constant $GL-MAX-TRANSFORM-FEEDBACK-INTERLEAVED-COMPONENTS = 35978;

define constant $GL-MAX-TRANSFORM-FEEDBACK-SEPARATE-ATTRIBS = 35979;

define constant $GL-INTERLEAVED-ATTRIBS = 35980;

define constant $GL-SEPARATE-ATTRIBS = 35981;

define constant $GL-TRANSFORM-FEEDBACK-BUFFER = 35982;

define constant $GL-TRANSFORM-FEEDBACK-BUFFER-BINDING = 35983;

define constant $GL-RGBA32UI = 36208;

define constant $GL-RGB32UI = 36209;

define constant $GL-RGBA16UI = 36214;

define constant $GL-RGB16UI = 36215;

define constant $GL-RGBA8UI = 36220;

define constant $GL-RGB8UI = 36221;

define constant $GL-RGBA32I = 36226;

define constant $GL-RGB32I = 36227;

define constant $GL-RGBA16I = 36232;

define constant $GL-RGB16I = 36233;

define constant $GL-RGBA8I = 36238;

define constant $GL-RGB8I = 36239;

define constant $GL-RED-INTEGER = 36244;

define constant $GL-GREEN-INTEGER = 36245;

define constant $GL-BLUE-INTEGER = 36246;

define constant $GL-RGB-INTEGER = 36248;

define constant $GL-RGBA-INTEGER = 36249;

define constant $GL-BGR-INTEGER = 36250;

define constant $GL-BGRA-INTEGER = 36251;

define constant $GL-SAMPLER-1D-ARRAY = 36288;

define constant $GL-SAMPLER-2D-ARRAY = 36289;

define constant $GL-SAMPLER-1D-ARRAY-SHADOW = 36291;

define constant $GL-SAMPLER-2D-ARRAY-SHADOW = 36292;

define constant $GL-SAMPLER-CUBE-SHADOW = 36293;

define constant $GL-UNSIGNED-INT-VEC2 = 36294;

define constant $GL-UNSIGNED-INT-VEC3 = 36295;

define constant $GL-UNSIGNED-INT-VEC4 = 36296;

define constant $GL-INT-SAMPLER-1D = 36297;

define constant $GL-INT-SAMPLER-2D = 36298;

define constant $GL-INT-SAMPLER-3D = 36299;

define constant $GL-INT-SAMPLER-CUBE = 36300;

define constant $GL-INT-SAMPLER-1D-ARRAY = 36302;

define constant $GL-INT-SAMPLER-2D-ARRAY = 36303;

define constant $GL-UNSIGNED-INT-SAMPLER-1D = 36305;

define constant $GL-UNSIGNED-INT-SAMPLER-2D = 36306;

define constant $GL-UNSIGNED-INT-SAMPLER-3D = 36307;

define constant $GL-UNSIGNED-INT-SAMPLER-CUBE = 36308;

define constant $GL-UNSIGNED-INT-SAMPLER-1D-ARRAY = 36310;

define constant $GL-UNSIGNED-INT-SAMPLER-2D-ARRAY = 36311;

define constant $GL-QUERY-WAIT = 36371;

define constant $GL-QUERY-NO-WAIT = 36372;

define constant $GL-QUERY-BY-REGION-WAIT = 36373;

define constant $GL-QUERY-BY-REGION-NO-WAIT = 36374;

define constant $GL-BUFFER-ACCESS-FLAGS = 37151;

define constant $GL-BUFFER-MAP-LENGTH = 37152;

define constant $GL-BUFFER-MAP-OFFSET = 37153;

define constant $GL-SAMPLER-2D-RECT = 35683;

define constant $GL-SAMPLER-2D-RECT-SHADOW = 35684;

define constant $GL-SAMPLER-BUFFER = 36290;

define constant $GL-INT-SAMPLER-2D-RECT = 36301;

define constant $GL-INT-SAMPLER-BUFFER = 36304;

define constant $GL-UNSIGNED-INT-SAMPLER-2D-RECT = 36309;

define constant $GL-UNSIGNED-INT-SAMPLER-BUFFER = 36312;

define constant $GL-TEXTURE-BUFFER = 35882;

define constant $GL-MAX-TEXTURE-BUFFER-SIZE = 35883;

define constant $GL-TEXTURE-BINDING-BUFFER = 35884;

define constant $GL-TEXTURE-BUFFER-DATA-STORE-BINDING = 35885;

define constant $GL-TEXTURE-RECTANGLE = 34037;

define constant $GL-TEXTURE-BINDING-RECTANGLE = 34038;

define constant $GL-PROXY-TEXTURE-RECTANGLE = 34039;

define constant $GL-MAX-RECTANGLE-TEXTURE-SIZE = 34040;

define constant $GL-R8-SNORM = 36756;

define constant $GL-RG8-SNORM = 36757;

define constant $GL-RGB8-SNORM = 36758;

define constant $GL-RGBA8-SNORM = 36759;

define constant $GL-R16-SNORM = 36760;

define constant $GL-RG16-SNORM = 36761;

define constant $GL-RGB16-SNORM = 36762;

define constant $GL-RGBA16-SNORM = 36763;

define constant $GL-SIGNED-NORMALIZED = 36764;

define constant $GL-PRIMITIVE-RESTART = 36765;

define constant $GL-PRIMITIVE-RESTART-INDEX = 36766;

define constant $GL-CONTEXT-CORE-PROFILE-BIT = 1;

define constant $GL-CONTEXT-COMPATIBILITY-PROFILE-BIT = 2;

define constant $GL-LINES-ADJACENCY = 10;

define constant $GL-LINE-STRIP-ADJACENCY = 11;

define constant $GL-TRIANGLES-ADJACENCY = 12;

define constant $GL-TRIANGLE-STRIP-ADJACENCY = 13;

define constant $GL-PROGRAM-POINT-SIZE = 34370;

define constant $GL-MAX-GEOMETRY-TEXTURE-IMAGE-UNITS = 35881;

define constant $GL-FRAMEBUFFER-ATTACHMENT-LAYERED = 36263;

define constant $GL-FRAMEBUFFER-INCOMPLETE-LAYER-TARGETS = 36264;

define constant $GL-GEOMETRY-SHADER = 36313;

define constant $GL-GEOMETRY-VERTICES-OUT = 35094;

define constant $GL-GEOMETRY-INPUT-TYPE = 35095;

define constant $GL-GEOMETRY-OUTPUT-TYPE = 35096;

define constant $GL-MAX-GEOMETRY-UNIFORM-COMPONENTS = 36319;

define constant $GL-MAX-GEOMETRY-OUTPUT-VERTICES = 36320;

define constant $GL-MAX-GEOMETRY-TOTAL-OUTPUT-COMPONENTS = 36321;

define constant $GL-MAX-VERTEX-OUTPUT-COMPONENTS = 37154;

define constant $GL-MAX-GEOMETRY-INPUT-COMPONENTS = 37155;

define constant $GL-MAX-GEOMETRY-OUTPUT-COMPONENTS = 37156;

define constant $GL-MAX-FRAGMENT-INPUT-COMPONENTS = 37157;

define constant $GL-CONTEXT-PROFILE-MASK = 37158;

define constant $GL-DEPTH-COMPONENT32F = 36012;

define constant $GL-DEPTH32F-STENCIL8 = 36013;

define constant $GL-FLOAT-32-UNSIGNED-INT-24-8-REV = 36269;

define constant $GL-INVALID-FRAMEBUFFER-OPERATION = 1286;

define constant $GL-FRAMEBUFFER-ATTACHMENT-COLOR-ENCODING = 33296;

define constant $GL-FRAMEBUFFER-ATTACHMENT-COMPONENT-TYPE = 33297;

define constant $GL-FRAMEBUFFER-ATTACHMENT-RED-SIZE = 33298;

define constant $GL-FRAMEBUFFER-ATTACHMENT-GREEN-SIZE = 33299;

define constant $GL-FRAMEBUFFER-ATTACHMENT-BLUE-SIZE = 33300;

define constant $GL-FRAMEBUFFER-ATTACHMENT-ALPHA-SIZE = 33301;

define constant $GL-FRAMEBUFFER-ATTACHMENT-DEPTH-SIZE = 33302;

define constant $GL-FRAMEBUFFER-ATTACHMENT-STENCIL-SIZE = 33303;

define constant $GL-FRAMEBUFFER-DEFAULT = 33304;

define constant $GL-FRAMEBUFFER-UNDEFINED = 33305;

define constant $GL-DEPTH-STENCIL-ATTACHMENT = 33306;

define constant $GL-MAX-RENDERBUFFER-SIZE = 34024;

define constant $GL-DEPTH-STENCIL = 34041;

define constant $GL-UNSIGNED-INT-24-8 = 34042;

define constant $GL-DEPTH24-STENCIL8 = 35056;

define constant $GL-TEXTURE-STENCIL-SIZE = 35057;

define constant $GL-TEXTURE-RED-TYPE = 35856;

define constant $GL-TEXTURE-GREEN-TYPE = 35857;

define constant $GL-TEXTURE-BLUE-TYPE = 35858;

define constant $GL-TEXTURE-ALPHA-TYPE = 35859;

define constant $GL-TEXTURE-DEPTH-TYPE = 35862;

define constant $GL-UNSIGNED-NORMALIZED = 35863;

define constant $GL-FRAMEBUFFER-BINDING = 36006;

define constant $GL-DRAW-FRAMEBUFFER-BINDING = 36006;

define constant $GL-RENDERBUFFER-BINDING = 36007;

define constant $GL-READ-FRAMEBUFFER = 36008;

define constant $GL-DRAW-FRAMEBUFFER = 36009;

define constant $GL-READ-FRAMEBUFFER-BINDING = 36010;

define constant $GL-RENDERBUFFER-SAMPLES = 36011;

define constant $GL-FRAMEBUFFER-ATTACHMENT-OBJECT-TYPE = 36048;

define constant $GL-FRAMEBUFFER-ATTACHMENT-OBJECT-NAME = 36049;

define constant $GL-FRAMEBUFFER-ATTACHMENT-TEXTURE-LEVEL = 36050;

define constant $GL-FRAMEBUFFER-ATTACHMENT-TEXTURE-CUBE-MAP-FACE = 36051;

define constant $GL-FRAMEBUFFER-ATTACHMENT-TEXTURE-LAYER = 36052;

define constant $GL-FRAMEBUFFER-COMPLETE = 36053;

define constant $GL-FRAMEBUFFER-INCOMPLETE-ATTACHMENT = 36054;

define constant $GL-FRAMEBUFFER-INCOMPLETE-MISSING-ATTACHMENT = 36055;

define constant $GL-FRAMEBUFFER-INCOMPLETE-DRAW-BUFFER = 36059;

define constant $GL-FRAMEBUFFER-INCOMPLETE-READ-BUFFER = 36060;

define constant $GL-FRAMEBUFFER-UNSUPPORTED = 36061;

define constant $GL-MAX-COLOR-ATTACHMENTS = 36063;

define constant $GL-COLOR-ATTACHMENT0 = 36064;

define constant $GL-COLOR-ATTACHMENT1 = 36065;

define constant $GL-COLOR-ATTACHMENT2 = 36066;

define constant $GL-COLOR-ATTACHMENT3 = 36067;

define constant $GL-COLOR-ATTACHMENT4 = 36068;

define constant $GL-COLOR-ATTACHMENT5 = 36069;

define constant $GL-COLOR-ATTACHMENT6 = 36070;

define constant $GL-COLOR-ATTACHMENT7 = 36071;

define constant $GL-COLOR-ATTACHMENT8 = 36072;

define constant $GL-COLOR-ATTACHMENT9 = 36073;

define constant $GL-COLOR-ATTACHMENT10 = 36074;

define constant $GL-COLOR-ATTACHMENT11 = 36075;

define constant $GL-COLOR-ATTACHMENT12 = 36076;

define constant $GL-COLOR-ATTACHMENT13 = 36077;

define constant $GL-COLOR-ATTACHMENT14 = 36078;

define constant $GL-COLOR-ATTACHMENT15 = 36079;

define constant $GL-DEPTH-ATTACHMENT = 36096;

define constant $GL-STENCIL-ATTACHMENT = 36128;

define constant $GL-FRAMEBUFFER = 36160;

define constant $GL-RENDERBUFFER = 36161;

define constant $GL-RENDERBUFFER-WIDTH = 36162;

define constant $GL-RENDERBUFFER-HEIGHT = 36163;

define constant $GL-RENDERBUFFER-INTERNAL-FORMAT = 36164;

define constant $GL-STENCIL-INDEX1 = 36166;

define constant $GL-STENCIL-INDEX4 = 36167;

define constant $GL-STENCIL-INDEX8 = 36168;

define constant $GL-STENCIL-INDEX16 = 36169;

define constant $GL-RENDERBUFFER-RED-SIZE = 36176;

define constant $GL-RENDERBUFFER-GREEN-SIZE = 36177;

define constant $GL-RENDERBUFFER-BLUE-SIZE = 36178;

define constant $GL-RENDERBUFFER-ALPHA-SIZE = 36179;

define constant $GL-RENDERBUFFER-DEPTH-SIZE = 36180;

define constant $GL-RENDERBUFFER-STENCIL-SIZE = 36181;

define constant $GL-FRAMEBUFFER-INCOMPLETE-MULTISAMPLE = 36182;

define constant $GL-MAX-SAMPLES = 36183;

define constant $GL-FRAMEBUFFER-SRGB = 36281;

define constant $GL-HALF-FLOAT = 5131;

define constant $GL-MAP-READ-BIT = 1;

define constant $GL-MAP-WRITE-BIT = 2;

define constant $GL-MAP-INVALIDATE-RANGE-BIT = 4;

define constant $GL-MAP-INVALIDATE-BUFFER-BIT = 8;

define constant $GL-MAP-FLUSH-EXPLICIT-BIT = 16;

define constant $GL-MAP-UNSYNCHRONIZED-BIT = 32;

define constant $GL-COMPRESSED-RED-RGTC1 = 36283;

define constant $GL-COMPRESSED-SIGNED-RED-RGTC1 = 36284;

define constant $GL-COMPRESSED-RG-RGTC2 = 36285;

define constant $GL-COMPRESSED-SIGNED-RG-RGTC2 = 36286;

define constant $GL-RG = 33319;

define constant $GL-RG-INTEGER = 33320;

define constant $GL-R8 = 33321;

define constant $GL-R16 = 33322;

define constant $GL-RG8 = 33323;

define constant $GL-RG16 = 33324;

define constant $GL-R16F = 33325;

define constant $GL-R32F = 33326;

define constant $GL-RG16F = 33327;

define constant $GL-RG32F = 33328;

define constant $GL-R8I = 33329;

define constant $GL-R8UI = 33330;

define constant $GL-R16I = 33331;

define constant $GL-R16UI = 33332;

define constant $GL-R32I = 33333;

define constant $GL-R32UI = 33334;

define constant $GL-RG8I = 33335;

define constant $GL-RG8UI = 33336;

define constant $GL-RG16I = 33337;

define constant $GL-RG16UI = 33338;

define constant $GL-RG32I = 33339;

define constant $GL-RG32UI = 33340;

define constant $GL-VERTEX-ARRAY-BINDING = 34229;

define constant $GL-UNIFORM-BUFFER = 35345;

define constant $GL-UNIFORM-BUFFER-BINDING = 35368;

define constant $GL-UNIFORM-BUFFER-START = 35369;

define constant $GL-UNIFORM-BUFFER-SIZE = 35370;

define constant $GL-MAX-VERTEX-UNIFORM-BLOCKS = 35371;

define constant $GL-MAX-GEOMETRY-UNIFORM-BLOCKS = 35372;

define constant $GL-MAX-FRAGMENT-UNIFORM-BLOCKS = 35373;

define constant $GL-MAX-COMBINED-UNIFORM-BLOCKS = 35374;

define constant $GL-MAX-UNIFORM-BUFFER-BINDINGS = 35375;

define constant $GL-MAX-UNIFORM-BLOCK-SIZE = 35376;

define constant $GL-MAX-COMBINED-VERTEX-UNIFORM-COMPONENTS = 35377;

define constant $GL-MAX-COMBINED-GEOMETRY-UNIFORM-COMPONENTS = 35378;

define constant $GL-MAX-COMBINED-FRAGMENT-UNIFORM-COMPONENTS = 35379;

define constant $GL-UNIFORM-BUFFER-OFFSET-ALIGNMENT = 35380;

define constant $GL-ACTIVE-UNIFORM-BLOCK-MAX-NAME-LENGTH = 35381;

define constant $GL-ACTIVE-UNIFORM-BLOCKS = 35382;

define constant $GL-UNIFORM-TYPE = 35383;

define constant $GL-UNIFORM-SIZE = 35384;

define constant $GL-UNIFORM-NAME-LENGTH = 35385;

define constant $GL-UNIFORM-BLOCK-INDEX = 35386;

define constant $GL-UNIFORM-OFFSET = 35387;

define constant $GL-UNIFORM-ARRAY-STRIDE = 35388;

define constant $GL-UNIFORM-MATRIX-STRIDE = 35389;

define constant $GL-UNIFORM-IS-ROW-MAJOR = 35390;

define constant $GL-UNIFORM-BLOCK-BINDING = 35391;

define constant $GL-UNIFORM-BLOCK-DATA-SIZE = 35392;

define constant $GL-UNIFORM-BLOCK-NAME-LENGTH = 35393;

define constant $GL-UNIFORM-BLOCK-ACTIVE-UNIFORMS = 35394;

define constant $GL-UNIFORM-BLOCK-ACTIVE-UNIFORM-INDICES = 35395;

define constant $GL-UNIFORM-BLOCK-REFERENCED-BY-VERTEX-SHADER = 35396;

define constant $GL-UNIFORM-BLOCK-REFERENCED-BY-GEOMETRY-SHADER = 35397;

define constant $GL-UNIFORM-BLOCK-REFERENCED-BY-FRAGMENT-SHADER = 35398;

define constant $GL-INVALID-INDEX = -1;

define constant $GL-COPY-READ-BUFFER = 36662;

define constant $GL-COPY-WRITE-BUFFER = 36663;

define constant $GL-DEPTH-CLAMP = 34383;

define constant $GL-FIRST-VERTEX-CONVENTION = 36429;

define constant $GL-LAST-VERTEX-CONVENTION = 36430;

define constant $GL-PROVOKING-VERTEX = 36431;

define constant $GL-TEXTURE-CUBE-MAP-SEAMLESS = 34895;

define constant $GL-MAX-SERVER-WAIT-TIMEOUT = 37137;

define constant $GL-OBJECT-TYPE = 37138;

define constant $GL-SYNC-CONDITION = 37139;

define constant $GL-SYNC-STATUS = 37140;

define constant $GL-SYNC-FLAGS = 37141;

define constant $GL-SYNC-FENCE = 37142;

define constant $GL-SYNC-GPU-COMMANDS-COMPLETE = 37143;

define constant $GL-UNSIGNALED = 37144;

define constant $GL-SIGNALED = 37145;

define constant $GL-ALREADY-SIGNALED = 37146;

define constant $GL-TIMEOUT-EXPIRED = 37147;

define constant $GL-CONDITION-SATISFIED = 37148;

define constant $GL-WAIT-FAILED = 37149;

define constant $GL-SYNC-FLUSH-COMMANDS-BIT = 1;

define constant $GL-TIMEOUT-IGNORED = -1;

define constant $GL-SAMPLE-POSITION = 36432;

define constant $GL-SAMPLE-MASK = 36433;

define constant $GL-SAMPLE-MASK-VALUE = 36434;

define constant $GL-MAX-SAMPLE-MASK-WORDS = 36441;

define constant $GL-TEXTURE-2D-MULTISAMPLE = 37120;

define constant $GL-PROXY-TEXTURE-2D-MULTISAMPLE = 37121;

define constant $GL-TEXTURE-2D-MULTISAMPLE-ARRAY = 37122;

define constant $GL-PROXY-TEXTURE-2D-MULTISAMPLE-ARRAY = 37123;

define constant $GL-TEXTURE-BINDING-2D-MULTISAMPLE = 37124;

define constant $GL-TEXTURE-BINDING-2D-MULTISAMPLE-ARRAY = 37125;

define constant $GL-TEXTURE-SAMPLES = 37126;

define constant $GL-TEXTURE-FIXED-SAMPLE-LOCATIONS = 37127;

define constant $GL-SAMPLER-2D-MULTISAMPLE = 37128;

define constant $GL-INT-SAMPLER-2D-MULTISAMPLE = 37129;

define constant $GL-UNSIGNED-INT-SAMPLER-2D-MULTISAMPLE = 37130;

define constant $GL-SAMPLER-2D-MULTISAMPLE-ARRAY = 37131;

define constant $GL-INT-SAMPLER-2D-MULTISAMPLE-ARRAY = 37132;

define constant $GL-UNSIGNED-INT-SAMPLER-2D-MULTISAMPLE-ARRAY = 37133;

define constant $GL-MAX-COLOR-TEXTURE-SAMPLES = 37134;

define constant $GL-MAX-DEPTH-TEXTURE-SAMPLES = 37135;

define constant $GL-MAX-INTEGER-SAMPLES = 37136;

define constant $GL-VERSION-1-0 = 1;

define constant $GL-VERSION-1-1 = 1;

define constant $GL-VERSION-1-2 = 1;

define constant $GL-VERSION-1-3 = 1;

define constant $GL-VERSION-1-4 = 1;

define constant $GL-VERSION-1-5 = 1;

define constant $GL-VERSION-2-0 = 1;

define constant $GL-VERSION-2-1 = 1;

define constant $GL-VERSION-3-0 = 1;

define constant $GL-VERSION-3-1 = 1;

define constant $GL-VERSION-3-2 = 1;

define constant $GL-ARB-depth-buffer-float = 1;

define constant $GL-ARB-framebuffer-object = 1;

define constant $GL-ARB-framebuffer-sRGB = 1;

define constant $GL-ARB-half-float-vertex = 1;

define constant $GL-ARB-map-buffer-range = 1;

define constant $GL-ARB-texture-compression-rgtc = 1;

define constant $GL-ARB-texture-rg = 1;

define constant $GL-ARB-vertex-array-object = 1;

define constant $GL-ARB-uniform-buffer-object = 1;

define constant $GL-ARB-copy-buffer = 1;

define constant $GL-ARB-depth-clamp = 1;

define constant $GL-ARB-draw-elements-base-vertex = 1;

define constant $GL-ARB-fragment-coord-conventions = 1;

define constant $GL-ARB-provoking-vertex = 1;

define constant $GL-ARB-seamless-cube-map = 1;

define constant $GL-ARB-sync = 1;

define constant $GL-ARB-texture-multisample = 1;

define constant $GL-ARB-vertex-array-bgra = 1;

