//
//  FontInterpreter.m
//  FCToolkit
//
//  Created by Jake Bromberg on 7/18/13.
//  Copyright (c) 2013 Flatcap. All rights reserved.
//

#import "FCFontInterpreter.h"
#import <UIKit/UIKit.h>

@implementation FCFontinterpreter

+ (void)setValue:(NSString *)attributeValue onObject:(UILabel *)label
{
    NSArray *values = [attributeValue componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@" ,"]];
    
    CGFloat fontSize = [values[0] floatValue];
    
    if (values.count == 1)
        label.font = [UIFont fontWithName:label.font.fontName size:fontSize];
    else if (values.count == 2)
        label.font = [UIFont fontWithName:values[1] size:fontSize];
}

@end
