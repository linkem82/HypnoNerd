//
//  BNRRemainderViewController.m
//  HypnoNerd
//
//  Created by Emilio Sellitto on 21/06/14.
//  Copyright (c) 2014 Emilio Sellitto. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;

@end

@implementation BNRReminderViewController

- (IBAction)addReminder:(id)sender;
{
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a remainder for %@", date);
    UILocalNotification *note = [[UILocalNotification alloc] init];
    note.alertBody = @"Hypnotize yourself!";
    note.fireDate = date;   
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
{
    self =[super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Reminder";
        UIImage *image = [UIImage imageNamed:@"Time.png"];
        self.tabBarItem.image = image;
    }
    return self;
}

- (void)viewDidLoad;
{
    [super viewDidLoad];
    NSLog(@"BNRReminderView loaded.");
}

- (void)viewWillAppear:(BOOL)animated;
{
    [super viewWillAppear:animated];
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];
}

@end
