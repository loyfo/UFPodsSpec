
Pod::Spec.new do |s|
  s.name             = 'UFFaceTracker'
  s.version          = '0.3.1'
  s.summary          = 'UFFaceTracker.'
  s.homepage         = 'https://git.ufotosoft.com/iostools/UFFaceTracker'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFFaceTracker.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'

  s.subspec 'ULSee' do |b|
    b.source_files = 'UFFaceTracker/Classes/ULSee/{*.h,*.m,*.mm,*.swift}'
    b.vendored_frameworks = 'UFFaceTracker/Classes/ULSee/frameworks/ULSMultiTrackeriOSSDK.framework'
    b.frameworks = 'UIKit', 'SystemConfiguration'
    b.preserve_paths = 'UFFaceTracker/Classes/ULSee/resources/**/*'
  end

  s.subspec 'Ufoto' do |c|
      c.source_files = 'UFFaceTracker/Classes/Ufoto/**/{*.h,*.m,*.mm,*.swift}'
      c.frameworks = 'UIKit', 'SystemConfiguration', 'AVFoundation', 'CoreVideo', 'CoreMedia', 'AssetsLibrary'
      c.dependency   'UFBase/ImageHelper'
      c.vendored_frameworks =  'UFFaceTracker/Classes/Ufoto/Frameworks/RtFacialOutline.framework'
      c.public_header_files = 'UFFaceTracker/Classes/Ufoto/**/*.h'
      c.xcconfig            = {
          'FRAMEWORK_SEARCH_PATHS'   => '$(inherited) $(PODS_ROOT)/UFFaceTracker',
          'LIBRARY_SEARCH_PATHS'     => '$(inherited) $(PODS_ROOT)/UFFaceTracker',
          'OTHER_LDFLAGS'            => '$(inherited) -undefined dynamic_lookup -ObjC',
          'ENABLE_BITCODE'           => 'NO'
      }
  end

  s.pod_target_xcconfig = {
      'VALID_ARCHS' => 'arm64'
  }

  s.user_target_xcconfig = {
      'VALID_ARCHS' => 'arm64'
  }

  s.pod_target_xcconfig = {
    'ENABLE_BITCODE' => 'NO'
  }

end
