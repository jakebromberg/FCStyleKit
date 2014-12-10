//
//  FCStyleSheetValueInterpreter.m
//  FCToolkit
//
//  Created by Jake Bromberg on 7/18/13.
//  Copyright (c) 2013 Flatcap. All rights reserved.
//

#import "FCStyleSheetValueInterpreter.h"
#import "FCHexStringToIntTransformer.h"
#import "FCStyleSheetColorTransformer.h"

@implementation FCStyleSheetValueinterpreter

+ (void)initialize
{
    NSArray *transformers = @[
        [FCHexStringToIntTransformer class],
        [FCStyleSheetColorTransformer class]
    ];
    
    for (Class transformerClass in transformers)
    {
        [NSValueTransformer setValueTransformer:[[transformerClass alloc] init] forName:NSStringFromClass(transformerClass)];
    }
}

+ (void)setValue:(id)attributeValue onObject:(id)object
{
    
}

@end
