# 指定工作空间
workspace 'mly-stream-sdk.xcworkspace'


project 'swift-demo'


target 'swift-demo' do 
use_frameworks!
platform :ios, '14.0'
project 'Examples/swift-demo/swift-demo.xcodeproj'

pod 'MLYSDK',:git => 'https://github.com/mlytics/mly-stream-sdk-ios-avplayer.git' 
pod 'SnapKit', '~> 5.6.0'
end



target 'objective-c-demo' do 
use_frameworks!
platform :ios, '14.0'
project 'Examples/objective-c-demo/objective-c-demo.xcodeproj'

pod 'MLYSDK',:git => 'https://github.com/mlytics/mly-stream-sdk-ios-avplayer.git'
end

post_install do |installer|
        installer.pods_project.targets.each do |target|
          target.build_configurations.each do |config|
            config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
          end
        end
      end
