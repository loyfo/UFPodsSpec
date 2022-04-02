#
# Be sure to run `pod lib lint UFImageSegmentTool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFImageSegmentTool'
  s.version          = '0.1.3'
  s.summary          = 'A short description of UFImageSegmentTool.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/caohua/UFImageSegmentTool'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '915261708@qq.com' => 'caohua@ufotosoft.com' }
  s.source           = { :git => 'https://git.ufotosoft.com/caohua/UFImageSegmentTool.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.swift_versions = ['5.0']

  s.ios.deployment_target = '8.0'

  s.source_files = 'UFImageSegmentTool/Classes/**/{*.h,*.m,*.mm,*.swift,*.hpp}'
  s.vendored_frameworks = 'UFImageSegmentTool/Classes/lib/*.framework'
  s.dependency 'Moya', '~> 13.0'
  s.xcconfig = {
      'FRAMEWORK_SEARCH_PATHS'   => '$(inherited) $(PODS_ROOT)/UFImageSegmentTool',
      'LIBRARY_SEARCH_PATHS'     => '$(inherited) $(PODS_ROOT)/UFImageSegmentTool',
      'OTHER_LDFLAGS'            => '$(inherited) -undefined dynamic_lookup -ObjC',
      'ENABLE_BITCODE'           => 'NO'
  }

  s.pod_target_xcconfig = {
      'VALID_ARCHS' => 'arm64 armv7'
  }

  s.user_target_xcconfig = {
      'VALID_ARCHS' => 'arm64 armv7'
  }

  s.pod_target_xcconfig = {
    'ENABLE_BITCODE' => 'NO'
  }
end
