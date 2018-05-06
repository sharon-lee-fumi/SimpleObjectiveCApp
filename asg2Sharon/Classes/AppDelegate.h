//
//  AppDelegate.h
//  asg2Sharon
//
//  Student Name: Xiaowen Li
//  Student ID: 991376562
//  Due Date: Apr 22, 2018
//  Description: Assignment #2 - Sharon's iPhone App
//
//  Created by Xcode User on 2018-04-17.
//  Copyright © 2018 Xcode User. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataTable.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    NSString *name;
    NSString *phone;
    NSString *email;
    NSString *address;
    NSString *age;
    NSString *gender;
    NSString *avatar;
    
    NSString *dataBaseName;
    NSString *dataBasePath;
    NSMutableArray *people;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *phone;
@property (strong, nonatomic) NSString *email;
@property (strong, nonatomic) NSString *address;
@property (strong, nonatomic) NSString *age;
@property (strong, nonatomic) NSString *gender;
@property (strong, nonatomic) NSString *avatar;

@property (strong, nonatomic) NSString *dataBaseName;
@property (strong, nonatomic) NSString *dataBasePath;
@property (strong, nonatomic) NSMutableArray *people;

-(void)readDataFromDatabase;
-(void)checkAndCreateDatabase;
-(BOOL)insertIntoDatabase:(DataTable *)person;

@end

