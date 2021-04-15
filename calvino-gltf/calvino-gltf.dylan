module: calvino-gltf
synopsis: bindings for cgltf
author: Bruce Mitchener, Jr.
copyright: See LICENSE file in this distribution.

define constant <cgltf-size> = <C-size-t>;

define constant <cgltf-float> = <C-float>;

define constant <cgltf-int> = <C-signed-int>;

define constant <cgltf-uint> = <C-unsigned-int>;

define constant <cgltf-bool> = <C-signed-int>;

define constant <cgltf-file-type> = <C-int>;
define constant $cgltf-file-type-invalid = 0;
define constant $cgltf-file-type-gltf = 1;
define constant $cgltf-file-type-glb = 2;

define constant <cgltf-result> = <C-int>;
define constant $cgltf-result-success = 0;
define constant $cgltf-result-data-too-short = 1;
define constant $cgltf-result-unknown-format = 2;
define constant $cgltf-result-invalid-json = 3;
define constant $cgltf-result-invalid-gltf = 4;
define constant $cgltf-result-invalid-options = 5;
define constant $cgltf-result-file-not-found = 6;
define constant $cgltf-result-io-error = 7;
define constant $cgltf-result-out-of-memory = 8;
define constant $cgltf-result-legacy-gltf = 9;

define constant <alloc> = <C-function-pointer>;
define constant <free> = <C-function-pointer>;
define C-struct <cgltf-memory-options>
  sealed slot cgltf-memory-options$alloc :: <alloc>;
  sealed slot cgltf-memory-options$free :: <free>;
  sealed slot cgltf-memory-options$user-data :: <C-void*>;
end;

define C-pointer-type <cgltf-memory-options*> => <cgltf-memory-options>;
define C-pointer-type <cgltf-file-options*> => <cgltf-file-options>;
define C-pointer-type <size-t*> => <C-size-t>;
define C-pointer-type <void**> => <C-void*>;
define constant <read> = <C-function-pointer>;
define constant <release> = <C-function-pointer>;
define C-struct <cgltf-file-options>
  sealed slot cgltf-file-options$read :: <read>;
  sealed slot cgltf-file-options$release :: <release>;
  sealed slot cgltf-file-options$user-data :: <C-void*>;
end;

define C-struct <cgltf-options>
  sealed slot cgltf-options$type :: <cgltf-file-type>;
  sealed slot cgltf-options$json-token-count :: <C-size-t>;
  sealed slot cgltf-options$memory :: <cgltf-memory-options>;
  sealed slot cgltf-options$file :: <cgltf-file-options>;
end;

define constant <cgltf-buffer-view-type> = <C-int>;
define constant $cgltf-buffer-view-type-invalid = 0;
define constant $cgltf-buffer-view-type-indices = 1;
define constant $cgltf-buffer-view-type-vertices = 2;

define constant <cgltf-attribute-type> = <C-int>;
define constant $cgltf-attribute-type-invalid = 0;
define constant $cgltf-attribute-type-position = 1;
define constant $cgltf-attribute-type-normal = 2;
define constant $cgltf-attribute-type-tangent = 3;
define constant $cgltf-attribute-type-texcoord = 4;
define constant $cgltf-attribute-type-color = 5;
define constant $cgltf-attribute-type-joints = 6;
define constant $cgltf-attribute-type-weights = 7;

define constant <cgltf-component-type> = <C-int>;
define constant $cgltf-component-type-invalid = 0;
define constant $cgltf-component-type-r-8 = 1;
define constant $cgltf-component-type-r-8u = 2;
define constant $cgltf-component-type-r-16 = 3;
define constant $cgltf-component-type-r-16u = 4;
define constant $cgltf-component-type-r-32u = 5;
define constant $cgltf-component-type-r-32f = 6;

define constant <cgltf-type> = <C-int>;
define constant $cgltf-type-invalid = 0;
define constant $cgltf-type-scalar = 1;
define constant $cgltf-type-vec2 = 2;
define constant $cgltf-type-vec3 = 3;
define constant $cgltf-type-vec4 = 4;
define constant $cgltf-type-mat2 = 5;
define constant $cgltf-type-mat3 = 6;
define constant $cgltf-type-mat4 = 7;

define constant <cgltf-primitive-type> = <C-int>;
define constant $cgltf-primitive-type-points = 0;
define constant $cgltf-primitive-type-lines = 1;
define constant $cgltf-primitive-type-line-loop = 2;
define constant $cgltf-primitive-type-line-strip = 3;
define constant $cgltf-primitive-type-triangles = 4;
define constant $cgltf-primitive-type-triangle-strip = 5;
define constant $cgltf-primitive-type-triangle-fan = 6;

define constant <cgltf-alpha-mode> = <C-int>;
define constant $cgltf-alpha-mode-opaque = 0;
define constant $cgltf-alpha-mode-mask = 1;
define constant $cgltf-alpha-mode-blend = 2;

define constant <cgltf-animation-path-type> = <C-int>;
define constant $cgltf-animation-path-type-invalid = 0;
define constant $cgltf-animation-path-type-translation = 1;
define constant $cgltf-animation-path-type-rotation = 2;
define constant $cgltf-animation-path-type-scale = 3;
define constant $cgltf-animation-path-type-weights = 4;

