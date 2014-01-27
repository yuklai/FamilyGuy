//
//  HHServerManager.h
//  FamilyGuy
//
//  Created by Yuk Lai Suen on 1/27/14.
//  Copyright (c) 2014 Yuk Lai Suen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HHUser.h"
#import "HHMessage.h"

@class HHServerManager;

@protocol HHServerManagerDelegate <NSObject>
- (void)serverManager:(HHServerManager *)serverManager didReceiveMessage:(HHMessage *)message;
@end

@interface HHServerManager : NSObject
@property (nonatomic, weak) id<HHServerManagerDelegate>delegate;

+ (id) sharedManager;
- (BOOL)postMessage:(HHMessage *)messge;
@end
