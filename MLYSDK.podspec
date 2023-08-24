 
Pod::Spec.new do |s|
  s.name                    = 'MLYSDK'
  s.version                 = '0.1.36'
  s.summary                 = 'MLYSDK'
  s.description             = 'MLYSDK'                     
  s.homepage                = 'https://github.com/mlytics/mly-stream-sdk-avplayer' 
  s.license                 = { :type => 'MIT', :file => 'LICENSE' }
  s.author                  = { 'MLY' => 'rd@mlytics.com' }
  s.source                  = { :git => 'https://github.com/mlytics/mly-stream-sdk-avplayer.git', :tag => s.version.to_s }
  s.readme                  = "https://raw.githubusercontent.com/mlytics/mly-stream-sdk-avplayer/main/README.md"
  s.swift_version           = '5.0'
  s.ios.deployment_target   = '14.0'
  s.ios.vendored_frameworks = 'Archives/MLYSDK.xcframework'
  
  s.dependency 'Mux-Stats-AVPlayer', '3.1.0' 
 
  s.dependency 'GCDWebServer', '3.5.4'
  s.dependency 'Sentry', '7.31.3'
  s.dependency 'WebRTC-SDK', '=104.5112.16' 
  s.dependency 'SwiftCentrifuge', '0.5.5'
  s.dependency 'SwiftProtobuf', '1.21.0'
  
end
