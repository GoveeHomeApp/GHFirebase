Pod::Spec.new do |s|

  s.name         = 'GHFirebase'
  s.version      = '0.0.2'
  s.summary      = 'GHFirebase.'

  s.homepage     = 'git@github.com:GoveeHomeApp/GHFirebase.git'

  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author       = 'sy'

  s.ios.deployment_target = '13.0'
  
  s.watchos.deployment_target = '7.0'
  
  s.swift_version = '5.0'

  s.source       = { :git => 'git@github.com:GoveeHomeApp/GHFirebase.git', :tag => s.version.to_s }

  s.source_files = 'GHFirebase/Classes/**/*'

  #- 此参数用于注册组件 -#
  #s.info_plist = { 'GHModular' => 'GHxxxxxxx.GHxxxxxModule' }

  #- 推荐这种 -#
  # s.resource_bundles = { 'GHFirebase' => ['GHFirebase/*.xcassets'] }
  
  s.dependency 'Firebase/AnalyticsWithoutAdIdSupport'
  s.dependency 'Firebase/Crashlytics'
  s.dependency 'Firebase/Performance'
  s.dependency 'Bugly'

end
