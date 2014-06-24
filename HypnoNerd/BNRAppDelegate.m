//
//  BNRAppDelegate.m
//  HypnoNerd
//
//  Created by Emilio Sellitto on 21/06/14.
//  Copyright (c) 2014 Emilio Sellitto. All rights reserved.
//

#import "BNRAppDelegate.h"
#import "BNRHypnosisViewController.h"
#import "BNRReminderViewController.h"
#import "BNRQuizViewController.h"

@implementation BNRAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    BNRHypnosisViewController *hvc = [[BNRHypnosisViewController alloc] init];
    //NSBundle *appBundle = [NSBundle mainBundle];
    //BNRReminderViewController *rvc = [[BNRReminderViewController alloc] initWithNibName:@"BNRReminderViewController" bundle:appBundle];
    BNRReminderViewController *rvc = [[BNRReminderViewController alloc] init];
    BNRQuizViewController *qvc = [[BNRQuizViewController alloc] init];
    UITabBarController *tabController = [[UITabBarController alloc] init];
    tabController.viewControllers = @[hvc, rvc, qvc];
    self.window.rootViewController = tabController;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
