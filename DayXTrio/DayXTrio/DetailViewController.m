//
//  DetailViewController.m
//  DayXTrio
//
//  Created by Ethan Hess on 5/4/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "DetailViewController.h"
#import "EntryController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

}

- (void)updateWithEntry:(Entry *)entry {
    
    self.entry = entry;
    
    self.title = entry.title;
    
    self.textField.text = entry.title;
    self.textView.text = entry.text;
    
}

- (IBAction)clearButtonPressed:(id)sender {
    
    self.textField.text = @"";
    self.textView.text = @"";
}

- (IBAction)saveEntry:(id)sender {
    
    Entry *entry = [[Entry alloc]initWithDictionary:@{titleKey: self.textField.text, textKey: self.textView.text}];
    
    [[EntryController sharedInstance]addEntry:entry];
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
