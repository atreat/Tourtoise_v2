//
//  HorizontalCell.m
//  HorizontalTableView
//
//  Created by Austin Emmons on 3/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HorizontalCell.h"
#import <QuartzCore/QuartzCore.h>

@implementation HorizontalCell

@synthesize thumbnail       =   _thumbnail;
@synthesize titleLabel      =   _titleLabel;
@synthesize durationLabel   =   _durationLabel;


 -(NSString *) reuseIdentifier
{
    return @"HorizontalCell";
}

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

@end
