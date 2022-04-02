#
# Be sure to run `pod lib lint UFSegmentationSelfie.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFSegmentationSelfie'
  s.version          = '1.0.0'
  s.summary          = 'A short description of UFSegmentationSelfie.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFSegmentationSelfie'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liuliang' => 'liuliang@ufotosoft.com' }
  s.source           = { :git => 'https://git.ufotosoft.com/iostools/UFSegmentationSelfie.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'

  s.source_files = 'UFSegmentationSelfie/Classes/**/*'
  
  s.dependency 'GoogleMLKit/SegmentationSelfie'
  s.dependency 'UFAlgorithm'
  s.dependency 'UFSwiftBase'
  s.static_framework = true
  
end
