#
#  Be sure to run `pod spec lint renderengine.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "renderengine"
  spec.version      = "0.0.2"
  spec.summary      = "renderengine"
  spec.description  = "renderengine for ios"

  spec.homepage     = "https://git.ufotosoft.com/crossplatform/RenderSDKIOS/tree/develop"
  spec.license      = { :type => 'MIT', :file => 'renderengine/LICENSE' }
  spec.author       = { "zengpu" => "zengpu@ufotosoft.com" }
  spec.platform     = :ios
  spec.platform     = :ios, "5.0"
  spec.source       = { :git => "https://git.ufotosoft.com/crossplatform/RenderSDKIOS.git", :tag => spec.version.to_s }

  spec.public_header_files  = "renderengine/renderengine/Classes/include/renderengine.h"
  spec.vendored_libraries   = "renderengine/renderengine/Classes/lib/*.a"
  #spec.source_files         = "renderengine/renderengine/Classes/**/*.{h,m}"

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  spec.frameworks = "Accelerate"
  spec.libraries = "stdc++"

  spec.xcconfig = {  'ENABLE_BITCODE' => 'NO' }

end
