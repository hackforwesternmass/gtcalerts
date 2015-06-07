//
//  GTCDataModel.m
//  GtC Alerts
//
//  Created by Louis Franco on 6/6/15.
//  Copyright (c) 2015 Gardening the Community. All rights reserved.
//

#import "GTCDataModel.h"

@implementation GTCDataModel

+(GTCDataModel *)shared {
    static dispatch_once_t token;
    static GTCDataModel *dataModel;
    dispatch_once(&token, ^{
        dataModel = [[GTCDataModel alloc] init];
    });
    return dataModel;
}

-(void)reload {
    NSError *error;
    //-- Make URL request with server
    NSHTTPURLResponse *response = nil;
    NSString *jsonUrlString = [NSString stringWithFormat:@"https://raw.githubusercontent.com/hackforwesternmass/gtcalerts/master/data/sampleData.json"];
    NSURL *url = [NSURL URLWithString:[jsonUrlString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    
    //-- Get request and response though URL
    NSURLRequest *request = [NSURLRequest requestWithURL:url
                                             cachePolicy:NSURLRequestReloadIgnoringCacheData
                                         timeoutInterval:60.0];
    NSData *responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:nil];
    
    //-- JSON Parsing
    self.data = [NSJSONSerialization JSONObjectWithData:responseData options:0 error:&error];
    if (error) {
        
    }
}


@end
