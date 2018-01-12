Pod::Spec.new do |s|
  s.name             = 'HLSNSKit'
  s.version          = '0.1.0'
  s.summary          = 'For HLSNSKit'

  s.description      = <<-DESC
                      HLSNSKit use for other HuLiang's podspec，please indicate source when use!
                       DESC

  s.homepage         = 'https://github.com/HuuLiang/HLSNSKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HuLiang' => 'Lingola@qq.com' }
  s.source           = { :git => 'https://github.com/HuuLiang/HLSNSKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  # s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files           = 'HLSNSKit/Core/*'
    core.public_header_files    = 'HLSNSKit/Core/*.h'
    core.dependency 'HLExtensions/Core'
  end
  
  s.subspec 'QQ' do |qq|
    qq.source_files             = 'HLSNSKit/QQ/*'
    qq.public_header_files      = 'HLSNSKit/QQ/*.h'
    qq.dependency 'HLTPLKit/Tencent'
    qq.dependency 'HLSNSKit/Core'
  end

  s.subspec 'Wechat' do |wechat|
    wechat.source_files         = 'HLSNSKit/Wechat/*'
    wechat.public_header_files  = 'HLSNSKit/Wechat/*.h'
    wechat.dependency 'AFNetworking'
    wechat.dependency 'HLTPLKit/Wechat'
    wechat.dependency 'HLSNSKit/Core'
  end

end
