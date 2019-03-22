//
// This file was automatically generated and should not be edited.
//
//  OrchardiOSDevice.m
//  Orchard
//
//  Created by Jeff Kelley on 7/17/18.
//

#import "OrchardiOSDevice.h"

#if TARGET_OS_IOS

#import "NSString+OrchardUtilities.h"

OrchardiOSDevice OrchardiOSDeviceFromNSString(NSString * _Nonnull string) {

    // Disable deprecation warnings for historical accuracy
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wunguarded-availability"

    if ([string orchard_isEqualToOneOfStrings:@[@"i386", @"x86_64"]]) {
        return OrchardiOSDeviceSimulator;
    }

#pragma mark - iPhones

    else if ([string isEqualToString:@"iPhone1,1"]) {
        return OrchardiOSDeviceiPhone;
    }
    else if ([string isEqualToString:@"iPhone1,2"]) {
        return OrchardiOSDeviceiPhone3G;
    }
    else if ([string isEqualToString:@"iPhone2,1"]) {
        return OrchardiOSDeviceiPhone3GS;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPhone3,1",
                                                     @"iPhone3,2",
                                                     @"iPhone3,3"]]) {
        return OrchardiOSDeviceiPhone4;
    }
    else if ([string isEqualToString:@"iPhone4,1"]) {
        return OrchardiOSDeviceiPhone4S;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPhone5,1",
                                                     @"iPhone5,2"]]) {
        return OrchardiOSDeviceiPhone5;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPhone5,3",
                                                     @"iPhone5,4"]]) {
        return OrchardiOSDeviceiPhone5c;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPhone6,1",
                                                     @"iPhone6,2"]]) {
        return OrchardiOSDeviceiPhone5s;
    }
    else if ([string isEqualToString:@"iPhone7,2"]) {
        return OrchardiOSDeviceiPhone6;
    }
    else if ([string isEqualToString:@"iPhone7,1"]) {
        return OrchardiOSDeviceiPhone6Plus;
    }
    else if ([string isEqualToString:@"iPhone8,1"]) {
        return OrchardiOSDeviceiPhone6s;
    }
    else if ([string isEqualToString:@"iPhone8,2"]) {
        return OrchardiOSDeviceiPhone6sPlus;
    }
    else if ([string isEqualToString:@"iPhone8,4"]) {
        return OrchardiOSDeviceiPhoneSE;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPhone9,1",
                                                     @"iPhone9,3"]]) {
        return OrchardiOSDeviceiPhone7;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPhone9,2",
                                                     @"iPhone9,4"]]) {
        return OrchardiOSDeviceiPhone7Plus;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPhone10,1",
                                                     @"iPhone10,4"]]) {
        return OrchardiOSDeviceiPhone8;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPhone10,2",
                                                     @"iPhone10,5"]]) {
        return OrchardiOSDeviceiPhone8Plus;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPhone10,3",
                                                     @"iPhone10,6"]]) {
        return OrchardiOSDeviceiPhoneX;
    }
    else if ([string isEqualToString:@"iPhone11,2"]) {
        return OrchardiOSDeviceiPhoneXS;
    }
    else if ([string isEqualToString:@"iPhone11,6"]) {
        return OrchardiOSDeviceiPhoneXSMax;
    }
    else if ([string isEqualToString:@"iPhone11,8"]) {
        return OrchardiOSDeviceiPhoneXR;
    }

#pragma mark - iPads

    else if ([string isEqualToString:@"iPad1,1"]) {
        return OrchardiOSDeviceiPad;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad2,1",
                                                     @"iPad2,2",
                                                     @"iPad2,3",
                                                     @"iPad2,4"]]) {
        return OrchardiOSDeviceiPad2;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad3,1",
                                                     @"iPad3,2",
                                                     @"iPad3,3"]]) {
        return OrchardiOSDeviceiPad3;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad3,4",
                                                     @"iPad3,5",
                                                     @"iPAd3,6"]]) {
        return OrchardiOSDeviceiPad4;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad2,5",
                                                     @"iPad2,6",
                                                     @"iPad2,7"]]) {
        return OrchardiOSDeviceiPadMini;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad4,1",
                                                     @"iPad4,2",
                                                     @"iPad4,3"]]) {
        return OrchardiOSDeviceiPadAir;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad4,4",
                                                     @"iPad4,5",
                                                     @"iPad4,6"]]) {
        return OrchardiOSDeviceiPadMini2;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad5,3",
                                                     @"iPad5,4"]]) {
        return OrchardiOSDeviceiPadAir2;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad4,7",
                                                     @"iPad4,8",
                                                     @"iPad4,9"]]) {
        return OrchardiOSDeviceiPadMini3;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad5,1",
                                                     @"iPad5,2"]]) {
        return OrchardiOSDeviceiPadMini4;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad6,7",
                                                     @"iPad6,8"]]) {
        return OrchardiOSDeviceiPadPro12_9Inch;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad6,3",
                                                     @"iPad6,4"]]) {
        return OrchardiOSDeviceiPadPro9_7Inch;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad6,11",
                                                     @"iPad6,12"]]) {
        return OrchardiOSDeviceiPad5;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad7,1",
                                                     @"iPad7,2"]]) {
        return OrchardiOSDeviceiPadPro12_9Inch2;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad7,3",
                                                     @"iPad7,4"]]) {
        return OrchardiOSDeviceiPadPro10_5Inch;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad7,5",
                                                     @"iPad7,6"]]) {
        return OrchardiOSDeviceiPad6;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad8,5",
                                                     @"iPad8,6",
                                                     @"iPad8,7",
                                                     @"iPad8,8"]]) {
        return OrchardiOSDeviceiPadPro12_9Inch3;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad8,1",
                                                     @"iPad8,2",
                                                     @"iPad8,3",
                                                     @"iPad8,4"]]) {
        return OrchardiOSDeviceiPadPro11Inch;
    }

