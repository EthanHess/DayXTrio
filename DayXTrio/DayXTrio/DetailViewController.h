//
//  DetailViewController.h
//  DayXTrio
//
//  Created by Ethan Hess on 5/4/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"

@interface DetailViewController : UIViewController

@property (nonatomic, strong) Entry *entry;

- (void)updateWithEntry:(Entry *)entry;

@end
