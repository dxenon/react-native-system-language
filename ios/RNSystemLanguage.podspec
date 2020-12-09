
Pod::Spec.new do |s|
  s.name         = "RNSystemLanguage"
  s.version      = "1.0.0"
  s.summary      = "RNSystemLanguage"
  s.description  = <<-DESC
                  RNSystemLanguage
                   DESC
  s.homepage     = "https://github.com/patrickgalbraith/react-native-system-language"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNSystemLanguage.git", :tag => "master" }
  s.source_files  = "RNSystemLanguage/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  
