//
//  ViewController.m
//  DayXTrio
//
//  Created by Ethan Hess on 5/4/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "EntryController.h"

@interface ViewController () <UITableViewDelegate>



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"My Journal";
    
    self.dataSource = [ViewControllerDataSource new];
    
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self;
    
    
}

-(void)viewWillAppear:(BOOL)animated {
    
    [self.tableView reloadData];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    
    if ([segue.identifier isEqualToString:@"viewEntry"]) {
        
        DetailViewController *dvc = segue.destinationViewController;
        dvc.entry = [EntryController sharedInstance].entries[indexPath.row];
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
