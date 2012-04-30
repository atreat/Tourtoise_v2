//
//  VerticalCell.h
//  HorizontalTableView
//
//  Created by Austin Emmons on 3/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VerticalCell : UITableViewCell <UITableViewDelegate, UITableViewDataSource>
//
//      These cells scroll vertically
//      They Each contain a Table View that is rotated 90 degrees and hold HorizontalCell
//
{
    
    UITableView     *_horizontalTableView;
    NSMutableArray         *_content;                      // content should be array Tour objects. Of which each property can be used
    NSArray         *_duration;                     //  duration used for debug
    
}

@property (nonatomic, retain) UITableView     *horizontalTableView;
@property (nonatomic, retain) NSArray         *content;
@property (nonatomic, retain) NSArray         *duration;

@end
