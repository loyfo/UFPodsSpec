#
# Be sure to run `pod lib lint UFFontKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFFontKit'
  s.version          = '1.0.0'
  s.summary          = 'Ufoto 字体库'

  s.description      = <<-DESC
 ufoto 字体库。全局统一管理和注册。实现字体库动态下发的功能
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFFontKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'KingBo0259' => '492617233@qq.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFFontKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'UFFontKit/Classes/**/*'
  s.dependency 'UFSwiftBase'
end
