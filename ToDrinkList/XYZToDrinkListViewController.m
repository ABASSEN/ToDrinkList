//
//  XYZToDrinkListViewController.m
//  ToDrinkList
//
//  Created by Alexandra Bassen on 2/16/14.
//  Copyright (c) 2014 Alexandra Bassen. All rights reserved.
//

#import "XYZToDrinkListViewController.h"
#import "XYZToDrinkItem.h"
#import "XYZAddToDrinkItemViewController.h"


@interface XYZToDrinkListViewController ()

@property NSMutableArray *toDrinkItems;

@end

@implementation XYZToDrinkListViewController

- (void)loadInitialData {
    
    XYZToDrinkItem *item1 = [[XYZToDrinkItem alloc] init];
    item1.itemName = @"Buy milk";
    [self.toDrinkItems addObject:item1];
    XYZToDrinkItem *item2 = [[XYZToDrinkItem alloc] init];
    item2.itemName = @"Buy eggs";
    [self.toDrinkItems addObject:item2];
    XYZToDrinkItem *item3 = [[XYZToDrinkItem alloc] init];
    item3.itemName = @"Read a book";
    [self.toDrinkItems addObject:item3];
    
}






- (IBAction)unwindToList:(UIStoryboardSegue *)segue
{
 
    XYZAddToDrinkItemViewController *source = [segue sourceViewController];
    XYZToDrinkItem *item = source.toDrinkItem;
    
    if (item != nil) {
    [self.toDrinkItems addObject:item];
    [self.tableView reloadData];
    }
    
    
}



- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.toDrinkItems = [[NSMutableArray alloc] init];
    [self loadInitialData];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [self.toDrinkItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ListPrototypeCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    XYZToDrinkItem *toDrinkItem = [self.toDrinkItems objectAtIndex:indexPath.row];
    cell.textLabel.text = toDrinkItem.itemName;
    
    
    if (toDrinkItem.completed) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    XYZToDrinkItem *tappedItem = [self.toDrinkItems objectAtIndex:indexPath.row];
    tappedItem.completed = !tappedItem.completed;
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
}

@end
