//
//  ControlVariables_iPhone.h
//  HorizontalTableView
//
//  Created by Austin Emmons on 3/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ColorVariables.h"

////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// iPhone CONSTANTS
//
///////////////////////////////////////////////////////////////////////////////////////////////////////

//  
//  The UI layout in numbers, all constants, all reuasable


// Width (or length before rotation) of the table view embedded within another table view's row
#define kTableLength                                320                     //width of vertical table view (recommended to be screen width)


// Width of the cells of the embedded table view (after rotation, which means it controls the rowHeight property)
#define kCellWidth                                  320

// Height of the cells of the embedded table view (after rotation, which would be the table's width)
#define kCellHeight                                 400

// Padding for the Cell containing the article image and title
#define kArticleCellVerticalInnerPadding            3
#define kArticleCellHorizontalInnerPadding          3
        
// Padding for the title label in an article's cell
#define kArticleTitleLabelPadding                   4

// Vertical padding for the embedded table view within the row
#define kRowVerticalPadding                         0
// Horizontal padding for the embedded table view within the row
#define kRowHorizontalPadding                       0

