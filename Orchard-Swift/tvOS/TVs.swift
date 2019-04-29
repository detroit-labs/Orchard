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

    case unknown

    internal init(model: String) {
        self = .unknown

        switch model {
        case "AppleTV5,3":
            self = .AppleTVHD

        case "AppleTV6,2":
            if #available(tvOS 11.0, *) {
                self = .AppleTV4K
            }

        default: break

        }
    }

    public var marketingName: String? {
        switch self {
        case .AppleTVHD: return "Apple TV HD"
        case .AppleTV4K: return "Apple TV 4K"

        default: return nil
        }
    }
}

#endif
