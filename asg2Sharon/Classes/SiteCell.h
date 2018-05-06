//
//  SiteCell.h
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

#import <UIKit/UIKit.h>

@interface SiteCell : UITableViewCell
{
    UILabel *nameLabel;
    UILabel *phoneLabel;
    UILabel *emailLabel;
    UILabel *addressLabel;
    UILabel *ageLabel;
    UILabel *genderLabel;
    UIImageView *avatarView;
}

@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *phoneLabel;
@property (nonatomic, strong) UILabel *emailLabel;
@property (nonatomic, strong) UILabel *addressLabel;
@property (nonatomic, strong) UILabel *ageLabel;
@property (nonatomic, strong) UILabel *genderLabel;
@property (nonatomic, strong) UIImageView *avatarView;

@end
