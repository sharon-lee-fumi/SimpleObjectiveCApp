//
//  UserTableViewController.h
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
#import "AppDelegate.h"
@interface UserTableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    AppDelegate *mainDelegate;
    IBOutlet UITableView *tableView;
}

@property (nonatomic,strong) AppDelegate *mainDelegate;
@property (nonatomic,strong) IBOutlet UITableView *tableView;
@end
