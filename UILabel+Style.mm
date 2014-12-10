//
//  UILabel+Style.mm
//  XBXToolkit
//
//  Created by Jake Bromberg on 7/18/13.
//  Copyright (c) 2013 Microsoft. All rights reserved.
//

#import "UILabel+Style.h"
#import "XBXStyleSheet.h"
#import "NSObject+XBXAssociativeReferences.h"

#import "FCFontInterpreter.h"
#import "FCAlphaInterpreter.h"
#import "FCNumberOfLinesInterpreter.h"
#import "FCTextAlignmentInterpreter.h"
#import "FCColorInterpreter.h"

@implementation UILabel (Style)

@dynamic styleName;

- (NSDictionary *)supportedAttributes
{
    return [self fetchSupportedAttributesFromRuntime];
}

- (NSDictionary *)fetchSupportedAttributesFromRuntime
{
    NSMutableDictionary *supportedAttributes = [self getAssociatedReference:@"supportedAttributes"];
    
    if (!supportedAttributes)
    {
        supportedAttributes = [NSMutableDictionary dictionaryWithDictionary:super.supportedAttributes];
        
        [supportedAttributes addEntriesFromDictionary:@{
            @"font" : [FCFontInterpreter class],
            @"alpha" : [FCAlphaInterpreter class],
            @"number-lines" : [FCNumberOfLinesInterpreter class],
            @"text-alignment" : [FCTextAlignmentInterpreter class],
            @"color" : [FCColorInterpreter class],
        }];
        
        [self setAssociatedReference:@"supportedAttributes" value:supportedAttributes];
    }
    
    return supportedAttributes;
}

@end
