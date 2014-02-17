//
//  XYZWebsiteViewController.m
//  ToDrinkList
//
//  Created by Alexandra Bassen on 2/16/14.
//  Copyright (c) 2014 Alexandra Bassen. All rights reserved.
//

#import "XYZWebsiteViewController.h"

@interface XYZWebsiteViewController ()

@end

@implementation XYZWebsiteViewController
@synthesize webView;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    NSURL *url = [NSURL URLWithString:@"http://www.google.com"];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:url];
    [webView loadRequest: requestURL];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
