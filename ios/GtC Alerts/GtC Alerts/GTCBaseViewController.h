//
//  GTCBaseViewController.h
//  GtC Alerts
//
//  Created by Louis Franco on 6/6/15.
//  Copyright (c) 2015 Gardening the Community. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GTCBaseViewController : UIViewController

- (void)removeFromPush:(NSString *)channel;
- (void)askForPush:(NSString *)channel;

@end
