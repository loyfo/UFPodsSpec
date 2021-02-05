#
# Be sure to run `pod lib lint UFResourceManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFResourceManager'
  s.version          = '1.4.2'
  s.summary          = ' ufoto 资源管理器'

  s.description      = <<-DESC
 主要实现本地模版、滤镜、以及双重曝光zip 请求解压和缓存统一管理功能
                       DESC
                       
  s.homepage         = 'https://git.ufotosoft.com/iostools/UFResourceManager'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '915261708@qq.com' => 'caohua@ufotosoft.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFResourceManager.git', :tag => s.version.to_s }

  s.swift_versions = '5.0'
  s.ios.deployment_target = '9.0'

  s.xcconfig            = {
      'FRAMEWORK_SEARCH_PATHS'   => '$(inherited) $(PODS_ROOT)/UFResourceManager',
      'LIBRARY_SEARCH_PATHS'     => '$(inherited) $(PODS_ROOT)/UFResourceManager',
      'OTHER_LDFLAGS'            => '$(inherited) -undefined dynamic_lookup -ObjC',
      'ENABLE_BITCODE'           => 'NO'
  }

  s.source_files = 'UFResourceManager/Classes/**/*'
  

  s.dependency 'UFNetwork'
  s.dependency 'UFSwiftBase'
  s.dependency 'UFBase'
  s.dependency 'YYModel'
  s.dependency 'YYCache'
  s.dependency 'UFZip'
  s.dependency 'UFFontKit'
end
