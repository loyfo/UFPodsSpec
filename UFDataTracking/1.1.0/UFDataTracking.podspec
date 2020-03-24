Pod::Spec.new do |s|
  s.name             = 'UFDataTracking'
  s.version          = '1.1.0'
  s.summary          = 'UFoto data tracking.'


  s.description      = <<-DESC
    UFoto data tracking.
  DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFDataTracking'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFDataTracking.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.static_framework = true

  s.dependency 'UFLog'
  s.source_files = 'UFDataTracking/Classes/**/*'

  s.subspec 'Firebase' do |b|
     b.dependency  'FirebaseAnalytics', '>=6.3.1'
     b.source_files = 'UFDataTracking/Classes/{*.h,*.m,*.mm,*.swift}', 'UFDataTracking/Classes/Firebase/**/*'
     b.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) DT_FIREBASE=1' }
     b.vendored_libraries = 'UFDataTracking/FrameWorks/Firebase/**/*'
     b.framework = 'AdSupport'
  end

  s.subspec 'Flurry' do |c|
      c.dependency  'Flurry-iOS-SDK/FlurrySDK', '>=10.2.0'
      c.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) DT_FLURRY=1' }
      c.source_files = 'UFDataTracking/Classes/{*.h,*.m,*.mm,*.swift}', 'UFDataTracking/Classes/Flurry/**/*'
      c.public_header_files = 'UFDataTracking/Classes/UFDataTracking.h'
  end

  s.subspec 'UMeng' do |d|
      d.dependency  'UMCAnalytics', '>=6.0.5'
      d.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) DT_UMENG=1' }
      d.source_files = 'UFDataTracking/Classes/{*.h,*.m,*.mm,*.swift}', 'UFDataTracking/Classes/UMeng/**/*'
  end

  s.subspec 'FaceBook' do |e|
      e.dependency  'FacebookSDK', '>=6.0.0'
      e.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) DT_FB=1' }
      e.source_files = 'UFDataTracking/Classes/{*.h,*.m,*.mm,*.swift}', 'UFDataTracking/Classes/FaceBook/**/*'
  end

  s.subspec 'AppsFlyer' do |f|
      f.dependency  'AppsFlyerFramework', '>=5.2.0'
      f.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) DT_AF=1' }
      f.source_files = 'UFDataTracking/Classes/{*.h,*.m,*.mm,*.swift}', 'UFDataTracking/Classes/AppsFlyer/**/*'
  end

  s.subspec 'Crashlytics' do |g|
      g.dependency  'Crashlytics', '>=3.14.0'
      g.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) DT_CL=1' }
      g.source_files = 'UFDataTracking/Classes/{*.h,*.m,*.mm,*.swift}', 'UFDataTracking/Classes/Crashlytics/**/*'
  end

end
