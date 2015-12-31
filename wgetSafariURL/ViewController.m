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
    
    
    NSDictionary *error = nil;
    
    NSMutableString *scriptText =
    [NSMutableString stringWithString:@"tell application 'System Events' to set frontApp to name of first process whose frontmost is true\n"];
    [scriptText appendString:@"if (frontApp = 'Safari') or (frontApp = 'Webkit') then\n"];
    [scriptText appendString:@"using terms from application 'Safari'\n "];
    [scriptText appendString:@"tell application frontApp to set currentTabUrl to URL of front document\n"];
    [scriptText appendString:@"tell application frontApp to set currentTabTitle to name of front document"];
    [scriptText appendString:@"end using terms from"];
    [scriptText appendString:@"else if (frontApp = 'Google Chrome') or (frontApp = 'Google Chrome Canary') or (frontApp = 'Chromium') then"];
    [scriptText appendString:@"using terms from application 'Google Chrome'"];
    [scriptText appendString:@"tell application frontApp to set currentTabUrl to URL of active tab of front window"];
    [scriptText appendString:@"tell application frontApp to set currentTabTitle to title of active tab of front window"];
    [scriptText appendString:@"end using terms from"];
    [scriptText appendString:@"else"];
    [scriptText appendString:@"return 'You need a supported browser as your frontmost app'"];
    [scriptText appendString:@"end if"];
    [scriptText appendString:@"return currentTabUrl & '"];
    [scriptText appendString:@"' & currentTabTitle"];
    [scriptText appendString:@""];
 
    NSAppleScript *script = [[NSAppleScript alloc] initWithSource:scriptText];
    
    NSAppleEventDescriptor *result = [script executeAndReturnError:&error];
    
    NSLog(@"result == %@", result);
    
    DescType descriptorType = [result descriptorType];
    
    NSLog(@"descriptorType == %@", NSFileTypeForHFSTypeCode(descriptorType));
    
    // returns a double
    
    NSData *data = [result data];
    double currentPosition = 0;
    
    [data getBytes:&currentPosition length:[data length]];
    
    NSLog(@"currentPosition == %f", currentPosition);
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
