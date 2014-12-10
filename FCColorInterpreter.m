//
//  ColorInterpreter.m
//  FCToolkit
//
//  Created by Jake Bromberg on 7/19/13.
//  Copyright (c) 2013 Flatcap. All rights reserved.
//

#import "FCColorInterpreter.h"
#import "FCStyleSheetColorTransformer.h"
#import <UIKit/UIKit.h>

@implementation FCColorinterpreter

+ (void)setValue:(id)attributeValue onObject:(UILabel *)label
{
    NSValueTransformer *transformer = [NSValueTransformer valueTransformerForName:NSStringFromClass([FCStyleSheetColorTransformer class])];
    label.textColor = [transformer transformedValue:attributeValue];
}

@end
