//
//  City.h
//  Weather
//
//  Created by Sanjay Shah on 2017-10-11.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property NSString *name;
@property NSString *country;
@property NSInteger currentTemp;
@property NSString *currentCondition;
@property UIColor *bg;

-(instancetype) initWithValues:(NSString*) cityName country: (NSString*) countryName temp:(NSInteger) tempValue condition:(NSString*) conditionValue and:(UIColor *)inpBg;


@end
