//
//  Logger.swift
//  SpaceLogger
//
//  Created by Dmitrii Space on 13.06.2020.
//  Copyright © 2020 Dmitrii Chikovinskii. All rights reserved.
//

public protocol Logger {
    func info(_ message: @autoclosure () -> Any, buildLevel: LogBuildLevel, _ file: String, _ function: String, _ line: Int)
    func debug(_ message: @autoclosure () -> Any, _ file: String, _ function: String, _ line: Int)
    func error(_ message: @autoclosure () -> Any, buildLevel: LogBuildLevel, _ file: String, _ function: String, _ line: Int)
    func critical(_ message: @autoclosure () -> Any, buildLevel: LogBuildLevel, _ file: String, _ function: String, _ line: Int)
}

public extension Logger {
    func info(_ message: @autoclosure () -> Any, buildLevel: LogBuildLevel = .debug, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        self.info(message(), buildLevel: buildLevel, file, function, line)
    }

    func debug(_ message: @autoclosure () -> Any, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        self.debug(message(), file, function, line)
    }

    func error(_ message: @autoclosure () -> Any, buildLevel: LogBuildLevel = .debug, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        self.error(message(), buildLevel: buildLevel, file, function, line)
    }

    func critical(_ message: @autoclosure () -> Any, buildLevel: LogBuildLevel = .debug, _ file: String = #file, _ function: String = #function, _ line: Int = #line) {
        self.critical(message(), buildLevel: buildLevel, file, function, line)
    }
}
