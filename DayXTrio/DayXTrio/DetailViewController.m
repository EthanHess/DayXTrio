//
//  DetailViewController.m
//  DayXTrio
//
//  Created by Ethan Hess on 5/4/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "DetailViewController.h"
#import "EntryController.h"
#import "ViewController.h"

@interface DetailViewController () <UITextFieldDelegate, UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.textView.delegate = self;
    self.textField.delegate = self;
    [self updateWithEntry:self.entry];

}

- (void)updateWithEntry:(Entry *)entry {
    
    self.textField.text = entry.title;
    self.textView.text = entry.text;
    
}

- (IBAction)clearButtonPressed:(id)sender {
    
    self.textField.text = @"";
    self.textView.text = @"";
}

- (IBAction)saveEntry:(id)sender {

    if (self.entry) {
        self.entry.title = self.textField.text;
        self.entry.text = self.textView.text;
        self.entry.timeStamp = [NSDate date];
    } else {
        self.entry = [[EntryController sharedInstance] createEntryWithTitle:self.textField.text text:self.textView.text];
    }
    
    [[EntryController sharedInstance] synchronize];
    [self.navigationController popViewControllerAnimated:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (BOOL)textViewShouldEndEditing:(UITextView *)textView {
    [self.textView resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
