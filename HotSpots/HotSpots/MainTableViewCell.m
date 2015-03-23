//
//  MainTableViewCell.m
//  HotSpots
//
//  Created by Ethan Hess on 3/23/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "MainTableViewCell.h"
#import "ContintentPicture.h"
#import "UIColor+ColorCategory.h"

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
        self.descriptionLabel.font = [UIFont systemFontOfSize:20];
        self.descriptionLabel.textColor = [UIColor chalkWhite];
        [self.contentView addSubview:self.descriptionLabel];
        
        self.picture = [ContintentPicture new];
        self.picture.translatesAutoresizingMaskIntoConstraints = NO;
        [self.contentView addSubview:self.picture];
        
        NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(_picture, _descriptionLabel);
        
        NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:| -25- [_descriptionLabel] - [_picture(==100)] -25- |" options:NSLayoutFormatAlignAllLeft metrics:nil views:viewsDictionary];
        
        NSArray *horizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:| -50- [_picture (==100)]" options:0 metrics:nil views:viewsDictionary];
        
        [self.contentView addConstraints:constraints];
        [self.contentView addConstraints:horizontalConstraints];
        
    }
    
    return self;
}

- (void)updateWithDescription:(NSString *)description avatar:(UIImage *)picture {
    
    self.descriptionLabel.text = description;
    [self.picture setImage:picture];
    
}

- (CGFloat)height {
    
    return 180;
}





@end


