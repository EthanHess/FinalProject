//
//  SectionHeaderView.m
//  HotSpots
//
//  Created by Ethan Hess on 3/23/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "SectionHeaderView.h"
#import "UIColor+ColorCategory.h"

@interface SectionHeaderView ()

@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation SectionHeaderView

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor colorWithRed:139.0/255.0 green:209.0/255.0 blue:223.0/255.0 alpha:1.0];
        
        
        self.titleLabel = [UILabel new];
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
        self.titleLabel.font = [UIFont systemFontOfSize:16];
        self.titleLabel.textColor = [UIColor slateColor];
        [self addSubview:self.titleLabel];
        
        NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(_titleLabel);
        
        NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-50- [_titleLabel]|" options:0 metrics:nil views:viewsDictionary];
        
        NSArray *horizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[_titleLabel]-|" options:0 metrics:nil views:viewsDictionary];
        
        [self addConstraints:constraints];
        [self addConstraints:horizontalConstraints];
        
        
    }
    
    return self;
    
}


+ (CGFloat)headerHeight {
    
    return 50;
    
}

- (void)updateWithTitle:(NSString *)ContinentTitle {
    
    self.titleLabel.text = ContinentTitle;
}



@end
