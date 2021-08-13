Pod::Spec.new do |s|
  s.name             = 'UFDebugTool'
  s.version          = '1.0.0'
  s.summary          = 'A UFDebugTool.'
  s.homepage         = 'https://git.ufotosoft.com/iostools/UFDebugTool'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFDebugTool.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.3'
  s.source_files = 'UFDebugTool/Classes/**/*'
  s.dependency 'UFSwiftBase'
  s.dependency 'UFNetwork'
#  s.dependency 'LookinServer' #怕影响审核配置误伤，因此去除
  s.dependency 'swiftScan'
  s.dependency 'UFLog','>= 2.1.0'
  s.resources = 'UFDebugTool/Resources/*.png'
  s.swift_version = '5.0'
end
