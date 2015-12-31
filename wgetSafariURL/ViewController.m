//
//  ViewController.m
//  wgetSafariURL
//
//  Created by Randy McMillan on 12/30/15.
//  Copyright © 2015 Randy McMillan. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self returnSafariURL];

    // Do any additional setup after loading the view.
    
//     [[NSWorkspace sharedWorkspace] openURLs:(NSArray *)self.urls withAppBundleIdentifier:nil options:NSWorkspaceLaunchWithoutActivation additionalEventParamDescriptor:nil launchIdentifiers:nil];


}


- (NSURL *)returnSafariURL {


    [self openAppleScript:(NSString *)@"returnSafariURL"];
    
    return nil;
}




- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

#pragma mark ViewController openURL

// Opens a URL in the default browser in background or foreground
- (void)wgetURL:(NSString *)url inBackground:(BOOL)background
{
    
    //[self openAppleScript:(NSString *)@"wgetSafariURL"];
    
    
    if (background) {
        
        
    } else {
        
        
    }
    
}

- (IBAction)pressWGetButton:(id)sender {

    [self wgetURL:nil inBackground:FALSE];

}

#pragma mark ViewController openAppleScript

- (void)openAppleScript:(NSString *)scriptName
{
    NSLog(@"%@", NSStringFromSelector(_cmd));
    NSString		*path			= [[NSBundle mainBundle] pathForResource:scriptName ofType:@"scpt"];
    NSURL			*url			= [NSURL fileURLWithPath:path]; NSDictionary *errors = [NSDictionary dictionary];
    NSAppleScript	*appleScript	= [[NSAppleScript alloc] initWithContentsOfURL:url error:&errors];
    [appleScript executeAndReturnError:nil];
}


@end
