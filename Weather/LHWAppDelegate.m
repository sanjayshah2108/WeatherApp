//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "City.h"
#import "CityViewController.h"


@implementation LHWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    
    City *vancouver = [[City alloc] initWithValues:@"Vancouver" country:@"Canada" temp:10 condition:@"Rainy" and:[UIColor redColor]];
    City *london = [[City alloc] initWithValues:@"London" country:@"England" temp:20 condition:@"Sunny" and:[UIColor greenColor]];
    City *rome = [[City alloc] initWithValues:@"Rome" country:@"Italy" temp:10 condition:@"Rainy" and:[UIColor redColor]];
    City *nairobi = [[City alloc] initWithValues:@"Nairobi" country:@"Kenya" temp:20 condition:@"Snowy" and:[UIColor greenColor]];
    
    
    
    
    //initilaize a tab bar controller and make it the rootViewController
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    self.window.rootViewController = tabBarController;
    
    
    //initialize cityViewControllers with a city
    CityViewController *vancouverController = [[CityViewController alloc] initWithCity:vancouver];
    CityViewController *londonController = [[CityViewController alloc] initWithCity:london];
    CityViewController *romeController = [[CityViewController alloc] initWithCity:rome];
    CityViewController *nairobiController = [[CityViewController alloc] initWithCity:nairobi];
    
    
    
    //initialize  navigationControllers with a rootViewController
    UINavigationController *vancouverNavigationController = [[UINavigationController alloc] initWithRootViewController:vancouverController];
    vancouverNavigationController.title = @"Vancouver";
    vancouverNavigationController.tabBarItem.image = [UIImage imageNamed:@"Vancouver.png"];
   
    
    UINavigationController *londonNavigationController = [[UINavigationController alloc] initWithRootViewController:londonController];
    londonNavigationController.title = @"London";
    londonNavigationController.tabBarItem.image = [UIImage imageNamed:@"London"];
    
    
    UINavigationController *romeNavigationController = [[UINavigationController alloc] initWithRootViewController:romeController];
    romeNavigationController.title = @"Rome";
    
    
    UINavigationController *nairobiNavigationController = [[UINavigationController alloc] initWithRootViewController:nairobiController];
    nairobiNavigationController.title = @"Nairobi";
    
    
    //add the navigationController to an array
    NSArray* navigationControllers = [NSArray arrayWithObjects:vancouverNavigationController, londonNavigationController, romeNavigationController, nairobiNavigationController, nil];
    

    for (int i=0; i<navigationControllers.count; i++){
        
        UITabBarItem *tabItem = [[UITabBarItem alloc] init];
        tabItem.title = [[navigationControllers objectAtIndex:i] valueForKey:@"title"];

    }
    
    
    //add the array to the tabBarController
    tabBarController.viewControllers = navigationControllers;

    
    
    // Your code goes here
    // Don't forget to assign the window a rootViewController
    
    [self.window makeKeyAndVisible];
    return YES;
}

@end
