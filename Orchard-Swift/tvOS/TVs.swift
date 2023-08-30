//
// This file was automatically generated and should not be edited.
//
//  iPhones.swift
//  Orchard
//
//  Created by Jeff Kelley on 7/16/18.
//

import Foundation

#if os(tvOS)

public enum TVs {

    @available (tvOS, introduced: 9.0)
    case AppleTVHD

    @available (tvOS, introduced: 11.0)
    case AppleTV4K

    @available (tvOS, introduced: 14.5)
    case AppleTV4K2

    @available (tvOS, introduced: 16.1)
    case AppleTV4K3

    case unknown

    internal init(model: String) {
        self = .unknown

        switch model {
        case "AppleTV5,3":
            self = .AppleTVHD

        case "AppleTV6,2":
            self = .AppleTV4K

        case "AppleTV11,1":
            if #available(tvOS 14.5, *) {
                self = .AppleTV4K2
            }

        case "AppleTV14,1":
            if #available(tvOS 16.1, *) {
                self = .AppleTV4K3
            }

        default: break

        }
    }

    public var marketingName: String? {
        switch self {
        case .AppleTVHD: return "Apple TV HD"
        case .AppleTV4K: return "Apple TV 4K"
        case .AppleTV4K2: return "Apple TV 4K (2nd Generation)"
        case .AppleTV4K3: return "Apple TV 4K (3rd Generation)"

        default: return nil
        }
    }
}

#endif
