//
//  SectionHeaderView.m
//  HotSpots
//
//  Created by Ethan Hess on 3/23/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "SectionHeaderView.h"
#import "UIColor+ColorCategory.h"
#import "ContinentData.h"

@interface SectionHeaderView ()

@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation SectionHeaderView

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor colorWithRed:89.0/255.0 green:169.0/255.0 blue:223.0/255.0 alpha:1.0];
//        self.backgroundColor = [UIColor sand];
        
        self.titleLabel = [UILabel new];
        [self.titleLabel setFrame:frame];
        self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
        self.titleLabel.font = [UIFont systemFontOfSize:16];
        self.titleLabel.textColor = [UIColor whiteColor];
        self.titleLabel.backgroundColor = [UIColor clearColor];
        [self addSubview:self.titleLabel];
        
        NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(_titleLabel);
        
        NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[_titleLabel]-|" options:0 metrics:nil views:viewsDictionary];
        
        NSArray *horizontalConstraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-50-[_titleLabel]-|" options:0 metrics:nil views:viewsDictionary];
        
        [self addConstraints:constraints];
        [self addConstraints:horizontalConstraints];
        
        
    }
    
    return self;
    
}


+ (CGFloat)headerHeight {
    
    return 50;
    
}

- (void)updateWithTitle:(NSInteger)index {
    
    self.titleLabel.text = [ContinentData headerAtIndex:index];
}



@end
