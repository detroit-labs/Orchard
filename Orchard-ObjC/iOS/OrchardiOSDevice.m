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
#import "OrchardDeviceIdentification.h"

OrchardiOSDevice OrchardiOSDeviceFromNSString(NSString * _Nonnull string) {

    // Disable deprecation warnings for historical accuracy
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wunguarded-availability"

    if ([string orchard_isEqualToOneOfStrings:@[@"arm64", @"i386", @"x86_64"]]) {
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
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPhone11,4",
                                                     @"iPhone11,6"]]) {
        return OrchardiOSDeviceiPhoneXSMax;
    }
    else if ([string isEqualToString:@"iPhone11,8"]) {
        return OrchardiOSDeviceiPhoneXR;
    }
    else if ([string isEqualToString:@"iPhone12,1"]) {
        return OrchardiOSDeviceiPhone11;
    }
    else if ([string isEqualToString:@"iPhone12,3"]) {
        return OrchardiOSDeviceiPhone11Pro;
    }
    else if ([string isEqualToString:@"iPhone12,5"]) {
        return OrchardiOSDeviceiPhone11ProMax;
    }
    else if ([string isEqualToString:@"iPhone12,8"]) {
        return OrchardiOSDeviceiPhoneSE2;
    }
    else if ([string isEqualToString:@"iPhone13,2"]) {
        return OrchardiOSDeviceiPhone12;
    }
    else if ([string isEqualToString:@"iPhone13,1"]) {
        return OrchardiOSDeviceiPhone12Mini;
    }
    else if ([string isEqualToString:@"iPhone13,3"]) {
        return OrchardiOSDeviceiPhone12Pro;
    }
    else if ([string isEqualToString:@"iPhone13,4"]) {
        return OrchardiOSDeviceiPhone12ProMax;
    }
    else if ([string isEqualToString:@"iPhone14,5"]) {
        return OrchardiOSDeviceiPhone13;
    }
    else if ([string isEqualToString:@"iPhone14,4"]) {
        return OrchardiOSDeviceiPhone13Mini;
    }
    else if ([string isEqualToString:@"iPhone14,2"]) {
        return OrchardiOSDeviceiPhone13Pro;
    }
    else if ([string isEqualToString:@"iPhone14,3"]) {
        return OrchardiOSDeviceiPhone13ProMax;
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
                                                     @"iPad3,6"]]) {
        return OrchardiOSDeviceiPad4;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad6,11",
                                                     @"iPad6,12"]]) {
        return OrchardiOSDeviceiPad5;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad7,5",
                                                     @"iPad7,6"]]) {
        return OrchardiOSDeviceiPad6;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad7,11",
                                                     @"iPad7,12"]]) {
        return OrchardiOSDeviceiPad7;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad11,6",
                                                     @"iPad11,7"]]) {
        return OrchardiOSDeviceiPad8;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad12,1",
                                                     @"iPad12,2"]]) {
        return OrchardiOSDeviceiPad9th;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad2,5",
                                                     @"iPad2,6",
                                                     @"iPad2,7"]]) {
        return OrchardiOSDeviceiPadMini;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad4,4",
                                                     @"iPad4,5",
                                                     @"iPad4,6"]]) {
        return OrchardiOSDeviceiPadMini2;
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
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad11,1",
                                                     @"iPad11,2"]]) {
        return OrchardiOSDeviceiPadMini5;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad14,1",
                                                     @"iPad14,2"]]) {
        return OrchardiOSDeviceiPadMini6;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad4,1",
                                                     @"iPad4,2",
                                                     @"iPad4,3"]]) {
        return OrchardiOSDeviceiPadAir;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad5,3",
                                                     @"iPad5,4"]]) {
        return OrchardiOSDeviceiPadAir2;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad11,3",
                                                     @"iPad11,4"]]) {
        return OrchardiOSDeviceiPadAir3;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad13,1",
                                                     @"iPad13,2"]]) {
        return OrchardiOSDeviceiPadAir4;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad6,7",
                                                     @"iPad6,8"]]) {
        return OrchardiOSDeviceiPadPro12_9Inch;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad6,3",
                                                     @"iPad6,4"]]) {
        return OrchardiOSDeviceiPadPro9_7Inch;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad7,1",
                                                     @"iPad7,2"]]) {
        return OrchardiOSDeviceiPadPro12_9Inch2;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad7,3",
                                                     @"iPad7,4"]]) {
        return OrchardiOSDeviceiPadPro10_5Inch;
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
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad8,11",
                                                     @"iPad8,12"]]) {
        return OrchardiOSDeviceiPadPro12_9Inch4;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad8,9",
                                                     @"iPad8,10"]]) {
        return OrchardiOSDeviceiPadPro11Inch2;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad13,8",
                                                     @"iPad13,9",
                                                     @"iPad13,10",
                                                     @"iPad13,11"]]) {
        return OrchardiOSDeviceiPadPro12_9Inch5;
    }
    else if ([string orchard_isEqualToOneOfStrings:@[@"iPad13,4",
                                                     @"iPad13,5",
                                                     @"iPad13,6",
                                                     @"iPad13,7"]]) {
        return OrchardiOSDeviceiPadPro11Inch3;
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
    else if ([string isEqualToString:@"iPod9,1"]) {
        return OrchardiOSDeviceiPodTouch7;
    }

#pragma mark -

#pragma clang diagnostic pop

    return OrchardiOSDeviceUnknown;
}

