Pod::Spec.new do |s|
  s.name             = 'LZMAExtractor'
  s.version          = '0.1.0'
  s.summary          = 'UFoto LZMAExtractor.'


  s.description      = <<-DESC
    UFoto LZMAExtractor.
  DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/LZMAExtractor'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhangbb' => 'zhangbb@ufotosoft.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/LZMAExtractor.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.source_files = 'Classes/**/*.{h,m}'

  s.ios.deployment_target = '8.0'
  s.vendored_libraries = 'Classes/libLZMAExtractor.a'
end
