 
Pod::Spec.new do |s|
  s.name             = 'UFLog'
  s.version          = '2.1.0'
  s.summary          = 'UFlog is base log '


  s.homepage         = 'https://git.ufotosoft.com/iostools/UFLog'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'KingBo0259' => '492617233@qq.com' }
  s.source           = { :git => 'https://git.ufotosoft.com/iostools/UFLog.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.13'
  s.swift_version = "5.0"
  
  s.source_files = 'UFLog/Classes/**/*'
  
  # s.resource_bundles = {
  #   'UFLog' => ['UFLog/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
