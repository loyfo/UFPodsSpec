Pod::Spec.new do |s|
  s.name             = 'UFViewComponent'
  s.version          = '1.1.0'
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

  s.source_files = 'UFViewComponent/Classes/**/*'
  
  s.xcconfig            = {
      'ENABLE_BITCODE'           => 'NO'
  }

  s.dependency 'GPUImage'
  s.dependency 'UFEffectsEngine'
  s.dependency 'UFRenderFilterSDK'
  #添加版本号约束
  s.dependency 'UFSwiftBase'
end
