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
#import "OrchardDeviceIdentification.h"

OrchardwatchOSDevice OrchardwatchOSDeviceFromNSString(NSString *string) {
    if ([string orchard_isEqualToOneOfStrings:@[@"arm64", @"i386", @"x86_64"]]) {
        return OrchardwatchOSDeviceSimulator;
    }
    else if ([string isEqualToString:@"Watch1,1"]) {
        return OrchardwatchOSDeviceAppleWatch_38mm;
    }
    else if ([string isEqualToString:@"Watch1,2"]) {
        return OrchardwatchOSDeviceAppleWatch_42mm;
    }
    else if ([string isEqualToString:@"Watch2,6"]) {
        return OrchardwatchOSDeviceAppleWatchSeries1_38mm;
    }
    else if ([string isEqualToString:@"Watch2,7"]) {
        return OrchardwatchOSDeviceAppleWatchSeries1_42mm;
    }
    else if ([string isEqualToString:@"Watch2,3"]) {
        return OrchardwatchOSDeviceAppleWatchSeries2_38mm;
    }
    else if ([string isEqualToString:@"Watch2,4"]) {
        return OrchardwatchOSDeviceAppleWatchSeries2_42mm;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch3,1",
                                                     @"Watch3,3"]]) {
        return OrchardwatchOSDeviceAppleWatchSeries3_38mm;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch3,2",
                                                     @"Watch3,4"]]) {
        return OrchardwatchOSDeviceAppleWatchSeries3_42mm;
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
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch5,1",
                                                     @"Watch5,3"]]) {
        if (@available(watchOS 6.0, *)) {
            return OrchardwatchOSDeviceAppleWatchSeries5_40mm;
        }
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch5,2",
                                                     @"Watch5,4"]]) {
        if (@available(watchOS 6.0, *)) {
            return OrchardwatchOSDeviceAppleWatchSeries5_44mm;
        }
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch5,9",
                                                     @"Watch5,11"]]) {
        if (@available(watchOS 7.0, *)) {
            return OrchardwatchOSDeviceAppleWatchSE_40mm;
        }
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch5,10",
                                                     @"Watch5,12"]]) {
        if (@available(watchOS 7.0, *)) {
            return OrchardwatchOSDeviceAppleWatchSE_44mm;
        }
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch6,1",
                                                     @"Watch6,3"]]) {
        if (@available(watchOS 7.0, *)) {
            return OrchardwatchOSDeviceAppleWatchSeries6_40mm;
        }
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch6,2",
                                                     @"Watch6,4"]]) {
        if (@available(watchOS 7.0, *)) {
            return OrchardwatchOSDeviceAppleWatchSeries6_44mm;
        }
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch6,6",
                                                     @"Watch6,8"]]) {
        if (@available(watchOS 8.0, *)) {
            return OrchardwatchOSDeviceAppleWatchSeries7_41mm;
        }
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch6,7",
                                                     @"Watch6,9"]]) {
        if (@available(watchOS 8.0, *)) {
            return OrchardwatchOSDeviceAppleWatchSeries7_45mm;
        }
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch6,10",
                                                     @"Watch6,12"]]) {
        if (@available(watchOS 9.0, *)) {
            return OrchardwatchOSDeviceAppleWatchSE2_41mm;
        }
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch6,11",
                                                     @"Watch6,13"]]) {
        if (@available(watchOS 9.0, *)) {
            return OrchardwatchOSDeviceAppleWatchSE2_45mm;
        }
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch6,14",
                                                     @"Watch6,16"]]) {
        if (@available(watchOS 9.0, *)) {
            return OrchardwatchOSDeviceAppleWatchSeries8_41mm;
        }
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"Watch6,15",
                                                     @"Watch6,17"]]) {
        if (@available(watchOS 9.0, *)) {
            return OrchardwatchOSDeviceAppleWatchSeries8_45mm;
        }
    }
    else if ([string isEqualToString:@"Watch6,18"]) {
        if (@available(watchOS 9.0, *)) {
            return OrchardwatchOSDeviceAppleWatchUltra_49mm;
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

        case OrchardwatchOSDeviceAppleWatchSeries5_40mm:
            return @"Apple Watch Series 5 (40mm)";

        case OrchardwatchOSDeviceAppleWatchSeries5_44mm:
            return @"Apple Watch Series 5 (44mm)";

        case OrchardwatchOSDeviceAppleWatchSE_40mm:
            return @"Apple Watch SE (40mm)";

        case OrchardwatchOSDeviceAppleWatchSE_44mm:
            return @"Apple Watch SE (44mm)";

        case OrchardwatchOSDeviceAppleWatchSeries6_40mm:
            return @"Apple Watch Series 6 (40mm)";

        case OrchardwatchOSDeviceAppleWatchSeries6_44mm:
            return @"Apple Watch Series 6 (44mm)";

        case OrchardwatchOSDeviceAppleWatchSeries7_41mm:
            return @"Apple Watch Series 7 (41mm)";

        case OrchardwatchOSDeviceAppleWatchSeries7_45mm:
            return @"Apple Watch Series 7 (45mm)";

        case OrchardwatchOSDeviceAppleWatchSE2_41mm:
            return @"Apple Watch SE (2nd Generation) (41mm)";

        case OrchardwatchOSDeviceAppleWatchSE2_45mm:
            return @"Apple Watch SE (2nd Generation) (45mm)";

        case OrchardwatchOSDeviceAppleWatchSeries8_41mm:
            return @"Apple Watch Series 8 (41mm)";

        case OrchardwatchOSDeviceAppleWatchSeries8_45mm:
            return @"Apple Watch Series 8 (45mm)";

        case OrchardwatchOSDeviceAppleWatchUltra_49mm:
            return @"Apple Watch Ultra (49mm)";

        default:
            break;
    }

    return nil;

#pragma clang diagnostic pop
}

@implementation WKInterfaceDevice (Orchard)

- (OrchardwatchOSDevice)orchardwatchOSDevice
{
    return OrchardwatchOSDeviceFromNSString(OrchardDeviceIdentifier());
}

@end

#endif
