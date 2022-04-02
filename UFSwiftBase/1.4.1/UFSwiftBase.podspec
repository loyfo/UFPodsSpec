#
# Be sure to run `pod lib lint UFSwiftBase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFSwiftBase'
  s.version          = '1.4.1'
  s.summary          = 'UFSwiftBase'

  s.description      = <<-DESC
  UFSwiftBase is UFotol swift version  base lib
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFSwiftBase'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'KingBo0259' => '492617233@qq.com' }
  s.source           = { :git => 'https://git.ufotosoft.com/iostools/UFSwiftBase.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.swift_versions = '5.0'

  s.source_files = 'UFSwiftBase/Classes/**/*'
  
   s.dependency 'DeviceKit'
end
