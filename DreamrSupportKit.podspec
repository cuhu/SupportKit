#
# Be sure to run `pod lib lint SupportKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'DreamrSupportKit'
s.version          = '1.0.0'
s.summary          = 'A customer feedback framework'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = <<-DESC
    SupportKit is a framework designed to provide an easy to use customer feedback feature.
DESC

s.homepage         = 'https://github.com/dreamr-uk/SupportKit.git'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Nathan Dane' => 'nd@dreamr.uk' }
s.source           = { :git => 'https://github.com/dreamr-uk/SupportKit.git', :tag => s.version.to_s }
s.social_media_url = 'https://twitter.com/dreamr'

s.ios.deployment_target = '9.0'

s.source_files = 'SupportKit/SupportKit/**/*'

# s.resources = ['DreamrSupportKit/Media.xcassets']

# s.resource_bundles = {
#   'DreamrSupportKit' => ['DreamrSupportKit/Assets/*.png']
# }

# s.public_header_files = 'Pod/Classes/**/*.h'
s.frameworks = 'UIKit', 'MessageUI'
# s.dependency 'AFNetworking', '~> 2.3'
end
