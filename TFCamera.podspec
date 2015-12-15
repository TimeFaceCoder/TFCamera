Pod::Spec.new do |s|
  s.name         = "TFCamera"
  s.version      = "0.0.1"
  s.summary      = "时光流影iOS相机框架"
  s.homepage     = "https://github.com/TimeFaceCoder/TFCamera"
  s.license      = "Copyright (C) 2015 TimeFace, Inc.  All rights reserved."
  s.author             = { "Melvin" => "yangmin@timeface.cn" }
  s.social_media_url   = "http://www.timeface.cn"
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/TimeFaceCoder/TFCamera.git"}
  s.source_files  = "TFCamera/**/*.{h,m,c}"
  s.requires_arc = true
  s.dependency 'pop'
  s.dependency 'GPUImage'
  s.dependency 'Masonry'
  s.dependency 'AsyncDisplayKit'
end
