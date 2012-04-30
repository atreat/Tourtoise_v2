//
//  VerticalTableViewController_iPhone.m
//  HorizontalTableView
//
//  Created by Austin Emmons on 3/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "VerticalTableViewController_iPhone.h"
#import "VerticalCell_iPhone.h"
#import "ControlVariables_iPhone.h"

@implementation VerticalTableViewController_iPhone



- (void)awakeFromNib
{
    [self.tableView setBackgroundColor:kVerticalTableBackgroundColor];
    self.tableView.rowHeight = kCellHeight + (kRowVerticalPadding * 0.5) + ((kRowVerticalPadding * 0.5) * 0.5);
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"VerticalCell";
    
    VerticalCell_iPhone *cell = (VerticalCell_iPhone *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) 
    {
        cell = [[VerticalCell_iPhone alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, tableView.frame.size.height)];
    }
    
    cell.textLabel.text = @"Vertical Table Rows on iPhone";
    cell.content = [content objectAtIndex:indexPath.row];
    
    return cell;
}




@end