define constant <cgltf-interpolation-type> = <C-int>;
define constant $cgltf-interpolation-type-linear = 0;
define constant $cgltf-interpolation-type-step = 1;
define constant $cgltf-interpolation-type-cubic-spline = 2;

define constant <cgltf-camera-type> = <C-int>;
define constant $cgltf-camera-type-invalid = 0;
define constant $cgltf-camera-type-perspective = 1;
define constant $cgltf-camera-type-orthographic = 2;

define constant <cgltf-light-type> = <C-int>;
define constant $cgltf-light-type-invalid = 0;
define constant $cgltf-light-type-directional = 1;
define constant $cgltf-light-type-point = 2;
define constant $cgltf-light-type-spot = 3;

define C-struct <cgltf-extras>
  sealed slot cgltf-extras$start-offset :: <C-size-t>;
  sealed slot cgltf-extras$end-offset :: <C-size-t>;
end;

define C-struct <cgltf-extension>
  sealed slot cgltf-extension$name :: <c-string>;
  sealed slot cgltf-extension$data :: <c-string>;
end;

define C-pointer-type <cgltf-extension*> => <cgltf-extension>;
define C-struct <cgltf-buffer>
  sealed slot cgltf-buffer$name :: <c-string>;
  sealed slot cgltf-buffer$size :: <C-size-t>;
  sealed slot cgltf-buffer$uri :: <c-string>;
  sealed slot cgltf-buffer$data :: <C-void*>;
  sealed slot cgltf-buffer$extras :: <cgltf-extras>;
  sealed slot cgltf-buffer$extensions-count :: <C-size-t>;
  sealed slot cgltf-buffer$extensions :: <cgltf-extension*>;
end;

define constant <cgltf-meshopt-compression-mode> = <C-int>;
define constant $cgltf-meshopt-compression-mode-invalid = 0;
define constant $cgltf-meshopt-compression-mode-attributes = 1;
define constant $cgltf-meshopt-compression-mode-triangles = 2;
define constant $cgltf-meshopt-compression-mode-indices = 3;

define constant <cgltf-meshopt-compression-filter> = <C-int>;
define constant $cgltf-meshopt-compression-filter-none = 0;
define constant $cgltf-meshopt-compression-filter-octahedral = 1;
define constant $cgltf-meshopt-compression-filter-quaternion = 2;
define constant $cgltf-meshopt-compression-filter-exponential = 3;

define C-pointer-type <cgltf-buffer*> => <cgltf-buffer>;
define C-struct <cgltf-meshopt-compression>
  sealed slot cgltf-meshopt-compression$buffer :: <cgltf-buffer*>;
  sealed slot cgltf-meshopt-compression$offset :: <C-size-t>;
  sealed slot cgltf-meshopt-compression$size :: <C-size-t>;
  sealed slot cgltf-meshopt-compression$stride :: <C-size-t>;
  sealed slot cgltf-meshopt-compression$count :: <C-size-t>;
  sealed slot cgltf-meshopt-compression$mode :: <cgltf-meshopt-compression-mode>;
  sealed slot cgltf-meshopt-compression$filter :: <cgltf-meshopt-compression-filter>;
end;

define C-struct <cgltf-buffer-view>
  sealed slot cgltf-buffer-view$name :: <c-string>;
  sealed slot cgltf-buffer-view$buffer :: <cgltf-buffer*>;
  sealed slot cgltf-buffer-view$offset :: <C-size-t>;
  sealed slot cgltf-buffer-view$size :: <C-size-t>;
  sealed slot cgltf-buffer-view$stride :: <C-size-t>;
  sealed slot cgltf-buffer-view$type :: <cgltf-buffer-view-type>;
  sealed slot cgltf-buffer-view$data :: <C-void*>;
  sealed slot cgltf-buffer-view$has-meshopt-compression :: <C-signed-int>;
  sealed slot cgltf-buffer-view$meshopt-compression :: <cgltf-meshopt-compression>;
  sealed slot cgltf-buffer-view$extras :: <cgltf-extras>;
  sealed slot cgltf-buffer-view$extensions-count :: <C-size-t>;
  sealed slot cgltf-buffer-view$extensions :: <cgltf-extension*>;
end;

