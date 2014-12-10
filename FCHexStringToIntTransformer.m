//
//  FCHexStringToIntTransformer.m
//  FCToolkit
//
//  Created by Jake Bromberg on 7/18/13.
//  Copyright (c) 2013 Flatcap. All rights reserved.
//

#import "FCHexStringToIntTransformer.h"

@implementation FCHexStringToIntTransformer

+ (void)initialize
{
    [NSValueTransformer setValueTransformer:[[self alloc] init] forName:NSStringFromClass([self class])];
}

+ (Class)transformedValueClass
{
    return [NSValue class];
}

+ (BOOL)allowsReverseTransformation
{
    return NO;
}

- (NSValue *)transformedValue:(NSString *)hexString
{
    NSScanner *scanner;
    unsigned int result;
    
    scanner = [NSScanner scannerWithString:hexString];
    [scanner scanHexInt: &result];
    
    return @(result);
}

@end
