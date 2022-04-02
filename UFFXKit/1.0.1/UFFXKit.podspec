
Pod::Spec.new do |s|
  s.name             = 'UFFXKit'
  s.version          = '1.0.1'
  s.summary          = 'FX 视频拍摄组件'

  s.homepage         = 'https://github.com/loyfo/UFFXKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/business/UFFXKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'UFFXKit/Classes/**/*'
  
  s.vendored_library = 'UFFXKit/Libraries/*.a'
  s.vendored_frameworks = 'UFFXKit/Libraries/*.framework'
  s.frameworks = 'UIKit', 'AVKit'
  s.libraries  = 'c++'
  
  s.dependency 'UFLog'
  s.dependency 'UFVideoTool/MediaEdit'
  s.dependency 'lottie-ios'
  s.dependency 'SnapKit'
  
  s.swift_version = '5.0'
  s.static_framework = true
  
  s.pod_target_xcconfig = {  'ENABLE_BITCODE' => 'NO',  'SWIFT_COMPILATION_MODE'=>'wholemodule'}
  
end
