#
#  Be sure to run `pod spec lint UFSlidePlayerSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "UFSlidePlayerSDK"
  spec.version      = "0.0.2"
  spec.summary      = "UFSlidePlayerSDK"
  spec.description  = <<-DESC
    UFSlidePlayerSDK for ios
    DESC

  spec.homepage     = "https://git.ufotosoft.com/crossplatform/SlidePlayerSDKIOS.git"
  spec.license      = { :type => "MIT", :file => "UFSlidePlayerSDK/LICENSE" }
  spec.authors      = { "zengpu" => "zengpu@ufotosoft.com" }
  spec.platform     = :ios
  spec.platform     = :ios, "8.0"
  spec.source       = { :git => "https://git.ufotosoft.com/crossplatform/SlidePlayerSDKIOS.git", :tag => spec.version.to_s }


  spec.source_files         = [ 'UFSlidePlayerSDK/UFSlidePlayerSDK/UFSlidePlayerSDK.h',
                                'UFSlidePlayerSDK/UFSlidePlayerSDK/classes/**/*',
                                'UFSlidePlayerSDK/UFSlidePlayerSDK/classes/**/**/*',
                                'UFSlidePlayerSDK/UFSlidePlayerSDK/libs/**/*.{h,hpp}',
                               ]

  spec.public_header_files  = [ 'UFSlidePlayerSDK/UFSlidePlayerSDK/UFSlidePlayerSDK.h',
                                'UFSlidePlayerSDK/UFSlidePlayerSDK/classes/public/**/.*h',
                               ]

  spec.private_header_files = 'UFSlidePlayerSDK/UFSlidePlayerSDK/libs/**/*.h'
  spec.vendored_libraries   = 'UFSlidePlayerSDK/UFSlidePlayerSDK/libs/**/*.a'
  # spec.resources            = 'UFSlidePlayerSDK/UFSlidePlayerSDK/Assets/*.bundle'

  # spec.dependency 'GPUImage'

  # spec.resource  = "icon.png"

  spec.frameworks = [   "Accelerate",
                        "VideoToolbox",
                        "AudioToolbox",
                        "CoreMedia",
                      ]


  spec.libraries =  "stdc++", "bz2.1.0", "z1.2.5", "iconv"

  spec.xcconfig = {  'ENABLE_BITCODE' => 'NO' }
  ## 屏蔽x86
  spec.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => '' }


end
