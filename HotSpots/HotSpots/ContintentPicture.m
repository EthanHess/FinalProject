//
//  ContintentPicture.m
//  HotSpots
//
//  Created by Ethan Hess on 3/23/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ContintentPicture.h"
#import "UIColor+ColorCategory.h"

@interface ContintentPicture ()

@property (nonatomic, strong) CAShapeLayer *circleLayer;

@end

@implementation ContintentPicture

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        self.layer.masksToBounds = YES;
        
        _circleLayer = [CAShapeLayer layer];
        _circleLayer.strokeColor = [UIColor chalkWhite].CGColor;
        _circleLayer.lineWidth = 3.0;
        _circleLayer.fillColor = [UIColor clearColor].CGColor;
        
        [self.layer insertSublayer:_circleLayer atIndex:(unsigned int)self.layer.sublayers.count];
        
    }
    
    return self;
}


- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self updateRadius:self.bounds];
}

- (void)updateRadius:(CGRect)rect {
    
    self.layer.cornerRadius = MAX(CGRectGetHeight(rect), CGRectGetWidth(rect)) / 2.0f;
    
    CGMutablePathRef circlePath = CGPathCreateMutable();
    CGRect zeroRectWithSize = { CGPointZero, rect.size };
    CGPathAddEllipseInRect(circlePath, NULL, zeroRectWithSize);
    _circleLayer.path = circlePath;
    
    CGPathRelease(circlePath);
    
}


@end
