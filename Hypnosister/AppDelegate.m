//
//  AppDelegate.m
//  Hypnosister
//
//  Created by Joshua Motley on 6/20/15.
//  Copyright (c) 2015 Big Nerd Ranch. All rights reserved.
//

#import "AppDelegate.h"
#import "HypnosisView.h"
#import "HypnosisViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen]bounds]];
  
  

   
   // Create CGRects for frames
   
   CGRect screenRect = self.window.bounds;
   CGRect bigRect = screenRect;
   bigRect.size.width *= 2;

   // Create a scree-sized scroll view and add it to the window
   
   UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:screenRect];
   scrollView.pagingEnabled = YES;
   [self.window addSubview:scrollView];
  
   
   // Create a screen-sized hypnosis view and add it to the scroll view
   
   HypnosisView *hypnosisView = [[HypnosisView alloc]initWithFrame:screenRect];
   hypnosisView.center = CGPointMake(scrollView.frame.size.width  / 2,
   scrollView.frame.size.height / 2);
   [scrollView addSubview:hypnosisView];
   
   // Add second scrollView
   
   screenRect.origin.x += screenRect.size.width;
   HypnosisView *secondView = [[HypnosisView alloc]initWithFrame:screenRect];
   secondView.center = CGPointMake(scrollView.frame.size.width + screenRect.size.width / 2,
   scrollView.frame.size.height/ 2);
   [scrollView addSubview:secondView];
   
 
   // Tell the scroll view how big its content area is
   
   scrollView.contentSize = bigRect.size;
   
   HypnosisViewController *hvc = [[HypnosisViewController alloc]init];
   self.window.rootViewController = hvc;
   
   // Set window background color and make it visible
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
