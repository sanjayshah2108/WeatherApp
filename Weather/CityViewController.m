//
//  CityViewController.m
//  Weather
//
//  Created by Sanjay Shah on 2017-10-11.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "DetailedViewController.h"

@interface CityViewController ()

@end

@implementation CityViewController

-(instancetype) initWithCity:(City*) city{
    self = [super init];
    if (self){
        _city = city;
    }
    return self;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.title = _city.name;
    
    self.view.backgroundColor = _city.bg;

    //button for showing detailedViewController
    UIButton* but = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
    but.center = self.view.center;
    [but setTitle:@"Look at weather Details" forState:UIControlStateNormal ];
    
    [but addTarget:self
            action:@selector(showWeatherDetails)
  forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview: but];
                                 
}


//button action
-(void) showWeatherDetails{
    
    //initiate detailedViewController and give it a city
    DetailedViewController *detailedViewController = [[DetailedViewController alloc] init];
    detailedViewController.city = self.city;
    
    NSLog(@"%@", self.city.name);
    
    //set background color to the same as the cityViewConroller's background
    detailedViewController.view.backgroundColor = self.view.backgroundColor;
    
    //push the detailedViewController
    [self.navigationController pushViewController:detailedViewController animated:YES];
    

}

@end
