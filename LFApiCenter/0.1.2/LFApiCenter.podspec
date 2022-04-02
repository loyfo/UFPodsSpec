Pod::Spec.new do |s|
  s.name             = 'LFApiCenter'
  s.version          = '0.1.2'
  s.summary          = 'API 集中处理工具.'
  s.description      = <<-DESC
            API 集中处理工具.
                       DESC
  s.homepage         = 'https://github.com/loyfo/LFApiCenter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'loyfo' => 'hwp_163@163.com' }
  s.source           = { :git => 'git@github.com:loyfo/LFApiCenter.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.osx.deployment_target = '10.13'

  s.source_files = 'LFApiCenter/Classes/**/*'
  s.osx.source_files = 'LFApiCenter/Classes/**/*'
  s.dependency 'Moya',"13.0.1"
  s.swift_versions = "5.0"
end
