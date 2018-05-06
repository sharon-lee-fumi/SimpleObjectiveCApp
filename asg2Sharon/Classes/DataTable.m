//
//  DataTable.m
//  asg2Sharon
//
//  Student Name: Xiaowen Li
//  Student ID: 991376562
//  Due Date: Apr 22, 2018
//  Description: Assignment #2 - Sharon's iPhone App
//
//  Created by Xcode User on 2018-04-11.
//  Copyright © 2018 Xcode User. All rights reserved.
//

#import "DataTable.h"

@implementation DataTable
@synthesize name, phone, email, address, age, gender, avatar;

-(id)initWithData:(NSString *)n thePhone:(NSString *)p theEmail:(NSString *)e theAddress:(NSString *)a theAge:(NSString *)age theGender:(NSString *)g theAvatar:(NSString *)av
{
    if(self = [super init])
    {
        self.name = n;
        self.phone = p;
        self.email = e;
        self.address = a;
        self.age = age;
        self.gender = g;
        self.avatar = av;
    }
    return self;
}
@end
