Pod::Spec.new do |s|
  s.name         = "TFCamera"
  s.version      = "0.0.4"
  s.summary      = "时光流影iOS相机框架"
  s.homepage     = "https://github.com/TimeFaceCoder/TFCamera"
  s.license      = "Copyright (C) 2015 TimeFace, Inc.  All rights reserved."
  s.author             = { "Melvin" => "yangmin@timeface.cn" }
  s.social_media_url   = "http://www.timeface.cn"
<<<<<<< HEAD
  s.ios.deployment_target = "7.1"
  s.source       = { :git => "/Item/Project/OpenSourceCode/TFCamera"}
=======
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/TimeFaceCoder/TFCamera.git"}
>>>>>>> d352ae3876e1f90d7928480e05945185261b9571
  s.source_files  = "TFCamera/TFCamera/**/*.{h,m,c}"
  s.requires_arc = true
  s.dependency 'pop'
  s.dependency 'Masonry'
end
