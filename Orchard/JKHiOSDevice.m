//
// This file was automatically generated and should not be edited.
//
//  JKHiOSDevice.m
//  Orchard
//
//  Created by Jeff Kelley on 7/17/18.
//

#import "JKHiOSDevice.h"

#import "NSString+JKHHelpers.h"

JKHiOSDevice JKHiOSDeviceFromNSString(NSString * _Nonnull string) {

    // Disable deprecation warnings for historical accuracy
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wunguarded-availability"

    if ([string jkh_isEqualToOneOfStrings:@[@"i386", @"x86_64"]]) {
        return JKHiOSDeviceSimulator;
    }

typedef NS_ENUM(NSUInteger, JKHiOSDevice) {

#pragma mark - iPhones

    else if ([string isEqualToString:@"iPhone1,1"]) {
        return iPhone;
    }
    else if ([string isEqualToString:@"iPhone1,2"]) {
        return iPhone3G;
    }
    else if ([string isEqualToString:@"iPhone2,1"]) {
        return iPhone3GS;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPhone3,1", @"iPhone3,2", @"iPhone3,3"]]) {
        return iPhone4;
    }
    else if ([string isEqualToString:@"iPhone4,1"]) {
        return iPhone4S;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPhone5,1", @"iPhone5,2"]]) {
        return iPhone5;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPhone5,3", @"iPhone5,4"]]) {
        return iPhone5c;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPhone6,1", @"iPhone6,2"]]) {
        return iPhone5s;
    }
    else if ([string isEqualToString:@"iPhone7,2"]) {
        return iPhone6;
    }
    else if ([string isEqualToString:@"iPhone7,1"]) {
        return iPhone6Plus;
    }
    else if ([string isEqualToString:@"iPhone8,1"]) {
        return iPhone6s;
    }
    else if ([string isEqualToString:@"iPhone8,2"]) {
        return iPhone6sPlus;
    }
    else if ([string isEqualToString:@"iPhone8,4"]) {
        return iPhoneSE;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPhone9,1", @"iPhone9,3"]]) {
        return iPhone7;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPhone9,2", @"iPhone9,4"]]) {
        return iPhone7Plus;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPhone10,1", @"iPhone10,4"]]) {
        return iPhone8;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPhone10,2", @"iPhone10,5"]]) {
        return iPhone8Plus;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPhone10,3", @"iPhone10,6"]]) {
        return iPhoneX;
    }

#pragma mark - iPads

    else if ([string isEqualToString:@"iPad1,1"]) {
        return iPad;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPad2,1", @"iPad2,2", @"iPad2,3", @"iPad2,4"]]) {
        return iPad2;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPad3,1", @"iPad3,2", @"iPad3,3"]]) {
        return iPad3;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPad3,4", @"iPad3,5", @"iPAd3,6"]]) {
        return iPad4;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPad2,5", @"iPad2,6", @"iPad2,7"]]) {
        return iPadMini;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPad4,1", @"iPad4,2", @"iPad4,3"]]) {
        return iPadAir;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPad4,4", @"iPad4,5", @"iPad4,6"]]) {
        return iPadMini2;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPad5,3", @"iPad5,4"]]) {
        return iPadAir2;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPad4,7", @"iPad4,8", @"iPad4,9"]]) {
        return iPadMini3;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPad5,1", @"iPad5,2"]]) {
        return iPadMini4;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPad6,7", @"iPad6,8"]]) {
        return iPadPro12_9Inch;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPad6,3", @"iPad6,4"]]) {
        return iPadPro9_7Inch;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPad6,11", @"iPad6,12"]]) {
        return iPad5;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPad7,1", @"iPad7,2"]]) {
        return iPadPro12_9Inch2;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPad7,3", @"iPad7,4"]]) {
        return iPadPro10_5Inch;
    }
    else if ([string jkh_isEqualToOneOfStrings:@[@"iPad7,5", @"iPad7,6"]]) {
        return iPad6;
    }
} NS_SWIFT_NAME(iOSDevice);

NS_ASSUME_NONNULL_END
