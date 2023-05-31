#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint heraldui.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'heraldui'
  s.version          = '2.2.0'
  s.summary          = 'Flutter iOS library for the Herald proximity project'
  s.description      = <<-DESC
User Interface elements and Flutter bindings for the Herald project.
                       DESC
  s.homepage         = 'https://heraldprox.io'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Adam Fowler' => 'adam@adamfowler.org' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  s.ios.dependency 'Herald', '~> 2.2.0'
end
