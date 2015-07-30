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
    UILocalNotification *note = [[UILocalNotification alloc]init];
    note.alertBody = @"Hypnotize me!";
    note.fireDate = self.datePicker.date;
}

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self){
        self.tabBarItem.title = @"Reminder";
        UIImage *i = [UIImage imageNamed:@"Time"];
        self.tabBarItem.image = i;
        
    }
    return self;
}

@end
