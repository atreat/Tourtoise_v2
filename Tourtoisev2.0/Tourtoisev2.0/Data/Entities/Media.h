//
//  Media.h
//  Tourtoisev2.0
//
//  Created by Austin Emmons on 5/3/12.
//  Copyright (c) 2012 BobDog Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Stop;

@interface Media : NSManagedObject

@property (nonatomic, retain) NSData * data;
@property (nonatomic, retain) NSString * filename;
@property (nonatomic, retain) NSString * fileType;
@property (nonatomic, retain) NSNumber * fileSize;
@property (nonatomic, retain) NSNumber * media_id;
@property (nonatomic, retain) Stop *stop;
@property (nonatomic, retain) NSManagedObject *tour;

@end
