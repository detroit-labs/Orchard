//
// This file was automatically generated and should not be edited.
//
//  OrchardWatchOSDevice.h
//  Orchard
//
//  Created by Jeff Kelley on 7/17/18.
//

#import <Foundation/Foundation.h>

#if TARGET_OS_WATCH

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, OrchardWatchOSDevice) {

    OrchardWatchOSDeviceAppleWatch_38mm        NS_ENUM_DEPRECATED_IOS(8.0, 11.0) NS_SWIFT_NAME(AppleWatch_38mm),
    OrchardWatchOSDeviceAppleWatch_42mm        NS_ENUM_DEPRECATED_IOS(8.0, 11.0) NS_SWIFT_NAME(AppleWatch_42mm),
    OrchardWatchOSDeviceAppleWatchSeries1_38mm NS_ENUM_AVAILABLE_IOS(10.0)       NS_SWIFT_NAME(AppleWatchSeries1_38mm),
    OrchardWatchOSDeviceAppleWatchSeries1_42mm NS_ENUM_AVAILABLE_IOS(10.0)       NS_SWIFT_NAME(AppleWatchSeries1_42mm),
    OrchardWatchOSDeviceAppleWatchSeries2_38mm NS_ENUM_AVAILABLE_IOS(10.0)       NS_SWIFT_NAME(AppleWatchSeries2_38mm),
    OrchardWatchOSDeviceAppleWatchSeries2_42mm NS_ENUM_AVAILABLE_IOS(10.0)       NS_SWIFT_NAME(AppleWatchSeries2_42mm),
    OrchardWatchOSDeviceAppleWatchSeries3_38mm NS_ENUM_AVAILABLE_IOS(11.0)       NS_SWIFT_NAME(AppleWatchSeries3_38mm),
    OrchardWatchOSDeviceAppleWatchSeries3_42mm NS_ENUM_AVAILABLE_IOS(11.0)       NS_SWIFT_NAME(AppleWatchSeries3_42mm),
    OrchardWatchOSDeviceAppleWatchSeries4_40mm NS_ENUM_AVAILABLE_IOS(12.0)       NS_SWIFT_NAME(AppleWatchSeries4_40mm),
    OrchardWatchOSDeviceAppleWatchSeries4_44mm NS_ENUM_AVAILABLE_IOS(12.0)       NS_SWIFT_NAME(AppleWatchSeries4_44mm),

    OrchardWatchOSDeviceSimulator NS_SWIFT_NAME(simulator),
    OrchardWatchOSDeviceUnknown   NS_SWIFT_NAME(unknown)

} NS_SWIFT_NAME(watchOSDevice);

OrchardWatchOSDevice OrchardWatchOSDeviceFromNSString(NSString *string) NS_SWIFT_NAME(watchOSDevice(from:));
NSString * _Nullable OrchardMarketingNameForWatchOSDevice(OrchardWatchOSDevice device) NS_SWIFT_NAME(marketingName(for:));

NS_ASSUME_NONNULL_END

#endif
