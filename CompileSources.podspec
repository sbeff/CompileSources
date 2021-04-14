Pod::Spec.new do |s|
  s.name = 'CompileSources'
  s.version = '0.1.0'
  s.summary = 'Test Pod.'

  s.homepage = 'https://github.com/sbeff/CompileSources'
  s.license = { :type => 'MIT' }
  s.author = { 'Emanuele Beffa' => 'emanuele.beffa@gmail.com' }
  s.source = { :git => 'https://github.com/sbeff/CompileSources.git', :tag => s.version.to_s }
  s.swift_version = '5.3'

  s.ios.deployment_target = '12.0'

#  s.resource_bundle = { 'RustSources' => 'hello_cocoapods' }

#  s.script_phase = { :name => 'Compile Rust binary', :script => '(cd hello_cocoapods && cargo lipo --release)', :execution_position => :before_compile }

  s.source_files = '**/*.{swift,h}'
  s.library = 'resolv'
  s.vendored_libraries = 'hello_cocoapods/target/universal/release/libhello_cocoapods.a'
end
