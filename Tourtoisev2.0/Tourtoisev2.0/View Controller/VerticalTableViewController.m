//
//  VerticalTableViewController.m
//  HorizontalTableView
//
//  Created by Austin Emmons on 3/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "VerticalTableViewController.h"

@interface VerticalTableViewController ()

@end

@implementation VerticalTableViewController

@synthesize content;

//
//- (id)initWithStyle:(UITableViewStyle)style
//{
//    self = [super initWithStyle:style];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    NSMutableArray *cloudLib    = [[NSMutableArray alloc] init];
    NSMutableArray *localLib    = [[NSMutableArray alloc] init];
    NSMutableArray *myLib       = [[NSMutableArray alloc] init];
    NSMutableArray *progLib     = [[NSMutableArray alloc] init];
    
    
    sectionHeaders = [NSArray arrayWithObjects:@"Cloud Library", @"Local Library", @"My Tours", @"In Progress", nil];
    content = [[NSArray alloc] initWithObjects:cloudLib, localLib, myLib, progLib, nil];
    
    
    
    // Read from plist
    
    NSString * path = [[NSBundle mainBundle] pathForResource:@"DebugData" ofType:@"plist"];
    NSDictionary  * plistData = [[NSDictionary alloc] initWithContentsOfFile:path];
    
    //NSLog(@"Dictionary      ::      %@", plistData);
    
//    NSDictionary *tour1 = [plistData objectForKey:@"Tour 1"];
//    NSLog(@"Tour 1          ::      %@", tour1);
    
    NSEnumerator *dictEnumerator = [plistData objectEnumerator];
    NSDictionary *tour;
    
    while (tour = [dictEnumerator nextObject]) {
        [(NSMutableArray *)[content objectAtIndex:0] addObject:tour];       // put tour dictionary in array of tours for the local library
    }
    
    NSLog(@"Content at index 1      %@", [content objectAtIndex:0]);
//    Need to read in from data store to get content
    
    self.navigationController.navigationBarHidden = TRUE;
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

//- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
//{
//    return (interfaceOrientation == UIInterfaceOrientationPortrait);
//}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return 1;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    return [sectionHeaders objectAtIndex:section];
}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    static NSString *CellIdentifier = @"Cell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//    
//    // Configure the cell...
//    
//    return cell;
//}

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
//
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    // Navigation logic may go here. Create and push another view controller.
//    /*
//     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
//     // ...
//     // Pass the selected object to the new view controller.
//     [self.navigationController pushViewController:detailViewController animated:YES];
//     */
//}


// Implemented Paging 
// Content will recenter after scrolling vertically
- (void)scrollViewDidEndDecelerating:(UITableView *)tableView {
    int tomove = ((int)tableView.contentOffset.y%(int)tableView.rowHeight);
    NSLog(@"To Move     ::  %i", tomove);
    if(tomove < tableView.rowHeight/2) [tableView setContentOffset:CGPointMake(0, tableView.contentOffset.y-tomove) animated:YES];
    else [tableView setContentOffset:CGPointMake(0, tableView.contentOffset.y+(tableView.rowHeight-tomove)) animated:YES];
}

- (void)scrollViewDidEndDragging:(UITableView *)scrollView willDecelerate:(BOOL)decelerate {
    if(decelerate) return;
    
    [self scrollViewDidEndDecelerating:scrollView];
}

@end
