Pod::Spec.new do |s|
    s.name             = 'UFToast'
    s.version          = '1.0.1'
    s.summary          = '弹窗以及提示组件'
    
    s.description      = <<-DESC
    UFToast
    DESC
    
    s.homepage         = 'https://git.ufotosoft.com/iostools/UFToast'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'liuliang' => '3446513@qq.com' }
    s.source           = { :git => 'https://git.ufotosoft.com/iostools/UFToast.git', :tag => s.version.to_s }
    
    s.ios.deployment_target = '10.0'
    s.swift_version = '5.0'
    
    s.default_subspec = 'Toast', 'Hud'
    
    s.xcconfig            = {
        'ENABLE_BITCODE'           => 'NO'
    }
    s.subspec 'Hud' do |h|
        h.source_files = 'UFToast/Classes/UFHud.swift'
        h.dependency 'MBProgressHUD'
    end
    
    s.subspec 'Toast' do |t|
        t.source_files = 'UFToast/Classes/UFToast.swift'
        t.dependency 'SwiftMessages'
    end
    s.resources = 'UFToast/Assets/*.png'
    
end
