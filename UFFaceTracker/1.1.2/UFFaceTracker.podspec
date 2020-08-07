
Pod::Spec.new do |s|
  s.name             = 'UFFaceTracker'
  s.version          = '1.1.2'
  s.summary          = 'UFFaceTracker.'
  s.homepage         = 'https://git.ufotosoft.com/iostools/UFFaceTracker'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFFaceTracker.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
    
  s.source_files = 'UFFaceTracker/Classes/Ufoto/**/{*.h,*.m,*.mm,*.swift,*.hpp}'
  s.private_header_files = 'UFFaceTracker/Classes/Ufoto/rt_hairseg_process.h'
  s.frameworks = 'UIKit', 'SystemConfiguration', 'AVFoundation', 'CoreVideo', 'CoreMedia', 'AssetsLibrary'
  s.dependency 'UFImageTool/ImageHelper'
  s.dependency 'UFAlgorithm', '1.0.1'
  s.vendored_frameworks =  'UFFaceTracker/Classes/Ufoto/Frameworks/RtFacialOutline.framework'
  s.vendored_libraries = 'UFFaceTracker/Classes/Ufoto/Frameworks/{*.a}', 'UFAlgorithm/libocv/libocv.a'
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
