//
//  VerticalCell.m
//  HorizontalTableView
//
//  Created by Austin Emmons on 3/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "VerticalCell.h"

@implementation VerticalCell
   

@synthesize horizontalTableView     =   _horizontalTableView;
@synthesize content                 =   _content;
@synthesize duration                =   _duration;

#pragma mark - Inherited from UITableViewCell
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



#pragma mark - Delegate of UITableView
- (void)scrollViewDidEndDecelerating:(UITableView *)tableView {
    int tomove = ((int)tableView.contentOffset.y%(int)tableView.rowHeight);
//    NSLog(@"To Move     ::  %i", tomove);
    if(tomove < tableView.rowHeight/2) [tableView setContentOffset:CGPointMake(0, tableView.contentOffset.y-tomove) animated:YES];
    else [tableView setContentOffset:CGPointMake(0, tableView.contentOffset.y+(tableView.rowHeight-tomove)) animated:YES];
}

- (void)scrollViewDidEndDragging:(UITableView *)scrollView willDecelerate:(BOOL)decelerate {
    if(decelerate) return;
    
    [self scrollViewDidEndDecelerating:scrollView];
}


#pragma mark - Delegate of UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_content count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"VerticalCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) 
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = @"The title of the cell in the table within the table :O";
    
    return cell;
    
}




@end
