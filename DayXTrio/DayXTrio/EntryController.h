//
//  EntryController.h
//  DayXTrio
//
//  Created by Ethan Hess on 5/7/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject

@property (nonatomic, strong, readonly) NSArray *entries;

+ (EntryController *)sharedInstance;

- (void)addEntry:(Entry *)entry;

- (void)removeEntry:(Entry *)entry;

@end
