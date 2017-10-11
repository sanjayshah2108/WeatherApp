//
//  CityViewController.h
//  Weather
//
//  Created by Sanjay Shah on 2017-10-11.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface CityViewController : UIViewController
@property City *city;

-(instancetype) initWithCity:(City*) city;

@end
