//
//  UIViewController+HypnosisViewController.m
//  Hypnosister
//
//  Created by Joshua Motley on 7/29/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController : UIViewController

-(void)loadView
{
    //Create View
    
    HypnosisView *backgroundView = [[HypnosisView alloc]init];
    
    //Set the view of this view controller
    
    self.view = backgroundView;}

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{ self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self){self.tabBarItem.title = @"Hypnotize Me";
        
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        self.tabBarItem.image = i;}
    return self;
}
        
@end
