
Pod::Spec.new do |s|

  s.name         = "HStartSelectView"
  s.version      = "0.0.1"
  s.summary      = "评分选择"
  s.description  = "yyh 评分选择"

  s.homepage     = "https://github.com/YohannYYH/HStartSelectView"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author    = "YohannYYH"

  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/YohannYYH/HStartSelectView.git", :tag => "#{s.version}" }
  s.source_files  = "HStartSelectView/*.{h,m}"
end
