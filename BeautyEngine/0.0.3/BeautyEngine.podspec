
Pod::Spec.new do |s|
  s.name             = 'BeautyEngine'
  s.version          = '0.0.3'
  s.summary          = 'Ufoto render engine'

  s.homepage         = 'https://gitb.ufotosoft.com/iostools/BeautyEngine'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/BeautyEngine.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.0'
  s.static_framework = true
  s.subspec 'RenderEngine' do |ss|
    ss.source_files = 'BeautyEngine/RenderEngine/Classes/**'
    ss.public_header_files = 'BeautyEngine/RenderEngine/Classes/*'
    ss.vendored_libraries = 'BeautyEngine/RenderEngine/lib/*.a'
  end

  s.subspec 'FaceEngine' do |ss|
    ss.source_files = 'BeautyEngine/FaceEngine/Classes/**/*', 'BeautyEngine/FaceEngine/Classes/*'
    ss.public_header_files = 'BeautyEngine/FaceEngine/Classes/public/*.h', 'BeautyEngine/FaceEngine/Classes/*.h'
    ss.dependency 'UFAlgorithm', '~> 1.0.0'
    ss.vendored_libraries = 'BeautyEngine/FaceEngine/lib/*.a'
  end

  s.subspec 'BeautyTune' do |ss|
    ss.source_files = 'BeautyEngine/BeautyTune/Classes/**/*'
    ss.public_header_files = 'BeautyEngine/BeautyTune/Classes/*.h'
    ss.dependency 'UFAlgorithm', '~> 1.0.0'
    ss.vendored_libraries = 'BeautyEngine/BeautyTune/lib/*.a'
  end
  
  s.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => '' }
  s.frameworks = 'Accelerate'
  s.libraries  = 'stdc++'
  s.default_subspecs = 'RenderEngine', 'FaceEngine', 'BeautyTune'
  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO'}

end