#pragma mark - iPods

    else if ([string isEqualToString:@"iPod1,1"]) {
        return OrchardiOSDeviceiPodTouch;
    }
    else if ([string isEqualToString:@"iPod2,1"]) {
        return OrchardiOSDeviceiPodTouch2;
    }
    else if ([string isEqualToString:@"iPod3,1"]) {
        return OrchardiOSDeviceiPodTouch3;
    }
    else if ([string isEqualToString:@"iPod4,1"]) {
        return OrchardiOSDeviceiPodTouch4;
    }
    else if ([string isEqualToString:@"iPod5,1"]) {
        return OrchardiOSDeviceiPodTouch5;
    }
    else if ([string isEqualToString:@"iPod7,1"]) {
        return OrchardiOSDeviceiPodTouch6;
    }

#pragma mark -

#pragma clang diagnostic pop

    return OrchardiOSDeviceUnknown;
}

OrchardiOSiOSDeviceFamily OrchardiOSiOSDeviceFamilyForiOSDevice(OrchardiOSDevice device)
{
    // Disable deprecation warnings for historical accuracy
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    switch (device) {
        case OrchardiOSDeviceSimulator: return OrchardiOSiOSDeviceFamilySimulator;

#pragma mark - iPhones

        case OrchardiOSDeviceiPhone:
        case OrchardiOSDeviceiPhone3G:
        case OrchardiOSDeviceiPhone3GS:
        case OrchardiOSDeviceiPhone4:
        case OrchardiOSDeviceiPhone4S:
        case OrchardiOSDeviceiPhone5:
        case OrchardiOSDeviceiPhone5c:
        case OrchardiOSDeviceiPhone5s:
        case OrchardiOSDeviceiPhone6:
        case OrchardiOSDeviceiPhone6Plus:
        case OrchardiOSDeviceiPhone6s:
        case OrchardiOSDeviceiPhone6sPlus:
        case OrchardiOSDeviceiPhoneSE:
        case OrchardiOSDeviceiPhone7:
        case OrchardiOSDeviceiPhone7Plus:
        case OrchardiOSDeviceiPhone8:
        case OrchardiOSDeviceiPhone8Plus:
        case OrchardiOSDeviceiPhoneX:
        case OrchardiOSDeviceiPhoneXS:
        case OrchardiOSDeviceiPhoneXSMax:
        case OrchardiOSDeviceiPhoneXR:
            return OrchardiOSiOSDeviceFamilyiPhone;

#pragma mark - iPads

        case OrchardiOSDeviceiPad:
        case OrchardiOSDeviceiPad2:
        case OrchardiOSDeviceiPad3:
        case OrchardiOSDeviceiPad4:
        case OrchardiOSDeviceiPadMini:
        case OrchardiOSDeviceiPadAir:
        case OrchardiOSDeviceiPadMini2:
        case OrchardiOSDeviceiPadAir2:
        case OrchardiOSDeviceiPadMini3:
        case OrchardiOSDeviceiPadMini4:
        case OrchardiOSDeviceiPadPro12_9Inch:
        case OrchardiOSDeviceiPadPro9_7Inch:
        case OrchardiOSDeviceiPad5:
        case OrchardiOSDeviceiPadPro12_9Inch2:
        case OrchardiOSDeviceiPadPro10_5Inch:
        case OrchardiOSDeviceiPad6:
        case OrchardiOSDeviceiPadPro12_9Inch3:
        case OrchardiOSDeviceiPadPro11Inch:
            return OrchardiOSiOSDeviceFamilyiPad;

#pragma mark - iPods

        case OrchardiOSDeviceiPodTouch:
        case OrchardiOSDeviceiPodTouch2:
        case OrchardiOSDeviceiPodTouch3:
        case OrchardiOSDeviceiPodTouch4:
        case OrchardiOSDeviceiPodTouch5:
        case OrchardiOSDeviceiPodTouch6:
            return OrchardiOSiOSDeviceFamilyiPod;

#pragma mark -

        case OrchardiOSDeviceUnknown:
        default:
            return OrchardiOSiOSDeviceFamilyUnknown;
    }

#pragma clang diagnostic pop

}

