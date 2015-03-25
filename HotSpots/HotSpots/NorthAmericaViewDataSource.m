//
//  NorthAmericaViewDataSource.m
//  HotSpots
//
//  Created by Ethan Hess on 3/24/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//


#import "NorthAmericaViewDataSource.h"
#import "NorthAmericaCell.h"

static NSString *const cellID = @"CellID";

@implementation NorthAmericaViewDataSource

- (instancetype)init
{
    self = [super init];
    if (self) {
        [NorthAmericaCell new];
    }
    return self;
}


- (void)registerCollectionView:(UICollectionView *)collectionView {
    
    [collectionView registerClass:[NorthAmericaCell class] forCellWithReuseIdentifier:cellID];
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return [self iconImageNames].count;
    
}

- (NorthAmericaCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    NorthAmericaCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    
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
