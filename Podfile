# Uncomment the next line to define a global platform for your project
platform :ios, '13.1.0'

target 'FoodTaskerMobile' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for FoodTaskerMobile

post_install do |installer|
    installer.pods_project.build_configurations.each do |config|
        config.build_settings.delete('CODE_SIGNING_ALLOWED')
        config.build_settings.delete('CODE_SIGNING_REQUIRED')
    end
end

  pod 'Stripe'
  pod 'FBSDKCoreKit'
  pod 'FBSDKLoginKit'
  pod 'FBSDKShareKit'
  pod 'Alamofire', :git => 'https://github.com/Alamofire/Alamofire.git'
  pod 'SwiftyJSON', :git => 'https://github.com/SwiftyJSON/SwiftyJSON.git'

  target 'FoodTaskerMobileTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'FoodTaskerMobileUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
