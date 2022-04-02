Pod::Spec.new do |s|
  s.name             = 'UFEffectsEngine'
  s.version          = '2.2.2'
  s.summary          = '图像处理引擎'

  s.description      = <<-DESC
  ufotosoft 图像处理引擎.
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFEffectsEngine'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFEffectsEngine.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
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
      'VALID_ARCHS[sdk=iphonesimulator*]' => '',
      'DEFINES_MODULE' => 'YES'
  }

  s.user_target_xcconfig = {
      'VALID_ARCHS' => 'arm64 armv7',
      'SWIFT_COMPILATION_MODE'=>'wholemodule',
      'ENABLE_BITCODE' => 'NO',
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }

  s.subspec 'Base' do |base|
      base.source_files = 'UFEffectsEngine/Classes/{*.swift}'
      base.dependency 'UFResourceManager','>= 1.4.1'
      base.dependency 'GPUImage'

  end
  
  #普通滤镜
  s.subspec 'Filter' do |b|
     b.dependency 'UFRenderFilterSDK'
     b.dependency 'UFEffectsEngine/Base'
     b.source_files = 'UFEffectsEngine/Classes/UFFilter/**/{*.swift}'
     b.pod_target_xcconfig = {
         'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => '$(inherited) UFEffect_Filter',
     }
  end

  #艺术滤镜
  s.subspec 'ArtFilter' do |c|
     c.dependency 'UFImageCloudAlgo/StyleTransformer'
     c.dependency 'UFEffectsEngine/Base'
     c.source_files = 'UFEffectsEngine/Classes/UFArtFilter/**/{*.swift}'
     c.xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => '$(inherited) UFEffect_ArtFilter' }
  end

  #抠图
  s.subspec 'Segment' do |e|
     e.dependency 'UFEffectsEngine/Base'
     e.dependency 'UFImageCloudAlgo/Segment'
     e.source_files = 'UFEffectsEngine/Classes/Segment/**/{*.swift}'
     e.xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => '$(inherited) UFEffect_Segment' }
  end

  #描边
  s.subspec 'Outline' do |f|
     f.dependency 'UFImageCloudAlgo/Segment'
     f.dependency 'UFBase'
     f.dependency 'YYModel'
     f.dependency 'UFEffectsEngine/Base'
     f.source_files = 'UFEffectsEngine/Classes/Outline/**/{*.swift}'
     f.xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => '$(inherited) UFEffect_Outline' }
  end

  #背景虚化
  s.subspec 'Bokeh' do |g|
     g.dependency 'UFImageCloudAlgo/Bokeh'
     g.dependency 'UFEffectsEngine/Base'
     g.source_files =  'UFEffectsEngine/Classes/Bokeh/**/{*.swift}'
     g.xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => '$(inherited) UFEffect_Bokeh' }
  end

  #背景模糊
  s.subspec 'Blur' do |h|
      h.dependency 'UFEffectsEngine/Base'
      h.source_files = 'UFEffectsEngine/Classes/Blur/**/{*.swift}'
      h.xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => '$(inherited) UFEffect_Blur' }
  end
  
    #双重曝光
    s.subspec 'DoubleExposure' do |k|
        k.dependency 'UFFaceTracker'
        k.dependency 'UFFaceMark'
        k.dependency 'UFImageCloudAlgo/Common'
        k.dependency 'YYModel'
        k.dependency 'UFRenderFilterSDK'
        k.dependency 'UFEffectsEngine/Base'
        k.prefix_header_contents = '#import "UFDoubleExposureFaceTask.h"'
        k.source_files = 'UFEffectsEngine/Classes/DoubleExposure/**/*.{h,m}', 'UFEffectsEngine/Classes/DoubleExposure/**/{*.swift}'
        k.pod_target_xcconfig = {
            'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => '$(inherited) UFEffect_DoubleExposure'
        }
    end
  
  # 美妆 、美颜相关滤镜
  s.subspec 'Face' do | face|
    face.dependency 'UFRenderFilterSDK'
    face.dependency 'UFEffectsEngine/Base'
    face.source_files = 'UFEffectsEngine/Classes/Face/**/{*.swift}'
    face.xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => '$(inherited) UFEffect_Face' }
  end
  
  s.subspec 'Inpaint' do |inpatint|
#      inpatint.ios.deployment_target = '13.0'
      inpatint.source_files = 'UFEffectsEngine/Classes/Inpaint/**/*'
      inpatint.xcconfig = { "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => '$(inherited) UFEffect_Inpaint'}
      inpatint.dependency 'UFImageCloudAlgo'
      inpatint.dependency 'UFFaceMark'
  end

  #颜色分离
  s.subspec 'ColorSplit' do |color_split|
      color_split.dependency 'YYModel'
      color_split.dependency 'UFRenderFilterSDK'
      color_split.dependency 'UFEffectsEngine/Base'
      color_split.source_files = 'UFEffectsEngine/Classes/ColorSplit/**/{*.swift}'
      color_split.pod_target_xcconfig = {
          'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => '$(inherited) UFEffect_ColorSplit'
      }
  end

end
