//
//  Entry.h
//  DayXTrio
//
//  Created by Ethan Hess on 5/7/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * const titleKey = @"title";
static NSString * const textKey = @"text";
static NSString * const timeStampKey = @"timeStamp";

@interface Entry : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSDate *timeStamp;

- (id)initWithDictionary:(NSDictionary *)dictionary;

- (NSDictionary *)entryDictionary;

@end
