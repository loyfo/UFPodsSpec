 
Pod::Spec.new do |s|
  s.name             = 'UFAdvertKit'
  s.version          = '1.1.0'
  s.summary          = 'UFOTO广告组件，基于Admob或Applovin Max聚合'

  s.description      = <<-DESC
  UFOTO广告组件，基于Admob或Applovin Max聚合,实现云端配置下发，所有App统一调用问题
  DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFAdvertKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '915261708@qq.com' => 'caohua@ufotosoft.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFAdvertKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.swift_versions = '5.0'
  s.static_framework = true

  s.framework = 'AdSupport'
  s.dependency 'FirebaseRemoteConfig'
  s.dependency 'UFSwiftBase'
  s.dependency 'YYModel'

  s.subspec 'Admob' do |a|
      a.source_files = 'UFAdvertKit/Classes/**/*'

      a.dependency 'Google-Mobile-Ads-SDK'
      a.dependency 'GoogleMobileAdsMediationFacebook'
      a.dependency 'GoogleMobileAdsMediationVungle'
      a.dependency 'GoogleMobileAdsMediationAppLovin'

      a.pod_target_xcconfig = {
          "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "$(inherited) AD_ADMOB" }
  end

  s.subspec 'Max' do |m|
      m.source_files = 'UFAdvertKit/Classes/**/*'

      m.dependency 'AppLovinSDK'
      m.dependency 'AppLovinMediationFacebookAdapter'
      m.dependency 'AppLovinMediationGoogleAdapter'
      m.dependency 'AppLovinMediationVungleAdapter'
      m.dependency 'AppLovinMediationByteDanceAdapter'

      m.pod_target_xcconfig = {
          "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "$(inherited) AD_MAX"
      }
  end

end
