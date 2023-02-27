# 指定工作空间
workspace 'mly-stream-sdk.xcworkspace'


project 'mlysdk_swift-example'


target 'mlysdk_swift-example' do 
use_frameworks!
platform :ios, '14.0'
project 'mlysdk_swift-example/mlysdk_swift-example.xcodeproj'

pod 'MLYSDK',:git => 'https://github.com/mlytics/mly-stream-sdk-avplayer.git'
pod 'SnapKit', '~> 5.6.0'
end



target 'mlysdk_objective_c-example' do 
use_frameworks!
platform :ios, '14.0'
project 'mlysdk_objective_c-example/mlysdk_objective_c-example.xcodeproj'

pod 'MLYSDK',:git => 'https://github.com/mlytics/mly-stream-sdk-avplayer.git'
end
