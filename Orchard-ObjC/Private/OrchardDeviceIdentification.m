//
//  OrchardDeviceIdentification.m
//  Orchard-ObjC
//
//  Created by Jeff Kelley on 3/23/19.
//  Copyright © 2020 Jeff Kelley. All rights reserved.
//

#import "OrchardDeviceIdentification.h"

#import <sys/utsname.h>

NSString *OrchardDeviceIdentifier() {
    NSString *simulatorIdentifier =
    NSProcessInfo.processInfo.environment[@"SIMULATOR_MODEL_IDENTIFIER"];
    
    if (simulatorIdentifier != nil) {
        return simulatorIdentifier;
    }
    
    struct utsname systemInfo;
    uname(&systemInfo);
    
    NSString *identifier = [NSString stringWithCString:systemInfo.machine
                                              encoding:NSUTF8StringEncoding];
    
    return identifier;
}
