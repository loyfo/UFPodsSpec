
 Pod::Spec.new do |spec| 
 spec.name = 'UFSlidePlayerSDK' 
 spec.version = '0.0.1-debug' 
 spec.summary = 'UFSlidePlayerSDK' 
 spec.description = 'UFSlidePlayerSDK_for_ios' 
 spec.homepage = 'https://git.ufotosoft.com/crossplatform/SlidePlayerSDKIOS.git' 
 spec.license = { :type => 'MIT', :file => 'UFSlidePlayerSDK/LICENSE' } 
 spec.authors = { 'zengpu' => 'zengpu@ufotosoft.com' } 
 spec.platform = :ios 
 spec.platform = :ios, '8.0' 
 spec.source = { :git => 'git@git.ufotosoft.com:crossplatform/SlidePlayerSDKIOS.git', :tag => spec.version.to_s } 
 
 spec.source_files = [ 
 'UFSlidePlayerSDK/UFSlidePlayerSDK/UFSlidePlayerSDK.h', 
 'UFSlidePlayerSDK/UFSlidePlayerSDK/classes/**/*', 
 'UFSlidePlayerSDK/UFSlidePlayerSDK/classes/**/**/*', 
 'UFSlidePlayerSDK/UFSlidePlayerSDK/libs/**/*.{h,hpp}', 
 ] 
 
 spec.public_header_files = [ 
 'UFSlidePlayerSDK/UFSlidePlayerSDK/UFSlidePlayerSDK.h', 
 'UFSlidePlayerSDK/UFSlidePlayerSDK/classes/public/**/*.h', 
 ] 
 
 spec.private_header_files = 'UFSlidePlayerSDK/UFSlidePlayerSDK/libs/**/*.{h,hpp}' 
 spec.vendored_libraries = 'UFSlidePlayerSDK/UFSlidePlayerSDK/libs/**/debug/*.a' 
 # spec.resources = 'UFSlidePlayerSDK/UFSlidePlayerSDK/Assets/*.bundle' 
 
 # spec.dependency 'GPUImage' 
 
 # spec.resource = 'icon.png' 
 
 spec.frameworks = [ 
 'Accelerate', 
 'VideoToolbox', 
 'AudioToolbox', 
 'CoreMedia', 
 ] 
 
 spec.libraries = 'c++', 'bz2.1.0', 'z', 'iconv' 
 
 spec.xcconfig = { 
 'ENABLE_BITCODE' => 'NO', 
 'VALID_ARCHS'=>'arm64 arm64e x86_64' 
 } 
 ## 1 屏蔽x86;2 other linker flags 
 spec.pod_target_xcconfig = { 
 'VALID_ARCHS[sdk=iphonesimulator*]' => '', 
 
 } 
 
 end 

