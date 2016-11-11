#
# Be sure to run `pod lib lint AboutWindow.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AboutWindow'
  s.version          = '0.1.0'
  s.summary          = 'A short description of AboutWindow.'

  s.homepage         = 'https://github.com/emilpedersen/AboutWindow'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Emil Pedersen' => 'offonline@me.com' }
  s.source           = { :git => 'https://github.com/emilpedersen/AboutWindow.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.osx.deployment_target = '10.10'

  s.source_files	 = 'Source/*'
end
