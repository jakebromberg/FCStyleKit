//
//  TitleColorInterpreter.h
//  FCToolkit
//
//  Created by Jake Bromberg on 8/23/13.
//  Copyright (c) 2013 Flatcap. All rights reserved.
//

#import "FCStyleSheetValueInterpreter.h"

@interface FCTitleColorinterpreter : FCStyleSheetValueInterpreter

+ (void)setValue:(NSString *)attributeValue onObject:(UIButton *)button;

@end
