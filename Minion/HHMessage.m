//
//  HHMessage.m
//  FamilyGuy
//
//  Created by Yuk Lai Suen on 1/27/14.
//  Copyright (c) 2014 Yuk Lai Suen. All rights reserved.
//

#import "HHMessage.h"

@implementation HHMessage

- (NSString *)description
{
    return [NSString stringWithFormat:@"from: %@, to: %@, date: %@, text: %@", self.from, self.to, self.date, self.text];
}

@end
