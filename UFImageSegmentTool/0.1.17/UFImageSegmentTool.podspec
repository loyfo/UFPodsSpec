#
# Be sure to run `pod lib lint UFImageSegmentTool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|

    s.name             = 'UFImageSegmentTool'
    s.version          = '0.1.17'
    s.summary          = 'UFOTO Image Cloud Algo'

    s.description      = <<-DESC
    TODO: Add long description of the pod here.
    DESC

    s.homepage         = 'https://git.ufotosoft.com/iostools/UFImageSegmentTool'

    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '915261708@qq.com' => 'caohua@ufotosoft.com' }
    s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFImageSegmentTool.git', :tag => s.version.to_s }

    s.swift_versions = '5.0'
    s.ios.deployment_target = '8.0'

    s.xcconfig            = {
        'FRAMEWORK_SEARCH_PATHS'   => '$(inherited) $(PODS_ROOT)/UFImageSegmentTool',
        'LIBRARY_SEARCH_PATHS'     => '$(inherited) $(PODS_ROOT)/UFImageSegmentTool',
        'OTHER_LDFLAGS'            => '$(inherited) -undefined dynamic_lookup -ObjC',
        'ENABLE_BITCODE'           => 'NO'
    }

    s.subspec 'Common' do |com|
        com.source_files = 'UFImageSegmentTool/Classes/Common/*'
        com.dependency 'Moya', '~> 13.0.1'
        com.dependency 'UFImageTool/ImageHelper', '~> 1.2.1'
        com.dependency 'UFAlgorithm', '~> 1.0.1'
    end

    s.subspec 'Segment' do |b|
        b.source_files = 'UFImageSegmentTool/Classes/Segment/{Class,Header}/*'
        b.dependency 'UFImageSegmentTool/Common'
        b.vendored_frameworks = 'UFImageSegmentTool/Classes/Segment/Framework/*.framework'
    end

    s.subspec 'StyleTransformer' do |c|
        c.source_files = 'UFImageSegmentTool/Classes/StyleTransformer/*'
        c.dependency 'UFImageSegmentTool/Common'
    end

    s.subspec 'Blur' do |d|
        d.source_files = 'UFImageSegmentTool/Classes/Blur/{Class,Header}/*'
        d.dependency 'UFImageSegmentTool/Segment'
        d.vendored_libraries = 'UFImageSegmentTool/Classes/Blur/lib/*.a'
        d.resources = 'UFImageSegmentTool/Classes/Blur/Resources/*.bundle'
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
