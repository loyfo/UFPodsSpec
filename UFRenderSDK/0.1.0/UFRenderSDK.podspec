#
#  Be sure to run `pod spec lint renderengine.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "UFRenderSDK"
  spec.version      = "0.1.0"
  spec.summary      = "UFRenderSDK"
  spec.description  = "UFRenderSDK for ios"

  spec.homepage     = "https://git.ufotosoft.com/crossplatform/RenderSDKIOS/tree/develop"
  spec.license      = { :type => 'MIT', :file => 'UFRenderSDK/LICENSE' }
  spec.author       = { "zengpu" => "zengpu@ufotosoft.com" }
  spec.platform     = :ios
  spec.platform     = :ios, "8.0"
  spec.source       = { :git => "https://git.ufotosoft.com/crossplatform/RenderSDKIOS.git", :tag => spec.version.to_s }

  spec.source_files         = 'UFRenderSDK/UFRenderSDK/classes/**/*','UFRenderSDK/UFRenderSDK/libs/**/*.{h,hpp}','UFRenderSDK/UFRenderSDK/UFRenderSDK.h'
  spec.public_header_files  = 'UFRenderSDK/UFRenderSDK/UFRenderSDK.h'
  spec.vendored_libraries   = 'UFRenderSDK/UFRenderSDK/libs/**/*.a'
  spec.dependency 'GPUImage'
  spec.resources = 'UFRenderSDK/UFRenderSDK/Assets/*.bundle'

  # spec.resource  = "icon.png"

  spec.frameworks = "Accelerate","CoreGraphics","ImageIO"
  spec.libraries = "stdc++"

  spec.xcconfig = {  'ENABLE_BITCODE' => 'NO' }
  ## 屏蔽x86
  spec.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => '' }
end
