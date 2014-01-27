//
//  HHUser.m
//  FamilyGuy
//
//  Created by Yuk Lai Suen on 1/27/14.
//  Copyright (c) 2014 Yuk Lai Suen. All rights reserved.
//

#import "HHUser.h"

@implementation HHUser

+ (id)userWithName:(NSString *)username
{
    HHUser *user = [HHUser new];
    user.username = username;
    return user;
}

- (NSString *)description
{
    return self.username;
}

@end
