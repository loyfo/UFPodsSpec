
Pod::Spec.new do |s|
  s.name             = 'UFGestureRecognition'
  s.version          = '1.0.0'
  s.summary          = 'UFOTO 手势识别'
 
  s.homepage         = 'https://git.ufotosoft.com/iostools/UFGestureRecognition'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFGestureRecognition.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'UFGestureRecognition/Classes/**/*'
  
  s.public_header_files = 'UFGestureRecognition/Classes/*.h'
  s.private_header_files = 'UFGestureRecognition/Classes/Utils/*.h'

  s.dependency 'UFAlgorithm', '~> 1.2.0'
  s.dependency 'UFImageTool/ImageHelper'
  
  s.vendored_frameworks =  'UFGestureRecognition/Frameworks/gesture.framework'
  
  s.pod_target_xcconfig = {
      'ENABLE_BITCODE' => 'NO',
      'VALID_ARCHS[sdk=iphonesimulator*]' => '',
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'DEFINES_MODULE' => 'YES',
      'FRAMEWORK_SEARCH_PATHS'   => '$(inherited) $(PODS_ROOT)/UFGestureRecognition',
      'LIBRARY_SEARCH_PATHS'     => '$(inherited) $(PODS_ROOT)/UFGestureRecognition',
      'OTHER_LDFLAGS'            => '$(inherited) -undefined dynamic_lookup -ObjC',
  }
   
  s.user_target_xcconfig = {
    'VALID_ARCHS' => 'arm64'
  }
  
  
end
