#
# Be sure to run `pod lib lint UFVideoEditTool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFVideoEditTool'
  s.version          = '0.1.0'
  s.summary          = '音视频基础编辑工具'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      =  "音视频基础编辑工具，主要功能音视频的剪接，水印添加，文字动画"

  s.homepage         = 'https://git.ufotosoft.com/iostools/business/UFVideoEditTool'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '760407695@qq.com' => 'chenliu@ufotosoft.com' }
  s.source           = { :git => 'https://git.ufotosoft.com/iostools/business/UFVideoEditTool.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.static_framework = true
  s.swift_version = '4.2'

  s.source_files = 'UFVideoEditTool/Classes/**/*'
  
  # s.resource_bundles = {
  #   'UFVideoEditTool' => ['UFVideoEditTool/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
