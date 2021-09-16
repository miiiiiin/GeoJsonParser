#
# Be sure to run `pod lib lint GeoJsonParser.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GeoJsonParser'
  s.version          = '1.0.0'
  s.summary          = 'A short description of GeoJsonParser.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/miiiiiin/GeoJsonParser'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'miiiiiin' => 'min.songkyung@gmail.com' }
  s.source           = { :git => 'https://github.com/miiiiiin/GeoJsonParser.git', :tag => s.version.to_s }
  s.swift_versions = ['4.2', '5.0']
  s.platform       = :ios, "13.0"
  s.ios.deployment_target = '13.0'

  s.source_files = 'GeoJsonParser/Classes/**/*'
  s.frameworks = 'UIKit'
  s.static_framework = true
  s.dependency 'ObjectMapper'

  s.default_subspec = "Core"
  
  s.subspec "Core" do |ss|
    ss.source_files  = "GeoJsonParser/Classes/*.swift"
    ss.dependency "GoogleMaps"
    ss.dependency "ObjectMapper"
    ss.framework  = "Foundation"
  end

  # s.resource_bundles = {
  #   'GeoJsonParser' => ['GeoJsonParser/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
end
