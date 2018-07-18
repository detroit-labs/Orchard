//
// This file was automatically generated and should not be edited.
//
//  iPods.swift
//  Orchard
//
//  Created by Jeff Kelley on 7/17/18.
//

import Foundation

public enum iPods {

    @available (iOS, introduced: 1.0, deprecated: 3.2)
    case iPodTouch

    @available (iOS, introduced: 2.1, deprecated: 4.3)
    case iPodTouch2

    @available (iOS, introduced: 3.1, deprecated: 6.0)
    case iPodTouch3

    @available (iOS, introduced: 4.1, deprecated: 7.0)
    case iPodTouch4

    @available (iOS, introduced: 6.0, deprecated: 10.0)
    case iPodTouch5

    @available (iOS, introduced: 8.4)
    case iPodTouch6

    case unknown

    internal init(model: String) {
        self = .unknown

        switch model {
//        case "iPod1,1":
//            self = .iPodTouch
//
//        case "iPod2,1":
//            self = .iPodTouch2
//
//        case "iPod3,1":
//            self = .iPodTouch3
//
//        case "iPod4,1":
//            self = .iPodTouch4
//
//        case "iPod5,1":
//            self = .iPodTouch5
//
        case "iPod7,1":
            self = .iPodTouch6

        default: break

        }
    }

    public var marketingName: String? {
        switch self {
        case .iPodTouch: return "iPod touch"
        case .iPodTouch2: return "iPod touch (2nd Generation)"
        case .iPodTouch3: return "iPod touch (3rd Generation)"
        case .iPodTouch4: return "iPod touch (4th Generation)"
        case .iPodTouch5: return "iPod touch (5th Generation)"
        case .iPodTouch6: return "iPod touch (6th Generation)"

        default: return nil
        }
    }
}
