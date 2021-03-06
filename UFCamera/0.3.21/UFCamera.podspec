Pod::Spec.new do |s|
  s.name             = 'UFCamera'
  s.version          = '0.3.21'
  s.summary          = 'The common camera for UFoto.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFCamera'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFCamera.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'

  s.source_files = 'UFCamera/Classes/{*.h,*.m,*.mm,*.swift}'
  s.dependency 'UFBeautyTool/Buffer', '~> 0.9.1'
  s.dependency 'UFFaceTracker', '~> 1.1.2'

  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO'}

  s.subspec 'VideoRecord' do |b|
      b.source_files = 'UFCamera/Classes/**/{*.h,*.m,*.mm,*.swift}','UFCamera/Classes/VideoRecord/*'
      b.dependency 'UFVideo', '~> 1.0.0'
  end

end
