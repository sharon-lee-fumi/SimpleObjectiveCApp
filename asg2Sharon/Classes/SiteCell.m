//
//  SiteCell.m
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

#import "SiteCell.h"

@implementation SiteCell
@synthesize nameLabel, phoneLabel, emailLabel, addressLabel, ageLabel, genderLabel, avatarView;

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self)
    {
        nameLabel = [[UILabel alloc] init];
        nameLabel.textAlignment = NSTextAlignmentLeft;
        nameLabel.font = [UIFont systemFontOfSize:18];
        nameLabel.textColor = [UIColor blackColor];
        nameLabel.backgroundColor = [UIColor clearColor];
        
        phoneLabel = [[UILabel alloc] init];
        phoneLabel.textAlignment = NSTextAlignmentLeft;
        phoneLabel.font = [UIFont systemFontOfSize:12];
        phoneLabel.textColor = [UIColor blackColor];
        phoneLabel.backgroundColor = [UIColor clearColor];
        
        emailLabel = [[UILabel alloc] init];
        emailLabel.textAlignment = NSTextAlignmentLeft;
        emailLabel.font = [UIFont systemFontOfSize:18];
        emailLabel.textColor = [UIColor blueColor];
        emailLabel.backgroundColor = [UIColor clearColor];
        
        addressLabel = [[UILabel alloc] init];
        addressLabel.textAlignment = NSTextAlignmentLeft;
        addressLabel.font = [UIFont systemFontOfSize:12];
        addressLabel.textColor = [UIColor blackColor];
        addressLabel.backgroundColor = [UIColor clearColor];
        
        ageLabel = [[UILabel alloc] init];
        ageLabel.textAlignment = NSTextAlignmentLeft;
        ageLabel.font = [UIFont systemFontOfSize:12];
        ageLabel.textColor = [UIColor blackColor];
        ageLabel.backgroundColor = [UIColor clearColor];
        
        genderLabel = [[UILabel alloc] init];
        genderLabel.textAlignment = NSTextAlignmentLeft;
        genderLabel.font = [UIFont systemFontOfSize:12];
        genderLabel.textColor = [UIColor blackColor];
        genderLabel.backgroundColor = [UIColor clearColor];
        
        avatarView = [[UIImageView alloc] init];
        
        [self.contentView addSubview:nameLabel];
        [self.contentView addSubview:phoneLabel];
        [self.contentView addSubview:emailLabel];
        [self.contentView addSubview:addressLabel];
        [self.contentView addSubview:ageLabel];
        [self.contentView addSubview:genderLabel];
        [self.contentView addSubview:avatarView];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    avatarView.frame = CGRectMake(5, 5, 40, 40);
    nameLabel.frame = CGRectMake(110, 5, 460, 20);
    phoneLabel.frame = CGRectMake(110, 30, 460, 20);
    emailLabel.frame = CGRectMake(210, 5, 460, 20);
    addressLabel.frame = CGRectMake(260, 30, 460, 20);
    ageLabel.frame = CGRectMake(440, 30, 460, 20);
    genderLabel.frame = CGRectMake(490, 30, 460, 20);
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
