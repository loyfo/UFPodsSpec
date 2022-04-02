#
# Be sure to run `pod lib lint StaticTemplate.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFPlatform_LayoutView'
  s.version          = '1.0.1'
  s.summary          = 'A short description.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description.
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/business/StaticTemplate'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chenying@ufotosoft.com' => 'chenying@ufotosoft.com' }
  s.source           = { :git => 'https://git.ufotosoft.com/iostools/business/StaticTemplate.git', :tag => s.version.to_s }

  s.swift_versions = ['5.0']
  
  s.ios.deployment_target = '9.3'
  
  s.static_framework = true
  s.requires_arc = true

  s.source_files = 'UFPlatform_LayoutView/Classes/**/{*.h,*.m,*.mm,*.swift,*.hpp}'
  
   s.resource_bundles = {
     'UFPlatform_LayoutView' => ['UFPlatform_LayoutView/Assets/*']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.dependency 'YYModel'
  s.dependency 'UFEffectsEngine'
  s.dependency 'TextAnimationFactory'
  s.dependency 'UFSwiftBase'

end
