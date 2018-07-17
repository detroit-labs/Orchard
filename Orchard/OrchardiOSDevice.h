//
// This file was automatically generated and should not be edited.
//
//  OrchardiOSDevice.h
//  Orchard
//
//  Created by Jeff Kelley on 7/17/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, OrchardiOSDeviceFamily) {
    OrchardiOSDeviceFamilyiPhone    NS_SWIFT_NAME(iPhone),
    OrchardiOSDeviceFamilyiPad      NS_SWIFT_NAME(iPad),
    OrchardiOSDeviceFamilyiPodTouch NS_SWIFT_NAME(iPodTouch),
    OrchardiOSDeviceFamilySimulator NS_SWIFT_NAME(simulator),
    OrchardiOSDeviceFamilyUnknown   NS_SWIFT_NAME(unknown)
} NS_SWIFT_NAME(iOSDeviceFamily);

typedef NS_ENUM(NSUInteger, OrchardiOSDevice) {

    // iPhones
    OrchardiOSDeviceiPhone NS_ENUM_DEPRECATED_IOS(1.0, 3.2) NS_SWIFT_NAME(iPhone),
    OrchardiOSDeviceiPhone3G NS_ENUM_DEPRECATED_IOS(2.0, 4.3) NS_SWIFT_NAME(iPhone3G),
    OrchardiOSDeviceiPhone3GS NS_ENUM_DEPRECATED_IOS(3.0, 7.0) NS_SWIFT_NAME(iPhone3GS),
    OrchardiOSDeviceiPhone4 NS_ENUM_DEPRECATED_IOS(4.0, 8.0) NS_SWIFT_NAME(iPhone4),
    OrchardiOSDeviceiPhone4S NS_ENUM_DEPRECATED_IOS(5.0, 10.0) NS_SWIFT_NAME(iPhone4S),
    OrchardiOSDeviceiPhone5 NS_ENUM_DEPRECATED_IOS(6.0, 11.0) NS_SWIFT_NAME(iPhone5),
    OrchardiOSDeviceiPhone5c NS_ENUM_DEPRECATED_IOS(7.0, 11.0) NS_SWIFT_NAME(iPhone5c),
    OrchardiOSDeviceiPhone5s NS_ENUM_AVAILABLE_IOS(7.0) NS_SWIFT_NAME(iPhone5s),
    OrchardiOSDeviceiPhone6 NS_ENUM_AVAILABLE_IOS(8.0) NS_SWIFT_NAME(iPhone6),
    OrchardiOSDeviceiPhone6Plus NS_ENUM_AVAILABLE_IOS(8.0) NS_SWIFT_NAME(iPhone6Plus),
    OrchardiOSDeviceiPhone6s NS_ENUM_AVAILABLE_IOS(9.0) NS_SWIFT_NAME(iPhone6s),
    OrchardiOSDeviceiPhone6sPlus NS_ENUM_AVAILABLE_IOS(9.0) NS_SWIFT_NAME(iPhone6sPlus),
    OrchardiOSDeviceiPhoneSE NS_ENUM_AVAILABLE_IOS(9.3) NS_SWIFT_NAME(iPhoneSE),
    OrchardiOSDeviceiPhone7 NS_ENUM_AVAILABLE_IOS(10.0) NS_SWIFT_NAME(iPhone7),
    OrchardiOSDeviceiPhone7Plus NS_ENUM_AVAILABLE_IOS(10.0) NS_SWIFT_NAME(iPhone7Plus),
    OrchardiOSDeviceiPhone8 NS_ENUM_AVAILABLE_IOS(11.0) NS_SWIFT_NAME(iPhone8),
    OrchardiOSDeviceiPhone8Plus NS_ENUM_AVAILABLE_IOS(11.0) NS_SWIFT_NAME(iPhone8Plus),
    OrchardiOSDeviceiPhoneX NS_ENUM_AVAILABLE_IOS(11.0) NS_SWIFT_NAME(iPhoneX),

    // iPads
    OrchardiOSDeviceiPad NS_ENUM_DEPRECATED_IOS(3.2, 6.0) NS_SWIFT_NAME(iPad),
    OrchardiOSDeviceiPad2 NS_ENUM_DEPRECATED_IOS(4.3, 10.0) NS_SWIFT_NAME(iPad2),
    OrchardiOSDeviceiPad3 NS_ENUM_DEPRECATED_IOS(5.1, 10.0) NS_SWIFT_NAME(iPad3),
    OrchardiOSDeviceiPad4 NS_ENUM_DEPRECATED_IOS(6.0, 11.0) NS_SWIFT_NAME(iPad4),
    OrchardiOSDeviceiPadMini NS_ENUM_DEPRECATED_IOS(3.0, 10.0) NS_SWIFT_NAME(iPadMini),
    OrchardiOSDeviceiPadAir NS_ENUM_AVAILABLE_IOS(7.0) NS_SWIFT_NAME(iPadAir),
    OrchardiOSDeviceiPadMini2 NS_ENUM_AVAILABLE_IOS(7.0) NS_SWIFT_NAME(iPadMini2),
    OrchardiOSDeviceiPadAir2 NS_ENUM_AVAILABLE_IOS(8.1) NS_SWIFT_NAME(iPadAir2),
    OrchardiOSDeviceiPadMini3 NS_ENUM_AVAILABLE_IOS(8.1) NS_SWIFT_NAME(iPadMini3),
    OrchardiOSDeviceiPadMini4 NS_ENUM_AVAILABLE_IOS(9.0) NS_SWIFT_NAME(iPadMini4),
    OrchardiOSDeviceiPadPro12_9Inch NS_ENUM_AVAILABLE_IOS(9.1) NS_SWIFT_NAME(iPadPro12_9Inch),
    OrchardiOSDeviceiPadPro9_7Inch NS_ENUM_AVAILABLE_IOS(9.3) NS_SWIFT_NAME(iPadPro9_7Inch),
    OrchardiOSDeviceiPad5 NS_ENUM_AVAILABLE_IOS(10.3) NS_SWIFT_NAME(iPad5),
    OrchardiOSDeviceiPadPro12_9Inch2 NS_ENUM_AVAILABLE_IOS(10.3) NS_SWIFT_NAME(iPadPro12_9Inch2),
    OrchardiOSDeviceiPadPro10_5Inch NS_ENUM_AVAILABLE_IOS(10.3) NS_SWIFT_NAME(iPadPro10_5Inch),
    OrchardiOSDeviceiPad6 NS_ENUM_AVAILABLE_IOS(11.3) NS_SWIFT_NAME(iPad6),

    OrchardiOSDeviceSimulator   NS_SWIFT_NAME(simulator),
    OrchardiOSDeviceUnknown     NS_SWIFT_NAME(unknown)
} NS_SWIFT_NAME(iOSDevice);

OrchardiOSDevice OrchardiOSDeviceFromNSString(NSString *string) NS_SWIFT_NAME(iOSDevice(from:));
OrchardiOSDeviceFamily OrchardiOSDeviceFamilyForiOSDevice(OrchardiOSDevice device) NS_SWIFT_NAME(iOSDeviceFamily(for:));
NSString * _Nullable OrchardMarketingNameForDevice(OrchardiOSDevice device) NS_SWIFT_NAME(marketingName(for:));

NS_ASSUME_NONNULL_END
