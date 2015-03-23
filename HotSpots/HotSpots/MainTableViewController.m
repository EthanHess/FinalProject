//
//  ViewController.m
//  HotSpots
//
//  Created by Ethan Hess on 3/23/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "MainTableViewController.h"
#import "MainTableDataSource.h"
#import "SectionHeaderView.h"

@interface MainTableViewController ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) MainTableDataSource *dataSource;

@end

@implementation MainTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataSource = [MainTableDataSource new];
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds];
    self.tableView.translatesAutoresizingMaskIntoConstraints = NO;
    self.tableView.delegate = self;
    
    [self.dataSource registerTableView:self.tableView];
    self.tableView.dataSource = self.dataSource;
    
    [self.view addSubview:self.tableView];
    
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
    return [SectionHeaderView headerHeight];
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    
    
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    switch (indexPath.row) {
        case 0: {
            
            
            break; }
        case 1: {
           
            
            break; }
        case 2: {
            
            
            break; }
        case 3: {
            
            
            break; }
        case 4: {
            
            
            break; }
        case 5: {
            
            
            break; }
        case 6: {
        
            break; }
            
        default:
            break;
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
