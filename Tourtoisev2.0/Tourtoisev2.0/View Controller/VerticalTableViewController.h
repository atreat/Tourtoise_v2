//
//  VerticalTableViewController.h
//  HorizontalTableView
//
//  Created by Austin Emmons on 3/14/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

//  Table View Controller that implements Vertical Scrolling



@interface VerticalTableViewController : UITableViewController
{
    NSArray *sectionHeaders;
    
    // array contatainers for each section
    NSArray     *   content;
    
}


@property (nonatomic, retain) NSArray * content;






@end
