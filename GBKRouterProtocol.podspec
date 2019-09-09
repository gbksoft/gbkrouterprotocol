Pod::Spec.new do |spec|

  spec.name          = "GBKRouterProtocol"
  spec.version       = "0.1"
  spec.summary       = "Logic for Router in application."
  spec.license       = 'MIT'
  spec.homepage      = "https://gbksoft.com/"
  spec.author        = "Andrii Zakhliupanyi"
  spec.platform      = :ios, "10.0"
  spec.swift_version = "5.0"
  spec.source        = { :git => "git@gitlab.gbksoft.net:gbksoft-mobile-department/ios/gbkrouterprotocol.git", :tag => "#{spec.version}" }
  spec.source_files   = "GBKRouterProtocol/GBKRouterProtocol/Source/*.swift"

end
