
Pod::Spec.new do |s|
  s.name = 'CompileSources'
  s.version = '0.1.0'
  s.summary = 'Test Pod.'

  s.homepage = 'https://github.com/sbeff/CompileSources'
  s.license = { :type => 'MIT' }
  s.author = { 'Emanuele Beffa' => 'emanuele.beffa@gmail.com' }
  s.source = { :git => 'https://github.com/sbeff/CompileSources.git', :tag => s.version.to_s }
  s.swift_version = '5.3'

#   s.library = 'resolv'

  s.vendored_libraries = 'libHello_cocoapods.a'

  s.ios.deployment_target = '12.0'

#  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(PODS_ROOT)", "LIBRARY_SEARCH_PATHS" => "$(PODS_ROOT)" }

  s.source_files = '**/*.{swift,h}'

end
