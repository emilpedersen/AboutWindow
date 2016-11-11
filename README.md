# AboutWindow

[![CI Status](http://img.shields.io/travis/Emil Pedersen/AboutWindow.svg?style=flat)](https://travis-ci.org/Emil Pedersen/AboutWindow)
[![Version](https://img.shields.io/cocoapods/v/AboutWindow.svg?style=flat)](http://cocoapods.org/pods/AboutWindow)
[![License](https://img.shields.io/cocoapods/l/AboutWindow.svg?style=flat)](http://cocoapods.org/pods/AboutWindow)
[![Platform](https://img.shields.io/cocoapods/p/AboutWindow.svg?style=flat)](http://cocoapods.org/pods/AboutWindow)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

Xcode 8 is required since it's written in Swift 3.

## Installation

AboutWindow is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "AboutWindow"
```

## How to use

Without website
```swift
About.shared.show()
```

With website
```swift
About.shared.show(website: URL(string:"http://www.ambisapp.com"))
```


## Author

Emil Pedersen, github@ambisapp.com

## License

AboutWindow is available under the MIT license. See the LICENSE file for more info.
