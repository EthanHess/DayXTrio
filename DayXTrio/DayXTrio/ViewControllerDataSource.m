//
//  ViewControllerDataSource.m
//  DayXTrio
//
//  Created by Ethan Hess on 5/4/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewControllerDataSource.h"
#import "EntryController.h"

@implementation ViewControllerDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [EntryController sharedInstance].entries.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    cell.textLabel.text = ((Entry *)[EntryController sharedInstance].entries[indexPath.row]).title;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        [[EntryController sharedInstance]removeEntry:[EntryController sharedInstance].entries[indexPath.row]];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationMiddle];
        
        [tableView reloadData];
    }
}

@end
