Pod::Spec.new do |spec|

  spec.name         = "YJBaseSDK"
  spec.version      = "0.0.1"
  spec.summary      = "OC项目基础组件"
  spec.description  = <<-DESC
  OC项目常用基类、扩展、组件
                   DESC
  spec.homepage     = "https://github.com/tan5460"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "TYJ" => "313037101@qq.com" }
  spec.source       = { :git => "https://github.com/tan5460/YJBaseSDK.git", :tag => "#{spec.version}" }
  
  spec.ios.deployment_target = '9.0'
  spec.source_files = 'YJBaseSDK/Classes/**/*'
  spec.resource_bundles = {
      'YJBaseSDK' => ['YJBaseSDK/Assets/**/*']
  }
  
  spec.dependency 'HBDNavigationBar'
  spec.dependency 'YJBaseSDK_Extension'
  
end
