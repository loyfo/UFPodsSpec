#
# Be sure to run `pod lib lint UFImageCloudAlgo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFImageCloudAlgo'
  s.version          = '1.2.1'
  s.summary          = ' ufoto UFImageCloudAlgo.'

  s.description      = <<-DESC
抠图、艺术滤镜、背景虚化功能封装
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFImageCloudAlgo'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '915261708@qq.com' => 'caohua@ufotosoft.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFImageCloudAlgo.git', :tag => s.version.to_s }

  s.swift_versions = '5.0'
  s.ios.deployment_target = '9.0'

  s.xcconfig            = {
      'FRAMEWORK_SEARCH_PATHS'   => '$(inherited) $(PODS_ROOT)/UFImageCloudAlgo',
      'LIBRARY_SEARCH_PATHS'     => '$(inherited) $(PODS_ROOT)/UFImageCloudAlgo',
      'OTHER_LDFLAGS'            => '$(inherited) -undefined dynamic_lookup -ObjC',
      'ENABLE_BITCODE'           => 'NO'
  }

  s.subspec 'Common' do |com|
      com.source_files = 'UFImageCloudAlgo/Classes/Common/*'
      com.dependency 'UFNetwork'
      com.dependency 'UFAlgorithm'
  end

  s.subspec 'Segment' do |b|
      b.source_files = 'UFImageCloudAlgo/Classes/Segment/{Class,Header}/*'
      b.dependency 'UFImageCloudAlgo/Common'
      b.vendored_frameworks = 'UFImageCloudAlgo/Classes/Segment/Framework/*.framework'
  end

  s.subspec 'StyleTransformer' do |c|
      c.source_files = 'UFImageCloudAlgo/Classes/StyleTransformer/*'
      c.dependency 'UFImageCloudAlgo/Common'
  end

  s.subspec 'Bokeh' do |d|
      d.source_files = 'UFImageCloudAlgo/Classes/Bokeh/{Class,Header}/*'
      d.dependency 'UFImageCloudAlgo/Segment'
      d.dependency 'UFImageTool/ImageHelper'
      d.vendored_libraries = 'UFImageCloudAlgo/Classes/Bokeh/lib/*.a'
      d.resources = 'UFImageCloudAlgo/Classes/Bokeh/Resources/*.bundle'
  end

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

end
