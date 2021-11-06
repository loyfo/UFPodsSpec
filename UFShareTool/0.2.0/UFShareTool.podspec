#
# Be sure to run `pod lib lint UFShareTool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFShareTool'
  s.version          = '0.2.0'
  s.summary          = 'A short description of UFShareTool.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/business/UFShareTool'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '760407695@qq.com' => 'chenliu@ufotosoft.com' }
  s.source           = { :git => 'https://git.ufotosoft.com/iostools/business/UFShareTool.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.static_framework = true
  s.source_files = 'UFShareTool/Classes/**/*'
#  s.dependency 'WechatOpenSDK','1.8.5'
#  s.dependency 'FBSDKShareKit'
  s.swift_version = '4.2'
  s.default_subspec = "base"
  s.subspec 'FaceBook' do |e|
      e.dependency  'FBSDKShareKit','>=12.0'
      e.dependency  'UFShareTool/base'
      e.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) ST_FB=1' , "OTHER_SWIFT_FLAGS" => "$(inherited) -DST_FB"}
  end
  s.subspec 'base' do |e|
       e.source_files = 'UFShareTool/Classes/{*.h,*.m,*.mm,*.swift}', 'UFShareTool/Classes/FaceBook/**/*'
   end
  # s.resource_bundles = {
  #   'UFShareTool' => ['UFShareTool/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
