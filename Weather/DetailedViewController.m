//
//  DetailedViewController.m
//  Weather
//
//  Created by Sanjay Shah on 2017-10-11.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "DetailedViewController.h"

@interface DetailedViewController ()

@end

@implementation DetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.cityDetails = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    self.cityDetails.text = [NSString stringWithFormat:@"City: %@ \n\nCountry:%@\n\nTemp:%ld", self.city.name, self.city.country, (long)self.city.currentTemp];
    self.cityDetails.numberOfLines = 5;
    NSLog(@"%@", self.city.country );

    
    self.weatherPicture = [[UIImageView alloc] initWithFrame:CGRectMake(100, 300, 200, 200)];
    self.weatherPicture.image = [self weatherPicture:self.city.currentCondition];
    self.weatherPicture.alpha = 0.5;
  
    
    
    [self.view addSubview:self.cityDetails];
    [self.view addSubview:self.weatherPicture];
    
    
  
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIImage *)weatherPicture: (NSString *)weatherConditon{
    
    UIImage *weatherConditionPicture;
    
    if ([weatherConditon isEqualToString:@"Clear"]) {
        weatherConditionPicture = [UIImage imageNamed:@"clear-day.png"];
        
    }
    if ([weatherConditon isEqualToString:@"Cloudy"]) {
        weatherConditionPicture = [UIImage imageNamed:@"cloudy.png"];
    }
    if ([weatherConditon isEqualToString:@"Foggy"]) {
        weatherConditionPicture = [UIImage imageNamed:@"fog.png"];
    }
    if ([weatherConditon isEqualToString:@"Rainy"]) {
        weatherConditionPicture = [UIImage imageNamed:@"rain.png"];
    }
    if ([weatherConditon isEqualToString:@"Sleety"]) {
        weatherConditionPicture = [UIImage imageNamed:@"sleet.png"];
    }
    if ([weatherConditon isEqualToString:@"Sunny"]) {
        weatherConditionPicture = [UIImage imageNamed:@"Sunny.png"];
    }
    if ([weatherConditon isEqualToString:@"Windy"]) {
        weatherConditionPicture = [UIImage imageNamed:@"wind"];
    }
    if ([weatherConditon isEqualToString:@"Partly-Cloudy"]) {
        weatherConditionPicture = [UIImage imageNamed:@"partly-cloudy.png"];
    }
    if ([weatherConditon isEqualToString:@"Snowy"]){
        weatherConditionPicture = [UIImage imageNamed:@"snow.png"];
    }
    
    return weatherConditionPicture;
}

@end
