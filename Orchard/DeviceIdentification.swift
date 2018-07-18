//
//  DeviceIdentification.swift
//  Orchard
//
//  Created by Jeff Kelley on 7/17/18.
//

import UIKit

public enum DeviceIdentity: Equatable {
    case iPhone(iPhones)
    case iPad(iPads)
    case iPod(iPods)
    case simulator
    case unknown

    public static func ==(lhs: DeviceIdentity, rhs: DeviceIdentity) -> Bool {
        switch (lhs, rhs) {
        case let (.iPhone(a), .iPhone(b)):
            return a == b

        case let (.iPad(a), .iPad(b)):
            return a == b

        case let (.iPod(a), .iPod(b)):
            return a == b

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
    if modelString.hasPrefix("iPhone") {
        return .iPhone(iPhones(model: modelString))
    }
    else if modelString.hasPrefix("iPad") {
        return .iPad(iPads(model: modelString))
    }
    else if modelString.hasPrefix("iPod") {
        return .iPod(iPods(model: modelString))
    }
    else if modelString == "i386" || modelString == "x86_64" {
        return .simulator
    }

    return .unknown
}

extension UIDevice {
    public var deviceIdentity: DeviceIdentity {
        guard let modelName = modelName() else { return .unknown }

        return parseDeviceIdentity(from: modelName)
    }
}

func modelName() -> String? {
    if let simulatorModelIdentifier = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] {
        return simulatorModelIdentifier
    }

    var name = utsname()
    guard uname(&name) == 0 else { return nil }

    return String(bytes: Data(bytes: &name.machine, count: Int(_SYS_NAMELEN)),
                  encoding:.ascii)?.trimmingCharacters(in: .controlCharacters)
}
