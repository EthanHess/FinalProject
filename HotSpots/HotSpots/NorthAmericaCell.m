//
//  NorthAmericaCell.m
//  HotSpots
//
//  Created by Ethan Hess on 3/25/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "NorthAmericaCell.h"

@implementation NorthAmericaCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupViews];
    }
    return self;
}


-(void)setTitle:(NSString *)title
{
    _title = title;
}

-(void)setupViews
{
    CGFloat backViewHeight = (self.frame.size.height / 4);
    CGFloat viewHeight = self.frame.size.height;
    CGFloat viewWidth = self.frame.size.width;
    
    self.footerLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, viewHeight - backViewHeight, viewWidth, backViewHeight)];
    self.footerLabel.text = self.title;
    self.footerLabel.numberOfLines = 0;
    self.footerLabel.textColor = [UIColor whiteColor];
    [self.footerLabel setTextAlignment:NSTextAlignmentCenter];
    
    [self addSubview:self.footerLabel];
}


@end
