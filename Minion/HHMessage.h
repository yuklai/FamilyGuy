//
//  HHMessage.h
//  FamilyGuy
//
//  Created by Yuk Lai Suen on 1/27/14.
//  Copyright (c) 2014 Yuk Lai Suen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HHUser.h"

@interface HHMessage : NSObject
@property (nonatomic, copy) NSString *text;
@property (nonatomic, copy) NSDate *date;
@property (nonatomic, strong) HHUser *from;
@property (nonatomic, strong) HHUser *to;
@end
