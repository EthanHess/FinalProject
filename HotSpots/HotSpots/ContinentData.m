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
               headerKey: @"Africa",
               imageKey: @"Africa",
               descriptionKey: @"Africa",
               },
             @{
               headerKey: @"Antarctica",
               imageKey: @"Antarctica",
               descriptionKey: @"Antarctica",
               },
             @{
               headerKey: @"Asia",
               imageKey: @"Asia",
               descriptionKey: @"Asia",
               },
             @{
               headerKey: @"Europe",
               imageKey: @"Europe",
               descriptionKey: @"Europe",
               },
             @{
               headerKey: @"Oceania",
               imageKey: @"Oceania",
               descriptionKey: @"Oceania",
               },
             @{
               headerKey: @"North America",
               imageKey: @"Rushmore",
               descriptionKey: @"North America",
               },
             @{
               headerKey: @"South America",
               imageKey: @"SouthAmerica",
               descriptionKey: @"South America",
               
                 }];
                
}

@end
