//
//  XYZAddToDrinkItemViewController.m
//  ToDrinkList
//
//  Created by Alexandra Bassen on 2/16/14.
//  Copyright (c) 2014 Alexandra Bassen. All rights reserved.
//

#import "XYZAddToDrinkItemViewController.h"

@interface XYZAddToDrinkItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@end

@implementation XYZAddToDrinkItemViewController


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (sender != self.doneButton) return;
    
    if (self.textField.text.length > 0) {
        
        self.toDrinkItem = [[XYZToDrinkItem alloc] init];
        self.toDrinkItem.itemName = self.textField.text;
        self.toDrinkItem.completed = NO;
    }
    
    
    
}

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
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
