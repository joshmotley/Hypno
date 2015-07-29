//
//  UIViewController+ReminderViewController.m
//  Hypnosister
//
//  Created by Joshua Motley on 7/29/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "ReminderViewController.h"

@interface ReminderViewController ()
@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;
@end

@implementation  ReminderViewController : UIViewController

// Action button for date picker that will create a local notification at some point

- (IBAction)addReminder:(id)sender {
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@", date);
}

@end
