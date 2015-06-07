//
//  NotificationDetailViewController.h
//  GtC Alerts
//
//  Created by Louis Franco on 6/6/15.
//  Copyright (c) 2015 Gardening the Community. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotificationDetailViewController : UIViewController

@property (nonatomic, strong) NSString *titleText;
@property (nonatomic, strong) NSString *detailsText;

@property (nonatomic, strong) UIColor *bgColor;

@property (nonatomic, strong) IBOutlet UILabel *titleLabel;
@property (nonatomic, strong) IBOutlet UITextView *detailsTextView;

@end
