#
# Be sure to run `pod lib lint UFAlgorithm.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFAlgorithm'
  s.version          = '1.3.0'
  s.summary          = 'A short description of UFAlgorithm.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFAlgorithm'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'KingBo0259' => '492617233@qq.com' }
  s.source           = { :git => 'https://git.ufotosoft.com/iostools/UFAlgorithm.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  
  s.swift_version = '5.0'

  s.source_files = 'UFAlgorithm/Classes/**/*'
#  s.vendored_frameworks = 'UFAlgorithm/Frameworks/*.framework'
  s.vendored_libraries = 'UFAlgorithm/Frameworks/**/*.a'

  #  s.framework = 'ImageToolbox'
  s.libraries  = 'stdc++'
 
  s.pod_target_xcconfig = {
      'SWIFT_COMPILATION_MODE'=>'wholemodule',
      'ENABLE_BITCODE' => 'NO',
      'VALID_ARCHS[sdk=iphonesimulator*]' => '',
      'OTHER_LDFLAGS' => '-lObjC',
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'DEFINES_MODULE' => 'YES'
  }


end