define C-pointer-type <cgltf-buffer-view*> => <cgltf-buffer-view>;
define C-struct <cgltf-accessor-sparse>
  sealed slot cgltf-accessor-sparse$count :: <C-size-t>;
  sealed slot cgltf-accessor-sparse$indices-buffer-view :: <cgltf-buffer-view*>;
  sealed slot cgltf-accessor-sparse$indices-byte-offset :: <C-size-t>;
  sealed slot cgltf-accessor-sparse$indices-component-type :: <cgltf-component-type>;
  sealed slot cgltf-accessor-sparse$values-buffer-view :: <cgltf-buffer-view*>;
  sealed slot cgltf-accessor-sparse$values-byte-offset :: <C-size-t>;
  sealed slot cgltf-accessor-sparse$extras :: <cgltf-extras>;
  sealed slot cgltf-accessor-sparse$indices-extras :: <cgltf-extras>;
  sealed slot cgltf-accessor-sparse$values-extras :: <cgltf-extras>;
  sealed slot cgltf-accessor-sparse$extensions-count :: <C-size-t>;
  sealed slot cgltf-accessor-sparse$extensions :: <cgltf-extension*>;
  sealed slot cgltf-accessor-sparse$indices-extensions-count :: <C-size-t>;
  sealed slot cgltf-accessor-sparse$indices-extensions :: <cgltf-extension*>;
  sealed slot cgltf-accessor-sparse$values-extensions-count :: <C-size-t>;
  sealed slot cgltf-accessor-sparse$values-extensions :: <cgltf-extension*>;
end;

define C-struct <cgltf-accessor>
  sealed slot cgltf-accessor$name :: <c-string>;
  sealed slot cgltf-accessor$component-type :: <cgltf-component-type>;
  sealed slot cgltf-accessor$normalized :: <C-signed-int>;
  sealed slot cgltf-accessor$type :: <cgltf-type>;
  sealed slot cgltf-accessor$offset :: <C-size-t>;
  sealed slot cgltf-accessor$count :: <C-size-t>;
  sealed slot cgltf-accessor$stride :: <C-size-t>;
  sealed slot cgltf-accessor$buffer-view :: <cgltf-buffer-view*>;
  sealed slot cgltf-accessor$has-min :: <C-signed-int>;
  sealed array slot cgltf-accessor$min :: <C-float>, length: 16;
  sealed slot cgltf-accessor$has-max :: <C-signed-int>;
  sealed array slot cgltf-accessor$max :: <C-float>, length: 16;
  sealed slot cgltf-accessor$is-sparse :: <C-signed-int>;
  sealed slot cgltf-accessor$sparse :: <cgltf-accessor-sparse>;
  sealed slot cgltf-accessor$extras :: <cgltf-extras>;
  sealed slot cgltf-accessor$extensions-count :: <C-size-t>;
  sealed slot cgltf-accessor$extensions :: <cgltf-extension*>;
end;

define C-pointer-type <cgltf-accessor*> => <cgltf-accessor>;
define C-struct <cgltf-attribute>
  sealed slot cgltf-attribute$name :: <c-string>;
  sealed slot cgltf-attribute$type :: <cgltf-attribute-type>;
  sealed slot cgltf-attribute$index :: <C-signed-int>;
  sealed slot cgltf-attribute$data :: <cgltf-accessor*>;
end;

define C-struct <cgltf-image>
  sealed slot cgltf-image$name :: <c-string>;
  sealed slot cgltf-image$uri :: <c-string>;
  sealed slot cgltf-image$buffer-view :: <cgltf-buffer-view*>;
  sealed slot cgltf-image$mime-type :: <c-string>;
  sealed slot cgltf-image$extras :: <cgltf-extras>;
  sealed slot cgltf-image$extensions-count :: <C-size-t>;
  sealed slot cgltf-image$extensions :: <cgltf-extension*>;
end;

define C-struct <cgltf-sampler>
  sealed slot cgltf-sampler$name :: <c-string>;
  sealed slot cgltf-sampler$mag-filter :: <C-signed-int>;
  sealed slot cgltf-sampler$min-filter :: <C-signed-int>;
  sealed slot cgltf-sampler$wrap-s :: <C-signed-int>;
  sealed slot cgltf-sampler$wrap-t :: <C-signed-int>;
  sealed slot cgltf-sampler$extras :: <cgltf-extras>;
  sealed slot cgltf-sampler$extensions-count :: <C-size-t>;
  sealed slot cgltf-sampler$extensions :: <cgltf-extension*>;
end;

define C-pointer-type <cgltf-image*> => <cgltf-image>;
define C-pointer-type <cgltf-sampler*> => <cgltf-sampler>;
define C-struct <cgltf-texture>
  sealed slot cgltf-texture$name :: <c-string>;
  sealed slot cgltf-texture$image :: <cgltf-image*>;
  sealed slot cgltf-texture$sampler :: <cgltf-sampler*>;
  sealed slot cgltf-texture$extras :: <cgltf-extras>;
  sealed slot cgltf-texture$extensions-count :: <C-size-t>;
  sealed slot cgltf-texture$extensions :: <cgltf-extension*>;
end;

define C-struct <cgltf-texture-transform>
  sealed array slot cgltf-texture-transform$offset :: <C-float>, length: 2;
  sealed slot cgltf-texture-transform$rotation :: <C-float>;
  sealed array slot cgltf-texture-transform$scale :: <C-float>, length: 2;
  sealed slot cgltf-texture-transform$texcoord :: <C-signed-int>;
end;

