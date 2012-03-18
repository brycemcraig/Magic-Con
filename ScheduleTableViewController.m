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

@synthesize thursdayScheduleArray = _thursdayScheduleArray;
@synthesize fridayScheduleArray = _fridayScheduleArray;
@synthesize saturdayScheduleArray = _saturdayScheduleArray;
@synthesize sundayScheduleArray = _sundayScheduleArray;



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
    
    _thursdayScheduleArray = [NSMutableArray array];
    _fridayScheduleArray = [NSMutableArray array];
    _saturdayScheduleArray = [NSMutableArray array];
    _sundayScheduleArray = [NSMutableArray array];
    
    
    
    //Add Events
    
    [_thursdayScheduleArray addObject:@"Welcome Party - 7pm"];
    
    [_fridayScheduleArray addObject:@"Event 1 - 10am"];
    [_fridayScheduleArray addObject:@"Event 2 - 11am"];
    [_fridayScheduleArray addObject:@"Lunch - 12pm"];
    [_fridayScheduleArray addObject:@"Event 3 - 2pm"];
    [_fridayScheduleArray addObject:@"Event 4 - 3pm"];
    
    [_saturdayScheduleArray addObject:@"Event 1 - 10am"];
    [_saturdayScheduleArray addObject:@"Event 2 - 11am"];
    [_saturdayScheduleArray addObject:@"Lunch - 12pm"];
    [_saturdayScheduleArray addObject:@"Event 3 - 2pm"];
    [_saturdayScheduleArray addObject:@"Event 4 - 3pm"];
    
    [_sundayScheduleArray addObject:@"Event 1 - 10am"];
    [_sundayScheduleArray addObject:@"Event 2 - 11am"];
    [_sundayScheduleArray addObject:@"Lunch - 12pm"];
    [_sundayScheduleArray addObject:@"Event 3 - 2pm"];
    [_sundayScheduleArray addObject:@"Event 4 - 3pm"];
    
    
    
    
    

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
    
    switch (section) {
        case 0:
            return [_thursdayScheduleArray count];
            break;
        case 1:
            return [_fridayScheduleArray count];
            break;
        case 2:
            return [_saturdayScheduleArray count];
            break;
        case 3:
            return [_sundayScheduleArray count];
            break;
        default:
            break;
    }
    
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {

    switch (section) {
        case 0:
            return @"Thursday";
            break;
        case 1:
            return @"Friday";
            break;
        case 2:
            return @"Saturday";
            break;
        case 3:
            return @"Sunday";
            break;

        default:
            break;
    }

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ScheduleCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...

    
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text = [_thursdayScheduleArray objectAtIndex:indexPath.row];
            break;
        case 1:
            cell.textLabel.text = [_fridayScheduleArray objectAtIndex:indexPath.row];
            break;
        case 2:
            cell.textLabel.text = [_saturdayScheduleArray objectAtIndex:indexPath.row];
            break;
        case 3:
            cell.textLabel.text = [_sundayScheduleArray objectAtIndex:indexPath.row];
            break;
            
        default:
            break;
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
