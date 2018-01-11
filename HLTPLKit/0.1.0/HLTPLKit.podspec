Pod::Spec.new do |s|
s.name             = 'HLTPLKit'
s.version          = '0.1.0'
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
# alipay.source_files        = 'HLTPLKit/AlipaySDK/**/*'
# alipay.preserve_paths      = '$(PODS_ROOT)/AlipaySDK/AlipaySDK.framework/AlipaySDK.a'
# alipay.vendored_libraries  = '$(PODS_ROOT)/AlipaySDK/AlipaySDK.framework/AlipaySDK.a'
alipay.vendored_frameworks = 'HLTPLKit/AlipaySDK/AlipaySDK.framework'
alipay.resource            = 'HLTPLKit/AlipaySDK/AlipaySDK.bundle'
alipay.frameworks          = 'CoreGraphics','Foundation','MobileCoreServices','CoreMotion','SystemConfiguration','QuartzCore','CoreTelephony','Security'
alipay.libraries           = 'z','c++','sqlite3.0','stdc++'
end

s.subspec 'Tencent' do |tencent|
# tencent.source_files        = 'HLTPLKit/TencentOpenAPI/**/*'
# tencent.preserve_paths      = 'HLTPLKit/TencentOpenAPI/**/*.a'
# tencent.vendored_libraries  = 'HLTPLKit/TencentOpenAPI/**/*.a'
tencent.vendored_frameworks = 'HLTPLKit/TencentOpenAPI/TencentOpenAPI.framework'
tencent.resource            = 'HLTPLKit/TencentOpenAPI/TencentOpenApi_IOS_Bundle.bundle'
tencent.frameworks          = 'CoreGraphics','Foundation','MobileCoreServices','CoreMotion','SystemConfiguration','QuartzCore','CoreTelephony','Security'
tencent.libraries           = 'z','c++','sqlite3.0','stdc++'
end

s.subspec 'Wechat' do |wechat|
wechat.dependency 'WechatOpenSDK'
end

end

