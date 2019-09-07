
Pod::Spec.new do |s|
  s.name             = 'UFBeautyTool'
  s.version          = '0.6.0'
  s.summary          = 'Ufoto beauty tool.'

  s.homepage         = 'https://gitb.ufotosoft.com/iostools/ufbeautytool'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/ufbeautytool.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.0'

  s.subspec 'Static' do |b|
    b.source_files = 'UFBeautyTool/Classes/Static/**/*','UFBeautyTool/Classes/Common/**/*'
    b.private_header_files = 'UFBeautyTool/Classes/Static/RenderEngine/include/IOSNativePlayer.hpp'
    b.dependency 'GPUImage'
    b.dependency 'UFBase/ImageHelper'
    b.vendored_libraries = 'UFBeautyTool/Frameworks/Static/**/*.a','UFBeautyTool/Frameworks/Common/**/*.a'
  end

  s.subspec 'Buffer' do |c|
    c.source_files = 'UFBeautyTool/Classes/Buffer/**/*','UFBeautyTool/Classes/Common/**/*'
    c.dependency 'GPUImage'
    c.dependency 'UFBase/TFHeaders'
    c.vendored_libraries = 'UFBeautyTool/Frameworks/Buffer/**/*.a','UFBeautyTool/Frameworks/Common/**/*.a'
    c.resources = 'UFBeautyTool/Classes/Resources/*.bundle'
  end

  s.source_files = 'UFBeautyTool/Classes/*'
  s.public_header_files = 'UFBeautyTool/Classes/UFBeautyTool.h'
  s.frameworks = 'Accelerate'
  s.libraries  = 'stdc++'
  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO'}

end
