
Pod::Spec.new do |s|
  s.name             = 'UFFXKit'
  s.version          = '1.2.1'
  s.summary          = 'FX 视频拍摄组件'

  s.homepage         = 'https://github.com/loyfo/UFFXKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/business/UFFXKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'UFFXKit/Classes/**/*'
  s.frameworks = 'UIKit', 'AVKit'
  s.libraries  = 'c++'
  
  s.dependency 'UFLog'
  s.dependency 'UFVideoTool/MediaEdit'
  s.dependency 'lottie-ios'
  s.dependency 'SnapKit'

  s.dependency 'UFCodecSDK'
  s.dependency 'UFRenderSDK', '2.4.17'
  s.dependency 'UFSwiftBase'
  s.dependency 'UFGestureRecognition'
  s.dependency 'UFAlgorithm', '~> 1.2.0'
  s.dependency 'UFVideoTool/UFAudio'
  s.swift_version = '5.0'
  s.static_framework = true
  
  s.pod_target_xcconfig = {  'ENABLE_BITCODE' => 'NO',  'SWIFT_COMPILATION_MODE'=>'wholemodule'}
  
end
