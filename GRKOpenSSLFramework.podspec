Pod::Spec.new do |s|
  s.name         = "GRKOpenSSLFramework"
  s.module_name  = "openssl"
  s.version      = "1.0.2.#{("a".."z").to_a.index 'u'}.2"
  s.summary      = "OpenSSL for iOS and OS X"
  s.description  = "OpenSSL Framework binaries."
  s.homepage     = "https://github.com/levigroker/OpenSSL/"
  s.license	     = { :type => 'OpenSSL (OpenSSL/SSLeay)', :file => 'LICENSE.txt' }
  s.source       = { :git => "https://github.com/levigroker/GRKOpenSSLFramework.git", :tag => "#{s.version}" }
  s.authors       =  {'Levi Brown' => 'levigroker@gmail.com'}
  
  s.ios.pod_target_xcconfig = {'ENABLE_BITCODE' => 'YES' }
  s.osx.pod_target_xcconfig = {'ENABLE_BITCODE' => 'NO' }

  s.ios.deployment_target = '9.0'
  s.ios.vendored_frameworks = 'OpenSSL-iOS/bin/openssl.framework'

  s.osx.deployment_target = '10.8'
  s.osx.vendored_frameworks = 'OpenSSL-macOS/bin/openssl.framework'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
end
