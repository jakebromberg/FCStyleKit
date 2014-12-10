//
//  FCStyleSheetColorTransformer.h
//  FCToolkit
//
//  Created by Jake Bromberg on 7/18/13.
//  Copyright (c) 2013 Flatcap. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface FCStyleSheetColorTransformer : NSValueTransformer

- (UIColor *)transformedValue:(NSString *)value;

@end
