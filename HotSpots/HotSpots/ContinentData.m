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
               descriptionKey: @"Hot spots in Africa",
               },
             @{
               headerKey: @"Antarctica",
               imageKey: @"Antarctica",
               descriptionKey: @"Hot (or cold) spots in Antarctica (yes, you can go here!)",
               },
             @{
               headerKey: @"Asia",
               imageKey: @"Asia",
               descriptionKey: @"Get lost in Asia",
               },
             @{
               headerKey: @"Europe",
               imageKey: @"Europe",
               descriptionKey: @"Experience the charm of Europe",
               },
             @{
               headerKey: @"Oceania",
               imageKey: @"Oceania",
               descriptionKey: @"Relax in Oceania",
               },
             @{
               headerKey: @"North America",
               imageKey: @"Rushmore",
               descriptionKey: @"Traverse North America",
               },
             @{
               headerKey: @"South America",
               imageKey: @"SouthAmerica",
               descriptionKey: @"Explore South America",
               },
             @{
               headerKey: @"Destination Picker",
               imageKey: @"Random",
               descriptionKey: @"Need a vacation but can't decide where to go? Don't worry! We'll choose for you.",
               },
             @{
               headerKey: @"Global Weather",
               imageKey: @"Storm",
               descriptionKey: @"See if there's rain, shine or snow anywhere",
               },
             @{
               headerKey: @"Travel tracker",
               imageKey: @"WorldMap",
               descriptionKey: @"Impress your friends with a map of your extensive travels",
            
               }];
                
}

@end
