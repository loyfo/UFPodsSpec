
Pod::Spec.new do |s|
  s.name             = 'UFRate'
  s.version          = '0.1.3'
  s.summary          = 'Rating rating rating!'

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFRate'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFRate.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.source_files = 'UFRate/Classes/**/*'
  s.dependency  'iRate'
  s.swift_version = '4.0'

end
