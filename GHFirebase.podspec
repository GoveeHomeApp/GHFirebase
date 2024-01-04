Pod::Spec.new do |s|

  s.name         = 'GHFirebase'
  s.version      = '0.1.0'
  s.summary      = 'GHFirebase.'

  s.homepage     = 'git@github.com:GoveeHomeApp/GHFirebase.git'

  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author       = 'sy'

  s.ios.deployment_target = '13.0'

  s.swift_version = '5.0'

  s.source       = { :git => 'git@github.com:GoveeHomeApp/GHFirebase.git', :tag => s.version.to_s }

  s.source_files = 'GHFirebase/Classes/**/*'

  #- 此参数用于注册组件 -#
  #s.info_plist = { 'GHModular' => 'GHxxxxxxx.GHxxxxxModule' }

  #- 推荐这种 -#
  # s.resource_bundles = { 'GHFirebase' => ['GHFirebase/*.xcassets'] }

  # s.resources  = 'GHFirebase/**/*.{storyboard,xib}', 'GHFirebase/Assets/*'
  # s.resources = 'Resources/*.png'

  # s.preserve_paths = 'FilesToSave', 'MoreFilesToSave'

  # s.framework  = 'SomeFramework'
  # s.frameworks = 'SomeFramework', 'AnotherFramework'

  # s.library   = 'iconv'
  # s.libraries = 'iconv', 'xml2'

  # s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  # s.dependency 'AFNetworking'

end