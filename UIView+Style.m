//
//  UIView+Style.m
//  FCToolkit
//
//  Created by Jake Bromberg on 7/18/13.
//  Copyright (c) 2013 Flatcap. All rights reserved.
//

#import "UIView+Style.h"
#import "NSObject+FCAssociativeReferences.h"

#import "FCStyleSheetDictionary.h"
#import "FCBackgroundColorValueInterpreter.h"
#import "FCCornerRadiusInterpreter.h"

@implementation UIView (Style)

- (NSDictionary *)supportedAttributes
{
    return @{
        @"background-color" : [FCBackgroundColorValueInterpreter class],
        @"corner-radius" : [FCCornerRadiusInterpreter class]
    };
}

- (void)setStyleName:(NSString *)styleName
{
    [self setAssociatedReference:@"styleName" value:styleName];
    
    __block typeof(self) __self = self;
    __block NSDictionary *__interpreterDict = self.supportedAttributes;
    
    [FCStyleSheet enumerateAttributesForStyle:styleName usingBlock:^(NSString *key, NSString *value) {
        [__interpreterDict[key] setValue:value onObject:__self];
    }];
}

- (NSString *)styleName
{
    return [self getAssociatedReference:@"styleName"];
}

@end
