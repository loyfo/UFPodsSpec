Pod::Spec.new do |s|
  s.name             = 'UFEffectsEngine'
  s.version          = '0.1.3'
  s.summary          = '图像处理引擎'

  s.description      = <<-DESC
  ufotosoft 图像处理引擎.
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFEffectsEngine'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFEffectsEngine.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.swift_version = '5.0'

  s.xcconfig            = {
      'FRAMEWORK_SEARCH_PATHS'   => '$(inherited) $(PODS_ROOT)/UFEffectsEngine',
      'LIBRARY_SEARCH_PATHS'     => '$(inherited) $(PODS_ROOT)/UFEffectsEngine',
      'OTHER_LDFLAGS'            => '$(inherited) -undefined dynamic_lookup -ObjC',
      'ENABLE_BITCODE'           => 'NO'
  }

  s.pod_target_xcconfig = {
      'VALID_ARCHS' => 'arm64 armv7',
      'SWIFT_COMPILATION_MODE'=>'wholemodule',
      'ENABLE_BITCODE' => 'NO',
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'DEFINES_MODULE' => 'YES'
  }

  s.user_target_xcconfig = {
      'VALID_ARCHS' => 'arm64 armv7',
      'SWIFT_COMPILATION_MODE'=>'wholemodule',
      'ENABLE_BITCODE' => 'NO',
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }

  #普通滤镜
  s.subspec 'Filter' do |b|
     b.dependency  'GPUImage', '~> 0.2.1'
     b.dependency 'SDWebImageWebPCoder'
     b.source_files = 'UFEffectsEngine/Classes/{*.h,*.m,*.mm,*.swift}', 'UFEffectsEngine/Classes/UFFilter/**/{*.h,*.m,*.mm,*.swift}'
     b.resource_bundles = {
         'UFFilter' => ['UFEffectsEngine/Classes/UFFilter/Resources/**/{*.png,*.jpg,*.json,*.fsh}']
     }
     b.pod_target_xcconfig = {
         'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => '$(inherited) UFEffect_Filter'
     }
  end

  #艺术滤镜
  s.subspec 'ArtFilter' do |c|
     c.dependency 'UFImageSegmentTool/StyleTransformer'
     c.source_files = 'UFEffectsEngine/Classes/{*.h,*.m,*.mm,*.swift}', 'UFEffectsEngine/Classes/UFArtFilter/**/{*.h,*.m,*.mm,*.swift}'
     c.xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => '$(inherited) UFEffect_ArtFilter' }
  end

  #Bling滤镜
  s.subspec 'BlingFilter' do |d|
     d.dependency 'UFEffectsEngine/Filter'
     d.source_files = 'UFEffectsEngine/Classes/{*.h,*.m,*.mm,*.swift}', 'UFEffectsEngine/Classes/Bling/**/{*.h,*.m,*.mm,*.swift}'
     d.vendored_libraries = 'UFEffectsEngine/Classes/Bling/ColorEffect/libs/libglbling.a'
     d.pod_target_xcconfig = {
         'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => '$(inherited)'
     }
  end

  #抠图
  s.subspec 'Segment' do |e|
     e.dependency 'UFImageSegmentTool/Segment'
     e.source_files = 'UFEffectsEngine/Classes/{*.h,*.m,*.mm,*.swift}', 'UFEffectsEngine/Classes/Segment/**/{*.h,*.m,*.mm,*.swift}'
     e.xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => '$(inherited) UFEffect_Segment' }
  end

  #描边
  s.subspec 'Outline' do |f|
     f.dependency 'UFImageSegmentTool/Segment'
     f.dependency 'UFBase', '~> 1.0.0'
     f.dependency 'YYModel'
     f.source_files = 'UFEffectsEngine/Classes/{*.h,*.m,*.mm,*.swift}', 'UFEffectsEngine/Classes/Outline/**/{*.h,*.m,*.mm,*.swift}'
     f.xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => '$(inherited) UFEffect_Outline' }
  end

  #背景虚化
  s.subspec 'Bokeh' do |g|
     g.dependency 'UFImageSegmentTool/Blur'
     g.source_files = 'UFEffectsEngine/Classes/{*.h,*.m,*.mm,*.swift}', 'UFEffectsEngine/Classes/Bokeh/**/{*.h,*.m,*.mm,*.swift}'
     g.xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => '$(inherited) UFEffect_Bokeh' }
  end

  #背景模糊
  s.subspec 'Blur' do |h|
      h.dependency  'GPUImage', '~> 0.2.1'
      h.source_files = 'UFEffectsEngine/Classes/{*.h,*.m,*.mm,*.swift}', 'UFEffectsEngine/Classes/Blur/**/{*.h,*.m,*.mm,*.swift}'
      h.xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => '$(inherited) UFEffect_Blur' }
  end

end
