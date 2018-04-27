Pod::Spec.new do |s|
  s.name             = 'HLShellModule'
  s.version          = '0.1.1'
  s.summary          = 'Modules for Shell'
  s.description      = <<-DESC
  我亲爱的小马甲们 为了更加美好的明天
                       DESC

  s.homepage         = 'https://git.coding.net/Liang-_-/HLShellModule.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HuLiang' => 'Liangola@qq.com' }
  s.source           = { :git => 'https://git.coding.net/Liang-_-/ShellModule.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'

  s.subspec 'Core' do |core|
    core.source_files = 'HLShellModule/Core/**/*.{h,m}'
    core.resources = ['HLShellModule/Assets/*.png', 'HLShellModule/Assets/AXWebViewController.bundle']
    core.dependency 'AFNetworking', '~> 3.1.0'
    core.dependency 'OpenSSL', '~> 1.0.210'
    core.dependency 'Masonry', '~> 1.1.0'
    core.dependency 'HLExtensions', '~> 0.1.7'
    core.dependency 'AXIndicatorView'
    core.dependency 'AXNavigationBackItemInjection'
    core.dependency 'AXPracticalHUD'
    core.dependency 'NJKWebViewProgress'
    core.dependency 'MLSOAppDelegate'
    core.dependency 'JPush'
    core.dependency 'AVOSCloud'
    core.dependency 'BmobSDK'
  end
    
end
