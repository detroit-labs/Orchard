//
// This file was automatically generated and should not be edited.
//
//  iPads.swift
//  Orchard
//
//  Created by Jeff Kelley on 7/16/18.
//

import Foundation

#if os(iOS)

public enum iPads {

    @available (iOS, introduced: 3.2, deprecated: 6.0)
    case iPad

    @available (iOS, introduced: 4.3, deprecated: 10.0)
    case iPad2

    @available (iOS, introduced: 5.1, deprecated: 10.0)
    case iPad3

    @available (iOS, introduced: 6.0, deprecated: 11.0)
    case iPad4

    @available (iOS, introduced: 10.3)
    case iPad5

    @available (iOS, introduced: 11.3)
    case iPad6

    @available (iOS, introduced: 13.1)
    case iPad7

    @available (iOS, introduced: 14.0)
    case iPad8

    @available (iOS, introduced: 15.0)
    case iPad9

    @available (iOS, introduced: 6.0, deprecated: 10.0)
    case iPadMini

    @available (iOS, introduced: 7.0, deprecated: 13.0)
    case iPadMini2

    @available (iOS, introduced: 8.0, deprecated: 13.0)
    case iPadMini3

    @available (iOS, introduced: 9.0)
    case iPadMini4

    @available (iOS, introduced: 12.2)
    case iPadMini5

    @available (iOS, introduced: 15.0)
    case iPadMini6

    @available (iOS, introduced: 7.0, deprecated: 13.0)
    case iPadAir

    @available (iOS, introduced: 8.1)
    case iPadAir2

    @available (iOS, introduced: 12.2)
    case iPadAir3

    @available (iOS, introduced: 14.0)
    case iPadAir4

    @available (iOS, introduced: 9.1)
    case iPadPro12_9Inch

    @available (iOS, introduced: 9.3)
    case iPadPro9_7Inch

    @available (iOS, introduced: 10.3)
    case iPadPro12_9Inch2

    @available (iOS, introduced: 10.3)
    case iPadPro10_5Inch

    @available (iOS, introduced: 12.1)
    case iPadPro12_9Inch3

    @available (iOS, introduced: 12.1)
    case iPadPro11Inch

    @available (iOS, introduced: 13.4)
    case iPadPro12_9Inch4

    @available (iOS, introduced: 13.4)
    case iPadPro11Inch2

    @available (iOS, introduced: 14.5)
    case iPadPro12_9Inch5

    @available (iOS, introduced: 14.5)
    case iPadPro11Inch3

    case unknown

    internal init(model: String) {
        self = .unknown

        switch model {
//        case "iPad1,1":
//            self = .iPad
//
        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":
            self = .iPad2

        case "iPad3,1", "iPad3,2", "iPad3,3":
            self = .iPad3

        case "iPad3,4", "iPad3,5", "iPad3,6":
            self = .iPad4

        case "iPad6,11", "iPad6,12":
            if #available(iOS 10.3, *) {
                self = .iPad5
            }

        case "iPad7,5", "iPad7,6":
            if #available(iOS 11.3, *) {
                self = .iPad6
            }

