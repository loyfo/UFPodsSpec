
 Pod::Spec.new do |spec| 
 spec.name = 'UFCodecSDK' 
 spec.version = '2.0.14' 
 spec.summary = 'UFCodecSDK' 
 spec.description = 'UFCodecSDK_for_ios' 
 spec.homepage = 'https://git.ufotosoft.com/crossplatform/UFCodecSDK-IOS' 
 spec.license = { :type => 'MIT', :file => 'UFCodecSDK/LICENSE' } 
 spec.authors = { 'ufoto' => 'codehq@ufotosoft.com' } 
 spec.platform = :ios 
 spec.platform = :ios, '9.0' 
 spec.source = { :git => 'git@git.ufotosoft.com:crossplatform/UFCodecSDK-IOS.git', :tag => spec.version.to_s } 
 spec.frameworks = [ 
 'Accelerate', 
 'VideoToolbox', 
 'AudioToolbox', 
 'CoreMedia', 
 ] 
 
 spec.libraries = 'c++', 'bz2.1.0', 'z', 'iconv' 
 
 spec.xcconfig = { 
 'ENABLE_BITCODE' => 'NO', 
 'VALID_ARCHS'=>'arm64 arm64e' 
 } 
 ## 1 屏蔽x86;2 other linker flags 
 spec.pod_target_xcconfig = { 
 'VALID_ARCHS[sdk=iphonesimulator*]' => '', 
 
 } 
 
 ## 子库 Base 
 spec.subspec 'Base' do |base| 
 base.source_files = [ 
 'UFCodecSDK/UFCodecSDK/classes/base/*', 
 'UFCodecSDK/UFCodecSDK/classes/base/**/*', 
 'UFCodecSDK/UFCodecSDK/classes/public/base/*', 
 'UFCodecSDK/UFCodecSDK/classes/public/base/**/*', 
 ] 
 base.public_header_files = [ 
 'UFCodecSDK/UFCodecSDK/classes/public/base/*.h', 
 'UFCodecSDK/UFCodecSDK/classes/public/base/**/*.h', 
 ] 
 base.dependency 'UFOpenGLSDK' 
 end 
 
 ## 子库 AVFoundation 
 spec.subspec 'AVFoundation' do |av| 
 av.source_files = [ 
 'UFCodecSDK/UFCodecSDK/classes/avfoundation/*', 
 'UFCodecSDK/UFCodecSDK/classes/avfoundation/**/*', 
 'UFCodecSDK/UFCodecSDK/classes/public/avfoundation/*', 
 'UFCodecSDK/UFCodecSDK/classes/public/avfoundation/**/*', 
 ] 
 av.public_header_files = [ 
 'UFCodecSDK/UFCodecSDK/classes/public/avfoundation/*.h', 
 'UFCodecSDK/UFCodecSDK/classes/public/avfoundation/**/*.h', 
 ] 
 av.dependency 'UFCodecSDK/Base' 
 end 
 
 ## 子库 FFmpeg 
 spec.subspec 'FFmpeg' do |ff| 
 ff.source_files = [ 
 'UFCodecSDK/UFCodecSDK/classes/ffmpeg/*', 
 'UFCodecSDK/UFCodecSDK/classes/ffmpeg/**/*', 
 'UFCodecSDK/UFCodecSDK/classes/public/ffmpeg/*', 
 'UFCodecSDK/UFCodecSDK/classes/public/ffmpeg/**/*', 
 'UFCodecSDK/UFCodecSDK/libs/CodecEngine/*.{h,hpp}', 
 ] 
 ff.public_header_files = [ 
 'UFCodecSDK/UFCodecSDK/classes/public/ffmpeg/*.h', 
 'UFCodecSDK/UFCodecSDK/classes/public/ffmpeg/**/*.h', 
 ] 
 # ff.dependency 'UFCodecSDK/Base' 
 ff.dependency 'UFCodecSDK/AVFoundation' 
 ff.private_header_files = 'UFCodecSDK/UFCodecSDK/libs/CodecEngine/*.{h,hpp}' 
 ff.vendored_libraries = 'UFCodecSDK/UFCodecSDK/libs/CodecEngine/release/*.a' 
 end 
 
 ## 子库 VideoToolbox 
 spec.subspec 'VideoToolbox' do |vt| 
 vt.source_files = [ 
 'UFCodecSDK/UFCodecSDK/classes/videotoolbox/*', 
 'UFCodecSDK/UFCodecSDK/classes/videotoolbox/**/*', 
 'UFCodecSDK/UFCodecSDK/UFCodecSDK.h', 
 'UFCodecSDK/UFCodecSDK/classes/public/videotoolbox/*', 
 'UFCodecSDK/UFCodecSDK/classes/public/videotoolbox/**/*', 
 ] 
 vt.public_header_files = [ 
 'UFCodecSDK/UFCodecSDK/UFCodecSDK.h', 
 'UFCodecSDK/UFCodecSDK/classes/public/videotoolbox/*.h', 
 'UFCodecSDK/UFCodecSDK/classes/public/videotoolbox/**/*.h', 
 ] 
 # vt.dependency 'UFCodecSDK/Base' 
 # vt.dependency 'UFCodecSDK/AVFoundation' 
 vt.dependency 'UFCodecSDK/FFmpeg' 
 end 
 
 end 

