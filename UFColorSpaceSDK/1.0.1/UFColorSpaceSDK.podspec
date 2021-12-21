
 Pod::Spec.new do |spec| 
 spec.name = 'UFColorSpaceSDK' 
 spec.version = '1.0.1' 
 spec.summary = 'UFColorSpaceSDK' 
 spec.description = 'UFColorSpaceSDK_for_ios' 
 spec.homepage = 'https://git.ufotosoft.com/crossplatform/UFColorSpaceSDK-IOS' 
 spec.license = { :type => 'MIT', :file => 'UFColorSpaceSDK/LICENSE' } 
 spec.authors = { 'ufoto' => 'codehq@ufotosoft.com' } 
 spec.platform = :ios 
 spec.platform = :ios, '9.0' 
 spec.source = { :git => 'git@git.ufotosoft.com:crossplatform/UFColorSpaceSDK-IOS.git', :tag => spec.version.to_s } 
 
 spec.source_files = [ 
 'UFColorSpaceSDK/UFColorSpaceSDK/UFColorSpaceSDK.h', 
 'UFColorSpaceSDK/UFColorSpaceSDK/classes/**/*', 
 'UFColorSpaceSDK/UFColorSpaceSDK/classes/**/**/*', 
 ] 
 
 spec.public_header_files = [ 
 'UFColorSpaceSDK/UFColorSpaceSDK/UFColorSpaceSDK.h', 
 'UFColorSpaceSDK/UFColorSpaceSDK/classes/public/**/*.h', 
 ] 
 
 
 spec.frameworks = [ 
 'Accelerate', 
 'CoreMedia', 
 ] 
 
 spec.xcconfig = { 
 'ENABLE_BITCODE' => 'NO', 
 'VALID_ARCHS'=>'arm64 arm64e' 
 } 
 ## 1 屏蔽x86;2 other linker flags 
 spec.pod_target_xcconfig = { 
 'VALID_ARCHS[sdk=iphonesimulator*]' => '', 
 
 } 
 
 end 

