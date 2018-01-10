Pod::Spec.new do |s|
  s.name             = 'HLExtensions'
  s.version          = '0.1.2'
  s.summary          = 'Include common tools'

  s.description      = <<-DESC
                      HLExtensions use for other HuLiang's podspec，please indicate source when use!
                       DESC

  s.homepage         = 'https://github.com/HuuLiang/HLExtensions'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HuLiang' => 'Lingola@qq.com' }
  s.source           = { :git => 'https://github.com/HuuLiang/HLExtensions.git', :tag => "0.1.2" }
  s.ios.deployment_target = '8.0'

  # s.default_subspec = 'Core'

  # s.source_files = 'HLExtensions/Classes/Core/**/*'
  # s.resource_bundles = { 'HLExtensions' => ['HLExtensions/Assets/*.png'] }
  # s.public_header_files = 'HLExtensions/Classes/Core/**/*.h'
  # s.dependency 'Aspects', '~> 1.4.1'

  s.subspec 'Core' do |core|
    core.source_files           = 'HLExtensions/Classes/Core/**/*'
    core.public_header_files    = 'HLExtensions/Classes/Core/**/*.h'
    core.dependency 'Aspects', '~> 1.4.1'
  end

  s.subspec 'Refresh' do |refresh|
    refresh.source_files        = 'HLExtensions/Classes/Refresh/**/*'
    refresh.public_header_files = 'HLExtensions/Classes/Refresh/**/*.h'
    refresh.dependency 'MJRefresh'
    refresh.dependency 'HLExtensions/Core'
  end

end
