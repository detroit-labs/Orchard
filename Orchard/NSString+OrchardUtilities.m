//
//  NSString+OrchardUtilities.m
//  Orchard
//
//  Created by Jeff Kelley on 7/17/18.
//

#import "NSString+OrchardUtilities.h"

@implementation NSString (OrchardUtilities)

- (BOOL)orchard_isEqualToOneOfStrings:(NSArray<NSString *> *)strings
{
    for (NSString *string in strings) {
        NSAssert([string isKindOfClass:[NSString class]],
                 @"Parameter %@ is not an NSString", string);

        if ([self isEqualToString:string]) {
            return true;
        }
    }

    return false;
}

@end
