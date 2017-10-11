//
//  DetailedViewController.h
//  Weather
//
//  Created by Sanjay Shah on 2017-10-11.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"
#import "CityViewController.h"

@interface DetailedViewController : UIViewController

@property City *city;
@property UILabel *cityDetails;
@property UIImageView *weatherPicture;

- (UIImage *)weatherPicture: (NSString *)weatherConditon;


@end
