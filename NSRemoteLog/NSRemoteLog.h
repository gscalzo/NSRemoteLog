//
//  NSRemoteLog.h
//  NSRemoteLog
//
//  Created by Giordano Scalzo on 7/2/12.
//  Copyright (c) 2012 +plugg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSRemoteLog : NSObject

+ (void)log:(NSString *)msg serverUrl:(NSString *)serverUrl;

@end
