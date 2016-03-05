//
//  AppDelegate.m
//  wgetSafariURL
//
//  Created by Randy McMillan on 12/30/15.
//  Copyright © 2015 Randy McMillan. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    	NSLog(@"%@", NSStringFromSelector(_cmd));
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
    
    	NSLog(@"%@", NSStringFromSelector(_cmd));
    
}



@end
