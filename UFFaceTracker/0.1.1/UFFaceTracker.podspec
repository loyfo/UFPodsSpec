
Pod::Spec.new do |s|
  s.name             = 'UFFaceTracker'
  s.version          = '0.1.1'
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

  s.pod_target_xcconfig = {
         'VALID_ARCHS' => 'arm64 armv7'
    }
    s.user_target_xcconfig = {
         'VALID_ARCHS' => 'arm64 armv7'
    }

end
