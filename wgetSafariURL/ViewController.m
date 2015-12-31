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
    
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [super viewDidLoad];
    [self returnSafariURL];
    // Do any additional setup after loading the view.

}


- (NSURL *)returnSafariURL {
    
    NSLog(@"%@", NSStringFromSelector(_cmd));

    NSURL *url;
    
    [self displayURL:self];
    
    
    return url;
}

-(IBAction)displayURL:(id)sender {
    
 
    NSLog(@"%@", NSStringFromSelector(_cmd));
    NSString		*path			= [[NSBundle mainBundle] pathForResource:@"returnSafariURL" ofType:@"scpt"];
    NSURL			*url			= [NSURL fileURLWithPath:path]; NSDictionary *errors = [NSDictionary dictionary];
    NSAppleScript	*appleScript	= [[NSAppleScript alloc] initWithContentsOfURL:url error:&errors];
    NSAppleEventDescriptor *result = [appleScript executeAndReturnError:&errors];
    
    NSDictionary *errorDict = nil;

    if (errorDict) {
        NSLog(@"Error: %@", errorDict);
        return;
    }
    
    //NSLog(@"result == %@", result);
    
    //DescType descriptorType = [result descriptorType];
    
    //NSLog(@"descriptorType == %@", NSFileTypeForHFSTypeCode(descriptorType));
   
    NSLog(@"%@",[result stringValue]);
    // returns a double
    
}




- (void)setRepresentedObject:(id)representedObject {
   
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [super setRepresentedObject:representedObject];
    // Update the view, if already loaded.
}

#pragma mark ViewController openURL

// Opens a URL in the default browser in background or foreground
- (void)wgetURL:(NSString *)url inBackground:(BOOL)background {
    
    NSLog(@"%@", NSStringFromSelector(_cmd));
    //[self openAppleScript:(NSString *)@"wgetSafariURL"];
    if (background) {
        
    } else {
        
    }
}

- (IBAction)pressWGetButton:(id)sender {

    NSLog(@"%@", NSStringFromSelector(_cmd));
    [self wgetURL:nil inBackground:FALSE];
}

#pragma mark ViewController openAppleScript

- (void)openAppleScript:(NSString *)scriptName {

    NSLog(@"%@", NSStringFromSelector(_cmd));
    NSString		*path			= [[NSBundle mainBundle] pathForResource:scriptName ofType:@"scpt"];
    NSURL			*url			= [NSURL fileURLWithPath:path]; NSDictionary *errors = [NSDictionary dictionary];
    NSAppleScript	*appleScript	= [[NSAppleScript alloc] initWithContentsOfURL:url error:&errors];
    [appleScript executeAndReturnError:nil];
}


@end
