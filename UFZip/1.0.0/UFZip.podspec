
Pod::Spec.new do |s|
  s.name             = 'UFZip'
  s.version          = '1.0.0'
  s.summary          = 'ufoto UFZip.'

  s.description      = <<-DESC
  Ufoto base SDK , Suport zip and 7z 
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFZip'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liuliang' => 'liuliang@ufotosoft.com' }
  s.source           = { :git => 'https://git.ufotosoft.com/iostools/UFZip.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.swift_versions = '5.0'
  s.source_files = 'UFZip/Classes/**/*.{h,swift}'
  s.vendored_libraries = 'UFZip/Classes/libLZMAExtractor.a'
  

  s.dependency 'SSZipArchive'
  s.dependency 'UFSwiftBase'
  s.dependency 'UFBase'
end
