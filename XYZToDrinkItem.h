//
//  XYZToDrinkItem.h
//  ToDrinkList
//
//  Created by Alexandra Bassen on 2/16/14.
//  Copyright (c) 2014 Alexandra Bassen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZToDrinkItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;

@end
