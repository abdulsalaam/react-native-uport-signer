
Pod::Spec.new do |s|
  s.name         = "RNUportSigner"
  s.version      = "1.3.1"
  s.summary      = "RNUportSigner"
  s.description  = <<-DESC
                  RNUportSigner
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNUportSigner.git", :tag => "master" }
  s.source_files  = "RNUportSigner/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "UPTEThereumSigner"
  #s.dependency "others"

end

  