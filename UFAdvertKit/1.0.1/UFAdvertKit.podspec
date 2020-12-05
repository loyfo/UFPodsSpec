 
Pod::Spec.new do |s|
  s.name             = 'UFAdvertKit'
  s.version          = '1.0.1'
  s.summary          = 'UFOTO广告组件，基于admob聚合'

  s.description      = <<-DESC
 UFOTO广告组件，基于admob聚合,实现云端配置下发，所有App统一调用问题
  DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFAdvertKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '915261708@qq.com' => 'caohua@ufotosoft.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFAdvertKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.swift_versions = '5.0'

  s.source_files = 'UFAdvertKit/Classes/**/*'
  s.static_framework = true  # Error:  target has transitive dependencies that include statically linked binaries

  s.dependency 'Google-Mobile-Ads-SDK'
  s.dependency 'GoogleMobileAdsMediationFacebook'
  s.dependency 'GoogleMobileAdsMediationVungle'
  s.dependency 'GoogleMobileAdsMediationAppLovin'
  s.dependency 'FirebaseRemoteConfig'

  s.dependency 'UFSwiftBase'
  s.dependency 'YYModel'
end
