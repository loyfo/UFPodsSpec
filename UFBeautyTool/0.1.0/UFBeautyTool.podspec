#
# Be sure to run `pod lib lint UFBeautyTool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFBeautyTool'
  s.version          = '0.1.0'
  s.summary          = 'Ufoto beauty tool.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://git.ufotosoft.com/iostools/ufbeautytool'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'http://git.ufotosoft.com/iostools/ufbeautytool.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.0'

  s.source_files = 'UFBeautyTool/Classes/**/*'
  
  # s.resource_bundles = {
  #   'UFBeautyTool' => ['UFBeautyTool/Assets/*.png']
  # }

  s.public_header_files = 'UFBeautyTool/Classes/UFBeautyTool.h'
  s.frameworks = 'Accelerate'
  s.libraries  = 'stdc++'

  # s.dependency 'AFNetworking', '~> 2.3'
  s.vendored_libraries = 'UFBeautyTool/Classes/lib/*.a'
  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO' }
end
