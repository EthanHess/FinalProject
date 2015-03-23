//
//  ViewController.m
//  HotSpots
//
//  Created by Ethan Hess on 3/23/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "MainTableViewController.h"
#import "MainTableDataSource.h"

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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
