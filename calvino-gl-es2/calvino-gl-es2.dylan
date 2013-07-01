module: calvino-gl-es2
synopsis: bindings for OpenGL/ES2
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define constant <GLvoid> = <c-void>;

define constant <GLchar> = <C-signed-char>;

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

define constant <GLfixed> = <C-signed-int>;

define constant <GLclampx> = <C-signed-int>;

define constant <GLintptr> = <C-signed-long>;

define constant <GLsizeiptr> = <C-signed-long>;

define C-function glActiveTexture
  input parameter texture_ :: <GLenum>;
  c-name: "glActiveTexture";
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

define C-function glBindBuffer
  input parameter target_ :: <GLenum>;
  input parameter buffer_ :: <GLuint>;
  c-name: "glBindBuffer";
end;

define C-function glBindFramebuffer
  input parameter target_ :: <GLenum>;
  input parameter framebuffer_ :: <GLuint>;
  c-name: "glBindFramebuffer";
end;

define C-function glBindRenderbuffer
  input parameter target_ :: <GLenum>;
  input parameter renderbuffer_ :: <GLuint>;
  c-name: "glBindRenderbuffer";
end;

define C-function glBindTexture
  input parameter target_ :: <GLenum>;
  input parameter texture_ :: <GLuint>;
  c-name: "glBindTexture";
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

define C-function glBlendFuncSeparate
  input parameter srcRGB_ :: <GLenum>;
  input parameter dstRGB_ :: <GLenum>;
  input parameter srcAlpha_ :: <GLenum>;
  input parameter dstAlpha_ :: <GLenum>;
  c-name: "glBlendFuncSeparate";
end;

define C-pointer-type <GLvoid*> => <GLvoid>;
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

define C-function glCheckFramebufferStatus
  input parameter target_ :: <GLenum>;
  result res :: <GLenum>;
  c-name: "glCheckFramebufferStatus";
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

define C-function glClearDepthf
  input parameter depth_ :: <GLclampf>;
  c-name: "glClearDepthf";
end;

define C-function glClearStencil
  input parameter s_ :: <GLint>;
  c-name: "glClearStencil";
end;

define C-function glColorMask
  input parameter red_ :: <GLboolean>;
  input parameter green_ :: <GLboolean>;
  input parameter blue_ :: <GLboolean>;
  input parameter alpha_ :: <GLboolean>;
  c-name: "glColorMask";
end;

define C-function glCompileShader
  input parameter shader_ :: <GLuint>;
  c-name: "glCompileShader";
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

define C-function glCreateProgram
  result res :: <GLuint>;
  c-name: "glCreateProgram";
end;

define C-function glCreateShader
  input parameter type_ :: <GLenum>;
  result res :: <GLuint>;
  c-name: "glCreateShader";
end;

define C-function glCullFace
  input parameter mode_ :: <GLenum>;
  c-name: "glCullFace";
end;

define C-pointer-type <GLuint*> => <GLuint>;
define C-function glDeleteBuffers
  input parameter n_ :: <GLsizei>;
  input parameter buffers_ :: <GLuint*>;
  c-name: "glDeleteBuffers";
end;

define C-function glDeleteFramebuffers
  input parameter n_ :: <GLsizei>;
  input parameter framebuffers_ :: <GLuint*>;
  c-name: "glDeleteFramebuffers";
end;

define C-function glDeleteProgram
  input parameter program_ :: <GLuint>;
  c-name: "glDeleteProgram";
end;

define C-function glDeleteRenderbuffers
  input parameter n_ :: <GLsizei>;
  input parameter renderbuffers_ :: <GLuint*>;
  c-name: "glDeleteRenderbuffers";
end;

define C-function glDeleteShader
  input parameter shader_ :: <GLuint>;
  c-name: "glDeleteShader";
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

define C-function glDepthRangef
  input parameter zNear_ :: <GLclampf>;
  input parameter zFar_ :: <GLclampf>;
  c-name: "glDepthRangef";
end;

define C-function glDetachShader
  input parameter program_ :: <GLuint>;
  input parameter shader_ :: <GLuint>;
  c-name: "glDetachShader";
end;

define C-function glDisable
  input parameter cap_ :: <GLenum>;
  c-name: "glDisable";
end;

define C-function glDisableVertexAttribArray
  input parameter index_ :: <GLuint>;
  c-name: "glDisableVertexAttribArray";
end;

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

