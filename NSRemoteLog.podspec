Pod::Spec.new do |s|
  s.name     = 'NSRemoteLog'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = 'Remote NSLogging.'
  s.homepage = 'https://github.com/gscalzo/NSRemoteLog'
  s.author   = { 'Giordano Scalzo' => 'giordano.scalzo@gmail.com' }

  s.source   = { :git => 'https://gscalzo/NSRemoteLog/NSRemoteLog.git', :tag => '0.0.1' }
  s.source_files = 'NSRemoteLog'
  s.description = 'The client part to have a remote NSLog library.'

  s.platform = :ios
  s.requires_arc = true
  s.dependency 'AFNetworking', '~>0.9.2'
end
