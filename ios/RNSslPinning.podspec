require 'json'

package = JSON.parse(File.read(File.join(__dir__, '../package.json')))

Pod::Spec.new do |s|
  s.name         = "RNSslPinning"
  s.version      = package['version']
  s.summary      = package['description']

  s.homepage     = package['homepage']
  s.license      = package['license']
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/MaxToyberman/react-native-ssl-pinning", :tag => "master" }
  s.source_files  = "RNSslPinning/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "AFNetworking", "~> 4.0"
  #dependant on Adza93 fork due to implementation of PubliKeyPinning on iOS:AFNetworking
  #add pod 'AFNetworking', :git => 'https://github.com/Adza93/AFNetworking.git', :branch => 'master' to Podfile of your iOS project
end
