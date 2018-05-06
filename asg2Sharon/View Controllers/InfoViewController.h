//
//  InfoViewController.h
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
@interface InfoViewController : UIViewController<UITextFieldDelegate>
{
    IBOutlet UITextField *tfName;
    IBOutlet UITextField *tfEmail;
    IBOutlet UITextField *tfPhone;
    IBOutlet UITextField *tfAddress;
    IBOutlet UISlider *slAge;
    IBOutlet UILabel *lbAge;
    IBOutlet UISegmentedControl *sgGender;
    IBOutlet UIDatePicker *dpDob;
    IBOutlet UISegmentedControl *sgAvatar;
    IBOutlet UIImageView *imgAvatar;
    
    NSString *name;
    NSString *email;
    NSString *phone;
    NSString *address;
    NSString *strAge;
    NSString *imageName;
    NSString *date;
    NSString *strGender;
}

@property(nonatomic, strong) IBOutlet UITextField *tfName;
@property(nonatomic, strong) IBOutlet UITextField *tfEmail;
@property(nonatomic, strong) IBOutlet UITextField *tfPhone;
@property(nonatomic, strong) IBOutlet UITextField *tfAddress;
@property(nonatomic, strong) IBOutlet UISlider *slAge;
@property(nonatomic, strong) IBOutlet UILabel *lbAge;
@property(nonatomic, strong) IBOutlet UISegmentedControl *sgGender;
@property(nonatomic, strong) IBOutlet UIDatePicker *dpDob;
@property(nonatomic, strong) IBOutlet UISegmentedControl *sgAvatar;
@property(nonatomic, strong) IBOutlet UIImageView *imgAvatar;

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *email;
@property(nonatomic, strong) NSString *phone;
@property(nonatomic, strong) NSString *address;
@property(nonatomic, strong) NSString *strAge;
@property(nonatomic, strong) NSString *imageName;
@property(nonatomic, strong) NSString *date;
@property(nonatomic, strong) NSString *strGender;

@end
