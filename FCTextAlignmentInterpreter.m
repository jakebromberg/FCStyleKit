//
//  TextAlignmentInterpreter.m
//  FCToolkit
//
//  Created by Jake Bromberg on 7/19/13.
//  Copyright (c) 2013 Flatcap. All rights reserved.
//

#import "FCTextAlignmentInterpreter.h"
#import <UIKit/UIKit.h>

@implementation FCTextAlignmentinterpreter

+ (void)setValue:(NSString *)attributeValue onObject:(UILabel *)label
{
    attributeValue = [attributeValue lowercaseString];
    
    if([attributeValue isEqualToString:@"left"])
        label.textAlignment = NSTextAlignmentLeft;
    else if ([attributeValue isEqualToString:@"center"])
        label.textAlignment = NSTextAlignmentCenter;
    else if ([attributeValue isEqualToString:@"right"])
        label.textAlignment = NSTextAlignmentRight;
}

@end
