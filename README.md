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