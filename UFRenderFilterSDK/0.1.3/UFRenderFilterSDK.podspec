

Pod::Spec.new do |s|
    s.name             = 'UFRenderFilterSDK'
    s.version          = '0.1.3'
    s.summary          = 'Ufoto UFRenderFilterSDK.'
    s.homepage         = 'https://gitb.ufotosoft.com/iostools/ufrendersdk'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'zhangbb' => 'zhangbb@ufotosoft.com' }
    s.source           = { :git => 'git@git.ufotosoft.com:iostools/ufrendersdk.git', :tag => s.version.to_s }
  
    s.ios.deployment_target = '9.0'
    s.swift_version = '4.0'
    s.source_files = 'UFRenderSDK/Classes/**/*'
    s.resource_bundles = {
        'UFRenderSDKResource' => ['UFRenderSDK/Assets/**/*']
    }
    s.module_name = 'UFRenderFilterSDK'
    
    s.dependency 'BeautyEngine/RenderEngine'
    s.dependency 'GPUImage'
    s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO', 'VALID_ARCHS[sdk=iphonesimulator*]' => ''}
  end

