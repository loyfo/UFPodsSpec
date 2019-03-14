
Pod::Spec.new do |s|
  s.name             = 'UFBeautyTool'
  s.version          = '0.3.0'
  s.summary          = 'Ufoto beauty tool.'

  s.homepage         = 'https://gitb.ufotosoft.com/iostools/ufbeautytool'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/ufbeautytool.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.0'

  s.subspec 'Static' do |b|
    b.source_files = 'UFBeautyTool/Classes/Static/**/*'
    b.dependency  'UFBase/ImageHelper'
    b.vendored_libraries = 'UFBeautyTool/Classes/Static/**/*.a'
  end

  s.subspec 'Buffer' do |c|
    c.source_files = 'UFBeautyTool/Classes/Buffer/**/*'
    c.dependency 'GPUImage'
    c.dependency 'UFBase/TFHeaders'
    c.vendored_libraries = 'UFBeautyTool/Classes/Buffer/**/*.a'
    c.resources = 'UFBeautyTool/Classes/Buffer/UFBufferBeautyTool.bundle'
  end

  s.source_files = 'UFBeautyTool/Classes/*'
  s.public_header_files = 'UFBeautyTool/Classes/UFBeautyTool.h'
  s.frameworks = 'Accelerate'
  s.libraries  = 'stdc++'
  
  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO'}
end
