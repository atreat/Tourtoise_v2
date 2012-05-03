//
//  SearchNavigationBar.m
//  Tourtoisev2.0
//
//  Created by Austin Emmons on 3/31/12.
//  Copyright (c) 2012 BobDog Studio. All rights reserved.
//

#import "SearchNavigationBar.h"

@implementation SearchNavigationBar

-(id) initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        // Initialization Code
        NSLog(@"Search Navigation Initialization");
        
        return  self;
    }
    
    
    return nil;
}


-(void) awakeFromNib
{
    NSLog(@"Search Navigation Awake From Nib");
    [self setTintColor:[UIColor cyanColor]];
    [self setTranslucent:NO];
    [self setAlpha:0.7f];
    
    
    
    UITextField  *search = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, self.bounds.size.width - 100, self.bounds.size.height)];
    search.text             = @"Hey Search Here";
    search.backgroundColor  = [UIColor clearColor];
    search.textColor        = [UIColor blackColor];
    search.delegate         = self;
    
    UIImageView *searchImage = [[UIImageView alloc] initWithImage:nil];
    searchImage.backgroundColor = [UIColor orangeColor];
    [search setLeftView:searchImage];
    [search setLeftViewMode:UITextFieldViewModeAlways];
    
//    UIBarButtonItem *barItem = [[UIBarButtonItem alloc] initWithCustomView:search];
    



}

@end
