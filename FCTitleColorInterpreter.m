//
//  TitleColorInterpreter.m
//  FCToolkit
//
//  Created by Jake Bromberg on 8/23/13.
//  Copyright (c) 2013 Flatcap. All rights reserved.
//

#import "FCTitleColorInterpreter.h"
#import "FCStyleSheetColorTransformer.h"

@implementation FCTitleColorinterpreter

+ (void)setValue:(NSString *)attributeValue onObject:(UIButton *)button
{
    NSValueTransformer *transformer = [NSValueTransformer valueTransformerForName:NSStringFromClass([FCStyleSheetColorTransformer class])];
    UIColor *color = [transformer transformedValue:attributeValue];
    
    [button setTitleColor:color forState:UIControlStateNormal];
    [button setTitleColor:color forState:UIControlStateHighlighted];
}

@end
