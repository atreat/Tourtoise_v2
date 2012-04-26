//
//  VerticalCell_iPhone.m
//  HorizontalTableView
//
//  Created by Austin Emmons on 3/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "VerticalCell_iPhone.h"
#import "ControlVariables_iPhone.h"
#import "HorizontalCell_iPhone.h"

@implementation VerticalCell_iPhone

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
//      Creates Table Tableview for Current Row
        self.horizontalTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, kCellHeight, kTableLength)];
        self.horizontalTableView.showsVerticalScrollIndicator = NO;
        self.horizontalTableView.showsHorizontalScrollIndicator = NO;
        
//      Rotate 90 degrees, make horizontal
        self.horizontalTableView.transform = CGAffineTransformMakeRotation(-M_PI * 0.5);
        [self.horizontalTableView setFrame:CGRectMake(kRowHorizontalPadding * 0.5, kRowVerticalPadding * 0.5, kTableLength - kRowHorizontalPadding, kCellHeight)];
                                
        self.horizontalTableView.rowHeight = kCellWidth;                //rowHeight is property before the rotation (need to switch dimensions)
        self.horizontalTableView.backgroundColor = kHorizontalTableBackgroundColor;
        
        self.horizontalTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
        self.horizontalTableView.separatorColor = [UIColor clearColor];
        
//      sets self as delegate and adds horizontal view to self
//      this allows the delegate methods to be used below
        self.horizontalTableView.dataSource = self;
        self.horizontalTableView.delegate = self;
        [self addSubview:self.horizontalTableView];
        
//        Debug Data
        _content = [NSArray arrayWithObjects:@"Tour 1", @"Tour 2", @"Tour 3", @"Tour 4", nil];
        _duration = [NSArray arrayWithObjects:@"3 hrs", @"7 hrs", @"1 hrs", @"9 hrs", nil];
        
        
        
    }
    return self;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    This function is where each cell is loaded. This is called frequently as cells scroll
//          Should not load data from server here but rather already have it in an array of some sort
//    

    
    
    static NSString *CellIdentifier = @"HorizontalCell";
    
    HorizontalCell_iPhone *cell = (HorizontalCell_iPhone *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) 
    {
        cell = [[HorizontalCell_iPhone alloc] initWithFrame:CGRectMake(0, 0, kCellWidth, kCellHeight)];
    }
    
	
    NSString *currentTitle      = [self.content objectAtIndex:indexPath.row];
    NSString *currentDuration   = [self.duration objectAtIndex:indexPath.row];
    
//    cell.thumbnail.image = [UIImage imageNamed:[currentArticle objectForKey:@"ImageName"]];
//    cell.titleLabel.text = [currentArticle objectForKey:@"Title"];
    
    cell.titleLabel.text = currentTitle; 
    cell.durationLabel.text = currentDuration;
    
    return cell;
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
