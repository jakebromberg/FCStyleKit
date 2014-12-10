//
//  BackgroundColorValueTransformer.h
//  FCToolkit
//
//  Created by Jake Bromberg on 7/18/13.
//  Copyright (c) 2013 Flatcap. All rights reserved.
//

#import "FCStyleSheetValueInterpreter.h"

@interface FCBackgroundColorValueinterpreter : FCStyleSheetValueInterpreter

+ (void)setValue:(NSString *)attributeValue onObject:(id)object;

@end
