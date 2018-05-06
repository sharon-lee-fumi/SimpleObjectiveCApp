//
//  SavedUserViewController.m
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

#import "SavedUserViewController.h"
#import "AppDelegate.h"

@interface SavedUserViewController ()

@end

@implementation SavedUserViewController
@synthesize lbName,lbEmail,lbPhone,lbAddress,lbAge,lbGender, imgAvatar, name, phone, email, address, age, gender, avatar;

-(void)updateUser
{
    lbName.text = name;
    lbPhone.text = phone;
    lbEmail.text = email;
    lbAddress.text = address;
    lbAge.text = age;
    lbGender.text = gender;
    imgAvatar.image = [UIImage imageNamed:avatar];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    AppDelegate *mainDelegate = (AppDelegate *) [[UIApplication sharedApplication]delegate];
    
    name = mainDelegate.name;
    phone = mainDelegate.phone;
    email = mainDelegate.email;
    address = mainDelegate.address;
    age = mainDelegate.age;
    gender = mainDelegate.gender;
    avatar = mainDelegate.avatar;
    
    [self updateUser];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
