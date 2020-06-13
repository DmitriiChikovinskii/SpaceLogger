//
//  LogLevelPriority.swift
//  SpaceLogger
//
//  Created by Dmitrii Space on 13.06.2020.
//  Copyright © 2020 Dmitrii Chikovinskii. All rights reserved.
//

enum LogLevelPriority: Int {
    case info = 1
    case debug
    case error
    case critical

    var prefix: String {
        switch self {
        case .info:
            return "[INFO] 🟢"
        case .debug:
            return "[DEBUG] 🔵"
        case .error:
            return  "[ERROR] 🔴"
        case .critical:
            return "[CRITICAL ERROR] ☠️☠️☠️"
        }
    }
}
