//
//  WeatherViewController.h
//  HotSpots
//
//  Created by Ethan Hess on 3/27/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeatherViewController : UIViewController

@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UILabel *tempLabel;
@property (nonatomic, strong) UILabel *locationLabel;
@property (nonatomic, strong) UILabel *weatherLabel;
@property (nonatomic, strong) UIImageView *weatherIconView;
@property (nonatomic, strong) UITextView *textView;


@end
