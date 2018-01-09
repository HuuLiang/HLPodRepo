Pod::Spec.new do |s|
s.name             = 'HLPodLibrary'
s.version          = '0.1.0'
s.summary          = 'A podSpec for learning'

s.description      = <<-DESC
                    使用请注明来源！谢谢合作 -_-！
                    DESC

s.homepage         = 'https://github.com/HuuLiang/HLPodLibrary'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'HuLiang' => 'Lingola@qq.com' }
s.source           = { :git => 'https://github.com/HuuLiang/HLPodLibrary.git', :tag => '0.1.0' }
s.ios.deployment_target = '8.0'
s.requires_arc = true

# s.source_files = 'HLPodLibrary/Classes/**/*'
# s.resource_bundles = { 'HLPodLibrary' => ['HLPodLibrary/Assets/*.png'] }
# s.public_header_files = 'Pod/Classes/**/*.h'
# s.dependency 'MJRefresh'
# s.dependency 'Aspects', '~> 1.4.1'

s.subspec 'HLExtensions' do |extension|
extension.source_files = 'HLPodLibrary/Classes/HLExtensions/**/*'
extension.public_header_files = 'HLPodLibrary/Classes/HLExtensions/**/*.h'
extension.dependency 'MJRefresh'
extension.dependency 'Aspects', '~> 1.4.1'
end

end

