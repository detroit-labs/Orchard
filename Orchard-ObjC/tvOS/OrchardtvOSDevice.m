//
// This file was automatically generated and should not be edited.
//
//  OrchardtvOSDevice.m
//  Orchard
//
//  Created by Jeff Kelley on 3/21/19.
//

#import "OrchardtvOSDevice.h"

#if TARGET_OS_TV

#import "NSString+OrchardUtilities.h"
#import "OrchardDeviceIdentification.h"

OrchardtvOSDevice OrchardtvOSDeviceFromNSString(NSString *string) {
    if ([string orchard_isEqualToOneOfStrings:@[@"arm64", @"i386", @"x86_64"]]) {
        return OrchardtvOSDeviceSimulator;
    }
    else if ([string isEqualToString:@"AppleTV5,3"]) {
        return OrchardtvOSDeviceAppleTVHD;
    }
    else if ([string isEqualToString:@"AppleTV6,2"]) {
        if (@available(tvOS 11.0, *)) {
            return OrchardtvOSDeviceAppleTV4K;
        }
    }
    else if ([string isEqualToString:@"AppleTV11,1"]) {
        if (@available(tvOS 11.0, *)) {
            return OrchardtvOSDeviceAppleTV4K2;
        }
    }
    else if ([string isEqualToString:@"AppleTV14,1"]) {
        if (@available(tvOS 16.1, *)) {
            return OrchardtvOSDeviceAppleTV4K3;
        }
    }

    return OrchardtvOSDeviceUnknown;
}

NSString *OrchardMarketingNameFortvOSDevice(OrchardtvOSDevice device)
{
    switch (device) {
        case OrchardtvOSDeviceSimulator: return nil;
        case OrchardtvOSDeviceAppleTVHD: return @"Apple TV HD";
        case OrchardtvOSDeviceAppleTV4K: return @"Apple TV 4K";
        case OrchardtvOSDeviceAppleTV4K2: return @"Apple TV 4K (2nd Generation)";
        case OrchardtvOSDeviceAppleTV4K3: return @"Apple TV 4K (3rd Generation)";
        default: break;
    }

    return nil;

#pragma clang diagnostic pop

}

@implementation UIDevice (Orchard)

- (OrchardtvOSDevice)orchardiOSDevice
{
    return OrchardtvOSDeviceFromNSString(OrchardDeviceIdentifier());
}

@end

#endif
