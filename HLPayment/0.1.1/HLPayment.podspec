Pod::Spec.new do |s|
  s.name             = 'HLPayment'
  s.version          = '0.1.1'
  s.summary          = 'Include payment modules'

  s.description      = <<-DESC
封装了支付宝和微信的原生支付，预留了未来可能的其他支付方式的接口，集成了自定义的订单管理模块
                       DESC

  s.homepage         = 'https://git.coding.net/Liang-_-/HLPayment.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HuLiang' => 'Liangola@qq.com' }
  s.source           = { :git => 'https://git.coding.net/Liang-_-/HLPayment.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'

  s.dependency 'AFNetworking'
  s.dependency 'XMLDictionary'
  s.dependency 'MBProgressHUD'
  s.dependency 'OpenSSL'
  s.dependency 'HLExtensions/Core'

  s.subspec 'Core' do |core|
    core.source_files   = 'HLPayment/Core/**/*.{h,m}'
  end

  s.subspec 'Alipay' do |alipay|
    alipay.source_files   = 'HLPayment/Plugin/Alipay/**/*.{h,m}'
    alipay.dependency 'HLPayment/Core'
    alipay.dependency 'HLTPLKit/Alipay'
    alipay.dependency 'OpenSSL'
  end

  s.subspec 'WechatPay' do |wechatPay|
    wechatPay.source_files   = 'HLPayment/Plugin/WechatPay/**/*.{h,m}'
    wechatPay.dependency 'HLPayment/Core'
    wechatPay.dependency 'HLTPLKit/Wechat'
  end
end
