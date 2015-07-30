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
    
    // Create CGRects for frames
    
    CGRect screenRect = [[UIScreen mainScreen]bounds];
    CGRect bigRect = screenRect;
    bigRect.size.width *= 2;
    
    // Create a scree-sized scroll view and add it to the window
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:screenRect];
    scrollView.pagingEnabled = YES;
    [backgroundView addSubview:scrollView];
    
    
    // Create a screen-sized hypnosis view and add it to the scroll view
    
    HypnosisView *hypnosisView = [[HypnosisView alloc]initWithFrame:screenRect];
    hypnosisView.center = CGPointMake(scrollView.frame.size.width  / 2,
                                      scrollView.frame.size.height / 2);
    [scrollView addSubview:hypnosisView];
    
    // Tell the scroll view how big its content area is
    
    scrollView.contentSize = bigRect.size;
    // Add second scrollView
    
    screenRect.origin.x += screenRect.size.width;
    HypnosisView *secondView = [[HypnosisView alloc]initWithFrame:screenRect];
    secondView.center = CGPointMake(scrollView.frame.size.width + screenRect.size.width / 2,
                                    scrollView.frame.size.height/ 2);
    [scrollView addSubview:secondView];
    CGRect textFieldRect = CGRectMake(0, 0, 240, 30);
    UITextField *textField = [[UITextField alloc]initWithFrame:textFieldRect];
    textField.center = CGPointMake(scrollView.frame.size.width  / 2,
                                   (scrollView.frame.size.height / 2)-(scrollView.frame.size.height/3));
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.placeholder = @"Insert Text Here";
    [hypnosisView addSubview:textField];
    
    //Set the view of this view controller
    
    self.view = scrollView;}

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{ self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self){self.tabBarItem.title = @"Hypnotize Me";
        
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        self.tabBarItem.image = i;}
    return self;
}
        
@end
