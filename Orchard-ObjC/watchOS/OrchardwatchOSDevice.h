//
// This file was automatically generated and should not be edited.
//
//  OrchardwatchOSDevice.h
//  Orchard
//
//  Created by Jeff Kelley on 7/17/18.
//

#import <Foundation/Foundation.h>

#if TARGET_OS_WATCH

#import <WatchKit/WatchKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, OrchardwatchOSDevice) {

    OrchardwatchOSDeviceAppleWatch_38mm        NS_ENUM_DEPRECATED_IOS(8.0, 12.0)  NS_SWIFT_NAME(AppleWatch_38mm),
    OrchardwatchOSDeviceAppleWatch_42mm        NS_ENUM_DEPRECATED_IOS(8.0, 12.0)  NS_SWIFT_NAME(AppleWatch_42mm),
    OrchardwatchOSDeviceAppleWatchSeries1_38mm NS_ENUM_DEPRECATED_IOS(10.0, 14.0) NS_SWIFT_NAME(AppleWatchSeries1_38mm),
    OrchardwatchOSDeviceAppleWatchSeries1_42mm NS_ENUM_DEPRECATED_IOS(10.0, 14.0) NS_SWIFT_NAME(AppleWatchSeries1_42mm),
    OrchardwatchOSDeviceAppleWatchSeries2_38mm NS_ENUM_DEPRECATED_IOS(10.0, 14.0) NS_SWIFT_NAME(AppleWatchSeries2_38mm),
    OrchardwatchOSDeviceAppleWatchSeries2_42mm NS_ENUM_DEPRECATED_IOS(10.0, 14.0) NS_SWIFT_NAME(AppleWatchSeries2_42mm),
    OrchardwatchOSDeviceAppleWatchSeries3_38mm NS_ENUM_AVAILABLE_IOS(11.0)        NS_SWIFT_NAME(AppleWatchSeries3_38mm),
    OrchardwatchOSDeviceAppleWatchSeries3_42mm NS_ENUM_AVAILABLE_IOS(11.0)        NS_SWIFT_NAME(AppleWatchSeries3_42mm),
    OrchardwatchOSDeviceAppleWatchSeries4_40mm NS_ENUM_AVAILABLE_IOS(12.0)        NS_SWIFT_NAME(AppleWatchSeries4_40mm),
    OrchardwatchOSDeviceAppleWatchSeries4_44mm NS_ENUM_AVAILABLE_IOS(12.0)        NS_SWIFT_NAME(AppleWatchSeries4_44mm),
    OrchardwatchOSDeviceAppleWatchSeries5_40mm NS_ENUM_AVAILABLE_IOS(13.0)        NS_SWIFT_NAME(AppleWatchSeries5_40mm),
    OrchardwatchOSDeviceAppleWatchSeries5_44mm NS_ENUM_AVAILABLE_IOS(13.0)        NS_SWIFT_NAME(AppleWatchSeries5_44mm),
    OrchardwatchOSDeviceAppleWatchSE_40mm      NS_ENUM_AVAILABLE_IOS(14.0)        NS_SWIFT_NAME(AppleWatchSE_40mm),
    OrchardwatchOSDeviceAppleWatchSE_44mm      NS_ENUM_AVAILABLE_IOS(14.0)        NS_SWIFT_NAME(AppleWatchSE_44mm),
    OrchardwatchOSDeviceAppleWatchSeries6_40mm NS_ENUM_AVAILABLE_IOS(14.0)        NS_SWIFT_NAME(AppleWatchSeries6_40mm),
    OrchardwatchOSDeviceAppleWatchSeries6_44mm NS_ENUM_AVAILABLE_IOS(14.0)        NS_SWIFT_NAME(AppleWatchSeries6_44mm),
    OrchardwatchOSDeviceAppleWatchSeries7_41mm NS_ENUM_AVAILABLE_IOS(15.0)        NS_SWIFT_NAME(AppleWatchSeries7_41mm),
    OrchardwatchOSDeviceAppleWatchSeries7_45mm NS_ENUM_AVAILABLE_IOS(15.0)        NS_SWIFT_NAME(AppleWatchSeries7_45mm),

    OrchardwatchOSDeviceSimulator NS_SWIFT_NAME(simulator),
    OrchardwatchOSDeviceUnknown   NS_SWIFT_NAME(unknown)

} NS_SWIFT_NAME(watchOSDevice);

@interface WKInterfaceDevice (Orchard)

- (OrchardwatchOSDevice)orchardwatchOSDevice;

@end

OrchardwatchOSDevice OrchardwatchOSDeviceFromNSString(NSString *string) NS_SWIFT_NAME(watchOSDevice(from:));
NSString * _Nullable OrchardMarketingNameForWatchOSDevice(OrchardwatchOSDevice device) NS_SWIFT_NAME(marketingName(for:));

NS_ASSUME_NONNULL_END

#endif