define C-function glEnable
  input parameter cap_ :: <GLenum>;
  c-name: "glEnable";
end;

define C-function glEnableVertexAttribArray
  input parameter index_ :: <GLuint>;
  c-name: "glEnableVertexAttribArray";
end;

define C-function glFinish
  c-name: "glFinish";
end;

define C-function glFlush
  c-name: "glFlush";
end;

define C-function glFramebufferRenderbuffer
  input parameter target_ :: <GLenum>;
  input parameter attachment_ :: <GLenum>;
  input parameter renderbuffertarget_ :: <GLenum>;
  input parameter renderbuffer_ :: <GLuint>;
  c-name: "glFramebufferRenderbuffer";
end;

define C-function glFramebufferTexture2D
  input parameter target_ :: <GLenum>;
  input parameter attachment_ :: <GLenum>;
  input parameter textarget_ :: <GLenum>;
  input parameter texture_ :: <GLuint>;
  input parameter level_ :: <GLint>;
  c-name: "glFramebufferTexture2D";
end;

define C-function glFrontFace
  input parameter mode_ :: <GLenum>;
  c-name: "glFrontFace";
end;

define C-function glGenBuffers
  input parameter n_ :: <GLsizei>;
  input parameter buffers_ :: <GLuint*>;
  c-name: "glGenBuffers";
end;

define C-function glGenerateMipmap
  input parameter target_ :: <GLenum>;
  c-name: "glGenerateMipmap";
end;

define C-function glGenFramebuffers
  input parameter n_ :: <GLsizei>;
  input parameter framebuffers_ :: <GLuint*>;
  c-name: "glGenFramebuffers";
end;

define C-function glGenRenderbuffers
  input parameter n_ :: <GLsizei>;
  input parameter renderbuffers_ :: <GLuint*>;
  c-name: "glGenRenderbuffers";
end;

define C-function glGenTextures
  input parameter n_ :: <GLsizei>;
  input parameter textures_ :: <GLuint*>;
  c-name: "glGenTextures";
end;

define C-pointer-type <GLsizei*> => <GLsizei>;
define C-pointer-type <GLint*> => <GLint>;
define C-pointer-type <GLenum*> => <GLenum>;
define C-function glGetActiveAttrib
  input parameter program_ :: <GLuint>;
  input parameter index_ :: <GLuint>;
  input parameter bufsize_ :: <GLsizei>;
  input parameter length_ :: <GLsizei*>;
  input parameter size_ :: <GLint*>;
  input parameter type_ :: <GLenum*>;
  input parameter name_ :: <GLchar*>;
  c-name: "glGetActiveAttrib";
end;

define C-function glGetActiveUniform
  input parameter program_ :: <GLuint>;
  input parameter index_ :: <GLuint>;
  input parameter bufsize_ :: <GLsizei>;
  input parameter length_ :: <GLsizei*>;
  input parameter size_ :: <GLint*>;
  input parameter type_ :: <GLenum*>;
  input parameter name_ :: <GLchar*>;
  c-name: "glGetActiveUniform";
end;

define C-function glGetAttachedShaders
  input parameter program_ :: <GLuint>;
  input parameter maxcount_ :: <GLsizei>;
  input parameter count_ :: <GLsizei*>;
  input parameter shaders_ :: <GLuint*>;
  c-name: "glGetAttachedShaders";
end;

define C-function glGetAttribLocation
  input parameter program_ :: <GLuint>;
  input parameter name_ :: <GLchar*>;
  result res :: <C-signed-int>;
  c-name: "glGetAttribLocation";
end;

define C-pointer-type <GLboolean*> => <GLboolean>;
define C-function glGetBooleanv
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLboolean*>;
  c-name: "glGetBooleanv";
end;

define C-function glGetBufferParameteriv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetBufferParameteriv";
end;

define C-function glGetError
  result res :: <GLenum>;
  c-name: "glGetError";
end;

define C-pointer-type <GLfloat*> => <GLfloat>;
define C-function glGetFloatv
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLfloat*>;
  c-name: "glGetFloatv";
end;

define C-function glGetFramebufferAttachmentParameteriv
  input parameter target_ :: <GLenum>;
  input parameter attachment_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetFramebufferAttachmentParameteriv";
end;

define C-function glGetIntegerv
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetIntegerv";
end;

define C-function glGetProgramiv
  input parameter program_ :: <GLuint>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetProgramiv";
end;

