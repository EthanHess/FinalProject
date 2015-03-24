//
//  ContinentData.m
//  HotSpots
//
//  Created by Ethan Hess on 3/23/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ContinentData.h"

@implementation ContinentData

+ (NSInteger)count {
    
    return [[self cellInfo]count];
}

+ (NSDictionary *)cellAtIndex:(NSInteger)index {
    
    return [self cellInfo][index];
    
}

+ (NSString *)headerAtIndex:(NSInteger)index {
    
    return [self cellInfo][index][headerKey];
    
}

+ (NSString *)imageAtIndex:(NSInteger)index {
    
    return [self cellInfo][index][imageKey];
}

+ (NSString *)descriptionAtIndex:(NSInteger)index {
    
    return [self cellInfo][index][descriptionKey];
    
}

+ (NSArray *)cellInfo {
    
    return @[
             @{
               headerKey: @"Test 1",
               imageKey: @"Homer.png",
               descriptionKey: @"Test desc. 1",
               },
             @{
               headerKey: @"Test 2",
               imageKey: @"Homer.png",
               descriptionKey: @"Test desc. 2",
               },
             @{
               headerKey: @"Test 3",
               imageKey: @"Homer.png",
               descriptionKey: @"Test desc. 3",
               },
             @{
               headerKey: @"Test 4",
               imageKey: @"Homer.png",
               descriptionKey: @"Test desc. 4",
               },
             @{
               headerKey: @"Test 5",
               imageKey: @"Homer.png",
               descriptionKey: @"Test desc. 5",
               },
             @{
               headerKey: @"Test 6",
               imageKey: @"Homer.png",
               descriptionKey: @"Test desc. 6",
               },
             @{
               headerKey: @"Test 7",
               imageKey: @"Homer.png",
               descriptionKey: @"Test desc. 7",
               
                 }];
                
}

@end
