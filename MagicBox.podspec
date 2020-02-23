Pod::Spec.new do |spec|

  spec.name         = "MagicBox"
  spec.version      = "0.0.5"
  spec.summary      = "swift开发常用工具"
  spec.description  = "swift开发始于2020年2月18日"
  spec.homepage     = "https://github.com/csh781500578/MagicBox.git"
  spec.license      = "MIT"
  spec.author       = { "hanrychen" => "781500578@qq.com" }
  spec.platform     = :ios, "10.0"
  spec.source       = { :git => "https://github.com/csh781500578/MagicBox.git", :tag => spec.version }
  spec.swift_version = '5.0'
  spec.source_files  = "Tools", "Tools/**/*.{swift,h,m,c}"
  spec.exclude_files = "Tools/Exclude"
  spec.requires_arc  = true
end
