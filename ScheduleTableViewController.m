//
//  ScheduleTableViewController.m
//  Magic-Con
//
//  Created by Bryce Craig on 3/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ScheduleTableViewController.h"

@interface ScheduleTableViewController ()

@end

@implementation ScheduleTableViewController

NSMutableArray *scheduleArray;

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
    
    
    scheduleArray = [[NSMutableArray alloc] init];
    
    Event *event = [[Event alloc] init];
    [event setName:@"test1"];
    [event setTime:@"10am"];
    [scheduleArray addObject:event];
    
    event = [[Event alloc] init];
    [event setName:@"test2"];
    [event setTime:@"12pm"];
    [scheduleArray addObject:event];
    
    event = [[Event alloc] init];
    [event setName:@"test3"];
    [event setTime:@"2pm"];
    [scheduleArray addObject:event];
    
    event = [[Event alloc] init];
    [event setName:@""];
    [event setTime:@""];
    [scheduleArray addObject:event];
    
    event = [[Event alloc] init];
    [event setName:@""];
    [event setTime:@""];
    [scheduleArray addObject:event];
    
    event = [[Event alloc] init];
    [event setName:@""];
    [event setTime:@""];
    [scheduleArray addObject:event];
    
    event = [[Event alloc] init];
    [event setName:@""];
    [event setTime:@""];
    [scheduleArray addObject:event];
    
    event = [[Event alloc] init];
    [event setName:@""];
    [event setTime:@""];
    [scheduleArray addObject:event];
    
    event = [[Event alloc] init];
    [event setName:@""];
    [event setTime:@""];
    [scheduleArray addObject:event];
    
    
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [scheduleArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ScheduleCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    Event *current = [scheduleArray objectAtIndex:indexPath.row];
    [cell.textLabel setText:[current time]];
    
    // Configure the cell...
    
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
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
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
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
