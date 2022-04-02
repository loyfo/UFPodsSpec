#
# Be sure to run `pod lib lint UFImageSegmentTool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'UFImageSegmentTool'
    s.version          = '0.1.5'
    s.summary          = 'UFOTO Image Cloud Algo'

    s.description      = <<-DESC
    TODO: Add long description of the pod here.
    DESC

    s.homepage         = 'https://git.ufotosoft.com/caohua/UFImageSegmentTool'

    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { '915261708@qq.com' => 'caohua@ufotosoft.com' }
    s.source           = { :git => 'https://git.ufotosoft.com/caohua/UFImageSegmentTool.git', :tag => s.version.to_s }

    s.swift_versions = '5.0'
    s.ios.deployment_target = '8.0'

    s.subspec 'Common' do |com|
        com.source_files = 'UFImageSegmentTool/Classes/Common/*'
        com.dependency 'Moya', '~> 13.0'
        com.dependency 'UFBase/TFHeaders'
    end

    s.subspec 'Segment' do |b|
        b.source_files = 'UFImageSegmentTool/Classes/Segment/**/*.{h,m,mm,swift,hpp}'
        b.dependency 'UFImageSegmentTool/Common'
        b.vendored_frameworks = 'UFImageSegmentTool/Classes/Segment/Frameworks/*.framework'
        b.private_header_files = 'UFImageSegmentTool/Classes/Segment/Frameworks/*.framework/**/*.{h,hpp}'
        b.xcconfig            = {
            'FRAMEWORK_SEARCH_PATHS'   => '$(inherited) $(PODS_ROOT)/UFImageSegmentTool',
            'LIBRARY_SEARCH_PATHS'     => '$(inherited) $(PODS_ROOT)/UFImageSegmentTool',
            'OTHER_LDFLAGS'            => '$(inherited) -undefined dynamic_lookup -ObjC',
            'ENABLE_BITCODE'           => 'NO'
        }
    end

    s.subspec 'StyleTransformer' do |c|
        c.source_files = 'UFImageSegmentTool/Classes/StyleTransformer/*'
        c.dependency 'UFImageSegmentTool/Common'
    end

    s.pod_target_xcconfig = {
        'VALID_ARCHS' => 'arm64 armv7'
    }

    s.user_target_xcconfig = {
        'VALID_ARCHS' => 'arm64 armv7'
    }

    s.pod_target_xcconfig = {
        'ENABLE_BITCODE' => 'NO'
    }

end
