//
//  Orchard.h
//  Orchard-ObjC
//
//  Created by Jeff Kelley on 3/21/19.
//

#import <UIKit/UIKit.h>

//! Project version number for Orchard.
FOUNDATION_EXPORT double OrchardVersionNumber;

//! Project version string for Orchard_ObjC.
FOUNDATION_EXPORT const unsigned char OrchardVersionString[];

#if TARGET_OS_IOS
    #import <Orchard/OrchardiOSDevice.h>
#elif TARGET_OS_WATCH
    #import <Orchard/OrchardwatchOSDevice.h>
#elif TARGET_OS_TV
    #import <Orchard/OrchardtvOSDevice.h>
#endif
