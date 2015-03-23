//
//  MainTableViewCell.m
//  HotSpots
//
//  Created by Ethan Hess on 3/23/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "MainTableViewCell.h"
#import "ContintentPicture.h"

@interface MainTableViewCell ()

@property (nonatomic, strong) ContintentPicture *picture;
@property (nonatomic, strong) UILabel *descriptionLabel;


@end

@implementation MainTableViewCell



-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.backgroundColor = [UIColor colorWithRed:23.0/255.0 green:163.0/255.0 blue:191.0/255.0 alpha:1.0];
        self.translatesAutoresizingMaskIntoConstraints = NO;
        
        self.descriptionLabel = [UILabel new];
        self.descriptionLabel.translatesAutoresizingMaskIntoConstraints = NO;
        
        
    }
    
}

@end
