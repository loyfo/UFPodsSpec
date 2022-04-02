Pod::Spec.new do |s|
  s.name             = 'UFCamera'
  s.version          = '0.2.3'
  s.summary          = 'The common camera for UFoto.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFCamera'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFCamera.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'UFCamera/Classes/**/*'
  s.dependency 'UFBeautyTool/Buffer', '~> 0.4.0'
  s.dependency 'UFBase', '~> 0.1.2'
  s.dependency 'UFFaceTracker/Ufoto', '~> 0.2.0'
  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO'}

end
