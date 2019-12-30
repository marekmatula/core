Pod::Spec.new do |spec|
  spec.name         = 'vaporcore'
  spec.version      = '3.9.0'
  spec.license      = 'MIT'
  spec.homepage     = 'https://github.com/vapor/core'
  spec.authors      = { 'Vapor' => 'contact@vapor.codes' }
  spec.summary      = 'mulptipart'
  spec.source       = { :git => "#{spec.homepage}.git", :tag => "#{spec.version}" }
  spec.ios.deployment_target = "10.0"
  spec.osx.deployment_target = "10.10"
  spec.watchos.deployment_target = "2.0"
  spec.tvos.deployment_target = "9.0"
  spec.requires_arc = true
  spec.social_media_url = 'https://twitter.com/codevapor'
  spec.default_subspec = "Core"

  spec.subspec "Core" do |ss|
    ss.source_files = 'Sources/Core/*.swift'
    #ss.source_files = 'Sources/**/*.{swift}'
    #ss.dependency 'VaporCoreBits', '~> 3'
    # ss.dependency 'VaporCore', '~> 3'
    ss.dependency 'SwiftNIO', '~> 2.2'
  end

  spec.subspec "Debugging" do |dbg|
    dbg.source_files = 'Sources/Debugging/*.swift'
    # dbg.dependency 'VaporCore', '~> 3'
  end

  spec.subspec "Bits" do |bits|
    bits.source_files = 'Sources/Bits/*.swift'
    # ss.dependency 'VaporCore', '~> 3'
  end

  spec.subspec "COperatingSystem" do |cos|
    cos.source_files = 'Sources/Bits/*.swift'
    # ss.dependency 'VaporCore', '~> 3'
  end



  spec.subspec "libc" do |ss|
    ss.source_files = 'Sources/libc/**/*.{swift}'
  end

end