        case "iPad7,11", "iPad7,12":
            if #available(iOS 13.1, *) {
                self = .iPad7
            }

        case "iPad11,6", "iPad11,7":
            if #available(iOS 14.0, *) {
                self = .iPad8
            }

        case "iPad12,1", "iPad12,2":
            if #available(iOS 15.0, *) {
                self = .iPad9
            }

        case "iPad2,5", "iPad2,6", "iPad2,7":
            self = .iPadMini

        case "iPad4,4", "iPad4,5", "iPad4,6":
            self = .iPadMini2

        case "iPad4,7", "iPad4,8", "iPad4,9":
            self = .iPadMini3

        case "iPad5,1", "iPad5,2":
            self = .iPadMini4

        case "iPad11,1", "iPad11,2":
            if #available(iOS 12.2, *) {
                self = .iPadMini5
            }

        case "iPad14,1", "iPad14,2":
            if #available(iOS 15.0, *) {
                self = .iPadMini6
            }

        case "iPad4,1", "iPad4,2", "iPad4,3":
            self = .iPadAir

        case "iPad5,3", "iPad5,4":
            self = .iPadAir2

        case "iPad11,3", "iPad11,4":
            if #available(iOS 12.2, *) {
                self = .iPadAir3
            }

        case "iPad13,1", "iPad13,2":
            if #available(iOS 14.0, *) {
                self = .iPadAir4
            }

        case "iPad6,7", "iPad6,8":
            if #available(iOS 9.1, *) {
                self = .iPadPro12_9Inch
            }

        case "iPad6,3", "iPad6,4":
            if #available(iOS 9.3, *) {
                self = .iPadPro9_7Inch
            }

        case "iPad7,1", "iPad7,2":
            if #available(iOS 10.3, *) {
                self = .iPadPro12_9Inch2
            }

        case "iPad7,3", "iPad7,4":
            if #available(iOS 10.3, *) {
                self = .iPadPro10_5Inch
            }

        case "iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8":
            if #available(iOS 12.1, *) {
                self = .iPadPro12_9Inch3
            }

        case "iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4":
            if #available(iOS 12.1, *) {
                self = .iPadPro11Inch
            }

        case "iPad8,11", "iPad8,12":
            if #available(iOS 13.4, *) {
                self = .iPadPro12_9Inch4
            }

        case "iPad8,9", "iPad8,10":
            if #available(iOS 13.4, *) {
                self = .iPadPro11Inch2
            }

        case "iPad13,8", "iPad13,9", "iPad13,10", "iPad13,11":
            if #available(iOS 14.5, *) {
                self = .iPadPro12_9Inch5
            }

        case "iPad13,4", "iPad13,5", "iPad13,6", "iPad13,7":
            if #available(iOS 14.5, *) {
                self = .iPadPro11Inch3
            }

        default: break

        }
    }

    public var marketingName: String? {
        switch self {
        case .iPad: return "iPad"
        case .iPad2: return "iPad 2"
        case .iPad3: return "iPad (3rd Generation)"
        case .iPad4: return "iPad (4th Generation)"
        case .iPad5: return "iPad (5th Generation)"
        case .iPad6: return "iPad (6th Generation)"
        case .iPad7: return "iPad (7th Generation)"
        case .iPad8: return "iPad (8th Generation)"
        case .iPad9: return "iPad (9th Generation)"
        case .iPadMini: return "iPad mini"
        case .iPadMini2: return "iPad mini 2"
        case .iPadMini3: return "iPad mini 3"
        case .iPadMini4: return "iPad mini 4"
        case .iPadMini5: return "iPad mini (5th Generation)"
        case .iPadMini6: return "iPad mini (6th Generation)"
        case .iPadAir: return "iPad Air"
        case .iPadAir2: return "iPad Air 2"
        case .iPadAir3: return "iPad Air (3rd Generation)"
        case .iPadAir4: return "iPad Air (4th Generation)"
        case .iPadPro12_9Inch: return "iPad Pro (12.9-inch)"
        case .iPadPro9_7Inch: return "iPad Pro (9.7-inch)"
        case .iPadPro12_9Inch2: return "iPad Pro (12.9-inch) (2nd Generation)"
        case .iPadPro10_5Inch: return "iPad Pro (10.5-inch)"
        case .iPadPro12_9Inch3: return "iPad Pro (12.9-inch) (3rd Generation)"
        case .iPadPro11Inch: return "iPad Pro (11-inch)"
        case .iPadPro12_9Inch4: return "iPad Pro (12.9-inch) (4th Generation)"
        case .iPadPro11Inch2: return "iPad Pro (11-inch) (2nd Generation)"
        case .iPadPro12_9Inch5: return "iPad Pro (12.9-inch) (5th Generation)"
        case .iPadPro11Inch3: return "iPad Pro (11-inch) (3rd Generation)"

        default: return nil
        }
    }
}

#endif
