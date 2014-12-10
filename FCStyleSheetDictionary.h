//
//  StyleSheetDictionary.h
//  FCToolkit
//
//  Created by Jake Bromberg on 7/18/13.
//  Copyright (c) 2013 Flatcap. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FCSingleton.h"

@interface FCStyleSheetDictionary : NSObject

@property (nonatomic, readonly) NSDictionary *styleDictionary;

@end

FC_SINGLETON_DECLARATION(FCStyleSheetDictionary)
