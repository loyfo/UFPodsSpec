
Pod::Spec.new do |s|
  s.name             = 'UFFaceTracker'
  s.version          = '1.0.0'
  s.summary          = 'UFFaceTracker.'
  s.homepage         = 'https://git.ufotosoft.com/iostools/UFFaceTracker'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFFaceTracker.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
    
  s.source_files = 'UFFaceTracker/Classes/Ufoto/**/{*.h,*.m,*.mm,*.swift}'
  s.frameworks = 'UIKit', 'SystemConfiguration', 'AVFoundation', 'CoreVideo', 'CoreMedia', 'AssetsLibrary'
  s.dependency 'UFImageTool'
  s.dependency 'UFAlgorithm'
  s.vendored_frameworks =  'UFFaceTracker/Classes/Ufoto/Frameworks/RtFacialOutline.framework'
  s.xcconfig            = {
    'FRAMEWORK_SEARCH_PATHS'   => '$(inherited) $(PODS_ROOT)/UFFaceTracker',
    'LIBRARY_SEARCH_PATHS'     => '$(inherited) $(PODS_ROOT)/UFFaceTracker',
    'OTHER_LDFLAGS'            => '$(inherited) -undefined dynamic_lookup -ObjC',
    'ENABLE_BITCODE'           => 'NO'
  }
  
  s.pod_target_xcconfig = {
    'VALID_ARCHS' => 'arm64'
  }
  
  s.user_target_xcconfig = {
    'VALID_ARCHS' => 'arm64'
  }
  
  s.pod_target_xcconfig = {
    'ENABLE_BITCODE' => 'NO'
  }
  
end
