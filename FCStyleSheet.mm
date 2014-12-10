//
//  UIView+Style.m
//  FCToolkit
//
//  Created by Jake Bromberg on 7/18/13.
//  Copyright (c) 2013 Flatcap. All rights reserved.
//

#import "FCStyleSheet.h"
#import "FCStyleSheetDictionary.h"

@implementation FCStyleSheet

+ (void)enumerateAttributesForStyle:(NSString *)styleName usingBlock:(void(^)(NSString *attribute, NSString *value))evaluatingBlock
{
    NSDictionary *style = [FCStyleSheetDictionary sharedInstance].styleDictionary[styleName];
    
    for (NSString *key in style.allKeys) {
        evaluatingBlock(key, style[key]);
    }
}

@end