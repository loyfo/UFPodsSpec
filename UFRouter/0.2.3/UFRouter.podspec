Pod::Spec.new do |s|
  s.name             = 'UFRouter'
  s.version          = '0.2.3'
  s.summary          = 'UFoto Router module.'
  s.homepage         = 'https://git.ufotosoft.com/iostools/ufrouter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/ufrouter.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.swift_version = '4.0'
  s.source_files = 'UFRouter/Classes/**/*'
end
  
