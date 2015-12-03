//
//  AppDelegate.m
//  EndorseMe
//
//  Created by Voitenko Daniil on 02.12.15.
//  Copyright © 2015 Voitenko Daniil. All rights reserved.
//

#import "AppDelegate.h"
#import "Doctor.h"
#import "EMViewController.h"

@interface AppDelegate ()

@property (nonatomic, strong) NSMutableArray *doctors;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    _doctors = [[NSMutableArray alloc] init];
    
    Doctor *doctor = [[Doctor alloc] initWithName:@"First Doctor" andFace:@"0" andRating:0];
    [_doctors addObject:doctor];
    
    doctor = [[Doctor alloc] initWithName:@"Second Doctor" andFace:@"1" andRating:0];
    [_doctors addObject:doctor];
    
    doctor = [[Doctor alloc] initWithName:@"Third Doctor" andFace:@"2" andRating:0];
    [_doctors addObject:doctor];
    
    doctor = [[Doctor alloc] initWithName:@"Fourth Doctor" andFace:@"3" andRating:0];
    [_doctors addObject:doctor];
    
    doctor = [[Doctor alloc] initWithName:@"Fifth Doctor" andFace:@"4" andRating:0];
    [_doctors addObject:doctor];
    
    doctor = [[Doctor alloc] initWithName:@"Sixth Doctor" andFace:@"5" andRating:0];
    [_doctors addObject:doctor];
    
    doctor = [[Doctor alloc] initWithName:@"Seventh Doctor" andFace:@"6" andRating:0];
    [_doctors addObject:doctor];
    
    doctor = [[Doctor alloc] initWithName:@"Eighth Doctor" andFace:@"7" andRating:0];
    [_doctors addObject:doctor];
    
    doctor = [[Doctor alloc] initWithName:@"War Doctor" andFace:@"8" andRating:0];
    [_doctors addObject:doctor];
    
    doctor = [[Doctor alloc] initWithName:@"Ninth Doctor" andFace:@"9" andRating:0];
    [_doctors addObject:doctor];
    
    doctor = [[Doctor alloc] initWithName:@"Tenth Doctor" andFace:@"10" andRating:0];
    [_doctors addObject:doctor];
    
    doctor = [[Doctor alloc] initWithName:@"Eleventh Doctor" andFace:@"11" andRating:0];
    [_doctors addObject:doctor];
    
    doctor = [[Doctor alloc] initWithName:@"Twelfth Doctor" andFace:@"12" andRating:0];
    [_doctors addObject:doctor];
    
   UINavigationController *navigationController = (UINavigationController *)self.window.rootViewController;
    EMViewController *EMViewController = [navigationController viewControllers][0];
    EMViewController.doctors = _doctors;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end