define C-function glGetProgramInfoLog
  input parameter program_ :: <GLuint>;
  input parameter bufsize_ :: <GLsizei>;
  input parameter length_ :: <GLsizei*>;
  input parameter infolog_ :: <GLchar*>;
  c-name: "glGetProgramInfoLog";
end;

define C-function glGetRenderbufferParameteriv
  input parameter target_ :: <GLenum>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetRenderbufferParameteriv";
end;

define C-function glGetShaderiv
  input parameter shader_ :: <GLuint>;
  input parameter pname_ :: <GLenum>;
  input parameter params_ :: <GLint*>;
  c-name: "glGetShaderiv";
end;

define C-function glGetShaderInfoLog
  input parameter shader_ :: <GLuint>;
  input parameter bufsize_ :: <GLsizei>;
  input parameter length_ :: <GLsizei*>;
  input parameter infolog_ :: <GLchar*>;
  c-name: "glGetShaderInfoLog";
end;

define C-function glGetShaderPrecisionFormat
  input parameter shadertype_ :: <GLenum>;
  input parameter precisiontype_ :: <GLenum>;
  input parameter range_ :: <GLint*>;
  input parameter precision_ :: <GLint*>;
  c-name: "glGetShaderPrecisionFormat";
end;

define C-function glGetShaderSource
  input parameter shader_ :: <GLuint>;
  input parameter bufsize_ :: <GLsizei>;
  input parameter length_ :: <GLsizei*>;
  input parameter source_ :: <GLchar*>;
  c-name: "glGetShaderSource";
end;

define C-pointer-type <GLubyte*> => <GLubyte>;
define C-function glGetString
  input parameter name_ :: <GLenum>;
  result res :: <GLubyte*>;
  c-name: "glGetString";
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

define C-function glGetUniformLocation
  input parameter program_ :: <GLuint>;
  input parameter name_ :: <GLchar*>;
  result res :: <C-signed-int>;
  c-name: "glGetUniformLocation";
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

define C-pointer-type <GLvoid**> => <GLvoid*>;
define C-function glGetVertexAttribPointerv
  input parameter index_ :: <GLuint>;
  input parameter pname_ :: <GLenum>;
  input parameter pointer_ :: <GLvoid**>;
  c-name: "glGetVertexAttribPointerv";
end;

define C-function glHint
  input parameter target_ :: <GLenum>;
  input parameter mode_ :: <GLenum>;
  c-name: "glHint";
end;

define C-function glIsBuffer
  input parameter buffer_ :: <GLuint>;
  result res :: <GLboolean>;
  c-name: "glIsBuffer";
end;

define C-function glIsEnabled
  input parameter cap_ :: <GLenum>;
  result res :: <GLboolean>;
  c-name: "glIsEnabled";
end;

define C-function glIsFramebuffer
  input parameter framebuffer_ :: <GLuint>;
  result res :: <GLboolean>;
  c-name: "glIsFramebuffer";
end;

define C-function glIsProgram
  input parameter program_ :: <GLuint>;
  result res :: <GLboolean>;
  c-name: "glIsProgram";
end;

define C-function glIsRenderbuffer
  input parameter renderbuffer_ :: <GLuint>;
  result res :: <GLboolean>;
  c-name: "glIsRenderbuffer";
end;

define C-function glIsShader
  input parameter shader_ :: <GLuint>;
  result res :: <GLboolean>;
  c-name: "glIsShader";
end;

define C-function glIsTexture
  input parameter texture_ :: <GLuint>;
  result res :: <GLboolean>;
  c-name: "glIsTexture";
end;

define C-function glLineWidth
  input parameter width_ :: <GLfloat>;
  c-name: "glLineWidth";
end;

define C-function glLinkProgram
  input parameter program_ :: <GLuint>;
  c-name: "glLinkProgram";
end;

define C-function glPixelStorei
  input parameter pname_ :: <GLenum>;
  input parameter param_ :: <GLint>;
  c-name: "glPixelStorei";
end;

define C-function glPolygonOffset
  input parameter factor_ :: <GLfloat>;
  input parameter units_ :: <GLfloat>;
  c-name: "glPolygonOffset";
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

define C-function glReleaseShaderCompiler
  c-name: "glReleaseShaderCompiler";
end;

define C-function glRenderbufferStorage
  input parameter target_ :: <GLenum>;
  input parameter internalformat_ :: <GLenum>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  c-name: "glRenderbufferStorage";
end;

