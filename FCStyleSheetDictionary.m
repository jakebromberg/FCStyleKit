//
//  StyleSheetDictionary.m
//  FCToolkit
//
//  Created by Jake Bromberg on 7/18/13.
//  Copyright (c) 2013 Flatcap. All rights reserved.
//

#import "FCStyleSheetDictionary.h"
#import <UIKit/UIKit.h>

@interface FCStyleSheetDictionary ()

@property (nonatomic, retain) NSDictionary *styleDictionary;

@end

static NSDictionary *__staticStyleDictionary;

@implementation FCStyleSheetDictionary

+ (void)initialize
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSString *stylesFile;
        if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
        {
            stylesFile = @"iPad_Styles";
        }
        else
        {
            stylesFile = @"iPhone_Styles";
        }
        
        NSString *mainPlistPath = [[NSBundle mainBundle] pathForResource:stylesFile ofType:@"plist"];
        __staticStyleDictionary = [[NSDictionary alloc] initWithContentsOfFile:mainPlistPath];
    });
}

- (NSDictionary *)styleDictionary
{
    return __staticStyleDictionary;
}

@end

FC_SINGLETON_IMPLEMENTATION(FCStyleSheetDictionary)
