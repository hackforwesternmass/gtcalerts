//
//  NotificationViewController.m
//  GtC Alerts
//
//  Created by Louis Franco on 6/6/15.
//  Copyright (c) 2015 Gardening the Community. All rights reserved.
//

#import "NotificationViewController.h"
#import "NotificationTableViewCell.h"
#import "NotificationDetailViewController.h"
#import "UIColor+Utils.h"

@interface NotificationViewController ()

@end

@implementation NotificationViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.allowPushLabel.text = self.pushLabelText;
    self.view.backgroundColor = self.bgColor.opaque.duller.lighter;
    self.allowPushSwitch.on = [self pushIsOn:self.channel];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)switchValueChanged:(UISwitch *)pushSwitch {
    if (pushSwitch.on) {
        [self askForPush:self.channel];
    } else {
        [self removeFromPush:self.channel];
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NotificationTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NotificationCell"];
    cell.dateLabel.text = self.data[indexPath.row][@"date"];
    cell.dateLabel.textColor = self.bgColor.opaque.duller.lighter;
    cell.titleLabel.text = self.data[indexPath.row][@"title"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.backgroundColor = [UIColor clearColor];
    cell.selectedBackgroundView.backgroundColor = self.bgColor;
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.data.count;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NotificationDetailViewController *vc = segue.destinationViewController;
    NSInteger row = self.tableView.indexPathForSelectedRow.row;
    NSString *title = self.data[row][@"title"];
    vc.titleText = title;
    vc.detailsText = self.data[row][@"text"];
    vc.title = self.data[row][@"date"];
    vc.bgColor = self.bgColor;
    [self.tableView deselectRowAtIndexPath:[NSIndexPath indexPathForRow:row inSection:0] animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
