//
//  Stop.m
//  Tourtoisev2.0
//
//  Created by Austin Emmons on 5/3/12.
//  Copyright (c) 2012 BobDog Studio. All rights reserved.
//

#import "Stop.h"


@implementation Stop

@dynamic stop_id;
@dynamic title;
@dynamic summary;
@dynamic sequenceNum;
@dynamic tour;
@dynamic media;
@dynamic location;


+(Stop *)StopWithData:(NSDictionary *)data inManagedObjectContext:(NSManagedObjectContext *)context
{
    Stop *stop = nil;
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    request.entity = [NSEntityDescription entityForName:@"Stop" inManagedObjectContext:context];
    request.predicate = [NSPredicate predicateWithFormat:@"stop_id = %@", [data objectForKey:@"stop_id"]];
    
    NSError *error = nil;
    stop = [[context executeFetchRequest:request error:&error] lastObject];
    
    if (!error && !stop) {
        stop.stop_id    = [data objectForKey:@"stop_id"];
        stop.title      = [data objectForKey:@"title"];
        stop.summary    = [data objectForKey:@"summary"];
        stop.sequenceNum= [data objectForKey:@"sequenceNum"];
        stop.tour       = [data objectForKey:@"tour"];
        stop.media      = [data objectForKey:@"media"];
        stop.location   = [data objectForKey:@"location"];
        
    }
    
    return stop;
    
}




















@end
