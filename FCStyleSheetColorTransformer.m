//
//  FCStyleSheetColorTransformer.m
//  FCToolkit
//
//  Created by Jake Bromberg on 7/18/13.
//  Copyright (c) 2013 Flatcap. All rights reserved.
//

#import "FCStyleSheetColorTransformer.h"
#import "FCHexStringToIntTransformer.h"

#import <UIKit/UIKit.h>

@implementation FCStyleSheetColorTransformer

+ (Class)transformedValueClass
{
    return [UIColor class];
}

+ (BOOL)allowsReverseTransformation
{
    return NO;
}

- (UIColor *)transformedValue:(NSString *)value
{
    NSValueTransformer *transformer = [NSValueTransformer valueTransformerForName:NSStringFromClass([FCHexStringToIntTransformer class])];
    uint colors = [[transformer transformedValue:value] intValue];

    int red = (colors & 0x00FF0000) >> 16;
    int green = (colors & 0x0000FF00) >> 8;
    int blue = (colors & 0x000000FF);

    return [UIColor colorWithRed:red/256.0f green:green/256.0f blue:blue/256.0f alpha:1.0f];
}

@end