define C-pointer-type <cgltf-texture*> => <cgltf-texture>;
define C-struct <cgltf-texture-view>
  sealed slot cgltf-texture-view$texture :: <cgltf-texture*>;
  sealed slot cgltf-texture-view$texcoord :: <C-signed-int>;
  sealed slot cgltf-texture-view$scale :: <C-float>;
  sealed slot cgltf-texture-view$has-transform :: <C-signed-int>;
  sealed slot cgltf-texture-view$transform :: <cgltf-texture-transform>;
  sealed slot cgltf-texture-view$extras :: <cgltf-extras>;
  sealed slot cgltf-texture-view$extensions-count :: <C-size-t>;
  sealed slot cgltf-texture-view$extensions :: <cgltf-extension*>;
end;

define C-struct <cgltf-pbr-metallic-roughness>
  sealed slot cgltf-pbr-metallic-roughness$base-color-texture :: <cgltf-texture-view>;
  sealed slot cgltf-pbr-metallic-roughness$metallic-roughness-texture :: <cgltf-texture-view>;
  sealed array slot cgltf-pbr-metallic-roughness$base-color-factor :: <C-float>, length: 4;
  sealed slot cgltf-pbr-metallic-roughness$metallic-factor :: <C-float>;
  sealed slot cgltf-pbr-metallic-roughness$roughness-factor :: <C-float>;
  sealed slot cgltf-pbr-metallic-roughness$extras :: <cgltf-extras>;
end;

define C-struct <cgltf-pbr-specular-glossiness>
  sealed slot cgltf-pbr-specular-glossiness$diffuse-texture :: <cgltf-texture-view>;
  sealed slot cgltf-pbr-specular-glossiness$specular-glossiness-texture :: <cgltf-texture-view>;
  sealed array slot cgltf-pbr-specular-glossiness$diffuse-factor :: <C-float>, length: 4;
  sealed array slot cgltf-pbr-specular-glossiness$specular-factor :: <C-float>, length: 3;
  sealed slot cgltf-pbr-specular-glossiness$glossiness-factor :: <C-float>;
end;

define C-struct <cgltf-clearcoat>
  sealed slot cgltf-clearcoat$clearcoat-texture :: <cgltf-texture-view>;
  sealed slot cgltf-clearcoat$clearcoat-roughness-texture :: <cgltf-texture-view>;
  sealed slot cgltf-clearcoat$clearcoat-normal-texture :: <cgltf-texture-view>;
  sealed slot cgltf-clearcoat$clearcoat-factor :: <C-float>;
  sealed slot cgltf-clearcoat$clearcoat-roughness-factor :: <C-float>;
end;

define C-struct <cgltf-transmission>
  sealed slot cgltf-transmission$transmission-texture :: <cgltf-texture-view>;
  sealed slot cgltf-transmission$transmission-factor :: <C-float>;
end;

define C-struct <cgltf-ior>
  sealed slot cgltf-ior$ior :: <C-float>;
end;

define C-struct <cgltf-specular>
  sealed slot cgltf-specular$specular-texture :: <cgltf-texture-view>;
  sealed slot cgltf-specular$specular-color-texture :: <cgltf-texture-view>;
  sealed array slot cgltf-specular$specular-color-factor :: <C-float>, length: 3;
  sealed slot cgltf-specular$specular-factor :: <C-float>;
end;

define C-struct <cgltf-volume>
  sealed slot cgltf-volume$thickness-texture :: <cgltf-texture-view>;
  sealed slot cgltf-volume$thickness-factor :: <C-float>;
  sealed array slot cgltf-volume$attenuation-color :: <C-float>, length: 3;
  sealed slot cgltf-volume$attenuation-distance :: <C-float>;
end;

define C-struct <cgltf-sheen>
  sealed slot cgltf-sheen$sheen-color-texture :: <cgltf-texture-view>;
  sealed array slot cgltf-sheen$sheen-color-factor :: <C-float>, length: 3;
  sealed slot cgltf-sheen$sheen-roughness-texture :: <cgltf-texture-view>;
  sealed slot cgltf-sheen$sheen-roughness-factor :: <C-float>;
end;

define C-struct <cgltf-material>
  sealed slot cgltf-material$name :: <c-string>;
  sealed slot cgltf-material$has-pbr-metallic-roughness :: <C-signed-int>;
  sealed slot cgltf-material$has-pbr-specular-glossiness :: <C-signed-int>;
  sealed slot cgltf-material$has-clearcoat :: <C-signed-int>;
  sealed slot cgltf-material$has-transmission :: <C-signed-int>;
  sealed slot cgltf-material$has-volume :: <C-signed-int>;
  sealed slot cgltf-material$has-ior :: <C-signed-int>;
  sealed slot cgltf-material$has-specular :: <C-signed-int>;
  sealed slot cgltf-material$has-sheen :: <C-signed-int>;
  sealed slot cgltf-material$pbr-metallic-roughness :: <cgltf-pbr-metallic-roughness>;
  sealed slot cgltf-material$pbr-specular-glossiness :: <cgltf-pbr-specular-glossiness>;
  sealed slot cgltf-material$clearcoat :: <cgltf-clearcoat>;
  sealed slot cgltf-material$ior :: <cgltf-ior>;
  sealed slot cgltf-material$specular :: <cgltf-specular>;
  sealed slot cgltf-material$sheen :: <cgltf-sheen>;
  sealed slot cgltf-material$transmission :: <cgltf-transmission>;
  sealed slot cgltf-material$volume :: <cgltf-volume>;
  sealed slot cgltf-material$normal-texture :: <cgltf-texture-view>;
  sealed slot cgltf-material$occlusion-texture :: <cgltf-texture-view>;
  sealed slot cgltf-material$emissive-texture :: <cgltf-texture-view>;
  sealed array slot cgltf-material$emissive-factor :: <C-float>, length: 3;
  sealed slot cgltf-material$alpha-mode :: <cgltf-alpha-mode>;
  sealed slot cgltf-material$alpha-cutoff :: <C-float>;
  sealed slot cgltf-material$double-sided :: <C-signed-int>;
  sealed slot cgltf-material$unlit :: <C-signed-int>;
  sealed slot cgltf-material$extras :: <cgltf-extras>;
  sealed slot cgltf-material$extensions-count :: <C-size-t>;
  sealed slot cgltf-material$extensions :: <cgltf-extension*>;
