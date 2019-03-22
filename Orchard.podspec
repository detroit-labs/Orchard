Pod::Spec.new do |spec|

  spec.name         = "Orchard"
  spec.version      = "0.0.1"
  spec.summary      = "Device identification for iOS, watchOS, and tvOS."

  spec.description  = <<-DESC
Orchard is a library to identify the device your code is running on. For iOS,
watchOS, and tvOS, you use Orchard to identify the exact model of device and
make decisions based on that.
                   DESC

  spec.homepage     = "http://github.com/SlaunchaMan/Orchard"

  spec.license      = "MIT"

  spec.author             = { "Jeff Kelley" => "SlaunchaMan@gmail.com" }
  spec.social_media_url   = "https://twitter.com/SlaunchaMan"

  spec.ios.deployment_target     = "8.0"
  spec.watchos.deployment_target = "2.0"
  spec.tvos.deployment_target    = "9.0"

  spec.source = { :git => "https://github.com/SlaunchaMan/Orchard.git",
                  :tag => "#{spec.version}" }

  spec.ios.frameworks     = 'Foundation', 'UIKit'
  spec.watchos.frameworks = 'Foundation', 'WatchKit'
  spec.tvos.frameworks    = 'Foundation', 'UIKit'

  spec.subspec 'Swift' do |ss|
    ss.swift_version = "4.2"
    ss.source_files = 'Orchard-Swift/*.swift'
  end

  spec.subspec 'ObjC' do |ss|
    ss.source_files = 'Orchard-ObjC/**/*.{h,m}'
    ss.public_header_files = 'Orchard-ObjC/*.h'
  end

  spec.default_subspec = 'Swift'

end
