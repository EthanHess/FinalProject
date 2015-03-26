//
//  EuropeViewDataSource.m
//  HotSpots
//
//  Created by Ethan Hess on 3/24/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "EuropeViewDataSource.h"
#import "EuropeCell.h"

static NSString *const cellID = @"CellID";

@implementation EuropeViewDataSource

- (instancetype)init
{
    self = [super init];
    if (self) {
        [EuropeCell new];
    }
    return self;
}


- (void)registerCollectionView:(UICollectionView *)collectionView {
    
    [collectionView registerClass:[EuropeCell class] forCellWithReuseIdentifier:cellID];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return [self iconImageNames].count;
    
}

- (EuropeCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    EuropeCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    
    NSArray *subviews = [cell.contentView subviews];
    
    for (UIView *view in subviews) {
        [view removeFromSuperview];
    }
    
    
    UIImage *image = [UIImage imageNamed:[self iconImageNames][indexPath.row]];
    
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    
    imageView.frame = cell.bounds;
    
    [cell.contentView addSubview:imageView];
    cell.footerLabel.text = [self iconFooterNames][indexPath.row];
    cell.footerLabel.font = [UIFont fontWithName:@"Chalkduster" size:20];
    cell.backgroundColor = [UIColor clearColor];
    
    return cell;
    
}



- (NSArray *)iconFooterNames {
    
    return @[@"Greece", @"Holland", @"Ireland", @"Italy", @"Russia", @"Spain", @"Switzerland", @"Turkey", @"United Kingdom", @"Ukraine"];
    
}



- (NSArray *)iconImageNames {
    
    return @[@"Greece", @"Holland", @"Ireland", @"Italy", @"Russia", @"Spain", @"Switzerland", @"Turkey", @"UnitedKingdom", @"Ukraine"];
    
}


@end

