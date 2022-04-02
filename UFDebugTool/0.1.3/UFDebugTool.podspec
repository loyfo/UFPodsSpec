Pod::Spec.new do |s|
  s.name             = 'UFDebugTool'
  s.version          = '0.1.3'
  s.summary          = 'A UFDebugTool.'
  s.homepage         = 'https://git.ufotosoft.com/iostools/UFDebugTool'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFDebugTool.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'UFDebugTool/Classes/**/*'
  s.dependency 'FLEX', '~> 2.0'
  s.dependency 'LHPerformanceStatusBar', '~> 0.1.0'
  s.resources = 'UFDebugTool/Resources/*.png'
  s.swift_version = '4.0'
end
