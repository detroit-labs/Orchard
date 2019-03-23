//
// This file was automatically generated and should not be edited.
//
//  OrchardiOSDevice.h
//  Orchard
//
//  Created by Jeff Kelley on 7/17/18.
//

#import <Foundation/Foundation.h>

#if TARGET_OS_IOS

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, OrchardiOSiOSDeviceFamily) {
    OrchardiOSiOSDeviceFamilyiPhone NS_SWIFT_NAME(iPhone),
    OrchardiOSiOSDeviceFamilyiPad   NS_SWIFT_NAME(iPad),
    OrchardiOSiOSDeviceFamilyiPod   NS_SWIFT_NAME(iPod),
    OrchardiOSiOSDeviceFamilySimulator NS_SWIFT_NAME(simulator),
    OrchardiOSiOSDeviceFamilyUnknown   NS_SWIFT_NAME(unknown)
} NS_SWIFT_NAME(iOSiOSDeviceFamily);

typedef NS_ENUM(NSUInteger, OrchardiOSDevice) {

    // iPhones
    OrchardiOSDeviceiPhone       NS_ENUM_DEPRECATED_IOS(1.0, 3.2)  NS_SWIFT_NAME(iPhone),
    OrchardiOSDeviceiPhone3G     NS_ENUM_DEPRECATED_IOS(2.0, 4.3)  NS_SWIFT_NAME(iPhone3G),
    OrchardiOSDeviceiPhone3GS    NS_ENUM_DEPRECATED_IOS(3.0, 7.0)  NS_SWIFT_NAME(iPhone3GS),
    OrchardiOSDeviceiPhone4      NS_ENUM_DEPRECATED_IOS(4.0, 8.0)  NS_SWIFT_NAME(iPhone4),
    OrchardiOSDeviceiPhone4S     NS_ENUM_DEPRECATED_IOS(5.0, 10.0) NS_SWIFT_NAME(iPhone4S),
    OrchardiOSDeviceiPhone5      NS_ENUM_DEPRECATED_IOS(6.0, 11.0) NS_SWIFT_NAME(iPhone5),
    OrchardiOSDeviceiPhone5c     NS_ENUM_DEPRECATED_IOS(7.0, 11.0) NS_SWIFT_NAME(iPhone5c),
    OrchardiOSDeviceiPhone5s     NS_ENUM_AVAILABLE_IOS(7.0)        NS_SWIFT_NAME(iPhone5s),
    OrchardiOSDeviceiPhone6      NS_ENUM_AVAILABLE_IOS(8.0)        NS_SWIFT_NAME(iPhone6),
    OrchardiOSDeviceiPhone6Plus  NS_ENUM_AVAILABLE_IOS(8.0)        NS_SWIFT_NAME(iPhone6Plus),
    OrchardiOSDeviceiPhone6s     NS_ENUM_AVAILABLE_IOS(9.0)        NS_SWIFT_NAME(iPhone6s),
    OrchardiOSDeviceiPhone6sPlus NS_ENUM_AVAILABLE_IOS(9.0)        NS_SWIFT_NAME(iPhone6sPlus),
    OrchardiOSDeviceiPhoneSE     NS_ENUM_AVAILABLE_IOS(9.3)        NS_SWIFT_NAME(iPhoneSE),
    OrchardiOSDeviceiPhone7      NS_ENUM_AVAILABLE_IOS(10.0)       NS_SWIFT_NAME(iPhone7),
    OrchardiOSDeviceiPhone7Plus  NS_ENUM_AVAILABLE_IOS(10.0)       NS_SWIFT_NAME(iPhone7Plus),
    OrchardiOSDeviceiPhone8      NS_ENUM_AVAILABLE_IOS(11.0)       NS_SWIFT_NAME(iPhone8),
    OrchardiOSDeviceiPhone8Plus  NS_ENUM_AVAILABLE_IOS(11.0)       NS_SWIFT_NAME(iPhone8Plus),
    OrchardiOSDeviceiPhoneX      NS_ENUM_AVAILABLE_IOS(11.0)       NS_SWIFT_NAME(iPhoneX),
    OrchardiOSDeviceiPhoneXS     NS_ENUM_AVAILABLE_IOS(12.0)       NS_SWIFT_NAME(iPhoneXS),
    OrchardiOSDeviceiPhoneXSMax  NS_ENUM_AVAILABLE_IOS(12.0)       NS_SWIFT_NAME(iPhoneXSMax),
    OrchardiOSDeviceiPhoneXR     NS_ENUM_AVAILABLE_IOS(12.0)       NS_SWIFT_NAME(iPhoneXR),

    // iPads
    OrchardiOSDeviceiPad             NS_ENUM_DEPRECATED_IOS(3.2, 6.0)  NS_SWIFT_NAME(iPad),
    OrchardiOSDeviceiPad2            NS_ENUM_DEPRECATED_IOS(4.3, 10.0) NS_SWIFT_NAME(iPad2),
    OrchardiOSDeviceiPad3            NS_ENUM_DEPRECATED_IOS(5.1, 10.0) NS_SWIFT_NAME(iPad3),
    OrchardiOSDeviceiPad4            NS_ENUM_DEPRECATED_IOS(6.0, 11.0) NS_SWIFT_NAME(iPad4),
    OrchardiOSDeviceiPadMini         NS_ENUM_DEPRECATED_IOS(3.0, 10.0) NS_SWIFT_NAME(iPadMini),
    OrchardiOSDeviceiPadAir          NS_ENUM_AVAILABLE_IOS(7.0)        NS_SWIFT_NAME(iPadAir),
    OrchardiOSDeviceiPadMini2        NS_ENUM_AVAILABLE_IOS(7.0)        NS_SWIFT_NAME(iPadMini2),
    OrchardiOSDeviceiPadAir2         NS_ENUM_AVAILABLE_IOS(8.1)        NS_SWIFT_NAME(iPadAir2),
    OrchardiOSDeviceiPadMini3        NS_ENUM_AVAILABLE_IOS(8.1)        NS_SWIFT_NAME(iPadMini3),
    OrchardiOSDeviceiPadMini4        NS_ENUM_AVAILABLE_IOS(9.0)        NS_SWIFT_NAME(iPadMini4),
    OrchardiOSDeviceiPadPro12_9Inch  NS_ENUM_AVAILABLE_IOS(9.1)        NS_SWIFT_NAME(iPadPro12_9Inch),
    OrchardiOSDeviceiPadPro9_7Inch   NS_ENUM_AVAILABLE_IOS(9.3)        NS_SWIFT_NAME(iPadPro9_7Inch),
    OrchardiOSDeviceiPad5            NS_ENUM_AVAILABLE_IOS(10.3)       NS_SWIFT_NAME(iPad5),
    OrchardiOSDeviceiPadPro12_9Inch2 NS_ENUM_AVAILABLE_IOS(10.3)       NS_SWIFT_NAME(iPadPro12_9Inch2),
    OrchardiOSDeviceiPadPro10_5Inch  NS_ENUM_AVAILABLE_IOS(10.3)       NS_SWIFT_NAME(iPadPro10_5Inch),
    OrchardiOSDeviceiPad6            NS_ENUM_AVAILABLE_IOS(11.3)       NS_SWIFT_NAME(iPad6),
    OrchardiOSDeviceiPadPro12_9Inch3 NS_ENUM_AVAILABLE_IOS(12.1)       NS_SWIFT_NAME(iPadPro12_9Inch3),
    OrchardiOSDeviceiPadPro11Inch    NS_ENUM_AVAILABLE_IOS(12.1)       NS_SWIFT_NAME(iPadPro11Inch),

    // iPods
    OrchardiOSDeviceiPodTouch  NS_ENUM_DEPRECATED_IOS(1.0, 3.2)  NS_SWIFT_NAME(iPodTouch),
    OrchardiOSDeviceiPodTouch2 NS_ENUM_DEPRECATED_IOS(2.1, 4.3)  NS_SWIFT_NAME(iPodTouch2),
    OrchardiOSDeviceiPodTouch3 NS_ENUM_DEPRECATED_IOS(3.1, 6.0)  NS_SWIFT_NAME(iPodTouch3),
    OrchardiOSDeviceiPodTouch4 NS_ENUM_DEPRECATED_IOS(4.1, 7.0)  NS_SWIFT_NAME(iPodTouch4),
    OrchardiOSDeviceiPodTouch5 NS_ENUM_DEPRECATED_IOS(6.0, 10.0) NS_SWIFT_NAME(iPodTouch5),
    OrchardiOSDeviceiPodTouch6 NS_ENUM_AVAILABLE_IOS(8.4)        NS_SWIFT_NAME(iPodTouch6),

    OrchardiOSDeviceSimulator NS_SWIFT_NAME(simulator),
    OrchardiOSDeviceUnknown   NS_SWIFT_NAME(unknown)

} NS_SWIFT_NAME(iOSDevice);

@interface UIDevice (Orchard)

- (OrchardiOSDevice)orchardiOSDevice;

@end

OrchardiOSDevice OrchardiOSDeviceFromNSString(NSString *string) NS_SWIFT_NAME(iOSDevice(from:));
OrchardiOSiOSDeviceFamily OrchardiOSiOSDeviceFamilyForiOSDevice(OrchardiOSDevice device) NS_SWIFT_NAME(iOSiOSDeviceFamily(for:));
NSString * _Nullable OrchardMarketingNameForiOSDevice(OrchardiOSDevice device) NS_SWIFT_NAME(marketingName(for:));

NS_ASSUME_NONNULL_END

#endif
