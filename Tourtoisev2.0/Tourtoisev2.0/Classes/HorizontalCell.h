//
//  HorizontalCell.h
//  HorizontalTableView
//
//  Created by Austin Emmons on 3/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
//      Each Horizontal Cell should display the properties/description of a tour
//      Will need to extend to display Stops on "back" of card using a flip animation and changing out the type of Cell

@interface HorizontalCell : UITableViewCell
{
    UIImageView     *_thumbnail;
    UILabel         *_titleLabel;
    UILabel         *_durationLabel;
    
}

@property (nonatomic, retain) UIImageView   * thumbnail;
@property (nonatomic, retain) UILabel       * titleLabel;
@property (nonatomic, retain) UILabel       * durationLabel;


@end
