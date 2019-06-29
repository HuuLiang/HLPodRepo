#
# Be sure to run `pod lib lint HLToolKit-Swift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HLToolKit-Swift'
  s.version          = '0.0.3'
  s.summary          = 'A common tools for ios develop by swift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                            Swift版本工具集，持续更新中。
                       DESC

  s.homepage         = 'https://github.com/HuuLiang/HLToolKit-Swift'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HuLiangLiang' => 'Liangola@qq.com' }
  s.source           = { :git => 'https://github.com/HuuLiang/HLToolKit-Swift.git', :tag => s.version.to_s }
  s.swift_version    = "5.0.1"
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
    
  s.subspec 'Core' do |core|
      core.source_files = 'HLToolKit-Swift/Core/**/*'
      core.dependency  'Aspects'
      core.dependency  'Alamofire'
      core.dependency  'Kingfisher'
      core.dependency  'pop'
      core.dependency  'EmptyDataSet-Swift'
      core.dependency  'PKHUD'
      core.dependency  'SCLAlertView'
      core.dependency  'MJRefresh'
      core.dependency  'SnapKit'
      core.dependency  'Kingfisher'
  end
  
  s.subspec 'ImgPicker' do |pick|
      pick.source_files       = 'HLToolKit-Swift/ImagePicker/**/*.swift' , ''
      pick.resource = 'HLToolKit-Swift/ImagePicker/Resources/*'
      pick.dependency 'SVProgressHUD'
      pick.dependency 'Imaginary' ,'~> 4.0'
      pick.dependency 'Cache' ,'~> 5.0'
      pick.frameworks = 'UIKit', 'Foundation', 'AVFoundation', 'Photos', 'PhotosUI', 'CoreLocation', 'AVKit'
  end

end