OrchardiOSDeviceFamily OrchardiOSDeviceFamilyForiOSDevice(OrchardiOSDevice device)
{
    // Disable deprecation warnings for historical accuracy
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    switch (device) {
        case OrchardiOSDeviceSimulator: return OrchardiOSDeviceFamilySimulator;

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
        case OrchardiOSDeviceiPhone11:
        case OrchardiOSDeviceiPhone11Pro:
        case OrchardiOSDeviceiPhone11ProMax:
        case OrchardiOSDeviceiPhoneSE2:
        case OrchardiOSDeviceiPhone12:
        case OrchardiOSDeviceiPhone12Mini:
        case OrchardiOSDeviceiPhone12Pro:
        case OrchardiOSDeviceiPhone12ProMax:
        case OrchardiOSDeviceiPhone13:
        case OrchardiOSDeviceiPhone13Mini:
        case OrchardiOSDeviceiPhone13Pro:
        case OrchardiOSDeviceiPhone13ProMax:
            return OrchardiOSDeviceFamilyiPhone;

#pragma mark - iPads

        case OrchardiOSDeviceiPad:
        case OrchardiOSDeviceiPad2:
        case OrchardiOSDeviceiPad3:
        case OrchardiOSDeviceiPad4:
        case OrchardiOSDeviceiPad5:
        case OrchardiOSDeviceiPad6:
        case OrchardiOSDeviceiPad7:
        case OrchardiOSDeviceiPad8:
        case OrchardiOSDeviceiPad9th:
        case OrchardiOSDeviceiPadMini:
        case OrchardiOSDeviceiPadMini2:
        case OrchardiOSDeviceiPadMini3:
        case OrchardiOSDeviceiPadMini4:
        case OrchardiOSDeviceiPadMini5:
        case OrchardiOSDeviceiPadMini6:
        case OrchardiOSDeviceiPadAir:
        case OrchardiOSDeviceiPadAir2:
        case OrchardiOSDeviceiPadAir3:
        case OrchardiOSDeviceiPadAir4:
        case OrchardiOSDeviceiPadPro12_9Inch:
        case OrchardiOSDeviceiPadPro9_7Inch:
        case OrchardiOSDeviceiPadPro12_9Inch2:
        case OrchardiOSDeviceiPadPro10_5Inch:
        case OrchardiOSDeviceiPadPro12_9Inch3:
        case OrchardiOSDeviceiPadPro11Inch:
        case OrchardiOSDeviceiPadPro12_9Inch4:
        case OrchardiOSDeviceiPadPro11Inch2:
        case OrchardiOSDeviceiPadPro12_9Inch5:
        case OrchardiOSDeviceiPadPro11Inch3:
            return OrchardiOSDeviceFamilyiPad;

#pragma mark - iPods

        case OrchardiOSDeviceiPodTouch:
        case OrchardiOSDeviceiPodTouch2:
        case OrchardiOSDeviceiPodTouch3:
        case OrchardiOSDeviceiPodTouch4:
        case OrchardiOSDeviceiPodTouch5:
        case OrchardiOSDeviceiPodTouch6:
        case OrchardiOSDeviceiPodTouch7:
            return OrchardiOSDeviceFamilyiPod;

#pragma mark -

        case OrchardiOSDeviceUnknown:
        default:
            return OrchardiOSDeviceFamilyUnknown;
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

        case OrchardiOSDeviceiPhone11:
            return @"iPhone 11";

        case OrchardiOSDeviceiPhone11Pro:
            return @"iPhone 11 Pro";

        case OrchardiOSDeviceiPhone11ProMax:
            return @"iPhone 11 Pro Max";

        case OrchardiOSDeviceiPhoneSE2:
            return @"iPhone SE (2nd Generation)";

        case OrchardiOSDeviceiPhone12:
            return @"iPhone 12";

        case OrchardiOSDeviceiPhone12Mini:
            return @"iPhone 12 mini";

        case OrchardiOSDeviceiPhone12Pro:
            return @"iPhone 12 Pro";

        case OrchardiOSDeviceiPhone12ProMax:
            return @"iPhone 12 Pro Max";

        case OrchardiOSDeviceiPhone13:
            return @"iPhone 13";

        case OrchardiOSDeviceiPhone13Mini:
            return @"iPhone 13 mini";

        case OrchardiOSDeviceiPhone13Pro:
            return @"iPhone 13 Pro";

        case OrchardiOSDeviceiPhone13ProMax:
            return @"iPhone 13 Pro Max";

#pragma mark - iPads

        case OrchardiOSDeviceiPad:
            return @"iPad";

        case OrchardiOSDeviceiPad2:
            return @"iPad 2";

        case OrchardiOSDeviceiPad3:
            return @"iPad (3rd Generation)";

        case OrchardiOSDeviceiPad4:
            return @"iPad (4th Generation)";

        case OrchardiOSDeviceiPad5:
            return @"iPad (5th Generation)";

        case OrchardiOSDeviceiPad6:
            return @"iPad (6th Generation)";

        case OrchardiOSDeviceiPad7:
            return @"iPad (7th Generation)";

        case OrchardiOSDeviceiPad8:
            return @"iPad (8th Generation)";

        case OrchardiOSDeviceiPad9th:
            return @"iPad (9th Generation)";

        case OrchardiOSDeviceiPadMini:
            return @"iPad mini";

        case OrchardiOSDeviceiPadMini2:
            return @"iPad mini 2";

        case OrchardiOSDeviceiPadMini3:
            return @"iPad mini 3";

        case OrchardiOSDeviceiPadMini4:
            return @"iPad mini 4";

        case OrchardiOSDeviceiPadMini5:
            return @"iPad mini (5th Generation)";

        case OrchardiOSDeviceiPadMini6:
            return @"iPad mini (6th Generation)";

        case OrchardiOSDeviceiPadAir:
            return @"iPad Air";

        case OrchardiOSDeviceiPadAir2:
            return @"iPad Air 2";

        case OrchardiOSDeviceiPadAir3:
            return @"iPad Air (3rd Generation)";

        case OrchardiOSDeviceiPadAir4:
            return @"iPad Air (4th Generation)";

        case OrchardiOSDeviceiPadPro12_9Inch:
            return @"iPad Pro (12.9-inch)";

        case OrchardiOSDeviceiPadPro9_7Inch:
            return @"iPad Pro (9.7-inch)";

        case OrchardiOSDeviceiPadPro12_9Inch2:
            return @"iPad Pro (12.9-inch) (2nd Generation)";

        case OrchardiOSDeviceiPadPro10_5Inch:
            return @"iPad Pro (10.5-inch)";

        case OrchardiOSDeviceiPadPro12_9Inch3:
            return @"iPad Pro (12.9-inch) (3rd Generation)";

        case OrchardiOSDeviceiPadPro11Inch:
            return @"iPad Pro (11-inch)";

        case OrchardiOSDeviceiPadPro12_9Inch4:
            return @"iPad Pro (12.9-inch) (4th Generation)";

        case OrchardiOSDeviceiPadPro11Inch2:
            return @"iPad Pro (11-inch) (2nd Generation)";

        case OrchardiOSDeviceiPadPro12_9Inch5:
            return @"iPad Pro (12.9-inch) (5th Generation)";

        case OrchardiOSDeviceiPadPro11Inch3:
            return @"iPad Pro (11-inch) (3rd Generation)";

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

        case OrchardiOSDeviceiPodTouch7:
            return @"iPod touch (7th Generation)";

#pragma mark -

        default:
            break;
    }

    return nil;

#pragma clang diagnostic pop

}

@implementation UIDevice (Orchard)

- (OrchardiOSDevice)orchardiOSDevice
{
    return OrchardiOSDeviceFromNSString(OrchardDeviceIdentifier());
}

@end

#endif
