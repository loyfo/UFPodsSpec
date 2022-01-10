
 Pod::Spec.new do |spec| 
 spec.name = 'UFOpenGLSDK' 
 spec.version = '2.0.18' 
 spec.summary = 'UFOpenGLSDK' 
 spec.description = 'UFOpenGLSDK_for_ios' 
 spec.homepage = 'https://git.ufotosoft.com/crossplatform/UFOpenGLSDK-IOS' 
 spec.license = { :type => 'MIT', :file => 'UFOpenGLSDK/LICENSE' } 
 spec.authors = { 'ufoto' => 'codehq@ufotosoft.com' } 
 spec.platform = :ios 
 spec.platform = :ios, '9.0' 
 spec.source = { :git => 'git@git.ufotosoft.com:crossplatform/UFOpenGLSDK-IOS.git', :tag => spec.version.to_s } 
 
 spec.source_files = [ 
 'UFOpenGLSDK/UFOpenGLSDK/UFOpenGLSDK.h', 
 'UFOpenGLSDK/UFOpenGLSDK/classes/**/*', 
 'UFOpenGLSDK/UFOpenGLSDK/classes/**/**/*', 
 ] 
 
 spec.public_header_files = [ 
 'UFOpenGLSDK/UFOpenGLSDK/UFOpenGLSDK.h', 
 'UFOpenGLSDK/UFOpenGLSDK/classes/public/**/*.h', 
 ] 
 
 spec.dependency 'UFColorSpaceSDK' 
 
 
 spec.frameworks = [ 
 'Accelerate', 
 'OpenGLES', 
 'CoreMedia', 
 ] 
 
 spec.xcconfig = { 
 'ENABLE_BITCODE' => 'NO', 
 'VALID_ARCHS'=>'arm64', 
 } 
 ## 1 屏蔽x86;2 other linker flags 
 spec.pod_target_xcconfig = { 
 'VALID_ARCHS[sdk=iphonesimulator*]' => '', 
 'GCC_OPTIMIZATION_LEVEL' => 2, 
 } 
 
 end 