end;

define C-pointer-type <cgltf-material*> => <cgltf-material>;
define C-struct <cgltf-material-mapping>
  sealed slot cgltf-material-mapping$variant :: <C-size-t>;
  sealed slot cgltf-material-mapping$material :: <cgltf-material*>;
  sealed slot cgltf-material-mapping$extras :: <cgltf-extras>;
end;

define C-pointer-type <cgltf-attribute*> => <cgltf-attribute>;
define C-struct <cgltf-morph-target>
  sealed slot cgltf-morph-target$attributes :: <cgltf-attribute*>;
  sealed slot cgltf-morph-target$attributes-count :: <C-size-t>;
end;

define C-struct <cgltf-draco-mesh-compression>
  sealed slot cgltf-draco-mesh-compression$buffer-view :: <cgltf-buffer-view*>;
  sealed slot cgltf-draco-mesh-compression$attributes :: <cgltf-attribute*>;
  sealed slot cgltf-draco-mesh-compression$attributes-count :: <C-size-t>;
end;

define C-pointer-type <cgltf-morph-target*> => <cgltf-morph-target>;
define C-pointer-type <cgltf-material-mapping*> => <cgltf-material-mapping>;
define C-struct <cgltf-primitive>
  sealed slot cgltf-primitive$type :: <cgltf-primitive-type>;
  sealed slot cgltf-primitive$indices :: <cgltf-accessor*>;
  sealed slot cgltf-primitive$material :: <cgltf-material*>;
  sealed slot cgltf-primitive$attributes :: <cgltf-attribute*>;
  sealed slot cgltf-primitive$attributes-count :: <C-size-t>;
  sealed slot cgltf-primitive$targets :: <cgltf-morph-target*>;
  sealed slot cgltf-primitive$targets-count :: <C-size-t>;
  sealed slot cgltf-primitive$extras :: <cgltf-extras>;
  sealed slot cgltf-primitive$has-draco-mesh-compression :: <C-signed-int>;
  sealed slot cgltf-primitive$draco-mesh-compression :: <cgltf-draco-mesh-compression>;
  sealed slot cgltf-primitive$mappings :: <cgltf-material-mapping*>;
  sealed slot cgltf-primitive$mappings-count :: <C-size-t>;
  sealed slot cgltf-primitive$extensions-count :: <C-size-t>;
  sealed slot cgltf-primitive$extensions :: <cgltf-extension*>;
end;

define C-pointer-type <cgltf-primitive*> => <cgltf-primitive>;
define C-pointer-type <float*> => <C-float>;
define C-pointer-type <char**> => <c-string>;
define C-struct <cgltf-mesh>
  sealed slot cgltf-mesh$name :: <c-string>;
  sealed slot cgltf-mesh$primitives :: <cgltf-primitive*>;
  sealed slot cgltf-mesh$primitives-count :: <C-size-t>;
  sealed slot cgltf-mesh$weights :: <float*>;
  sealed slot cgltf-mesh$weights-count :: <C-size-t>;
  sealed slot cgltf-mesh$target-names :: <char**>;
  sealed slot cgltf-mesh$target-names-count :: <C-size-t>;
  sealed slot cgltf-mesh$extras :: <cgltf-extras>;
  sealed slot cgltf-mesh$extensions-count :: <C-size-t>;
  sealed slot cgltf-mesh$extensions :: <cgltf-extension*>;
end;

define C-pointer-type <cgltf-node*> => <cgltf-node>;
define C-pointer-type <cgltf-node**> => <cgltf-node*>;
define C-struct <cgltf-skin>
  sealed slot cgltf-skin$name :: <c-string>;
  sealed slot cgltf-skin$joints :: <cgltf-node**>;
  sealed slot cgltf-skin$joints-count :: <C-size-t>;
  sealed slot cgltf-skin$skeleton :: <cgltf-node*>;
  sealed slot cgltf-skin$inverse-bind-matrices :: <cgltf-accessor*>;
  sealed slot cgltf-skin$extras :: <cgltf-extras>;
  sealed slot cgltf-skin$extensions-count :: <C-size-t>;
  sealed slot cgltf-skin$extensions :: <cgltf-extension*>;
