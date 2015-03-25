//
//  NorthAmericaViewDataSource.h
//  HotSpots
//
//  Created by Ethan Hess on 3/24/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NorthAmericaViewDataSource: NSObject <UICollectionViewDataSource>

- (NSArray *)iconFooterNames;

- (NSArray *)iconImageNames;

- (void)registerCollectionView:(UICollectionView *)collectionView;

@end
