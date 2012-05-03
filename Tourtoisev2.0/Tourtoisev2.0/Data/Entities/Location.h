//
//  Location.h
//  Tourtoisev2.0
//
//  Created by Austin Emmons on 5/3/12.
//  Copyright (c) 2012 BobDog Studio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Stop, Tour;

@interface Location : NSManagedObject

@property (nonatomic, retain) NSNumber * location_id;
@property (nonatomic, retain) NSString * street_address;
@property (nonatomic, retain) NSString * town;
@property (nonatomic, retain) NSString * state;
@property (nonatomic, retain) NSString * country;
@property (nonatomic, retain) NSNumber * longitude;
@property (nonatomic, retain) NSNumber * latitude;
@property (nonatomic, retain) Stop *stop;
@property (nonatomic, retain) Tour *tour;

@end
