//
//  UIStyleSheet.h
//  FCToolkit
//
//  Created by Jake Bromberg on 7/18/13.
//  Copyright (c) 2013 Flatcap. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FCSingleton.h"

@protocol FCStyleSheet <NSObject>

@property (nonatomic, copy) NSString *styleName;
@property (nonatomic, readonly) NSDictionary *supportedAttributes;

@end


@interface FCStyleSheet : NSObject

/**
 *  We use a method like this to allow the calling object to maintain state. A hypothetical alternative implementation could look like `setStyle:(NSString *)styleName onView:(UIView *)view`. However, the means by which a style is set in this alternative is opaque and static, and disallows features like, to name one, switching attribute interpreters mid-enumeration.
 *
 *  @param styleName       The name of the style to be applied.
 *  @param evaluatingBlock The block to interpret attributes and their associated values. The `value` is the raw string read from the plist styleDictionary associated with `[FCStyleSheetDictionary sharedInstance]`.
 */
+ (void)enumerateAttributesForStyle:(NSString *)styleName usingBlock:(void(^)(NSString *attribute, NSString *value))evaluatingBlock;

@end
