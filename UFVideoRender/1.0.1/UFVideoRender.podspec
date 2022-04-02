#
# Be sure to run `pod lib lint UFVideoRender.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFVideoRender'
  s.version          = '1.0.1'
  s.summary          = '视频渲染组件'

  s.description      = <<-DESC
  ufoto 视频渲染，实现人脸跟踪、视频滤镜、视频特效等功能组件
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFVideoRender'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'KingBo0259' => '492617233@qq.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFVideoRender.git', :tag => s.version.to_s }

  s.swift_version = '5.0'
  s.ios.deployment_target = '9.0'
  s.source_files = 'UFVideoRender/Classes/**/*'
  s.dependency 'UFCodecSDK', '>= 1.0.6'
  s.dependency 'UFRenderFilterSDK','>= 2.2.0'
  s.dependency 'UFSwiftBase','>= 1.6.0'
  s.dependency 'UFResourceManager','>= 2.1.0'
  s.dependency 'UFOpenGLSDK'
  s.dependency 'UFLog'
  
end
