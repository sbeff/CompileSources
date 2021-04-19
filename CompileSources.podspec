
Pod::Spec.new do |s|
  s.name = 'CompileSources'
  s.version = '0.1.0'
  s.summary = 'Test Pod.'

  s.homepage = 'https://github.com/sbeff/CompileSources'
  s.license = { :type => 'MIT' }
  s.author = { 'Emanuele Beffa' => 'emanuele.beffa@gmail.com' }
  s.source = { :git => 'https://github.com/sbeff/CompileSources.git', :tag => s.version.to_s }
  s.swift_version = '5.3'

  s.library = 'resolv'
  s.vendored_libraries = 'libHello_cocoapods.a'

  s.ios.deployment_target = '12.0'
#  s.resource_bundle = { 'MapBox' => 'hello_cocoapods' }
  s.resource = 'libHello_cocoapods.a'
#  s.script_phases = [
#    { :name => 'Compile Rust binary', :script => 'echo "---------------------------";printenv;(cd CompileSources/hello_cocoapods && cargo lipo --release);echo `pwd`;sleep 0s;(cd $PODS_TARGET_SRCROOT/hello_cocoapods && ~/.cargo/bin/cargo lipo --release -vv);echo "---------------------------";sleep 1s;ls -R ;sleep 0s;', :execution_position => :before_compile }
#  ]
  s.script_phases = [
    { :name => 'Compile Rust binary', :script => 'echo "---------------------------"echo `pwd`;sleep 0s;', :execution_position => :before_compile }
  ]
  s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(PODS_ROOT)", "LIBRARY_SEARCH_PATHS" => "$(PODS_ROOT)" }

  s.source_files = '**/*.{swift,h}'
end
