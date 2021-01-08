//
//  OrchardDeviceIdentification.m
//  Orchard-ObjC
//
//  Created by Jeff Kelley on 3/23/19.
//  Copyright © 2021 Detroit Labs, LLC. All rights reserved.
//

#import "OrchardDeviceIdentification.h"

#import <sys/utsname.h>

#import "NSProcessInfo+OrchardUtilities.h"

NSString *OrchardDeviceIdentifier() {
    NSString *simulatorIdentifier = 
    NSProcessInfo.processInfo.simulatorIdentifier;
    
    if (simulatorIdentifier != nil) {
        return simulatorIdentifier;
    }
    
    struct utsname systemInfo;
    uname(&systemInfo);
    
    NSString *identifier = [NSString stringWithCString:systemInfo.machine
                                              encoding:NSUTF8StringEncoding];
    
    return identifier;
}
