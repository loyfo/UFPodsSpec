#
# Be sure to run `pod lib lint UFVideoEditTool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFVideoTool' 
  s.version          = '0.2.0'
  s.summary          = '音视频基础工具'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      =  "音视频基础编辑工具，主要功能音视频的剪接，水印添加，文字动画, 视频变下边播"

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFVideoTool'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '760407695@qq.com' => 'chenliu@ufotosoft.com' }
  s.source           = { :git => 'https://git.ufotosoft.com/iostools/UFVideoTool.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.static_framework = true
  s.swift_version = '5.0'

  s.source_files = 'UFVideoTool/Classes/**/*'
  s.subspec 'MediaEdit' do |e|
    e.source_files = 'UFVideoTool/Classes/UFMediaEdit/**/*'
  end

  s.subspec 'MediaPlayer' do |player|
    player.source_files = 'UFVideoTool/Classes/UFMediaPlayer/**/*'
  end
  # s.resource_bundles = {
  #   'UFVideoEditTool' => ['UFVideoEditTool/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
