//
//  DataTable.h
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

#import <Foundation/Foundation.h>

@interface DataTable : NSObject
{
    NSString *name;
    NSString *phone;
    NSString *email;
    NSString *address;
    NSString *age;
    NSString *gender;
    NSString *avatar;
}

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *phone;
@property (strong, nonatomic) NSString *email;
@property (strong, nonatomic) NSString *address;
@property (strong, nonatomic) NSString *age;
@property (strong, nonatomic) NSString *gender;
@property (strong, nonatomic) NSString *avatar;

-(id)initWithData:(NSString *)n thePhone:(NSString *)p theEmail:(NSString *)e theAddress:(NSString *)a theAge:(NSString *)age theGender:(NSString *)g theAvatar:(NSString *)av;
@end
