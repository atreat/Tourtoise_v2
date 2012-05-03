//
//  HorizontalCell_iPhone.m
//  HorizontalTableView
//
//  Created by Austin Emmons on 3/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HorizontalCell_iPhone.h"
#import "ControlVariables_iPhone.h"

#import <QuartzCore/QuartzCore.h>

@implementation HorizontalCell_iPhone

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        // Initialization code
        
        self.thumbnail = [[UIImageView alloc] initWithFrame:CGRectMake(kArticleCellHorizontalInnerPadding, kArticleCellVerticalInnerPadding, kCellWidth - kArticleCellHorizontalInnerPadding * 2, kCellHeight - kArticleCellVerticalInnerPadding * 2)];
        self.thumbnail.opaque = YES;
        self.thumbnail.backgroundColor = [UIColor yellowColor];       //background of thumbnailcell
        self.thumbnail.contentMode = UIViewContentModeScaleAspectFit;
        
        [self.contentView addSubview:self.thumbnail];
        
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.thumbnail.frame.size.height * 0.632, self.thumbnail.frame.size.width, self.thumbnail.frame.size.height * 0.37)] ;
        self.titleLabel.opaque = YES;
        self.titleLabel.backgroundColor =kTourTitleViewBackgroundColor;  //background color of title box
        //self.titleLabel.backgroundColor = [UIColor redColor];
        self.titleLabel.textColor = [UIColor whiteColor];
        self.titleLabel.font = [UIFont boldSystemFontOfSize:11];
        self.titleLabel.numberOfLines = 2;
        [self.thumbnail addSubview:self.titleLabel];
        
        self.durationLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.thumbnail.frame.size.height * 0.756, self.thumbnail.frame.size.width, self.thumbnail.frame.size.height * 0.37)];
        self.durationLabel.backgroundColor = [UIColor clearColor];
        self.durationLabel.textColor = [UIColor whiteColor];
        self.titleLabel.font = [UIFont systemFontOfSize:11];
        [self.thumbnail addSubview:self.durationLabel];
        
        
        self.backgroundColor = [UIColor colorWithRed:0 green:0.40784314 blue:0.21568627 alpha:1.0];
        self.selectedBackgroundView = [[UIView alloc] initWithFrame:self.thumbnail.frame];
        self.selectedBackgroundView.backgroundColor = kHorizontalTableSelectedBackgroundColor;
        
        self.transform = CGAffineTransformMakeRotation(M_PI * 0.5);
        
        return self;
    }
    return self;
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
