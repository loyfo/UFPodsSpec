

Pod::Spec.new do |s|
    s.name             = 'UFRenderFilterSDK'
    s.version          = '2.2.0'

    s.summary          = 'Ufoto UFRenderFilterSDK.'
    s.homepage         = 'https://gitb.ufotosoft.com/iostools/ufrendersdk'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'zhangbb' => 'zhangbb@ufotosoft.com' }
    s.source           = { :git => 'git@git.ufotosoft.com:iostools/ufrendersdk.git', :tag => s.version.to_s }
  
    s.ios.deployment_target = '9.0'
    s.swift_version = '4.0'
    s.source_files = 'UFRenderSDK/Classes/**/*'
#    s.vendored_frameworks = 'UFRenderSDK/Frameworks/*.framework'
    s.resources ='UFRenderSDK/Bundle/**/*'
    s.resource_bundles = {
        'UFRenderSDKResource' => ['UFRenderSDK/Assets/**/*']
    }

    s.dependency 'GPUImage'
    s.dependency 'UFFaceTracker'
    s.dependency 'UFImageTool'
    s.dependency 'UFRenderSDK'
    s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO', 'VALID_ARCHS[sdk=iphonesimulator*]' => '',  'OTHER_LDFLAGS' => '-lObjC' }
  end



