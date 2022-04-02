Pod::Spec.new do |s|
  s.name             = 'UFBase'
  s.version          = '1.0.0'
  s.summary          = 'Ufoto basic tool library.'
  s.homepage         = 'https://git.ufotosoft.com/iostools/UFBase'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFBase.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.source_files = 'UFBase/Classes/**/*'

end
