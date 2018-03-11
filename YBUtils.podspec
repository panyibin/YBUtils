#
# Be sure to run `pod lib lint YBUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YBUtils'
  s.version          = '0.1.4'
  s.summary          = 'Provide supplement functions of iOS basic class.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Provide supplement functions of iOS basic class. Current it will support a NSTimer category, with block support for OS below iOS 10. As from iOS 10, Apple provide its own support. The method name is exactly the same as Apple's own one except for a prefix "yb_".
                       DESC

  s.homepage         = 'https://github.com/panyibin/YBUtils'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'panyibin' => 'panyibin@outlook.com' }
  s.source           = { :git => 'https://github.com/panyibin/YBUtils.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'YBUtils/Classes/**/*'
  
  # s.resource_bundles = {
  #   'YBUtils' => ['YBUtils/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
