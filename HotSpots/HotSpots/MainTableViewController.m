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
#import "ContinentData.h"

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

-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 180;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    CGRect frame = CGRectMake(0, 0, tableView.frame.size.width, [SectionHeaderView headerHeight]);
    
    SectionHeaderView *sectionHeaderView = [[SectionHeaderView alloc]initWithFrame:frame];
    [sectionHeaderView updateWithTitle:section];
    
    return sectionHeaderView;
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
   
    switch (indexPath.section) {
        case 0: {
            
            AfricaViewController *africaViewController = [AfricaViewController new];
            [self.navigationController pushViewController:africaViewController animated:YES];
            
            
            break; }
        case 1: {
            
            AntarcticaViewController *antarcticaViewController = [AntarcticaViewController new];
            [self.navigationController pushViewController:antarcticaViewController animated:YES];
           
            
            break; }
        case 2: {
            
            AsiaViewController *asiaViewController = [AsiaViewController new];
            [self.navigationController pushViewController:asiaViewController animated:YES];
            
            
            break; }
        case 3: {
            
            EuropeViewController *europeViewController = [EuropeViewController new];
            [self.navigationController pushViewController:europeViewController animated:YES];
            
            
            break; }
        case 4: {
            
            OceaniaViewController *oceaniaViewController = [OceaniaViewController new];
            [self.navigationController pushViewController:oceaniaViewController animated:YES];
            
            
            break; }
        case 5: {
            
            NorthAmericaViewController *northAmericaViewController = [NorthAmericaViewController new];
            [self.navigationController pushViewController:northAmericaViewController animated:YES];
            
            
            break; }
        case 6: {
            
            SouthAmericaViewController *southAmericaViewController = [SouthAmericaViewController new];
            [self.navigationController pushViewController:southAmericaViewController animated:YES]; 
        
            break; }
        case 7: {
            
            break; }
        case 8: {
            
            WeatherViewController *weatherViewController = [WeatherViewController new];
            [self.navigationController pushViewController:weatherViewController animated:YES]; 
            
            break; }
        case 9: {
            
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
