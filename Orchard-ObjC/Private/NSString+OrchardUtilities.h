//
//  NSString+OrchardUtilities.h
//  Orchard-ObjC
//
//  Created by Jeff Kelley on 7/17/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (OrchardUtilities)

- (BOOL)orchard_isEqualToOneOfStrings:(NSArray<NSString *> *)strings;

@end

NS_ASSUME_NONNULL_END
