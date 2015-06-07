//
//  NotificationViewController.h
//  GtC Alerts
//
//  Created by Louis Franco on 6/6/15.
//  Copyright (c) 2015 Gardening the Community. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotificationViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSString *pushLabelText;
@property (nonatomic, strong) NSArray *data;

@property (nonatomic, strong) UIColor *bgColor;

@property (nonatomic, strong) IBOutlet UIView *headerView;
@property (nonatomic, strong) IBOutlet UILabel *allowPushLabel;
@property (nonatomic, strong) IBOutlet UISwitch *allowPushSwitch;
@property (nonatomic, strong) IBOutlet UITableView *tableView;
@end
