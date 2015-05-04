//
//  ViewControllerDataSource.m
//  DayXTrio
//
//  Created by Ethan Hess on 5/4/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewControllerDataSource.h"

@implementation ViewControllerDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self entryTitleArray].count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    cell.textLabel.text = [self entryTitleArray][indexPath.row];
    
    return cell;
}

- (NSArray *)entryTitleArray {
    
    return @[@"Entry 1", @"Entry 2", @"Entry 3", @"Entry 4", @"Entry 5"];
}

@end
