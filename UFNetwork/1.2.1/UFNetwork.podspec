#
# Be sure to run `pod lib lint UFNetwork.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFNetwork'
  s.version          = '1.2.1'
  s.summary          = ' ufoto UFNetwork.'
 
  s.description      = <<-DESC
   base on Moya , download,upload,get,post method encapsulation
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFNetwork'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'KingBo0259' => '492617233@qq.com' }
  s.source           = { :git => 'https://git.ufotosoft.com/iostools/UFNetwork.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.swift_versions = '5.0'

  s.source_files = 'UFNetwork/Classes/**/*'
  
  s.dependency 'Moya'
  s.dependency 'UFSwiftBase'
end
