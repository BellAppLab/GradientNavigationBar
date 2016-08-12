# GradientNavigationBar

[![CI Status](http://img.shields.io/travis/Bell App Lab/GradientNavigationBar.svg?style=flat)](https://travis-ci.org/Bell App Lab/GradientNavigationBar)
[![Version](https://img.shields.io/cocoapods/v/GradientNavigationBar.svg?style=flat)](http://cocoapods.org/pods/GradientNavigationBar)
[![License](https://img.shields.io/cocoapods/l/GradientNavigationBar.svg?style=flat)](http://cocoapods.org/pods/GradientNavigationBar)
[![Platform](https://img.shields.io/cocoapods/p/GradientNavigationBar.svg?style=flat)](http://cocoapods.org/pods/GradientNavigationBar)

iOS navigation bar with a gradient background. Inspired by: [https://cocoapods.org/pods/CRGradientNavigationBar](https://cocoapods.org/pods/CRGradientNavigationBar)

## How to use

Configure the Gradient Navigation Bar's appearence:


```
GradientNavigationBar.appearance().colors = [UIColor.brownColor(), UIColor.blueColor()]
GradientNavigationBar.appearance().startPoint = CGPointZero
GradientNavigationBar.appearance().endPoint = CGPoint(x: 1, y: 1)
```

Instantiate your Navigation Controller with the `GradientNavigationBar` class:


```
let navController = UINavigationController(navigationBarClass: GradientNavigationBar.classForCoder(), toolbarClass: nil)
navController.viewControllers = [UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!]
```

Enjoy!

### Note

Interface builder support was supposed to be working, but isn't... We'll get there soon though. :)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

iOS 8.0+

## Installation

GradientNavigationBar is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "GradientNavigationBar"
```

## Author

Bell App Lab, apps@bellapplab.com

## License

GradientNavigationBar is available under the MIT license. See the LICENSE file for more info.
