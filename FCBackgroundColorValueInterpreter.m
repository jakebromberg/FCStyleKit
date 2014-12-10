//
//  BackgroundColorValueTransformer.m
//  FCToolkit
//
//  Created by Jake Bromberg on 7/18/13.
//  Copyright (c) 2013 Flatcap. All rights reserved.
//

#import "FCBackgroundColorValueInterpreter.h"
#import "FCStyleSheetColorTransformer.h"
#import <UIKit/UIKit.h>

@implementation FCBackgroundColorValueinterpreter

+ (void)setValue:(NSString *)attributeValue onObject:(UIView *)view
{
    NSValueTransformer *transformer = [NSValueTransformer valueTransformerForName:NSStringFromClass([FCStyleSheetColorTransformer class])];
    view.backgroundColor = [transformer transformedValue:attributeValue];
}

@end
