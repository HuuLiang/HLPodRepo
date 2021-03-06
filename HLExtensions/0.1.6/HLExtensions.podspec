Pod::Spec.new do |s|
  s.name             = 'HLExtensions'
  s.version          = '0.1.6'
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
    hud.dependency 'SIAlertView', '~> 1.3'
    hud.dependency 'BlocksKit', '~> 2.2.5'
    hud.dependency 'HLExtensions/Core'
  end

  s.subspec 'Network' do |net|
    net.source_files        = 'HLExtensions/Network/*.{h,m}'
    net.dependency 'AFNetworking', '~> 3.1.0'
    net.dependency 'HLExtensions/Core'
  end

  s.subspec 'Data' do |data|
    data.source_files        = 'HLExtensions/Data/*.{h,m}'
    data.dependency 'FMDB', '~> 2.7.2'
    data.dependency 'HLExtensions/Core'
  end

end
