//
//  Stop.h
//  Tourtoisev2.0
//
//  Created by Austin Emmons on 5/3/12.
//  Copyright (c) 2012 BobDog Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Stop : NSManagedObject

@property (nonatomic, retain) NSNumber * stop_id;
@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * summary;
@property (nonatomic, retain) NSNumber * sequenceNum;
@property (nonatomic, retain) NSManagedObject *tour;
@property (nonatomic, retain) NSManagedObject *media;
@property (nonatomic, retain) NSManagedObject *location;


//   Input stop to the store
+(Stop *) StopWithData:(NSDictionary *)data inManagedObjectContext:(NSManagedObjectContext *)context;





@end
