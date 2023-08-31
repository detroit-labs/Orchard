//
// This file was automatically generated and should not be edited.
//
//  iPods.swift
//  Orchard
//
//  Created by Jeff Kelley on 7/17/18.
//

import Foundation

#if os(iOS)

public enum iPods {

    @available (iOS, introduced: 1.1, deprecated: 3.2)
    case iPodTouch

    @available (iOS, introduced: 2.1, deprecated: 4.3)
    case iPodTouch2

    @available (iOS, introduced: 3.1, deprecated: 6.0)
    case iPodTouch3

    @available (iOS, introduced: 4.1, deprecated: 7.0)
    case iPodTouch4

    @available (iOS, introduced: 6.0, deprecated: 10.0)
    case iPodTouch5

    @available (iOS, introduced: 8.4, deprecated: 13.0)
    case iPodTouch6

    @available (iOS, introduced: 12.3)
    case iPodTouch7

    case unknown

    internal init(model: String) {
        self = .unknown

        switch model {
        case "iPod7,1":
            self = .iPodTouch6

        case "iPod9,1":
            if #available(iOS 12.3, *) {
                self = .iPodTouch7
            }

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
        case .iPodTouch7: return "iPod touch (7th Generation)"

        default: return nil
        }
    }
}

#endif
