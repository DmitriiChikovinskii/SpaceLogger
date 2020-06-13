//
//  SpaceLogger.swift
//  SpaceLogger
//
//  Created by Dmitrii Space on 13.06.2020.
//  Copyright © 2020 Dmitrii Chikovinskii. All rights reserved.
//

public struct SpaceLogger: Logger {
    private let destinations: [LoggerDestination]

    public init(destinations: [LoggerDestination]) {
        self.destinations = destinations
    }

    public func info(_ message: @autoclosure () -> Any, buildLevel: LogBuildLevel, _ file: String, _ function: String, _ line: Int) {
        self.log(level: .info, buildLevel: buildLevel, message: message(), file: file, function: function, line: line)
    }

    public func debug(_ message: @autoclosure () -> Any, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        self.log(level: .debug, buildLevel: .debug, message: message(), file: file, function: function, line: line)
    }

    public func error(_ message: @autoclosure () -> Any, buildLevel: LogBuildLevel, _ file: String, _ function: String, _ line: Int) {
        self.log(level: .error, buildLevel: buildLevel, message: message(), file: file, function: function, line: line)
    }

    public func critical(_ message: @autoclosure () -> Any, buildLevel: LogBuildLevel, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        #if DEBUG
        assertionFailure("\(message())")
        #endif
        self.log(level: .critical, buildLevel: buildLevel, message: message(), file: file, function: function, line: line)
    }

    private func log(level: LogLevelPriority, buildLevel: LogBuildLevel, message: @autoclosure () -> Any, file: String, function: String, line: Int) {
        let destinations = self.destinations.filter {
            $0.buildLevel == .debug || $0.buildLevel == buildLevel
        }
        if destinations.isEmpty { return }
        let result = self.makeMessage(level: level, message: message(), file: file, function: function, line: line)
        destinations.forEach { $0.log(result) }
    }

    private func makeMessage(level: LogLevelPriority, message: @autoclosure () -> Any, file: String, function: String, line: Int) -> String {
        let fileUrl = URL(string: file)
        let result: String = "\(level.prefix) [\(fileUrl?.lastPathComponent ?? "") \(function): \(line)] \(message())"
        return result
    }
}