end;

define C-pointer-type <cgltf-skin*> => <cgltf-skin>;
define C-pointer-type <cgltf-mesh*> => <cgltf-mesh>;
define C-struct <cgltf-camera-perspective>
  sealed slot cgltf-camera-perspective$has-aspect-ratio :: <C-signed-int>;
  sealed slot cgltf-camera-perspective$aspect-ratio :: <C-float>;
  sealed slot cgltf-camera-perspective$yfov :: <C-float>;
  sealed slot cgltf-camera-perspective$has-zfar :: <C-signed-int>;
  sealed slot cgltf-camera-perspective$zfar :: <C-float>;
  sealed slot cgltf-camera-perspective$znear :: <C-float>;
  sealed slot cgltf-camera-perspective$extras :: <cgltf-extras>;
end;

define C-struct <cgltf-camera-orthographic>
  sealed slot cgltf-camera-orthographic$xmag :: <C-float>;
  sealed slot cgltf-camera-orthographic$ymag :: <C-float>;
  sealed slot cgltf-camera-orthographic$zfar :: <C-float>;
  sealed slot cgltf-camera-orthographic$znear :: <C-float>;
  sealed slot cgltf-camera-orthographic$extras :: <cgltf-extras>;
end;

define C-union <anonymous-1>
  slot anonymous-1$perspective :: <cgltf-camera-perspective>;
  slot anonymous-1$orthographic :: <cgltf-camera-orthographic>;
end;

define C-struct <cgltf-camera>
  sealed slot cgltf-camera$name :: <c-string>;
  sealed slot cgltf-camera$type :: <cgltf-camera-type>;
  sealed slot cgltf-camera$data :: <anonymous-1>;
  sealed slot cgltf-camera$extras :: <cgltf-extras>;
  sealed slot cgltf-camera$extensions-count :: <C-size-t>;
  sealed slot cgltf-camera$extensions :: <cgltf-extension*>;
end;

define C-pointer-type <cgltf-camera*> => <cgltf-camera>;
define C-struct <cgltf-light>
  sealed slot cgltf-light$name :: <c-string>;
  sealed array slot cgltf-light$color :: <C-float>, length: 3;
  sealed slot cgltf-light$intensity :: <C-float>;
  sealed slot cgltf-light$type :: <cgltf-light-type>;
  sealed slot cgltf-light$range :: <C-float>;
  sealed slot cgltf-light$spot-inner-cone-angle :: <C-float>;
  sealed slot cgltf-light$spot-outer-cone-angle :: <C-float>;
end;

define C-pointer-type <cgltf-light*> => <cgltf-light>;
define C-struct <cgltf-node>
  sealed slot cgltf-node$name :: <c-string>;
  sealed slot cgltf-node$parent :: <cgltf-node*>;
  sealed slot cgltf-node$children :: <cgltf-node**>;
  sealed slot cgltf-node$children-count :: <C-size-t>;
  sealed slot cgltf-node$skin :: <cgltf-skin*>;
  sealed slot cgltf-node$mesh :: <cgltf-mesh*>;
  sealed slot cgltf-node$camera :: <cgltf-camera*>;
  sealed slot cgltf-node$light :: <cgltf-light*>;
  sealed slot cgltf-node$weights :: <float*>;
  sealed slot cgltf-node$weights-count :: <C-size-t>;
  sealed slot cgltf-node$has-translation :: <C-signed-int>;
  sealed slot cgltf-node$has-rotation :: <C-signed-int>;
  sealed slot cgltf-node$has-scale :: <C-signed-int>;
  sealed slot cgltf-node$has-matrix :: <C-signed-int>;
  sealed array slot cgltf-node$translation :: <C-float>, length: 3;
  sealed array slot cgltf-node$rotation :: <C-float>, length: 4;
  sealed array slot cgltf-node$scale :: <C-float>, length: 3;
  sealed array slot cgltf-node$matrix :: <C-float>, length: 16;
  sealed slot cgltf-node$extras :: <cgltf-extras>;
  sealed slot cgltf-node$extensions-count :: <C-size-t>;
  sealed slot cgltf-node$extensions :: <cgltf-extension*>;
end;

define C-struct <cgltf-scene>
  sealed slot cgltf-scene$name :: <c-string>;
  sealed slot cgltf-scene$nodes :: <cgltf-node**>;
  sealed slot cgltf-scene$nodes-count :: <C-size-t>;
  sealed slot cgltf-scene$extras :: <cgltf-extras>;
  sealed slot cgltf-scene$extensions-count :: <C-size-t>;
  sealed slot cgltf-scene$extensions :: <cgltf-extension*>;
end;

define C-struct <cgltf-animation-sampler>
  sealed slot cgltf-animation-sampler$input :: <cgltf-accessor*>;
  sealed slot cgltf-animation-sampler$output :: <cgltf-accessor*>;
  sealed slot cgltf-animation-sampler$interpolation :: <cgltf-interpolation-type>;
  sealed slot cgltf-animation-sampler$extras :: <cgltf-extras>;
  sealed slot cgltf-animation-sampler$extensions-count :: <C-size-t>;
  sealed slot cgltf-animation-sampler$extensions :: <cgltf-extension*>;
