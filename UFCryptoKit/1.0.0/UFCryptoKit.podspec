#
# Be sure to run `pod lib lint UFCryptoKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFCryptoKit'
  s.version          = '1.0.0'
  s.summary          = ' uforto UFCryptoKit.'

  s.description      = <<-DESC
   ufoto 加解密 以及编码和解码基础库，AES 、DES和RSA 加密等方法扩展和实现
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFCryptoKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'KingBo0259' => '492617233@qq.com' }
  s.source           = { :git => 'https://git.ufotosoft.com/iostools/UFCryptoKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'UFCryptoKit/Classes/**/*'
end
