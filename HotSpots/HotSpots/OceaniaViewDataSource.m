//
//  OceaniaViewDataSource.m
//  HotSpots
//
//  Created by Ethan Hess on 3/24/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "OceaniaViewDataSource.h"
#import "OceaniaCell.h"

static NSString *const cellID = @"CellID";

@implementation OceaniaViewDataSource

- (instancetype)init
{
    self = [super init];
    if (self) {
        [OceaniaCell new];
    }
    return self;
}


- (void)registerCollectionView:(UICollectionView *)collectionView {
    
    [collectionView registerClass:[OceaniaCell class] forCellWithReuseIdentifier:cellID];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return [self iconImageNames].count;
    
}

- (OceaniaCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    OceaniaCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    
    NSArray *subviews = [cell.contentView subviews];
    
    for (UIView *view in subviews) {
        [view removeFromSuperview];
    }
    
    
    UIImage *image = [UIImage imageNamed:[self iconImageNames][indexPath.row]];
    
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    
    imageView.frame = CGRectMake(55, 45, 60, 60);
    
    [cell.contentView addSubview:imageView];
    cell.footerLabel.text = [self iconFooterNames][indexPath.row];
    cell.footerLabel.font = [UIFont fontWithName:@"Chalkduster" size:20];
    cell.backgroundColor = [UIColor clearColor];
    
    return cell;
    
}



- (NSArray *)iconFooterNames {
    
    return @[@"Test 1", @"Test 2", @"Test 3", @"Test 4"];
    
}



- (NSArray *)iconImageNames {
    
    return @[@"", @"", @"", @""];
    
}


@end
