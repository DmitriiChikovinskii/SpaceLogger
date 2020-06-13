//
//  LoggerDestination.swift
//  SpaceLogger
//
//  Created by Dmitrii Space on 13.06.2020.
//  Copyright © 2020 Dmitrii Chikovinskii. All rights reserved.
//

import os

public protocol LoggerDestination {
    var buildLevel: LogBuildLevel { get }
    func log(_ message: String)
}

public final class OSLoggerDestination: LoggerDestination {
    private let osLog: OSLog

    public let buildLevel: LogBuildLevel = .debug

    public init(tag: String) {
        self.osLog = OSLog(subsystem: Bundle.main.object(forInfoDictionaryKey: "CFBundleIdentifier") as? String ?? "", category: tag)
    }

    public func log(_ message: String) {
        os_log("%@", log: self.osLog, "%{time_t}d – \(message)")
    }
}