define C-function glSampleCoverage
  input parameter value_ :: <GLclampf>;
  input parameter invert_ :: <GLboolean>;
  c-name: "glSampleCoverage";
end;

define C-function glScissor
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  c-name: "glScissor";
end;

define C-function glShaderBinary
  input parameter n_ :: <GLsizei>;
  input parameter shaders_ :: <GLuint*>;
  input parameter binaryformat_ :: <GLenum>;
  input parameter binary_ :: <GLvoid*>;
  input parameter length_ :: <GLsizei>;
  c-name: "glShaderBinary";
end;

define C-pointer-type <GLchar**> => <GLchar*>;
define C-function glShaderSource
  input parameter shader_ :: <GLuint>;
  input parameter count_ :: <GLsizei>;
  input parameter string_ :: <GLchar**>;
  input parameter length_ :: <GLint*>;
  c-name: "glShaderSource";
end;

define C-function glStencilFunc
  input parameter func_ :: <GLenum>;
  input parameter ref_ :: <GLint>;
  input parameter mask_ :: <GLuint>;
  c-name: "glStencilFunc";
end;

define C-function glStencilFuncSeparate
  input parameter face_ :: <GLenum>;
  input parameter func_ :: <GLenum>;
  input parameter ref_ :: <GLint>;
  input parameter mask_ :: <GLuint>;
  c-name: "glStencilFuncSeparate";
end;

define C-function glStencilMask
  input parameter mask_ :: <GLuint>;
  c-name: "glStencilMask";
end;

define C-function glStencilMaskSeparate
  input parameter face_ :: <GLenum>;
  input parameter mask_ :: <GLuint>;
  c-name: "glStencilMaskSeparate";
end;

define C-function glStencilOp
  input parameter fail_ :: <GLenum>;
  input parameter zfail_ :: <GLenum>;
  input parameter zpass_ :: <GLenum>;
  c-name: "glStencilOp";
end;

define C-function glStencilOpSeparate
  input parameter face_ :: <GLenum>;
  input parameter fail_ :: <GLenum>;
  input parameter zfail_ :: <GLenum>;
  input parameter zpass_ :: <GLenum>;
  c-name: "glStencilOpSeparate";
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

define C-function glUniform1f
  input parameter location_ :: <GLint>;
  input parameter x_ :: <GLfloat>;
  c-name: "glUniform1f";
end;

define C-function glUniform1fv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter v_ :: <GLfloat*>;
  c-name: "glUniform1fv";
end;

define C-function glUniform1i
  input parameter location_ :: <GLint>;
  input parameter x_ :: <GLint>;
  c-name: "glUniform1i";
end;

define C-function glUniform1iv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter v_ :: <GLint*>;
  c-name: "glUniform1iv";
end;

define C-function glUniform2f
  input parameter location_ :: <GLint>;
  input parameter x_ :: <GLfloat>;
  input parameter y_ :: <GLfloat>;
  c-name: "glUniform2f";
end;

define C-function glUniform2fv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter v_ :: <GLfloat*>;
  c-name: "glUniform2fv";
end;

define C-function glUniform2i
  input parameter location_ :: <GLint>;
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  c-name: "glUniform2i";
end;

define C-function glUniform2iv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter v_ :: <GLint*>;
  c-name: "glUniform2iv";
end;

define C-function glUniform3f
  input parameter location_ :: <GLint>;
  input parameter x_ :: <GLfloat>;
  input parameter y_ :: <GLfloat>;
  input parameter z_ :: <GLfloat>;
  c-name: "glUniform3f";
end;

define C-function glUniform3fv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter v_ :: <GLfloat*>;
  c-name: "glUniform3fv";
end;

define C-function glUniform3i
  input parameter location_ :: <GLint>;
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter z_ :: <GLint>;
  c-name: "glUniform3i";
end;

define C-function glUniform3iv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter v_ :: <GLint*>;
  c-name: "glUniform3iv";
end;

define C-function glUniform4f
  input parameter location_ :: <GLint>;
  input parameter x_ :: <GLfloat>;
  input parameter y_ :: <GLfloat>;
  input parameter z_ :: <GLfloat>;
  input parameter w_ :: <GLfloat>;
  c-name: "glUniform4f";
end;

define C-function glUniform4fv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter v_ :: <GLfloat*>;
  c-name: "glUniform4fv";
end;

define C-function glUniform4i
  input parameter location_ :: <GLint>;
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter z_ :: <GLint>;
  input parameter w_ :: <GLint>;
  c-name: "glUniform4i";
