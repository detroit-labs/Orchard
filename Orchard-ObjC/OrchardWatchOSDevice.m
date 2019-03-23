//
// This file was automatically generated and should not be edited.
//
//  OrchardWatchOSDevice.m
//  Orchard
//
//  Created by Jeff Kelley on 7/17/18.
//

#import "OrchardWatchOSDevice.h"

#if TARGET_OS_WATCH

#import <sys/utsname.h>

#import "NSString+OrchardUtilities.h"

OrchardWatchOSDevice OrchardWatchOSDeviceFromNSString(NSString *string) {
    if ([string orchard_isEqualToOneOfStrings:@[@"i386", @"x86_64"]]) {
        return OrchardWatchOSDeviceSimulator;
    }
    else if ([string isEqualToString:@"Watch1,1"]) {
        return OrchardWatchOSDeviceAppleWatch_38mm;
    }
    else if ([string isEqualToString:@"Watch1,2"]) {
        return OrchardWatchOSDeviceAppleWatch_42mm;
    }
    else if ([string isEqualToString:@"Watch2,6"]) {
        if (@available(watchOS 3.0, *)) {
            return OrchardWatchOSDeviceAppleWatchSeries1_38mm;
        }
    }
    else if ([string isEqualToString:@"Watch2,7"]) {
        if (@available(watchOS 3.0, *)) {
            return OrchardWatchOSDeviceAppleWatchSeries1_42mm;
        }
    }
    else if ([string isEqualToString:@"Watch2,3"]) {
        if (@available(watchOS 3.0, *)) {
            return OrchardWatchOSDeviceAppleWatchSeries2_38mm;
        }
    }
    else if ([string isEqualToString:@"Watch2,4"]) {
        if (@available(watchOS 3.0, *)) {
            return OrchardWatchOSDeviceAppleWatchSeries2_42mm;
        }
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch3,1",
                                                     @"Watch3,3"]]) {
        if (@available(watchOS 4.0, *)) {
            return OrchardWatchOSDeviceAppleWatchSeries3_38mm;
        }
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch3,2",
                                                     @"Watch3,4"]]) {
        if (@available(watchOS 4.0, *)) {
            return OrchardWatchOSDeviceAppleWatchSeries3_42mm;
        }
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch4,1",
                                                     @"Watch4,3"]]) {
        if (@available(watchOS 5.0, *)) {
            return OrchardWatchOSDeviceAppleWatchSeries4_40mm;
        }
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch4,2",
                                                     @"Watch4,4"]]) {
        if (@available(watchOS 5.0, *)) {
            return OrchardWatchOSDeviceAppleWatchSeries4_44mm;
        }
    }

    return OrchardWatchOSDeviceUnknown;
}

NSString *OrchardMarketingNameForWatchOSDevice(OrchardWatchOSDevice device)
{
    switch (device) {

        case OrchardWatchOSDeviceSimulator:
            return nil;

        case OrchardWatchOSDeviceAppleWatch_38mm:
            return @"Apple Watch (38mm)";

        case OrchardWatchOSDeviceAppleWatch_42mm:
            return @"Apple Watch (42mm)";

        case OrchardWatchOSDeviceAppleWatchSeries1_38mm:
            return @"Apple Watch Series 1 (38mm)";

        case OrchardWatchOSDeviceAppleWatchSeries1_42mm:
            return @"Apple Watch Series 1 (42mm)";

        case OrchardWatchOSDeviceAppleWatchSeries2_38mm:
            return @"Apple Watch Series 2 (38mm)";

        case OrchardWatchOSDeviceAppleWatchSeries2_42mm:
            return @"Apple Watch Series 2 (42mm)";

        case OrchardWatchOSDeviceAppleWatchSeries3_38mm:
            return @"Apple Watch Series 3 (38mm)";

        case OrchardWatchOSDeviceAppleWatchSeries3_42mm:
            return @"Apple Watch Series 3 (42mm)";

        case OrchardWatchOSDeviceAppleWatchSeries4_40mm:
            return @"Apple Watch Series 4 (40mm)";

        case OrchardWatchOSDeviceAppleWatchSeries4_44mm:
            return @"Apple Watch Series 4 (44mm)";

        default:
            break;
    }

    return nil;

#pragma clang diagnostic pop
}

@implementation WKInterfaceDevice (Orchard)

- (OrchardWatchOSDevice)orchardwatchOSDevice
{
    NSString *simulatorIdentifier =
    NSProcessInfo.processInfo.environment[@"SIMULATOR_MODEL_IDENTIFIER"];

    if (simulatorIdentifier != nil) {
        return OrchardWatchOSDeviceFromNSString(simulatorIdentifier);
    }

    struct utsname systemInfo;
    uname(&systemInfo);

    NSString *identifier = [NSString stringWithCString:systemInfo.machine
                                              encoding:NSUTF8StringEncoding];

    return OrchardWatchOSDeviceFromNSString(identifier);
}

@end

#endif
