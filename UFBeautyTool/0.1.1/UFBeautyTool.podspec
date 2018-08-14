
Pod::Spec.new do |s|
  s.name             = 'UFBeautyTool'
  s.version          = '0.1.1'
  s.summary          = 'Ufoto beauty tool.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://git.ufotosoft.com/iostools/ufbeautytool'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'http://git.ufotosoft.com/iostools/ufbeautytool.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.0'
  s.source_files = 'UFBeautyTool/Classes/**/*'
  
  # s.resource_bundles = {
  #   'UFBeautyTool' => ['UFBeautyTool/Assets/*.png']
  # }

  s.public_header_files = 'UFBeautyTool/Classes/UFBeautyTool.h'
  s.frameworks = 'Accelerate'
  s.libraries  = 'stdc++'

  s.vendored_libraries = 'UFBeautyTool/Classes/lib/*.a'
  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO' }
end
