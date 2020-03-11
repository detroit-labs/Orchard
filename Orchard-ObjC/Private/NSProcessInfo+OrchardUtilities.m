//
//  NSProcessInfo+OrchardUtilities.m
//  Orchard-ObjC
//
//  Created by Jeff Kelley on 3/10/20.
//  Copyright © 2020 Jeff Kelley. All rights reserved.
//

#import "NSProcessInfo+OrchardUtilities.h"

@implementation NSProcessInfo (OrchardUtilities)

- (NSString *)simulatorIdentifier
{
    return self.environment[@"SIMULATOR_MODEL_IDENTIFIER"];
}

@end
