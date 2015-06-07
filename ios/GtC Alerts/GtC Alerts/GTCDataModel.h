//
//  GTCDataModel.h
//  GtC Alerts
//
//  Created by Louis Franco on 6/6/15.
//  Copyright (c) 2015 Gardening the Community. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GTCDataModel : NSObject

@property (nonatomic, strong) NSDictionary *data;

+(GTCDataModel *)shared;
-(void)reload;

@end
