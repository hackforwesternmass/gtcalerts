//
//  ViewController.m
//  GtC Alerts
//
//  Created by Louis Franco on 6/6/15.
//  Copyright (c) 2015 Gardening the Community. All rights reserved.
//

#import "ViewController.h"
#import "NotificationViewController.h"
#import "GTCDataModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];

    self.title = @"GtC Alerts";
    self.bgImage.layer.zPosition = -5;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

-(void)loadData {
    [[GTCDataModel shared] reload];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self loadData];
    self.navigationController.navigationBar.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *)sender {
    NotificationViewController *vc = segue.destinationViewController;
    
    if (sender == self.volunteerButton) {
        vc.pushLabelText = @"Volunteer Push Notifications";
        vc.title = @"Volunteer";
        vc.channel = @"volunteers";
    }
    else if (sender == self.eventsButton) {
        vc.pushLabelText = @"Events Push Notifications";
        vc.title = @"Events";
        vc.channel = @"events";
    }
    else if (sender == self.veggiesButton) {
        vc.pushLabelText = @"Veggies Push Notifications";
        vc.title = @"Veggies";
        vc.channel = @"veggies";
    }
    else if (sender == self.donateButton) {
        vc.pushLabelText = @"In-Kind Supplies Push Notifications";
        vc.title = @"In-Kind";
        vc.channel = @"donations";
    }
    vc.data = [GTCDataModel shared].data[vc.channel];
    vc.data = [vc.data sortedArrayUsingComparator:^NSComparisonResult(NSDictionary* o1, NSDictionary* o2) {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"MMM dd"];
        
        NSArray *da1 = [o1[@"date"] componentsSeparatedByString:@" "];
        NSDate *d1 = [dateFormatter dateFromString:[NSString stringWithFormat:@"%@ %@", da1[0], da1[1]]];

        
        NSArray *da2 = [o2[@"date"] componentsSeparatedByString:@" "];
        NSDate *d2 = [dateFormatter dateFromString:[NSString stringWithFormat:@"%@ %@", da2[0], da2[1]]];
        
        return [d1 compare:d2];
    }];
    vc.bgColor = sender.backgroundColor;
}

@end
