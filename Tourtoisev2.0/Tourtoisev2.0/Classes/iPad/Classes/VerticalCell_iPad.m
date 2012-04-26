//
//  VerticalCell_iPad.m
//  HorizontalTableView
//
//  Created by Austin Emmons on 3/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "VerticalCell_iPad.h"
#import "ControlVariables_iPad.h"
#import "HorizontalCell_iPad.h"


@implementation VerticalCell_iPad

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.horizontalTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, kCellHeight, kTableLength)];
        self.horizontalTableView.showsVerticalScrollIndicator = NO;
        self.horizontalTableView.showsHorizontalScrollIndicator = NO;
        self.horizontalTableView.transform = CGAffineTransformMakeRotation(-M_PI * 0.5);
        [self.horizontalTableView setFrame:CGRectMake(kRowHorizontalPadding * 0.5, kRowVerticalPadding * 0.5, kTableLength - kRowHorizontalPadding, kCellHeight)];
        
        self.horizontalTableView.rowHeight = kCellWidth;
        self.horizontalTableView.backgroundColor = kHorizontalTableBackgroundColor;
        
        self.horizontalTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
        self.horizontalTableView.separatorColor = [UIColor clearColor];
        
        self.horizontalTableView.dataSource = self;
        self.horizontalTableView.delegate = self;
        [self addSubview:self.horizontalTableView];
        
        //        Debug Data
//        _content = [NSArray arrayWithObjects:@"Tour 1", @"Tour 2", @"Tour 3", @"Tour 4", nil];
    }
    return self;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"HorizontalCell";
    
    HorizontalCell_iPad *cell = (HorizontalCell_iPad *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) 
    {
        cell = [[HorizontalCell_iPad alloc] initWithFrame:CGRectMake(0, 0, kCellWidth, kCellHeight)];
    }
    
	
    NSString *currentArticle = [self.content objectAtIndex:indexPath.row];
    
    //    cell.thumbnail.image = [UIImage imageNamed:[currentArticle objectForKey:@"ImageName"]];
    //    cell.titleLabel.text = [currentArticle objectForKey:@"Title"];
    
    cell.titleLabel.text = currentArticle; 
    
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
