//
//  AfricaViewController.m
//  HotSpots
//
//  Created by Ethan Hess on 3/24/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "AfricaViewController.h"
#import "AfricaViewDataSource.h"
#import "UIColor+ColorCategory.h"

@interface AfricaViewController () <UICollectionViewDelegate>

@property (nonatomic, strong) AfricaViewDataSource *dataSource;
@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation AfricaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Africa";
    
    UICollectionViewFlowLayout *flowLayout = [UICollectionViewFlowLayout new];
    
    self.collectionView = [[UICollectionView alloc]initWithFrame:self.view.frame collectionViewLayout:flowLayout];
    self.collectionView.backgroundColor = [UIColor fern];
    
    self.dataSource = [AfricaViewDataSource new];
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