end;

define C-function glUniform4iv
  input parameter location_ :: <GLint>;
  input parameter count_ :: <GLsizei>;
  input parameter v_ :: <GLint*>;
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

define C-function glUseProgram
  input parameter program_ :: <GLuint>;
  c-name: "glUseProgram";
end;

define C-function glValidateProgram
  input parameter program_ :: <GLuint>;
  c-name: "glValidateProgram";
end;

define C-function glVertexAttrib1f
  input parameter indx_ :: <GLuint>;
  input parameter x_ :: <GLfloat>;
  c-name: "glVertexAttrib1f";
end;

define C-function glVertexAttrib1fv
  input parameter indx_ :: <GLuint>;
  input parameter values_ :: <GLfloat*>;
  c-name: "glVertexAttrib1fv";
end;

define C-function glVertexAttrib2f
  input parameter indx_ :: <GLuint>;
  input parameter x_ :: <GLfloat>;
  input parameter y_ :: <GLfloat>;
  c-name: "glVertexAttrib2f";
end;

define C-function glVertexAttrib2fv
  input parameter indx_ :: <GLuint>;
  input parameter values_ :: <GLfloat*>;
  c-name: "glVertexAttrib2fv";
end;

define C-function glVertexAttrib3f
  input parameter indx_ :: <GLuint>;
  input parameter x_ :: <GLfloat>;
  input parameter y_ :: <GLfloat>;
  input parameter z_ :: <GLfloat>;
  c-name: "glVertexAttrib3f";
end;

define C-function glVertexAttrib3fv
  input parameter indx_ :: <GLuint>;
  input parameter values_ :: <GLfloat*>;
  c-name: "glVertexAttrib3fv";
end;

define C-function glVertexAttrib4f
  input parameter indx_ :: <GLuint>;
  input parameter x_ :: <GLfloat>;
  input parameter y_ :: <GLfloat>;
  input parameter z_ :: <GLfloat>;
  input parameter w_ :: <GLfloat>;
  c-name: "glVertexAttrib4f";
end;

define C-function glVertexAttrib4fv
  input parameter indx_ :: <GLuint>;
  input parameter values_ :: <GLfloat*>;
  c-name: "glVertexAttrib4fv";
end;

define C-function glVertexAttribPointer
  input parameter indx_ :: <GLuint>;
  input parameter size_ :: <GLint>;
  input parameter type_ :: <GLenum>;
  input parameter normalized_ :: <GLboolean>;
  input parameter stride_ :: <GLsizei>;
  input parameter ptr_ :: <GLvoid*>;
  c-name: "glVertexAttribPointer";
end;

define C-function glViewport
  input parameter x_ :: <GLint>;
  input parameter y_ :: <GLint>;
  input parameter width_ :: <GLsizei>;
  input parameter height_ :: <GLsizei>;
  c-name: "glViewport";
end;

define constant $GL-ES-VERSION-2-0 = 1;

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

define constant $GL-FUNC-ADD = 32774;

define constant $GL-BLEND-EQUATION = 32777;

define constant $GL-BLEND-EQUATION-RGB = 32777;

define constant $GL-BLEND-EQUATION-ALPHA = 34877;

define constant $GL-FUNC-SUBTRACT = 32778;

define constant $GL-FUNC-REVERSE-SUBTRACT = 32779;

define constant $GL-BLEND-DST-RGB = 32968;

define constant $GL-BLEND-SRC-RGB = 32969;

define constant $GL-BLEND-DST-ALPHA = 32970;

define constant $GL-BLEND-SRC-ALPHA = 32971;

define constant $GL-CONSTANT-COLOR = 32769;

define constant $GL-ONE-MINUS-CONSTANT-COLOR = 32770;

define constant $GL-CONSTANT-ALPHA = 32771;

define constant $GL-ONE-MINUS-CONSTANT-ALPHA = 32772;

define constant $GL-BLEND-COLOR = 32773;

define constant $GL-ARRAY-BUFFER = 34962;

define constant $GL-ELEMENT-ARRAY-BUFFER = 34963;

define constant $GL-ARRAY-BUFFER-BINDING = 34964;

define constant $GL-ELEMENT-ARRAY-BUFFER-BINDING = 34965;

define constant $GL-STREAM-DRAW = 35040;

define constant $GL-STATIC-DRAW = 35044;

