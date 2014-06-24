//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by Emilio Sellitto on 21/06/14.
//  Copyright (c) 2014 Emilio Sellitto. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnosisViewController

- (void)loadView;
{
    BNRHypnosisView *hypnoView = [[BNRHypnosisView alloc] init];
    self.view = hypnoView;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil;
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.tabBarItem.title = @"Hypnosis";
        UIImage *image = [UIImage imageNamed:@"Hypno.png"];
        //self.tabBarItem.image = image;
    }
    return self;
}

- (void)viewDidLoad;
{
    [super viewDidLoad];
    NSLog(@"Loaded BNRHypnosisView.");
}

@end
