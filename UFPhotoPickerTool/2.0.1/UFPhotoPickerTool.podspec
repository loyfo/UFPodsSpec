#
# Be sure to run `pod lib lint UFPhotoPickerTool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFPhotoPickerTool'
  s.version          = '2.0.1'
  s.summary          = 'A short description of UFPhotoPickerTool.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
"相册组件"
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/business/UFPhotoPickerTool'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhangshuai' => 'zhangshuai@ufotosoft.com' }
  s.source           = { :git => 'https://git.ufotosoft.com/iostools/business/UFPhotoPickerTool.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_versions = '5.0'
  s.ios.deployment_target = '9.0'

  s.source_files = 'UFPhotoPickerTool/Classes/**/*'
  
  # s.resources = ['UFPhotoPickerTool/Assets/*']
   s.resource_bundles = {
     'UFPhotoPickerTool' => ['UFPhotoPickerTool/Assets/*']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'UFSwiftBase'
  s.dependency 'JXSegmentedView'
end
