Pod::Spec.new do |s|
  s.name     = 'NSRemoteLog'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = 'A short description of NSRemoteLog.'
  s.homepage = 'http://github.com/gscalzo/NSRemoteLog'
  s.author   = { 'Giordano Scalzo' => 'giordano.scalzo@gmail.com' }

  s.source   = { :git => 'http://EXAMPLE/NSRemoteLog.git', :tag => '0.0.1' }
  s.description = 'A remote NSLog library.'

  s.platform = :ios

  s.source_files = 'Classes', 'Classes/**/*.{h,m}'
  s.requires_arc = true
  s.dependency 'AFNetworking', '~>0.9.2'
end
