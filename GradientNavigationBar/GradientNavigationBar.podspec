Pod::Spec.new do |s|
  s.name             = 'GradientNavigationBar'
  s.version          = '0.1.0'
  s.summary          = 'iOS navigation bar with a gradient background.'

  s.description      = <<-DESC
iOS navigation bar with a gradient background. Inspired by: https://cocoapods.org/pods/CRGradientNavigationBar
                       DESC

  s.homepage         = 'https://github.com/BellAppLab/GradientNavigationBar'
  s.screenshots     = 'https://github.com/BellAppLab/GradientNavigationBar/blob/master/screenshot.png?raw=true'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Bell App Lab' => 'apps@bellapplab.com' }
  s.source           = { :git => 'https://github.com/BellAppLab/GradientNavigationBar.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/BellAppLab'

  s.ios.deployment_target = '8.0'

  s.source_files = 'GradientNavigationBar/Classes/**/*'

  s.frameworks = 'UIKit'
end
