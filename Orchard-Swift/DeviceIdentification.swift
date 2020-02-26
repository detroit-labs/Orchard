//
//  DeviceIdentification.swift
//  Orchard
//
//  Created by Jeff Kelley on 7/17/18.
//

import Darwin
import Foundation

#if os(iOS) || os(tvOS)
import UIKit
#elseif os(watchOS)
import WatchKit
#endif

public enum DeviceIdentity: Equatable {
    
    #if os(iOS)
    case iPhone(iPhones)
    case iPad(iPads)
    case iPod(iPods)
    #elseif os(watchOS)
    case watch(Watches)
    #elseif os(tvOS)
    case tv(TVs)
    #endif
    
    case simulator
    case unknown

    public static func ==(lhs: DeviceIdentity, rhs: DeviceIdentity) -> Bool {
        switch (lhs, rhs) {
            #if os(iOS)
        case let (.iPhone(a), .iPhone(b)):
            return a == b

        case let (.iPad(a), .iPad(b)):
            return a == b

        case let (.iPod(a), .iPod(b)):
            return a == b
            #elseif os(watchOS)
        case let (.watch(a), .watch(b)):
            return a == b
            #elseif os(tvOS)
        case let (.tv(a), .tv(b)):
            return a == b
            #endif

        case (.unknown, .unknown):
            return true

        case (.simulator, .simulator):
            return true

        default:
            return false
        }
    }
}

internal func parseDeviceIdentity(from modelString: String) -> DeviceIdentity {
    #if os(iOS)
    if modelString.hasPrefix("iPhone") {
        return .iPhone(iPhones(model: modelString))
    }
    else if modelString.hasPrefix("iPad") {
        return .iPad(iPads(model: modelString))
    }
    else if modelString.hasPrefix("iPod") {
        return .iPod(iPods(model: modelString))
    }
    #elseif os(watchOS)
    if modelString.hasPrefix("Watch") {
        return .watch(Watches(model: modelString))
    }
    #elseif os(tvOS)
    if modelString.hasPrefix("AppleTV") {
        return .tv(TVs(model: modelString))
    }
    #endif
    
    if modelString == "i386" || modelString == "x86_64" {
        return .simulator
    }

    return .unknown
}

#if os(iOS) || os(tvOS)
extension UIDevice {
    public var deviceIdentity: DeviceIdentity {
        guard let modelName = DeviceModelName() else { return .unknown }

        return parseDeviceIdentity(from: modelName)
    }
}
#elseif os(watchOS)
extension WKInterfaceDevice {
    public var deviceIdentity: DeviceIdentity {
        guard let modelName = DeviceModelName() else { return .unknown }
        
        return parseDeviceIdentity(from: modelName)
    }
}
#endif

private func DeviceModelName() -> String? {
    if let simulatorModelIdentifier = ProcessInfo()
        .environment["SIMULATOR_MODEL_IDENTIFIER"] {
        return simulatorModelIdentifier
    }

    var name = utsname()
    guard uname(&name) == 0 else { return nil }

    return String(bytes: Data(bytes: &name.machine, count: Int(_SYS_NAMELEN)),
                  encoding:.ascii)?.trimmingCharacters(in: .controlCharacters)
}
