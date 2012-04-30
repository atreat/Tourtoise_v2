//
//  VerticalTableViewController_iPad.m
//  HorizontalTableView
//
//  Created by Austin Emmons on 3/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "VerticalTableViewController_iPad.h"
#import "VerticalCell_iPad.h"
#import "ControlVariables_iPad.h"

@implementation VerticalTableViewController_iPad


- (void)awakeFromNib
{
    [self.tableView setBackgroundColor:kVerticalTableBackgroundColor];
    self.tableView.rowHeight = kCellHeight + (kRowVerticalPadding * 0.5) + ((kRowVerticalPadding * 0.5) * 0.5);

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"VerticalCell";
    
    VerticalCell_iPad *cell = (VerticalCell_iPad *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) 
    {
        cell = [[VerticalCell_iPad alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, tableView.frame.size.height)];
    }
    
    cell.textLabel.text = @"Vertical Table Rows on iPad";
    
    return cell;
}
@end
