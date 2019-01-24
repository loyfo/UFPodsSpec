Pod::Spec.new do |s|
  s.name             = 'UFBase'
  s.version          = '0.1.4'
  s.summary          = 'Ufoto basic tool library.'
  s.homepage         = 'https://git.ufotosoft.com/iostools/UFBase'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@git.ufotosoft.com:iostools/UFBase.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.source_files = 'UFBase/Classes/**/*'

  s.subspec 'TFHeaders' do |b|
    b.source_files = 'UFBase/Classes/TFHeaders/*'
  end

  s.subspec 'KeyChain' do |c|
    c.source_files = 'UFBase/Classes/KeyChain/*'
  end

  s.subspec 'ImageHelper' do |d|
        d.source_files = 'UFBase/Classes/ImageHelper/*'
        d.dependency 'UFBase/TFHeaders'
   end

  s.subspec 'Extension' do |d|
      d.source_files = 'UFBase/Classes/Extension/*'
  end

end
