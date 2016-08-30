Pod::Spec.new do |s|
  s.name         = "TFCamera"
  s.version      = "0.0.4"
  s.summary      = "时光流影iOS相机框架"
  s.homepage     = "https://github.com/TimeFaceCoder/TFCamera"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Melvin" => "yangmin@timeface.cn" }
  s.social_media_url   = "http://www.timeface.cn"
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/TimeFaceCoder/TFCamera.git", :tag => "0.0.4" }
  s.source_files  = "TFCamera/TFCamera/**/*.{h,m,c}"
  s.requires_arc = true
  s.dependency 'pop'
  s.dependency 'Masonry'
end
