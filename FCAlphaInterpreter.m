//
//  AlphaInterpreter.m
//  FCToolkit
//
//  Created by Jake Bromberg on 7/19/13.
//  Copyright (c) 2013 Flatcap. All rights reserved.
//

#import "FCAlphaInterpreter.h"
#import <UIKit/UIKit.h>

@implementation FCAlphainterpreter

+ (void)setValue:(NSString *)attributeValue onObject:(UIView *)view
{
    view.alpha = [attributeValue floatValue];
}

@end
