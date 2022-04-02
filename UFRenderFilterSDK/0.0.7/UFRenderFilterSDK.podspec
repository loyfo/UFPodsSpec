
Pod::Spec.new do |s|
    s.name             = 'UFRenderFilterSDK'
    s.version          = '0.0.7'
    s.summary          = 'Ufoto UFRenderFilterSDK.'
    s.homepage         = 'https://gitb.ufotosoft.com/iostools/ufrendersdk'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'zhangbb' => 'zhangbb@ufotosoft.com' }
    s.source           = { :git => 'git@git.ufotosoft.com:iostools/ufrendersdk.git', :tag => s.version.to_s }
  
    s.ios.deployment_target = '9.0'
    s.swift_version = '4.0'
    s.static_framework = true
    s.source_files = 'Classes/**/*'
    s.resource_bundles = {
        'UFRenderSDKResource' => ['Resource/**/*']
    }
    s.dependency 'BeautyEngine', '~> 0.0.5'
#    s.dependency 'BeautyEngine/BeautyTune'
#    s.dependency 'BeautyEngine/FaceEngine'
    s.dependency 'GPUImage'
    s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO'}
  end
  
