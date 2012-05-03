//
//  Tour.h
//  Tourtoisev2.0
//
//  Created by Austin Emmons on 5/3/12.
//  Copyright (c) 2012 BobDog Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Media, Stop;

@interface Tour : NSManagedObject

@property (nonatomic, retain) NSNumber * tour_id;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * summary;
@property (nonatomic, retain) NSNumber * isWalking;
@property (nonatomic, retain) NSNumber * duration;
@property (nonatomic, retain) NSNumber * currentStop;
@property (nonatomic, retain) Stop *stop;
@property (nonatomic, retain) Media *media;
@property (nonatomic, retain) NSManagedObject *location;

@end
