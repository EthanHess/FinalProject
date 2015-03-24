//
//  MainTableDataSource.m
//  HotSpots
//
//  Created by Ethan Hess on 3/23/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "MainTableDataSource.h"
#import "MainTableViewCell.h"
#import "ContintentPicture.h"
#import "ContinentData.h" 

@interface MainTableDataSource ()

@property (nonatomic, assign) NSInteger index;

@end

@implementation MainTableDataSource

- (void)registerTableView:(UITableView *)tableView {
    
    [tableView registerClass:[MainTableViewCell class] forCellReuseIdentifier:NSStringFromClass([MainTableViewCell class])];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return [ContinentData count];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    SectionHeaderView *header = [[SectionHeaderView alloc]initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 50)];
//    [header updateWithTitle:section];
    return 1;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    MainTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([MainTableViewCell class])];
    
//    switch (indexPath.section) {
//        case 0:
//                [cell updateWithDescription:[NSString stringWithFormat:@"%@",[ContinentData descriptionAtIndex:indexPath.section]] picture:[UIImage imageNamed:[ContinentData imageAtIndex:indexPath.section]]];
//            break;
//        case 1:
//                [cell updateWithDescription:[NSString stringWithFormat:@"%@",[ContinentData descriptionAtIndex:indexPath.section]] picture:[UIImage imageNamed:[ContinentData imageAtIndex:indexPath.section]]];
//            break;
//        case 2:
//                [cell updateWithDescription:[NSString stringWithFormat:@"%@",[ContinentData descriptionAtIndex:indexPath.section]] picture:[UIImage imageNamed:[ContinentData imageAtIndex:indexPath.section]]];
//            break;
//        default:
//            break;
//    }
    
    [cell updateWithDescription:[NSString stringWithFormat:@"%@",[ContinentData descriptionAtIndex:indexPath.section]] picture:[UIImage imageNamed:[ContinentData imageAtIndex:indexPath.section]]];
    
    return cell;
}



@end