end;

define C-pointer-type <cgltf-animation-sampler*> => <cgltf-animation-sampler>;
define C-struct <cgltf-animation-channel>
  sealed slot cgltf-animation-channel$sampler :: <cgltf-animation-sampler*>;
  sealed slot cgltf-animation-channel$target-node :: <cgltf-node*>;
  sealed slot cgltf-animation-channel$target-path :: <cgltf-animation-path-type>;
  sealed slot cgltf-animation-channel$extras :: <cgltf-extras>;
  sealed slot cgltf-animation-channel$extensions-count :: <C-size-t>;
  sealed slot cgltf-animation-channel$extensions :: <cgltf-extension*>;
end;

define C-pointer-type <cgltf-animation-channel*> => <cgltf-animation-channel>;
define C-struct <cgltf-animation>
  sealed slot cgltf-animation$name :: <c-string>;
  sealed slot cgltf-animation$samplers :: <cgltf-animation-sampler*>;
  sealed slot cgltf-animation$samplers-count :: <C-size-t>;
  sealed slot cgltf-animation$channels :: <cgltf-animation-channel*>;
  sealed slot cgltf-animation$channels-count :: <C-size-t>;
  sealed slot cgltf-animation$extras :: <cgltf-extras>;
  sealed slot cgltf-animation$extensions-count :: <C-size-t>;
  sealed slot cgltf-animation$extensions :: <cgltf-extension*>;
end;

define C-struct <cgltf-material-variant>
  sealed slot cgltf-material-variant$name :: <c-string>;
  sealed slot cgltf-material-variant$extras :: <cgltf-extras>;
end;

define C-struct <cgltf-asset>
  sealed slot cgltf-asset$copyright :: <c-string>;
  sealed slot cgltf-asset$generator :: <c-string>;
  sealed slot cgltf-asset$version :: <c-string>;
  sealed slot cgltf-asset$min-version :: <c-string>;
  sealed slot cgltf-asset$extras :: <cgltf-extras>;
  sealed slot cgltf-asset$extensions-count :: <C-size-t>;
  sealed slot cgltf-asset$extensions :: <cgltf-extension*>;
end;

define C-pointer-type <cgltf-scene*> => <cgltf-scene>;
define C-pointer-type <cgltf-animation*> => <cgltf-animation>;
define C-pointer-type <cgltf-material-variant*> => <cgltf-material-variant>;
define C-struct <cgltf-data>
  sealed slot cgltf-data$file-type :: <cgltf-file-type>;
  sealed slot cgltf-data$file-data :: <C-void*>;
  sealed slot cgltf-data$asset :: <cgltf-asset>;
  sealed slot cgltf-data$meshes :: <cgltf-mesh*>;
  sealed slot cgltf-data$meshes-count :: <C-size-t>;
  sealed slot cgltf-data$materials :: <cgltf-material*>;
  sealed slot cgltf-data$materials-count :: <C-size-t>;
  sealed slot cgltf-data$accessors :: <cgltf-accessor*>;
  sealed slot cgltf-data$accessors-count :: <C-size-t>;
  sealed slot cgltf-data$buffer-views :: <cgltf-buffer-view*>;
  sealed slot cgltf-data$buffer-views-count :: <C-size-t>;
  sealed slot cgltf-data$buffers :: <cgltf-buffer*>;
  sealed slot cgltf-data$buffers-count :: <C-size-t>;
  sealed slot cgltf-data$images :: <cgltf-image*>;
  sealed slot cgltf-data$images-count :: <C-size-t>;
  sealed slot cgltf-data$textures :: <cgltf-texture*>;
  sealed slot cgltf-data$textures-count :: <C-size-t>;
  sealed slot cgltf-data$samplers :: <cgltf-sampler*>;
  sealed slot cgltf-data$samplers-count :: <C-size-t>;
  sealed slot cgltf-data$skins :: <cgltf-skin*>;
  sealed slot cgltf-data$skins-count :: <C-size-t>;
  sealed slot cgltf-data$cameras :: <cgltf-camera*>;
  sealed slot cgltf-data$cameras-count :: <C-size-t>;
  sealed slot cgltf-data$lights :: <cgltf-light*>;
  sealed slot cgltf-data$lights-count :: <C-size-t>;
  sealed slot cgltf-data$nodes :: <cgltf-node*>;
  sealed slot cgltf-data$nodes-count :: <C-size-t>;
  sealed slot cgltf-data$scenes :: <cgltf-scene*>;
  sealed slot cgltf-data$scenes-count :: <C-size-t>;
  sealed slot cgltf-data$scene :: <cgltf-scene*>;
  sealed slot cgltf-data$animations :: <cgltf-animation*>;
  sealed slot cgltf-data$animations-count :: <C-size-t>;
  sealed slot cgltf-data$variants :: <cgltf-material-variant*>;
  sealed slot cgltf-data$variants-count :: <C-size-t>;
  sealed slot cgltf-data$extras :: <cgltf-extras>;
  sealed slot cgltf-data$data-extensions-count :: <C-size-t>;
  sealed slot cgltf-data$data-extensions :: <cgltf-extension*>;
  sealed slot cgltf-data$extensions-used :: <char**>;
  sealed slot cgltf-data$extensions-used-count :: <C-size-t>;
  sealed slot cgltf-data$extensions-required :: <char**>;
  sealed slot cgltf-data$extensions-required-count :: <C-size-t>;
  sealed slot cgltf-data$json :: <c-string>;
  sealed slot cgltf-data$json-size :: <C-size-t>;
  sealed slot cgltf-data$bin :: <C-void*>;
  sealed slot cgltf-data$bin-size :: <C-size-t>;
  sealed slot cgltf-data$memory :: <cgltf-memory-options>;
  sealed slot cgltf-data$file :: <cgltf-file-options>;
