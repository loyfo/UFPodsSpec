#
# Be sure to run `pod lib lint UFTriggerManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFTriggerManager'
  s.version          = '1.5.1'
  s.summary          = 'ufoto 控制层'

 
  s.description      = <<-DESC
 主要用来链接静态模版组件 和动画引擎模版组件之间的逻辑控制。
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/business/UFTriggerManager'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '915261708@qq.com' => 'caohua@ufotosoft.com' }
  s.source           = { :git => 'https://git.ufotosoft.com/iostools/business/UFTriggerManager.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.3'
  s.swift_versions = '5.0'
  s.requires_arc = true

  s.source_files = 'UFTriggerManager/Classes/**/*'
  
   s.dependency 'UFSlidePlayerSDK', '>= 1.6.11'
   s.dependency 'UFPlatform_LayoutView','>= 3.4.4'
   s.dependency 'UFSwiftBase'
   s.dependency 'UFResourceManager'


end
