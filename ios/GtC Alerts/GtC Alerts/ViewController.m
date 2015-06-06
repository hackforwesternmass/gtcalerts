//
//  ViewController.m
//  GtC Alerts
//
//  Created by Louis Franco on 6/6/15.
//  Copyright (c) 2015 Gardening the Community. All rights reserved.
//

#import "ViewController.h"
#import "NotificationViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"GtC Alerts";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NotificationViewController *vc = segue.destinationViewController;
    
    if (sender == self.volunteerButton) {
        vc.pushLabelText = @"Volunteer Push Notifications";
        vc.title = @"Volunteer";
    }
    else if (sender == self.eventsButton) {
        vc.pushLabelText = @"Events Push Notifications";
        vc.title = @"Events";
    }
    else if (sender == self.veggiesButton) {
        vc.pushLabelText = @"Veggies Push Notifications";
        vc.title = @"Veggies";
    }
    else if (sender == self.donateButton) {
        vc.pushLabelText = @"In-Kind Push Notifications";
        vc.title = @"In-Kind";
    }
}

@end
