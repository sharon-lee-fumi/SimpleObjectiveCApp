//
//  SavedUserViewController.h
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

@interface SavedUserViewController : UIViewController
{
    IBOutlet UILabel *lbName;
    IBOutlet UILabel *lbPhone;
    IBOutlet UILabel *lbEmail;
    IBOutlet UILabel *lbAddress;
    IBOutlet UILabel *lbAge;
    IBOutlet UILabel *lbGender;
    IBOutlet UIImageView *imgAvatar;
    
    NSString *name;
    NSString *phone;
    NSString *email;
    NSString *address;
    NSString *age;
    NSString *gender;
    NSString *avatar;
}
@property (nonatomic,strong) IBOutlet UILabel *lbName;
@property (nonatomic,strong) IBOutlet UILabel *lbPhone;
@property (nonatomic,strong) IBOutlet UILabel *lbEmail;
@property (nonatomic,strong) IBOutlet UILabel *lbAddress;
@property (nonatomic,strong) IBOutlet UILabel *lbAge;
@property (nonatomic,strong) IBOutlet UILabel *lbGender;
@property (nonatomic,strong) IBOutlet UIImageView *imgAvatar;

@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *phone;
@property (nonatomic,strong) NSString *email;
@property (nonatomic,strong) NSString *address;
@property (nonatomic,strong) NSString *age;
@property (nonatomic,strong) NSString *gender;
@property (nonatomic,strong) NSString *avatar;

@end