NSString *OrchardMarketingNameForiOSDevice(OrchardiOSDevice device)
{
    // Disable deprecation warnings for historical accuracy
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wunguarded-availability"

    switch (device) {

        case OrchardiOSDeviceSimulator:
            return nil;

#pragma mark - iPhones

        case OrchardiOSDeviceiPhone:
            return @"iPhone";

        case OrchardiOSDeviceiPhone3G:
            return @"iPhone 3G";

        case OrchardiOSDeviceiPhone3GS:
            return @"iPhone 3GS";

        case OrchardiOSDeviceiPhone4:
            return @"iPhone 4";

        case OrchardiOSDeviceiPhone4S:
            return @"iPhone 4S";

        case OrchardiOSDeviceiPhone5:
            return @"iPhone 5";

        case OrchardiOSDeviceiPhone5c:
            return @"iPhone 5c";

        case OrchardiOSDeviceiPhone5s:
            return @"iPhone 5s";

        case OrchardiOSDeviceiPhone6:
            return @"iPhone 6";

        case OrchardiOSDeviceiPhone6Plus:
            return @"iPhone 6 Plus";

        case OrchardiOSDeviceiPhone6s:
            return @"iPhone 6s";

        case OrchardiOSDeviceiPhone6sPlus:
            return @"iPhone 6s Plus";

        case OrchardiOSDeviceiPhoneSE:
            return @"iPhone SE";

        case OrchardiOSDeviceiPhone7:
            return @"iPhone 7";

        case OrchardiOSDeviceiPhone7Plus:
            return @"iPhone 7 Plus";

        case OrchardiOSDeviceiPhone8:
            return @"iPhone 8";

        case OrchardiOSDeviceiPhone8Plus:
            return @"iPhone 8 Plus";

        case OrchardiOSDeviceiPhoneX:
            return @"iPhone X";

        case OrchardiOSDeviceiPhoneXS:
            return @"iPhone XS";

        case OrchardiOSDeviceiPhoneXSMax:
            return @"iPhone XS Max";

        case OrchardiOSDeviceiPhoneXR:
            return @"iPhone XR";

#pragma mark - iPads

        case OrchardiOSDeviceiPad:
            return @"iPad";

        case OrchardiOSDeviceiPad2:
            return @"iPad 2";

        case OrchardiOSDeviceiPad3:
            return @"iPad (3rd Generation)";

        case OrchardiOSDeviceiPad4:
            return @"iPad (4th Generation)";

        case OrchardiOSDeviceiPadMini:
            return @"iPad mini";

        case OrchardiOSDeviceiPadAir:
            return @"iPad Air";

        case OrchardiOSDeviceiPadMini2:
            return @"iPad mini 2";

        case OrchardiOSDeviceiPadAir2:
            return @"iPad Air 2";

        case OrchardiOSDeviceiPadMini3:
            return @"iPad mini 3";

        case OrchardiOSDeviceiPadMini4:
            return @"iPad mini 4";

        case OrchardiOSDeviceiPadPro12_9Inch:
            return @"iPad Pro (12.9-inch)";

        case OrchardiOSDeviceiPadPro9_7Inch:
            return @"iPad Pro (9.7-inch)";

        case OrchardiOSDeviceiPad5:
            return @"iPad (5th Generation)";

        case OrchardiOSDeviceiPadPro12_9Inch2:
            return @"iPad Pro (12.9-inch, 2nd Generation)";

        case OrchardiOSDeviceiPadPro10_5Inch:
            return @"iPad Pro (10.5-inch)";

        case OrchardiOSDeviceiPad6:
            return @"iPad (6th Generation)";

        case OrchardiOSDeviceiPadPro12_9Inch3:
            return @"iPad Pro (12.9-inch, 3rd Generation)";

        case OrchardiOSDeviceiPadPro11Inch:
            return @"iPad Pro (11-inch)";

#pragma mark - iPods

        case OrchardiOSDeviceiPodTouch:
            return @"iPod touch";

        case OrchardiOSDeviceiPodTouch2:
            return @"iPod touch (2nd Generation)";

        case OrchardiOSDeviceiPodTouch3:
            return @"iPod touch (3rd Generation)";

        case OrchardiOSDeviceiPodTouch4:
            return @"iPod touch (4th Generation)";

        case OrchardiOSDeviceiPodTouch5:
            return @"iPod touch (5th Generation)";

        case OrchardiOSDeviceiPodTouch6:
            return @"iPod touch (6th Generation)";

#pragma mark -

        default:
            break;
    }

    return nil;

#pragma clang diagnostic pop

}

#endif
