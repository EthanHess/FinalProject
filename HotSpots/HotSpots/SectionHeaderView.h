//
//  SectionHeaderView.h
//  HotSpots
//
//  Created by Ethan Hess on 3/23/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SectionHeaderView : UIView

+ (CGFloat)headerHeight;

- (void)updateWithTitle:(NSInteger)index;

@end
