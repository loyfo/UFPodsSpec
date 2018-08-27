
Pod::Spec.new do |s|
  s.name             = 'UFDeviceTool'
  s.version          = '0.1.0'
  s.summary          = 'A tool that reflects device status and operating device.'
  
  s.homepage         = 'https://git.ufotosoft.com/iostools/UFDeviceTool'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFDeviceTool.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.0'
  
  s.subspec 'MotionManager' do |b|
    b.source_files = 'UFDeviceTool/Classes/MotionManager/**/*'
    b.frameworks = 'UIKit', 'CoreMotion'
  end

end
