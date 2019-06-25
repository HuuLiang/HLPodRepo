Pod::Spec.new do |s|
    s.name             = 'HLExtensions'
    s.version          = '0.3.1'
    s.summary          = 'Include common tools'
    
    s.description      = <<-DESC
    HLExtensions use for other HuLiang's podspec，please indicate source when use!
    DESC
    
    s.homepage         = 'https://github.com/HuuLiang/HLExtensions'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'HuLiang' => 'Lingola@qq.com' }
    s.source           = { :git => 'https://github.com/HuuLiang/HLExtensions.git', :tag => s.version.to_s }
    s.ios.deployment_target = '8.0'
    
    s.subspec 'Core' do |core|
        core.source_files           = 'HLExtensions/Core/**/*.{h,m}'
        core.dependency 'Aspects', '~> 1.4.1'
        core.dependency 'BlocksKit', '~> 2.2.5'
        core.dependency 'OpenSSL-XM'
    end
    
    s.subspec 'Refresh' do |refresh|
        refresh.source_files        = 'HLExtensions/Refresh/*.{h,m}'
        refresh.dependency 'MJRefresh'
        refresh.dependency 'HLExtensions/Core'
    end
    
    s.subspec 'Hud' do |hud|
        hud.source_files        = 'HLExtensions/Hud/*.{h,m}'
        hud.dependency 'MBProgressHUD', '~> 1.1.0'
        hud.dependency 'SVProgressHUD', '~> 2.2.5'
        hud.dependency 'SCLAlertView-Objective-C', '~> 1.1.6'
        hud.dependency 'HLExtensions/Core'
    end
    
    s.subspec 'Network' do |net|
        net.source_files        = 'HLExtensions/Network/*.{h,m}'
        net.dependency 'AFNetworking', '~> 3.2.1'
        net.dependency 'HLExtensions/Core'
    end
    
    s.subspec 'Data' do |data|
        data.source_files        = 'HLExtensions/Data/*.{h,m}'
        data.dependency 'FMDB', '~> 2.7.5'
        data.dependency 'HLExtensions/Core'
    end
    
    s.subspec 'ImgPicker' do |pick|
        pick.source_files       = 'HLExtensions/ImagePicker/*.{h,m}'
        pick.dependency 'HLExtensions/Core'
        pick.dependency 'HLExtensions/Hud'
        #pick.dependency 'RSKImageCropper'
        pick.frameworks = 'CoreServices'
    end
    
end
