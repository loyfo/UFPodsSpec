#
# Be sure to run `pod lib lint UFImageTool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UFImageTool'
  s.version          = '1.2.0'
  s.summary          = 'A short description of UFImageTool.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://git.ufotosoft.com/iostools/UFImageTool'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'KingBo0259' => '492617233@qq.com' }
  s.source           = { :git => 'https://git.ufotosoft.com/iostools/UFImageTool.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  
  s.resources = "UFImageTool/Assets/Images.xcassets"
  
  s.resource_bundle = {
    'CroppedImageBundle' => ['UFImageTool/Assets/Images.xcassets']
  }
  
  s.subspec 'CroppedImage' do |b|
      b.dependency  'Masonry'
      b.source_files = 'UFImageTool/Classes/UFCroppedImage/{*.h,*.m,*.mm,*.swift}'
      b.public_header_files = 'UFImageTool/Classes/UFCroppedImageViewController.h'
  end

  s.subspec 'ImageHelper' do |c|
      c.dependency  'UFAlgorithm'
      c.source_files = 'UFImageTool/Classes/UFImageHelper/{*.h,*.m,*.mm,*.swift}'
      c.public_header_files = 'UFImageTool/Classes/UFImageHelper.h'
  end
  
end
