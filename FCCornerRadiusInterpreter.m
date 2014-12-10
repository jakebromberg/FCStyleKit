//
//  CornerRadiusInterpreter.m
//  FCToolkit
//
//  Created by Jake Bromberg on 8/23/13.
//  Copyright (c) 2013 Flatcap. All rights reserved.
//

#import "FCCornerRadiusInterpreter.h"
#import <QuartzCore/QuartzCore.h>

@implementation FCCornerRadiusinterpreter

+ (void)setValue:(NSString *)attributeValue onObject:(UIView *)object
{
    CGFloat cornerRadius = [attributeValue floatValue];
    
    object.layer.cornerRadius = cornerRadius;
}

@end
