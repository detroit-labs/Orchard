//
// This file was automatically generated and should not be edited.
//
//  OrchardtvOSDevice.h
//  Orchard
//
//  Created by Jeff Kelley on 3/21/19.
//

#import <Foundation/Foundation.h>

#if TARGET_OS_TV

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, OrchardtvOSDevice) {

    OrchardtvOSDeviceAppleTVHD  NS_ENUM_AVAILABLE_IOS(9.0)  NS_SWIFT_NAME(AppleTVHD),
    OrchardtvOSDeviceAppleTV4K  NS_ENUM_AVAILABLE_IOS(11.0) NS_SWIFT_NAME(AppleTV4K),
    OrchardtvOSDeviceAppleTV4K2 NS_ENUM_AVAILABLE_IOS(11.0) NS_SWIFT_NAME(AppleTV4K2),
    OrchardtvOSDeviceAppleTV4K3 NS_ENUM_AVAILABLE_IOS(16.1) NS_SWIFT_NAME(AppleTV4K3),

    OrchardtvOSDeviceSimulator NS_SWIFT_NAME(simulator),
    OrchardtvOSDeviceUnknown   NS_SWIFT_NAME(unknown)

} NS_SWIFT_NAME(tvOSDevice);

@interface UIDevice (Orchard)

- (OrchardtvOSDevice)orchardiOSDevice;

@end

OrchardtvOSDevice OrchardtvOSDeviceFromNSString(NSString *string) NS_SWIFT_NAME(tvOSDevice(from:));
NSString * _Nullable OrchardMarketingNameFortvOSDevice(OrchardtvOSDevice device) NS_SWIFT_NAME(marketingName(for:));

NS_ASSUME_NONNULL_END

#endif
