//
//  HHUser.h
//  FamilyGuy
//
//  Created by Yuk Lai Suen on 1/27/14.
//  Copyright (c) 2014 Yuk Lai Suen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HHUser : NSObject
@property (nonatomic, copy) NSString *username;
@property (nonatomic, strong) NSMutableArray *friends;

+ (id)userWithName:(NSString *)username;
@end
