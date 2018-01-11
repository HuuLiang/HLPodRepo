Pod::Spec.new do |s|
s.name             = 'HLTPLKit'
s.version          = '0.1.1'
s.summary          = 'Include third part sdks, like AlipaySDk,WechatOpenAPI,TencentOpenAPI,etc!'

s.description      = <<-DESC
TODO: Add long description of the pod here.
DESC

s.homepage         = 'https://github.com/HuuLiang/HLTPLKit'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'HuLiang' => 'Liangola@qq.com' }
s.source           = { :git => 'https://github.com/HuuLiang/HLTPLKit.git', :tag => s.version.to_s }
s.ios.deployment_target = '8.0'

s.subspec 'Alipay' do |alipay|
alipay.vendored_frameworks = 'HLTPLKit/AlipaySDK/AlipaySDK.framework'
alipay.resource            = 'HLTPLKit/AlipaySDK/AlipaySDK.bundle'
alipay.frameworks          = 'SystemConfiguration','CoreTelephony','QuartzCore','CoreText','CoreGraphics','UIKit','Foundation','CFNetwork','CoreMotion'
alipay.libraries           = 'c++','z'
end

s.subspec 'Tencent' do |tencent|
tencent.vendored_frameworks = 'HLTPLKit/TencentOpenAPI/TencentOpenAPI.framework'
tencent.resource            = 'HLTPLKit/TencentOpenAPI/TencentOpenApi_IOS_Bundle.bundle'
tencent.frameworks          = 'Security','SystemConfiguration','CoreGraphics','CoreTelephony'
tencent.libraries           = 'sqlite3','iconv','stdc++','z'
end

s.subspec 'Wechat' do |wechat|
wechat.dependency 'WechatOpenSDK'
end

end

