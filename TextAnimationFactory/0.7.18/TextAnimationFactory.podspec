Pod::Spec.new do |s|
  s.name             = 'TextAnimationFactory'
  s.version          = '0.7.18'
  s.summary          = '文字动效'


  s.description      = <<-DESC
    文字动效工厂
  DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/TextAnimationFactory'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhangbb' => 'zhangbb@ufotosoft.com' }
  s.source           = { :git => 'https://git.ufotosoft.com/iostools/TextAnimationFactory.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.static_framework = true

  s.source_files = 'TextAnimationFactory/TextAnimationFactory/**/*'
end
