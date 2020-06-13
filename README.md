[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/SpaceLogger.svg)](https://img.shields.io/cocoapods/v/SpaceLogger.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

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

log.info("Some useful info")
log.debug("Some info to debug")
```

## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate SpaceLogger into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'SpaceLogger'
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks. To integrate SpaceLogger into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "DmitriiChikovinskii/SpaceLogger"
```