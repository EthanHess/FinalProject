//
//  WeatherViewController.m
//  HotSpots
//
//  Created by Ethan Hess on 3/27/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "WeatherViewController.h"
#import "UIColor+ColorCategory.h"

@interface WeatherViewController ()

@end

@implementation WeatherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor trBlueColor];
    
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(50, 90, self.view.frame.size.width - 100, 50)];
    self.textField.placeholder = @" Enter Location! ";
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.textField];
    
    
    
    
    
    
}

- (void)weatherSearch:(id)sender {
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}



@end
