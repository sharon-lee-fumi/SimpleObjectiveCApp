//
//  InfoViewController.m
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

#import "InfoViewController.h"
#import "AppDelegate.h"
@interface InfoViewController ()

@end

@implementation InfoViewController
@synthesize tfName,tfEmail,tfPhone,tfAddress,slAge,lbAge,sgGender,dpDob,sgAvatar,imgAvatar,name, email, phone, address, strAge,imageName,date,strGender;

-(IBAction)segmentAvatarDidChange:(id)sender
{
    [self updateAvatar];
}

-(void)updateAvatar
{
    NSInteger avatar = sgAvatar.selectedSegmentIndex;
    
    if (avatar == 0)
    {
        imgAvatar.image = [UIImage imageNamed:@"a1.jpg"];
        imageName = @"a1.jpg";
    }
    else if (avatar == 1)
    {
        imgAvatar.image = [UIImage imageNamed:@"a2.jpg"];
        imageName = @"a2.jpg";
    }
    else
    {
        imgAvatar.image = [UIImage imageNamed:@"a3.jpg"];
        imageName = @"a3.jpg";
    }
    
}

-(IBAction)sliderValueChanges:(id)sender
{
    [self updateAge];
}

-(void)updateAge
{
    float age = slAge.value;
    strAge = [NSString stringWithFormat:@"%.0f",age];
    lbAge.text = strAge;
}

-(IBAction)datePickerChanged:(id)sender
{
    date = @"1996-10-01";
    NSDate *d = dpDob.date;
    date = [d description];
}


-(IBAction)ssegmentGenderDidChange:(id)sender
{
    [self updateGender];
}

-(void)updateGender
{
    NSInteger gender = sgGender.selectedSegmentIndex;
    
    if (gender == 0)
    {
        strGender = @"Male";
    }
    else
    {
        strGender = @"Female";
    }
    
}

-(IBAction)submit:(id)sender
{
    if (tfName.text != NULL)
    {
        name = tfName.text;
    }
    if (tfPhone.text != NULL)
    {
        phone = tfPhone.text;
    }
    if (tfEmail.text != NULL)
    {
        email = tfEmail.text;
    }
    if (tfAddress.text  != NULL)
    {
        address = tfAddress.text ;
    }
    
    AppDelegate *mainDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    DataTable *person = [[DataTable alloc] initWithData:name thePhone:phone theEmail:email theAddress:address  theAge:lbAge.text theGender:strGender  theAvatar:imageName];

    mainDelegate.name = person.name;
    mainDelegate.phone = person.phone;
    mainDelegate.email = person.email;
    mainDelegate.address = person.address;
    mainDelegate.age = person.age;
    mainDelegate.gender = person.gender;
    mainDelegate.avatar = person.avatar;
    
    NSString *name = person.name;
    NSString *email = person.email;
    
    BOOL returnCode = [mainDelegate insertIntoDatabase:person];
    
    NSString *returnMsg = @"Person Added";
    if(returnCode == NO)
    {
        returnMsg = @"Person Add Failed";
    }
    
    NSString *msg =[NSString stringWithFormat:@"Thanks for %@ of %@'s time",name,email];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Information submitted" message:msg preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:nil];
    
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
    
}
-(BOOL) textFieldShouldReturn:(UITextField *) textField{
    [textField resignFirstResponder];
    return NO;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    name = @"Sharon Lee";
    phone = @"(333)666-7777";
    email = @"sharon@gmail.com";
    address = @"1999 road, Brampton";
    
    [self updateAge];
    [self updateAvatar];
    [self updateGender];
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
