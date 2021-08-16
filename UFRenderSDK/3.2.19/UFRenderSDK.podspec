
 Pod::Spec.new do |spec| 
 spec.name = 'UFRenderSDK' 
 spec.version = '3.2.19' 
 spec.summary = 'UFRenderSDK' 
 spec.description = 'UFRenderSDK_for_ios' 
 spec.homepage = 'git@git.ufotosoft.com:crossplatform/RenderSDKIOS.git' 
 spec.license = { :type => 'MIT', :file => 'UFRenderSDK/LICENSE' } 
 spec.authors = { 'ufoto' => 'codehq@ufotosoft.com' } 
 spec.platform = :ios 
 spec.platform = :ios, '9.0' 
 spec.source = { :git => 'git@git.ufotosoft.com:crossplatform/RenderSDKIOS.git', :tag => spec.version.to_s } 
 
 spec.source_files = [ 
 'UFRenderSDK/UFRenderSDK/UFRenderSDK.h', 
 'UFRenderSDK/UFRenderSDK/classes/**/*', 
 'UFRenderSDK/UFRenderSDK/classes/**/**/*', 
 'UFRenderSDK/UFRenderSDK/libs/**/*.{h,hpp}', 
 ] 
 
 spec.public_header_files = [ 
 'UFRenderSDK/UFRenderSDK/UFRenderSDK.h', 
 'UFRenderSDK/UFRenderSDK/classes/public/**/*.h', 
 ] 
 
 spec.private_header_files = 'UFRenderSDK/UFRenderSDK/libs/**/*.{h,hpp}' 
 spec.vendored_libraries = 'UFRenderSDK/UFRenderSDK/libs/**/release/*.a' 
 spec.resources = 'UFRenderSDK/UFRenderSDK/Assets/*.bundle' 
 spec.frameworks = [ 
 'Accelerate', 
 ] 
 
 spec.dependency 'UFOpenGLSDK' 
 spec.libraries = 'c++' 
 
 spec.xcconfig = { 
 'ENABLE_BITCODE' => 'NO', 
 'VALID_ARCHS'=>'arm64' 
 } 
 ## 1 屏蔽x86;2 other linker flags 
 spec.pod_target_xcconfig = { 
 'VALID_ARCHS[sdk=iphonesimulator*]' => '', 
 
 } 
 
 end 

