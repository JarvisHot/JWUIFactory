
Pod::Spec.new do |spec|

spec.name         = "JWUIFactory"
spec.version      = "1.0.1"
spec.summary      = "一款UI封装组件、链式调用"

spec.homepage     = "https://github.com/JarvisHot/JWUIFactory"

spec.license      = { :type => "MIT", :file => "LICENSE" }

spec.author             = { "jarvis🚴" => "objectclass@163.com" }


spec.source       = { :git => "https://github.com/JarvisHot/JWUIFactory.git", :tag => "1.0.1" }


spec.source_files  = "UIFactory", "JWUIFactory/UIFactory/*.{h,m}"
spec.ios.deployment_target = '8.0'
spec.requires_arc = true

end
