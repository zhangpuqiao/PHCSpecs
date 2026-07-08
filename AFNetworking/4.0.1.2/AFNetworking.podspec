Pod::Spec.new do |s|
  s.name     = 'AFNetworking'
  s.version  = '4.0.1.2'
  s.license  = { :type => 'MIT', :file => 'AFNetworking/LICENSE' }
  s.summary  = 'A delightful networking framework for Apple platforms.'
  s.homepage = 'https://github.com/AFNetworking/AFNetworking'
  s.social_media_url = 'https://twitter.com/AFNetworking'
  s.authors  = { 'Mattt Thompson' => 'm@mattt.me' }
  s.source   = { :git => 'git@github.com:zhangpuqiao/PHCNetWorking.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.ios.pod_target_xcconfig = { 'PRODUCT_BUNDLE_IDENTIFIER' => 'com.alamofire.AFNetworking' }

  s.source_files = 'AFNetworking/AFNetworking/AFNetworking.h'
  s.resource_bundles = {
    "AFNetworking" => 'AFNetworking/Resources/PrivacyInfo.xcprivacy'
  }

  s.subspec 'Serialization' do |ss|
    ss.source_files = 'AFNetworking/AFNetworking/AFURL{Request,Response}Serialization.{h,m}'
  end

  s.subspec 'Security' do |ss|
    ss.source_files = 'AFNetworking/AFNetworking/AFSecurityPolicy.{h,m}'
  end

  s.subspec 'Reachability' do |ss|
    ss.ios.deployment_target = '9.0'

    ss.source_files = 'AFNetworking/AFNetworking/AFNetworkReachabilityManager.{h,m}'
  end

  s.subspec 'NSURLSession' do |ss|
    ss.dependency 'AFNetworking/Serialization'
    ss.ios.dependency 'AFNetworking/Reachability'
    ss.dependency 'AFNetworking/Security'

    ss.source_files = 'AFNetworking/AFNetworking/AF{URL,HTTP}SessionManager.{h,m}', 'AFNetworking/AFNetworking/AFCompatibilityMacros.h'
  end

  s.subspec 'UIKit' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.dependency 'AFNetworking/NSURLSession'

    ss.source_files = 'AFNetworking/UIKit+AFNetworking'
  end
end
