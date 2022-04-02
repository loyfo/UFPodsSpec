#
# Be sure to run `pod lib lint UFDotDigit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFDotDigit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of UFDotDigit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    image auto  recognition of  dotdigit
                       DESC

  s.homepage         = 'https://github.com/KingBo0259/UFDotDigit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'KingBo0259' => '492617233@qq.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFDotDigit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.xcconfig = {
      'FRAMEWORK_SEARCH_PATHS'   => '$(inherited) $(PODS_ROOT)/UFDotDigit',
      'LIBRARY_SEARCH_PATHS'     => '$(inherited) $(PODS_ROOT)/UFDotDigit',
      'OTHER_LDFLAGS'            => '$(inherited) -undefined dynamic_lookup -ObjC',
      'ENABLE_BITCODE'           => 'NO'
  }
  
  s.source_files = 'UFDotDigit/Classes/**/*'
#  s.private_header_files = 'UFDotDigit/Framework/*.framework/**/*.h'
  s.vendored_frameworks = 'UFDotDigit/Framework/*.framework'
  s.dependency 'UFBase'


  
 
end
