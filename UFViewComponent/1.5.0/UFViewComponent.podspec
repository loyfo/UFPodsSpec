Pod::Spec.new do |s|
  s.name             = 'UFViewComponent'
  s.version          = '1.5.0'
  s.summary          = '基础视图组件'

  s.description      = <<-DESC
  UFViewComponent 基础组件
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFViewComponent'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'KingBo0259' => '492617233@qq.com' }
  s.source           = { :git => 'https://git.ufotosoft.com/iostools/UFViewComponent.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '9.0'
  s.swift_version = '5.0'
  
  s.default_subspec = 'Base', 'Filter', 'Cutout'
  
  s.xcconfig            = {
      'ENABLE_BITCODE'           => 'NO'
  }
  
  s.subspec 'Base' do |base|
      base.source_files = 'UFViewComponent/Classes/Base/{*.swift}'
      base.dependency 'UFSwiftBase', '>= 1.4.1'
  end
  
  s.subspec 'UI' do |u|
      #包含隐私弹窗，loading等等。。目前只有UI
      u.dependency 'UFViewComponent/Base'
      u.dependency 'SwiftMessages', '8.0.5'
      u.source_files = 'UFViewComponent/Classes/Privacy/{*.swift}'
      #TODO source区分
      u.resources = 'UFViewComponent/Assets/*.png'
  end
  
  s.subspec 'Filter' do |f|
      f.dependency 'UFViewComponent/Base'
      f.dependency 'GPUImage'
      f.dependency 'UFEffectsEngine', '>= 2.5.0'
      f.dependency 'UFRenderFilterSDK'
      f.source_files = 'UFViewComponent/Classes/Filter/{*.swift}'
  end
  
  s.subspec 'Cutout' do |c|
      c.dependency 'UFViewComponent/Base'
      c.dependency 'UFImageCloudAlgo','>= 1.4.0'
      c.source_files = 'UFViewComponent/Classes/Cutout/{*.swift}'
  end

end
