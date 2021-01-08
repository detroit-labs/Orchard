//
//  NSProcessInfo+OrchardUtilities.m
//  Orchard-ObjC
//
//  Created by Jeff Kelley on 3/10/20.
//

#import "NSProcessInfo+OrchardUtilities.h"

@implementation NSProcessInfo (OrchardUtilities)

- (NSString *)simulatorIdentifier
{
    return self.environment[@"SIMULATOR_MODEL_IDENTIFIER"];
}

@end
