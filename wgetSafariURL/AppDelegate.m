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
    
    NSLog(@"%@", NSStringFromSelector(_cmd));
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    
    NSLog(@"%@", NSStringFromSelector(_cmd));
    
}

- (void)applicationDidBecomeActive:(NSNotification *)notification {

    NSLog(@"%@", NSStringFromSelector(_cmd));

}
- (void)applicationDidResignActive:(NSNotification *)notification {

    NSLog(@"%@", NSStringFromSelector(_cmd));

}


@end
