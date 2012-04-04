//
//  ScheduleTableViewController.m
//  Magic-Con
//
//  Created by Bryce Craig on 3/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ScheduleTableViewController.h"

@interface ScheduleTableViewController ()

@property (copy, nonatomic) NSArray* tableData;

@end

@implementation ScheduleTableViewController

@synthesize tableData;



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

    
    
    
    //TODO: Check network status

    
    // Load the data from remote server.
    
   NSURL *url = [NSURL URLWithString:@"http://www.pusherhq.com/dev/mc3/remote-schedule.plist"];   
   self.tableData = [[NSArray alloc] initWithContentsOfURL:url];
    
    
    //Load the schedule data from the local backup if no internet connection.
    if (tableData == nil) {
        
        self.tableData = [NSArray arrayWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"local-schedule" ofType:@"plist"]];
    }

    
    
    
   
   
    // self.tableData = [NSArray arrayWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"schedule" ofType:@"plist"]];
    

    


    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [self setTitle:nil];
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
    return [tableData count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    
    return [[[tableData objectAtIndex: section] objectForKey:@"Events"] count];

}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {

    return [[tableData objectAtIndex: section] objectForKey: @"Title"];

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"ScheduleCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...

    
    cell.textLabel.text = [[[[tableData objectAtIndex: indexPath.section] objectForKey:@"Events"] objectAtIndex:indexPath.row] objectForKey:@"name"];
    cell.detailTextLabel.text = [[[[tableData objectAtIndex: indexPath.section] objectForKey:@"Events"] objectAtIndex:indexPath.row] objectForKey:@"details"];
    
    return cell;
}

- (CGFloat) tableView: (UITableView *) tableView heightForRowAtIndexPath: (NSIndexPath *) indexPath
{
    
    UITableViewCell *cell = (UITableViewCell*)[self tableView:tableView cellForRowAtIndexPath:indexPath];
	
	NSString *text = cell.detailTextLabel.text; // [[[[tableData objectAtIndex: indexPath.section] objectForKey:@"Events"] objectAtIndex:indexPath.row] objectForKey:@"time"];

	CGFloat height = [text sizeWithFont:cell.detailTextLabel.font constrainedToSize:CGSizeMake(240,70) lineBreakMode:UILineBreakModeWordWrap].height;
	//return MAX(height, MinHeight);
	
	return height+30; 
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
