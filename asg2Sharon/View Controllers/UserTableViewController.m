//
//  UserTableViewController.m
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

#import "UserTableViewController.h"
#import "SiteCell.h"
#import "DataTable.h"
@interface UserTableViewController ()

@end

@implementation UserTableViewController
@synthesize mainDelegate,tableView;

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [mainDelegate.people count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellIdentifier = @"Cell";
    SiteCell *cell = (SiteCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];

    if(cell == nil)
    {
        cell = [[SiteCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    NSInteger row = [indexPath row];
    DataTable *d = [mainDelegate.people objectAtIndex:row];
    
    cell.nameLabel.text = [d name];
    cell.phoneLabel.text = [d phone];
    cell.emailLabel.text = [d email];
    cell.addressLabel.text = [d address];
    cell.ageLabel.text = [d age];
    cell.genderLabel.text = [d gender];
    cell.imageView.image = [UIImage imageNamed:[d avatar]];
    
    cell.backgroundColor = [UIColor clearColor];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"tablebg.jpg"]];
    
    mainDelegate = (AppDelegate *) [[UIApplication sharedApplication] delegate];
    [mainDelegate readDataFromDatabase];
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
