//
//  UIButton+Style.m
//  FCToolkit
//
//  Created by Jake Bromberg on 8/23/13.
//  Copyright (c) 2013 Flatcap. All rights reserved.
//

#import "UIButton+Style.h"
#import "UIView+Style.h"
#import "NSObject+FCAssociativeReferences.h"

#import "FCStyleSheet.h"
#import "FCTitleColorInterpreter.h"

@implementation UIButton (Style)

@dynamic styleName;

- (NSDictionary *)supportedAttributes
{
    return [self fetchSupportedAttributesFromRuntime];
}

- (NSDictionary *)fetchSupportedAttributesFromRuntime
{
    NSMutableDictionary *supportedAttributes = [[self class] getAssociatedReference:@"supportedAttributes"];
    
    if (!supportedAttributes)
    {
        supportedAttributes = [[super supportedAttributes] mutableCopy] ?: [NSMutableDictionary dictionary];
        
        [supportedAttributes addEntriesFromDictionary:@{
           @"title-color" : [FCTitleColorInterpreter class]
        }];
        
        [[self class] setAssociatedReference:@"supportedAttributes" value:supportedAttributes];
    }
    
    return supportedAttributes;
}

@end
