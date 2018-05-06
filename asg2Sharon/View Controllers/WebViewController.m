//
//  WebViewController.m
//  asg2Sharon
//
//  Student Name: Xiaowen Li
//  Student ID: 991376562
//  Due Date: Apr 22, 2018
//  Description: Assignment #2 - Sharon's iPhone App
//
//  Created by Xcode User on 2018-04-18.
//  Copyright © 2018 Xcode User. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController
@synthesize webView, activity;

- (void)webViewDidStartLoad:(UIWebView *)webView{
    [self.activity setHidden:NO];
    [self.activity startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    [activity setHidden:YES];
    [activity stopAnimating];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSURL *urlAddress = [NSURL URLWithString:@"https://www.linkedin.com/in/sharonleefumi/"];
    
    NSURLRequest *url = [NSURLRequest requestWithURL:urlAddress];
    [self.webView loadRequest:url];
    self.webView.delegate= self;
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

