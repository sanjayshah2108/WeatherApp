//
//  City.m
//  Weather
//
//  Created by Sanjay Shah on 2017-10-11.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City

-(instancetype) initWithValues:(NSString*) cityName country: (NSString*) countryName temp:(NSInteger) tempValue condition:(NSString*) conditionValue and:(UIColor *)inpBg;
{
    self = [super init];
    if (self){
        _name = cityName;
        _country = countryName;
        _currentTemp = tempValue;
        _currentCondition = conditionValue;
        _bg = inpBg;
    
        
    }
return self;
}

@end
