//
//  ContinentData.h
//  HotSpots
//
//  Created by Ethan Hess on 3/23/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString *const headerKey = @"header";
static NSString *const imageKey = @"image";
static NSString *const descriptionKey = @"description";

@interface ContinentData : NSObject

+ (NSInteger)count;

+ (NSDictionary *)cellAtIndex:(NSInteger)index;

+ (NSString *)headerAtIndex:(NSInteger)index;

+ (NSString *)imageAtIndex:(NSInteger)index;

+ (NSString *)descriptionAtIndex:(NSInteger)index;

+ (NSArray *)cellInfo;

@end
