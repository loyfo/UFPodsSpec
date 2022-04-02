#
# Be sure to run `pod lib lint UFVideoRender.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFVideoRender'
  s.version          = '2.2.3'
  s.summary          = '视频渲染组件'

  s.description      = <<-DESC
  ufoto 视频渲染，实现人脸跟踪、视频滤镜、视频特效等功能组件
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFVideoRender'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'KingBo0259' => '492617233@qq.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFVideoRender.git', :tag => s.version.to_s }

  s.static_framework = true
  s.default_subspec = 'V2'
  s.swift_version = '5.0'
  s.ios.deployment_target = '10.0'
  
  #普通滤镜
    s.subspec 'V1' do |b|
       b.source_files = 'UFVideoRender/Classes/**/*'
       b.dependency 'UFRenderFilterSDK','>= 2.2.0'
       b.dependency 'UFSwiftBase','>= 1.6.0'
       b.dependency 'UFResourceManager','>= 2.1.0'
       b.dependency 'UFOpenGLSDK'
       b.dependency 'UFLog'
       b.dependency 'UFCodecSDK','>= 1.0.9'
       b.dependency 'UFSegmentationSelfie'
       b.dependency 'UFRenderSDK', '>= 3.2.21'
       b.dependency 'UFVideoTool'
       b.dependency 'UFAlgorithm', '>= 1.4.0'
       b.pod_target_xcconfig = {
           'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => '$(inherited) UFVideoRender_V1',
       }
    end
    
    s.subspec 'V2' do |b|
       b.source_files = 'UFVideoRender/Classes/**/*'
       b.resource = 'UFVideoRender/Assets/V2/**/*'
       b.dependency 'UFRenderSDK', '2.4.17' #这里不能更改，注意！ 需要使用old 版本
       b.dependency 'UFSwiftBase','>= 1.6.0'
       b.dependency 'UFResourceManager','>= 2.1.0'
       b.dependency 'UFOpenGLSDK'
       b.dependency 'UFLog'
       b.dependency 'UFCodecSDK','>= 1.0.9'
       b.dependency 'UFVideoTool'
       b.pod_target_xcconfig = {
           'SWIFT_ACTIVE_COMPILATION_CONDITIONS' => '$(inherited) UFVideoRender_V2',
       }
    end  
end