define constant $GL-DYNAMIC-DRAW = 35048;

define constant $GL-BUFFER-SIZE = 34660;

define constant $GL-BUFFER-USAGE = 34661;

define constant $GL-CURRENT-VERTEX-ATTRIB = 34342;

define constant $GL-FRONT = 1028;

define constant $GL-BACK = 1029;

define constant $GL-FRONT-AND-BACK = 1032;

define constant $GL-TEXTURE-2D = 3553;

define constant $GL-CULL-FACE = 2884;

define constant $GL-BLEND = 3042;

define constant $GL-DITHER = 3024;

define constant $GL-STENCIL-TEST = 2960;

define constant $GL-DEPTH-TEST = 2929;

define constant $GL-SCISSOR-TEST = 3089;

define constant $GL-POLYGON-OFFSET-FILL = 32823;

define constant $GL-SAMPLE-ALPHA-TO-COVERAGE = 32926;

define constant $GL-SAMPLE-COVERAGE = 32928;

define constant $GL-NO-ERROR = 0;

define constant $GL-INVALID-ENUM = 1280;

define constant $GL-INVALID-VALUE = 1281;

define constant $GL-INVALID-OPERATION = 1282;

define constant $GL-OUT-OF-MEMORY = 1285;

define constant $GL-CW = 2304;

define constant $GL-CCW = 2305;

define constant $GL-LINE-WIDTH = 2849;

define constant $GL-ALIASED-POINT-SIZE-RANGE = 33901;

define constant $GL-ALIASED-LINE-WIDTH-RANGE = 33902;

define constant $GL-CULL-FACE-MODE = 2885;

define constant $GL-FRONT-FACE = 2886;

define constant $GL-DEPTH-RANGE = 2928;

define constant $GL-DEPTH-WRITEMASK = 2930;

define constant $GL-DEPTH-CLEAR-VALUE = 2931;

define constant $GL-DEPTH-FUNC = 2932;

define constant $GL-STENCIL-CLEAR-VALUE = 2961;

define constant $GL-STENCIL-FUNC = 2962;

define constant $GL-STENCIL-FAIL = 2964;

define constant $GL-STENCIL-PASS-DEPTH-FAIL = 2965;

define constant $GL-STENCIL-PASS-DEPTH-PASS = 2966;

define constant $GL-STENCIL-REF = 2967;

define constant $GL-STENCIL-VALUE-MASK = 2963;

define constant $GL-STENCIL-WRITEMASK = 2968;

define constant $GL-STENCIL-BACK-FUNC = 34816;

define constant $GL-STENCIL-BACK-FAIL = 34817;

define constant $GL-STENCIL-BACK-PASS-DEPTH-FAIL = 34818;

define constant $GL-STENCIL-BACK-PASS-DEPTH-PASS = 34819;

define constant $GL-STENCIL-BACK-REF = 36003;

define constant $GL-STENCIL-BACK-VALUE-MASK = 36004;

define constant $GL-STENCIL-BACK-WRITEMASK = 36005;

define constant $GL-VIEWPORT = 2978;

define constant $GL-SCISSOR-BOX = 3088;

define constant $GL-COLOR-CLEAR-VALUE = 3106;

define constant $GL-COLOR-WRITEMASK = 3107;

define constant $GL-UNPACK-ALIGNMENT = 3317;

define constant $GL-PACK-ALIGNMENT = 3333;

define constant $GL-MAX-TEXTURE-SIZE = 3379;

define constant $GL-MAX-VIEWPORT-DIMS = 3386;

define constant $GL-SUBPIXEL-BITS = 3408;

define constant $GL-RED-BITS = 3410;

define constant $GL-GREEN-BITS = 3411;

define constant $GL-BLUE-BITS = 3412;

define constant $GL-ALPHA-BITS = 3413;

define constant $GL-DEPTH-BITS = 3414;

define constant $GL-STENCIL-BITS = 3415;

define constant $GL-POLYGON-OFFSET-UNITS = 10752;

define constant $GL-POLYGON-OFFSET-FACTOR = 32824;

define constant $GL-TEXTURE-BINDING-2D = 32873;

define constant $GL-SAMPLE-BUFFERS = 32936;

define constant $GL-SAMPLES = 32937;

define constant $GL-SAMPLE-COVERAGE-VALUE = 32938;

define constant $GL-SAMPLE-COVERAGE-INVERT = 32939;

define constant $GL-NUM-COMPRESSED-TEXTURE-FORMATS = 34466;

