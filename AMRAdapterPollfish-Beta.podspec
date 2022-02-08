Pod::Spec.new do |s|
  s.name             = 'AMRAdapterPollfish-Beta'
  s.version          = '6.2.3.1'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited. 
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Pollfish adapter for AMR SDK.'
  s.description      = 'AMR Pollfish adapter allows publishers to mediate Pollfish offerwall ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-POLLFISH.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '9.0'
  s.vendored_frameworks = 'AMRAdapterPollfish/Libs/AMRAdapterPollfish.xcframework'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
  s.dependency 'Pollfish', '6.2.3'
  s.dependency 'AMRSDK-Beta', '~> 1.5.6'
end