end;

define C-pointer-type <cgltf-options*> => <cgltf-options>;
define C-pointer-type <cgltf-data*> => <cgltf-data>;
define C-pointer-type <cgltf-data**> => <cgltf-data*>;
define C-function cgltf-parse
  input parameter options_ :: <cgltf-options*>;
  input parameter data_ :: <C-void*>;
  input parameter size_ :: <cgltf-size>;
  input parameter out-data_ :: <cgltf-data**>;
  result res :: <cgltf-result>;
  c-name: "cgltf_parse";
end;

define C-function cgltf-parse-file
  input parameter options_ :: <cgltf-options*>;
  input parameter path_ :: <c-string>;
  input parameter out-data_ :: <cgltf-data**>;
  result res :: <cgltf-result>;
  c-name: "cgltf_parse_file";
end;

define C-function cgltf-load-buffers
  input parameter options_ :: <cgltf-options*>;
  input parameter data_ :: <cgltf-data*>;
  input parameter gltf-path_ :: <c-string>;
  result res :: <cgltf-result>;
  c-name: "cgltf_load_buffers";
end;

define C-function cgltf-load-buffer-base64
  input parameter options_ :: <cgltf-options*>;
  input parameter size_ :: <cgltf-size>;
  input parameter base64_ :: <c-string>;
  input parameter out-data_ :: <void**>;
  result res :: <cgltf-result>;
  c-name: "cgltf_load_buffer_base64";
end;

define C-function cgltf-decode-uri
  input parameter uri_ :: <c-string>;
  c-name: "cgltf_decode_uri";
end;

define C-function cgltf-validate
  input parameter data_ :: <cgltf-data*>;
  result res :: <cgltf-result>;
  c-name: "cgltf_validate";
end;

define C-function cgltf-free
  input parameter data_ :: <cgltf-data*>;
  c-name: "cgltf_free";
end;

define C-function cgltf-node-transform-local
  input parameter node_ :: <cgltf-node*>;
  input parameter out-matrix_ :: <float*>;
  c-name: "cgltf_node_transform_local";
end;

define C-function cgltf-node-transform-world
  input parameter node_ :: <cgltf-node*>;
  input parameter out-matrix_ :: <float*>;
  c-name: "cgltf_node_transform_world";
end;

define C-function cgltf-accessor-read-float
  input parameter accessor_ :: <cgltf-accessor*>;
  input parameter index_ :: <cgltf-size>;
  input parameter out_ :: <float*>;
  input parameter element-size_ :: <cgltf-size>;
  result res :: <cgltf-bool>;
  c-name: "cgltf_accessor_read_float";
end;

define C-pointer-type <unsigned-int*> => <C-unsigned-int>;
define C-function cgltf-accessor-read-uint
  input parameter accessor_ :: <cgltf-accessor*>;
  input parameter index_ :: <cgltf-size>;
  input parameter out_ :: <unsigned-int*>;
  input parameter element-size_ :: <cgltf-size>;
  result res :: <cgltf-bool>;
  c-name: "cgltf_accessor_read_uint";
end;

define C-function cgltf-accessor-read-index
  input parameter accessor_ :: <cgltf-accessor*>;
  input parameter index_ :: <cgltf-size>;
  result res :: <cgltf-size>;
  c-name: "cgltf_accessor_read_index";
end;

define C-function cgltf-num-components
  input parameter type_ :: <cgltf-type>;
  result res :: <cgltf-size>;
  c-name: "cgltf_num_components";
end;

define C-function cgltf-accessor-unpack-floats
  input parameter accessor_ :: <cgltf-accessor*>;
  input parameter out_ :: <float*>;
  input parameter float-count_ :: <cgltf-size>;
  result res :: <cgltf-size>;
  c-name: "cgltf_accessor_unpack_floats";
end;

define C-pointer-type <cgltf-extras*> => <cgltf-extras>;
define C-function cgltf-copy-extras-json
  input parameter data_ :: <cgltf-data*>;
  input parameter extras_ :: <cgltf-extras*>;
  input parameter dest_ :: <c-string>;
  input parameter dest-size_ :: <size-t*>;
  result res :: <cgltf-result>;
  c-name: "cgltf_copy_extras_json";
end;