define constant $GL-COMPRESSED-TEXTURE-FORMATS = 34467;

define constant $GL-DONT-CARE = 4352;

define constant $GL-FASTEST = 4353;

define constant $GL-NICEST = 4354;

define constant $GL-GENERATE-MIPMAP-HINT = 33170;

define constant $GL-BYTE = 5120;

define constant $GL-UNSIGNED-BYTE = 5121;

define constant $GL-SHORT = 5122;

define constant $GL-UNSIGNED-SHORT = 5123;

define constant $GL-INT = 5124;

define constant $GL-UNSIGNED-INT = 5125;

define constant $GL-FLOAT = 5126;

define constant $GL-FIXED = 5132;

define constant $GL-DEPTH-COMPONENT = 6402;

define constant $GL-ALPHA = 6406;

define constant $GL-RGB = 6407;

define constant $GL-RGBA = 6408;

define constant $GL-LUMINANCE = 6409;

define constant $GL-LUMINANCE-ALPHA = 6410;

define constant $GL-UNSIGNED-SHORT-4-4-4-4 = 32819;

define constant $GL-UNSIGNED-SHORT-5-5-5-1 = 32820;

define constant $GL-UNSIGNED-SHORT-5-6-5 = 33635;

define constant $GL-FRAGMENT-SHADER = 35632;

define constant $GL-VERTEX-SHADER = 35633;

define constant $GL-MAX-VERTEX-ATTRIBS = 34921;

define constant $GL-MAX-VERTEX-UNIFORM-VECTORS = 36347;

define constant $GL-MAX-VARYING-VECTORS = 36348;

define constant $GL-MAX-COMBINED-TEXTURE-IMAGE-UNITS = 35661;

define constant $GL-MAX-VERTEX-TEXTURE-IMAGE-UNITS = 35660;

define constant $GL-MAX-TEXTURE-IMAGE-UNITS = 34930;

define constant $GL-MAX-FRAGMENT-UNIFORM-VECTORS = 36349;

define constant $GL-SHADER-TYPE = 35663;

define constant $GL-DELETE-STATUS = 35712;

define constant $GL-LINK-STATUS = 35714;

define constant $GL-VALIDATE-STATUS = 35715;

define constant $GL-ATTACHED-SHADERS = 35717;

define constant $GL-ACTIVE-UNIFORMS = 35718;

define constant $GL-ACTIVE-UNIFORM-MAX-LENGTH = 35719;

define constant $GL-ACTIVE-ATTRIBUTES = 35721;

define constant $GL-ACTIVE-ATTRIBUTE-MAX-LENGTH = 35722;

define constant $GL-SHADING-LANGUAGE-VERSION = 35724;

define constant $GL-CURRENT-PROGRAM = 35725;

define constant $GL-NEVER = 512;

define constant $GL-LESS = 513;

define constant $GL-EQUAL = 514;

define constant $GL-LEQUAL = 515;

define constant $GL-GREATER = 516;

define constant $GL-NOTEQUAL = 517;

define constant $GL-GEQUAL = 518;

define constant $GL-ALWAYS = 519;

define constant $GL-KEEP = 7680;

define constant $GL-REPLACE = 7681;

define constant $GL-INCR = 7682;

define constant $GL-DECR = 7683;

define constant $GL-INVERT = 5386;

define constant $GL-INCR-WRAP = 34055;

define constant $GL-DECR-WRAP = 34056;

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

define constant $GL-TEXTURE = 5890;

define constant $GL-TEXTURE-CUBE-MAP = 34067;

define constant $GL-TEXTURE-BINDING-CUBE-MAP = 34068;

define constant $GL-TEXTURE-CUBE-MAP-POSITIVE-X = 34069;

define constant $GL-TEXTURE-CUBE-MAP-NEGATIVE-X = 34070;

define constant $GL-TEXTURE-CUBE-MAP-POSITIVE-Y = 34071;

define constant $GL-TEXTURE-CUBE-MAP-NEGATIVE-Y = 34072;

define constant $GL-TEXTURE-CUBE-MAP-POSITIVE-Z = 34073;

define constant $GL-TEXTURE-CUBE-MAP-NEGATIVE-Z = 34074;

define constant $GL-MAX-CUBE-MAP-TEXTURE-SIZE = 34076;

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

define constant $GL-REPEAT = 10497;

define constant $GL-CLAMP-TO-EDGE = 33071;

