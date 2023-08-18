Pod::Spec.new do |s|
  s.name             = 'MLYAVPlayer'
  s.version          = '0.1.0'
  s.summary          = 'A short description of MLYAVPlayer.'
  s.description      = 'MLYAVPlayer'
  s.homepage         = 'https://github.com/mlytics/p2sp-sdk-ios-avplayer'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MLY' => 'rd@mlytics.com' }
  s.source           = { :git => 'https://github.com/mlytics/mly-stream-sdk-avplayer.git', :tag => s.version.to_s }
  s.readme           = "https://raw.githubusercontent.com/mlytics/mly-stream-sdk-avplayer/main/README.md"
  s.swift_version    = '5.0'
  s.ios.deployment_target = '14.0'
  s.ios.vendored_frameworks = 'Archives/MLYAVPlayer.xcframework'
  
  s.dependency 'Mux-Stats-AVPlayer', '3.1.0'
  s.dependency 'MLYSDK'
end
