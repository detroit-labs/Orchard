//
// This file was automatically generated and should not be edited.
//
//  OrchardwatchOSDevice.m
//  Orchard
//
//  Created by Jeff Kelley on 7/17/18.
//

#import "OrchardwatchOSDevice.h"

#if TARGET_OS_WATCH

#import <sys/utsname.h>

#import "NSString+OrchardUtilities.h"

OrchardwatchOSDevice OrchardwatchOSDeviceFromNSString(NSString *string) {
    if ([string orchard_isEqualToOneOfStrings:@[@"i386", @"x86_64"]]) {
        return OrchardwatchOSDeviceSimulator;
    }
    else if ([string isEqualToString:@"Watch1,1"]) {
        return OrchardwatchOSDeviceAppleWatch_38mm;
    }
    else if ([string isEqualToString:@"Watch1,2"]) {
        return OrchardwatchOSDeviceAppleWatch_42mm;
    }
    else if ([string isEqualToString:@"Watch2,6"]) {
        if (@available(watchOS 3.0, *)) {
            return OrchardwatchOSDeviceAppleWatchSeries1_38mm;
        }
    }
    else if ([string isEqualToString:@"Watch2,7"]) {
        if (@available(watchOS 3.0, *)) {
            return OrchardwatchOSDeviceAppleWatchSeries1_42mm;
        }
    }
    else if ([string isEqualToString:@"Watch2,3"]) {
        if (@available(watchOS 3.0, *)) {
            return OrchardwatchOSDeviceAppleWatchSeries2_38mm;
        }
    }
    else if ([string isEqualToString:@"Watch2,4"]) {
        if (@available(watchOS 3.0, *)) {
            return OrchardwatchOSDeviceAppleWatchSeries2_42mm;
        }
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch3,1",
                                                     @"Watch3,3"]]) {
        if (@available(watchOS 4.0, *)) {
            return OrchardwatchOSDeviceAppleWatchSeries3_38mm;
        }
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch3,2",
                                                     @"Watch3,4"]]) {
        if (@available(watchOS 4.0, *)) {
            return OrchardwatchOSDeviceAppleWatchSeries3_42mm;
        }
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch4,1",
                                                     @"Watch4,3"]]) {
        if (@available(watchOS 5.0, *)) {
            return OrchardwatchOSDeviceAppleWatchSeries4_40mm;
        }
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch4,2",
                                                     @"Watch4,4"]]) {
        if (@available(watchOS 5.0, *)) {
            return OrchardwatchOSDeviceAppleWatchSeries4_44mm;
        }
    }

    return OrchardwatchOSDeviceUnknown;
}

NSString *OrchardMarketingNameForWatchOSDevice(OrchardwatchOSDevice device)
{
    switch (device) {

        case OrchardwatchOSDeviceSimulator:
            return nil;

        case OrchardwatchOSDeviceAppleWatch_38mm:
            return @"Apple Watch (38mm)";

        case OrchardwatchOSDeviceAppleWatch_42mm:
            return @"Apple Watch (42mm)";

        case OrchardwatchOSDeviceAppleWatchSeries1_38mm:
            return @"Apple Watch Series 1 (38mm)";

        case OrchardwatchOSDeviceAppleWatchSeries1_42mm:
            return @"Apple Watch Series 1 (42mm)";

        case OrchardwatchOSDeviceAppleWatchSeries2_38mm:
            return @"Apple Watch Series 2 (38mm)";

        case OrchardwatchOSDeviceAppleWatchSeries2_42mm:
            return @"Apple Watch Series 2 (42mm)";

        case OrchardwatchOSDeviceAppleWatchSeries3_38mm:
            return @"Apple Watch Series 3 (38mm)";

        case OrchardwatchOSDeviceAppleWatchSeries3_42mm:
            return @"Apple Watch Series 3 (42mm)";

        case OrchardwatchOSDeviceAppleWatchSeries4_40mm:
            return @"Apple Watch Series 4 (40mm)";

        case OrchardwatchOSDeviceAppleWatchSeries4_44mm:
            return @"Apple Watch Series 4 (44mm)";

        default:
            break;
    }

    return nil;

#pragma clang diagnostic pop
}

@implementation WKInterfaceDevice (Orchard)

- (OrchardwatchOSDevice)orchardwatchOSDevice
{
    NSString *simulatorIdentifier =
    NSProcessInfo.processInfo.environment[@"SIMULATOR_MODEL_IDENTIFIER"];

    if (simulatorIdentifier != nil) {
        return OrchardwatchOSDeviceFromNSString(simulatorIdentifier);
    }

    struct utsname systemInfo;
    uname(&systemInfo);

    NSString *identifier = [NSString stringWithCString:systemInfo.machine
                                              encoding:NSUTF8StringEncoding];

    return OrchardwatchOSDeviceFromNSString(identifier);
}

@end

#endif
