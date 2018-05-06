//
//  WebViewController.h
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

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController<UIWebViewDelegate>
{
    IBOutlet UIWebView *webView;
    IBOutlet UIActivityIndicatorView *activity;
}
@property (nonatomic, strong) IBOutlet UIWebView *webView;
@property (nonatomic, strong) IBOutlet UIActivityIndicatorView *activity;

@end
