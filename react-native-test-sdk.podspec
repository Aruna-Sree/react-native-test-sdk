require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = 'react-native-test-sdk'
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = package['homepage']
  s.source         = { git: 'https://github.com/Aruna-Sree/react-native-test-sdk', tag: s.version }

  s.requires_arc   = true
  s.platform       = :ios, '8.0'
  s.ios.deployment_target = '8.0'

  s.preserve_paths = 'LICENSE', 'README.md', 'package.json', 'index.js'
  s.source_files   = 'ios/*.{h,m}'
  s.source_files = 'ios/*.{h,m}','ios/CAMobileAppAnalytics/*.h'
  s.public_header_files = 'ios/CAMobileAppAnalytics/*.h'
  s.resources = 'ios/CAMobileAppAnalytics/*.js'
  s.vendored_libraries = 'ios/CAMobileAppAnalytics/*.a'
  
  s.libraries = 'c++', 'z', 'sqlite3'
  s.frameworks = 'CoreLocation', 'SystemConfiguration', 'Foundation', 'UIKit', 'CoreGraphics', 'Security', 'CoreTelephony', 'WebKit', 'WatchConnectivity'

  s.dependency 'React'
  # s.dependency 'CAMobileAppAnalytics'
end
