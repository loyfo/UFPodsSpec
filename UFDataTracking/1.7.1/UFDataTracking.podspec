Pod::Spec.new do |s|
  s.name             = 'UFDataTracking'
  s.version          = '1.7.1'
  s.summary          = 'UFoto data tracking.'

  s.description      = <<-DESC
    UFoto data tracking.
  DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFDataTracking'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFDataTracking.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.static_framework = true

  s.source_files = 'UFDataTracking/Classes/**/*'
  s.public_header_files = 'UFDataTracking/Classes/UFDataTracking.h'

  s.subspec 'Firebase' do |b|
     b.dependency  'FirebaseAnalytics', '>=6.6.0'
     b.source_files = 'UFDataTracking/Classes/{*.h,*.m,*.mm,*.swift}', 'UFDataTracking/Classes/Firebase/**/*'
     b.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) DT_FIREBASE=1' }
     b.vendored_libraries = 'UFDataTracking/FrameWorks/Firebase/**/*'
     b.framework = 'AdSupport'
  end

  s.subspec 'Flurry' do |c|
      c.dependency  'Flurry-iOS-SDK/FlurrySDK', '>=10.3.1'
      c.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) DT_FLURRY=1' }
  end

  s.subspec 'AppCenter' do |d|
      d.dependency  'AppCenter', '>=3.2.0'
      d.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) DT_AC=1' }
  end

  s.subspec 'FaceBook' do |e|
      e.dependency  'FBSDKCoreKit', '>=8.2.0'
      e.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) DT_FB=1' }
  end

  s.subspec 'AppsFlyer' do |f|
      f.dependency  'AppsFlyerFramework', '5.4.4'
      f.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) DT_AF=1' }
  end

  s.subspec 'Crashlytics' do |g|
      g.dependency  'Crashlytics', '>=3.14.0'
      g.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) DT_CL=1' }
  end
  
  s.subspec 'Adjust' do |g|
      g.dependency  'Adjust', '>= 4.28.0'
      g.xcconfig = { "GCC_PREPROCESSOR_DEFINITIONS" => '$(inherited) DT_AD=1' }
  end

end
