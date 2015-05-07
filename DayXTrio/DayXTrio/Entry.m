//
//  Entry.m
//  DayXTrio
//
//  Created by Ethan Hess on 5/7/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "Entry.h"

@implementation Entry

- (id)initWithDictionary:(NSDictionary *)dictionary {
    
    self = [super init];
    
    if (self) {
        
        self.title = dictionary[titleKey];
        self.text = dictionary[textKey];
        self.timeStamp = dictionary[timeStampKey];
        
    }
    
    return self;
    
}

- (NSDictionary *)entryDictionary {
    
    NSMutableDictionary *entryDictionary = [NSMutableDictionary new];
    
    if (self.title) {
        [entryDictionary setObject:self.title forKey:titleKey];
    }
    if (self.text) {
        [entryDictionary setObject:self.text forKey:textKey];
    }
    if (self.timeStamp) {
        [entryDictionary setObject:self.timeStamp forKey:timeStampKey];
    }
    
    return entryDictionary;
    
}

@end
