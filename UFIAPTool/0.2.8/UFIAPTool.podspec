#
# Be sure to run `pod lib lint UFIAPTool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFIAPTool'
  s.version          = '0.2.8'
  s.summary          = 'A short description of UFIAPTool.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFIAPTool'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'caohua' => 'caohua@ufotosoft.com' }
  s.source           = { :git => 'https://git.ufotosoft.com/iostools/UFIAPTool.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'UFIAPTool/Classes/**/*'
  
  # s.resource_bundles = {
  #   'UFIAPTool' => ['UFIAPTool/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
