Pod::Spec.new do |s|
  s.name         = "DRImageHelpers"
  s.version      = "1.0.0"
  s.summary      = "UIImage manipulation helpers"
  s.homepage     = "https://github.com/darrarski/DRImageHelpers-iOS"
  s.license      = 'MIT'
  s.author       = { "Darrarski" => "darrarski@gmail.com" }
  s.source       = { :git => "https://github.com/darrarski/DRImageHelpers-iOS.git", :tag => "v1.0.0" }
  s.platform     = :ios
  s.source_files = 'DRImageHelpers'
  s.requires_arc = true
end
