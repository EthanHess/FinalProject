//
//  SouthAmericaViewController.m
//  HotSpots
//
//  Created by Ethan Hess on 3/24/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "SouthAmericaViewController.h"
#import "SouthAmericaViewDataSource.h"
#import "UIColor+ColorCategory.h"

@interface SouthAmericaViewController () <UICollectionViewDelegate>

@property (nonatomic, strong) SouthAmericaViewDataSource *dataSource;
@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation SouthAmericaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"South America";
    
    UICollectionViewFlowLayout *flowLayout = [UICollectionViewFlowLayout new];
    
    flowLayout.sectionInset = UIEdgeInsetsMake(2, 2, 2, 2);
    
    self.collectionView = [[UICollectionView alloc]initWithFrame:self.view.frame collectionViewLayout:flowLayout];
    self.collectionView.backgroundColor = [UIColor randomColorHue];
    
    self.dataSource = [SouthAmericaViewDataSource new];
    self.collectionView.dataSource = self.dataSource;
    self.collectionView.delegate = self;
    [self.dataSource registerCollectionView:self.collectionView];
    [self.view addSubview:self.collectionView];
    
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    return CGSizeMake((self.view.frame.size.width / 2) - 8,180);
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
}
@end
