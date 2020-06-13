[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/SpaceLogger.svg)](https://img.shields.io/cocoapods/v/SpaceLogger.svg)

- [Usage](#usage)
- [Installation](#installation)

## Usage
```swift
let log = makeLogger(tag: "Common")

func makeLogger(tag: String) -> Logger {
    var destinations: [LoggerDestination] = []
    #if DEBUG
    destinations.append(OSLoggerDestination(tag: tag))
    #endif
    return SpaceLogger(destinations: destinations)
}

log.debug("sup?")
```

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate Alamofire into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'SpaceLogger'
```
