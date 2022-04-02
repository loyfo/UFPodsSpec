#
# Be sure to run `pod lib lint UFKeyBoardEditTool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFKeyboardEditTool'
  s.version          = '0.1.0'
  s.summary          = '提供键盘inputView，用于文字的大小字体颜色更改'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/business/UFKeyBoardEditTool'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '760407695@qq.com' => 'chenliu@ufotosoft.com' }
  s.source           = { :git => 'https://git.ufotosoft.com/iostools/business/UFKeyBoardEditTool.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'UFKeyBoardEditTool/Classes/**/*'
  
   s.resource_bundles = {
     'UFKeyBoardEditTool' => ['UFKeyBoardEditTool/Assets/*']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'SnapKit', '~> 5.0.0'
end
