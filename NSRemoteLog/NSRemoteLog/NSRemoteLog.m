//
//  NSRemoteLog.m
//  NSRemoteLog
//
//  Created by Giordano Scalzo on 7/2/12.
//  Copyright (c) 2012 +plugg. All rights reserved.
//

#import "NSRemoteLog.h"
#import "AFNetworking.h"

@implementation NSRemoteLog

+ (void)log:(NSString *)msg serverUrl:(NSString *)serverUrl{
    NSLog(@"%@", msg);
    NSString *urlStr =[NSString stringWithFormat:@"%@/log", serverUrl];
    
    NSURL *url = [NSURL URLWithString:urlStr];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:10.0];
    
    NSString *encodedBody = [NSString stringWithFormat:
                             @"{\"log\":\"%@\"}",msg];
    
    NSData *requestData = [encodedBody dataUsingEncoding:NSUTF8StringEncoding];
    
    [request setHTTPMethod:@"POST"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setValue:[NSString stringWithFormat:@"%d", [requestData length]] forHTTPHeaderField:@"Content-Length"];
    [request setHTTPBody: requestData];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc]initWithRequest:request];
    [operation setCompletionBlockWithSuccess:
     ^(AFHTTPRequestOperation *operation, id responseObject){
     }
                                     failure:^(AFHTTPRequestOperation *operation, NSError *error){
                                     }
     ];
    
    [operation start];
}

@end
