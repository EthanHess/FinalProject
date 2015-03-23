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


@implementation MainTableDataSource

- (void)registerTableView:(UITableView *)tableView {
    
    [tableView registerClass:[MainTableViewCell class] forCellReuseIdentifier:NSStringFromClass([MainTableViewCell class])];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    MainTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([MainTableViewCell class])];
    
    
    return cell;
}



@end