define constant $GL-MIRRORED-REPEAT = 33648;

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

define constant $GL-SAMPLER-2D = 35678;

define constant $GL-SAMPLER-CUBE = 35680;

define constant $GL-VERTEX-ATTRIB-ARRAY-ENABLED = 34338;

define constant $GL-VERTEX-ATTRIB-ARRAY-SIZE = 34339;

define constant $GL-VERTEX-ATTRIB-ARRAY-STRIDE = 34340;

define constant $GL-VERTEX-ATTRIB-ARRAY-TYPE = 34341;

define constant $GL-VERTEX-ATTRIB-ARRAY-NORMALIZED = 34922;

define constant $GL-VERTEX-ATTRIB-ARRAY-POINTER = 34373;

define constant $GL-VERTEX-ATTRIB-ARRAY-BUFFER-BINDING = 34975;

define constant $GL-IMPLEMENTATION-COLOR-READ-TYPE = 35738;

define constant $GL-IMPLEMENTATION-COLOR-READ-FORMAT = 35739;

define constant $GL-COMPILE-STATUS = 35713;

define constant $GL-INFO-LOG-LENGTH = 35716;

define constant $GL-SHADER-SOURCE-LENGTH = 35720;

define constant $GL-SHADER-COMPILER = 36346;

define constant $GL-SHADER-BINARY-FORMATS = 36344;

define constant $GL-NUM-SHADER-BINARY-FORMATS = 36345;

define constant $GL-LOW-FLOAT = 36336;

define constant $GL-MEDIUM-FLOAT = 36337;

define constant $GL-HIGH-FLOAT = 36338;

define constant $GL-LOW-INT = 36339;

define constant $GL-MEDIUM-INT = 36340;

define constant $GL-HIGH-INT = 36341;

define constant $GL-FRAMEBUFFER = 36160;

define constant $GL-RENDERBUFFER = 36161;

define constant $GL-RGBA4 = 32854;

define constant $GL-RGB5-A1 = 32855;

define constant $GL-RGB565 = 36194;

define constant $GL-DEPTH-COMPONENT16 = 33189;

define constant $GL-STENCIL-INDEX = 6401;

define constant $GL-STENCIL-INDEX8 = 36168;

define constant $GL-RENDERBUFFER-WIDTH = 36162;

define constant $GL-RENDERBUFFER-HEIGHT = 36163;

define constant $GL-RENDERBUFFER-INTERNAL-FORMAT = 36164;

define constant $GL-RENDERBUFFER-RED-SIZE = 36176;

define constant $GL-RENDERBUFFER-GREEN-SIZE = 36177;

define constant $GL-RENDERBUFFER-BLUE-SIZE = 36178;

define constant $GL-RENDERBUFFER-ALPHA-SIZE = 36179;

define constant $GL-RENDERBUFFER-DEPTH-SIZE = 36180;

define constant $GL-RENDERBUFFER-STENCIL-SIZE = 36181;

define constant $GL-FRAMEBUFFER-ATTACHMENT-OBJECT-TYPE = 36048;

define constant $GL-FRAMEBUFFER-ATTACHMENT-OBJECT-NAME = 36049;

define constant $GL-FRAMEBUFFER-ATTACHMENT-TEXTURE-LEVEL = 36050;

define constant $GL-FRAMEBUFFER-ATTACHMENT-TEXTURE-CUBE-MAP-FACE = 36051;

define constant $GL-COLOR-ATTACHMENT0 = 36064;

define constant $GL-DEPTH-ATTACHMENT = 36096;

define constant $GL-STENCIL-ATTACHMENT = 36128;

define constant $GL-NONE = 0;

define constant $GL-FRAMEBUFFER-COMPLETE = 36053;

define constant $GL-FRAMEBUFFER-INCOMPLETE-ATTACHMENT = 36054;

define constant $GL-FRAMEBUFFER-INCOMPLETE-MISSING-ATTACHMENT = 36055;

define constant $GL-FRAMEBUFFER-INCOMPLETE-DIMENSIONS = 36057;

define constant $GL-FRAMEBUFFER-UNSUPPORTED = 36061;

define constant $GL-FRAMEBUFFER-BINDING = 36006;

define constant $GL-RENDERBUFFER-BINDING = 36007;

define constant $GL-MAX-RENDERBUFFER-SIZE = 34024;

define constant $GL-INVALID-FRAMEBUFFER-OPERATION = 1286;

