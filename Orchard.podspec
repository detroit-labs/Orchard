Pod::Spec.new do |s|
  s.name         = "Orchard"
  s.version      = "0.0.1"
  s.summary      = "A library to identify iOS devices."

  s.description  = <<-DESC
Orchard is a library for identifying iOS devices and displaying their marketing names.
                   DESC

  s.homepage     = "http://EXAMPLE/Orchard"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Jeff Kelley" => "SlaunchaMan@gmail.com" }
  s.social_media_url   = "https://twitter.com/SlaunchaMan"

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/SlaunchaMan/Orchard.git", :tag => "#{s.version}" }

  s.default_subspec = 'Swift'

  s.subspec 'Swift' do |ss|
    ss.source_files = "Orchard/*.swift"
  end

  s.subspec 'Objective-C' do |ss|
    ss.source_files = "Orchard/*.{h,m}"
    ss.public_header_files = "Orchard/Orchard*.h"
  end

end
