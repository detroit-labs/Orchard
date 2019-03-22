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

OrchardtvOSDevice OrchardtvOSDeviceFromNSString(NSString *string) {
    if ([string orchard_isEqualToOneOfStrings:@[@"i386", @"x86_64"]]) {
        return OrchardtvOSDeviceSimulator;
    }
    else if ([string isEqualToString:@"AppleTV5,3"]) {
        return OrchardtvOSDeviceAppleTV;
    }
    else if ([string isEqualToString:@"AppleTV6,2"]) {
        if (@available(tvOS 11.0, *)) {
            return OrchardtvOSDeviceAppleTV4K;
        }
    }

    return OrchardtvOSDeviceUnknown;
}

NSString *OrchardMarketingNameFortvOSDevice(OrchardtvOSDevice device)
{
    switch (device) {
        case OrchardtvOSDeviceSimulator: return nil;
        case OrchardtvOSDeviceAppleTV: return @"Apple TV";
        case OrchardtvOSDeviceAppleTV4K: return @"Apple TV 4K";
        default: break;
    }

    return nil;

#pragma clang diagnostic pop

}

#endif
