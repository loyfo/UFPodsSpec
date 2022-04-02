Pod::Spec.new do |s|
  s.name             = 'UFFaceAI'
  s.version          = '1.0.0'
  s.summary          = '腾讯换脸功能组件'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFFaceAI'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liuliang' => 'liuliang@300624.cn' }
  s.source           = { :git => 'https://github.com/liuliang/FaceAI.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'

  s.source_files = 'FaceAI/Classes/**/*'
  
  s.dependency 'UFBase'
  s.dependency 'UFSwiftBase'
  s.dependency 'UFNetwork'
  s.dependency 'UFFaceTracker'
  
  
  s.xcconfig            = {
      'FRAMEWORK_SEARCH_PATHS'   => '$(inherited) $(PODS_ROOT)/UFEffectsEngine',
      'LIBRARY_SEARCH_PATHS'     => '$(inherited) $(PODS_ROOT)/UFEffectsEngine',
      'OTHER_LDFLAGS'            => '$(inherited) -undefined dynamic_lookup -ObjC',
      'ENABLE_BITCODE'           => 'NO'
  }
  
end
