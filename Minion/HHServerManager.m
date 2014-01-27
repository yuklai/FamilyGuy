//
//  HHServerManager.m
//  FamilyGuy
//
//  Created by Yuk Lai Suen on 1/27/14.
//  Copyright (c) 2014 Yuk Lai Suen. All rights reserved.
//

#import "HHServerManager.h"
@interface HHServerManager()
@property (nonatomic, strong) NSMutableArray *messagePosted;
@property (nonatomic, strong) HHUser *user;
@end
@implementation HHServerManager

+ (id)sharedManager
{
    static HHServerManager *manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [HHServerManager new];
    });
    return manager;
}

- (id)init
{
    self = [super init];
    if (self) {
        _messagePosted = [NSMutableArray array];
        _user = [HHUser userWithName:@"Peter Griffin"];
        _user.friends = [NSMutableArray array];
        [_user.friends addObject:[HHUser userWithName:@"Glen Quagmires"]];
        [_user.friends addObject:[HHUser userWithName:@"Joe Swanson"]];
        [_user.friends addObject:[HHUser userWithName:@"Cleveland Brown"]];
    }
    
    return self;
}

- (BOOL)postMessage:(HHMessage *)messge
{
    [self.messagePosted addObject:messge];
    
    static NSUInteger counter = 0;
    double delayInSeconds = 2.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        HHMessage *newMessage = [[HHMessage alloc] init];
        newMessage.text = [NSString stringWithFormat:@"Hello %u", counter];
        newMessage.date = [NSDate date];
        newMessage.from = self.user.friends[arc4random() % 3];
        newMessage.to = self.user;
        NSLog(@"New message arrived: %@", newMessage);
        [self.delegate serverManager:self didReceiveMessage:newMessage];
    });
    
    return YES;
}

@end
