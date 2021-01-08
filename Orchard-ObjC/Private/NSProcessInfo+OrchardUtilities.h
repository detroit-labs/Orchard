//
//  NSProcessInfo+OrchardUtilities.h
//  Orchard-ObjC
//
//  Created by Jeff Kelley on 3/10/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSProcessInfo (OrchardUtilities)

@property (nonatomic, readonly, nullable) NSString *simulatorIdentifier;

@end

NS_ASSUME_NONNULL_END
