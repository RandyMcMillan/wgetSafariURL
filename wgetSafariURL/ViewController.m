//
//  ViewController.m
//  wgetSafariURL
//
//  Created by Randy McMillan on 12/30/15.
//  Copyright © 2015 Randy McMillan. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize urlTextField;

- (void)viewDidLoad
{
	NSLog(@"%@", NSStringFromSelector(_cmd));
	[super viewDidLoad];
	[self returnSafariURL];
	// Do any additional setup after loading the view.
}

-(void)viewWillAppear{
//REf:https://forums.developer.apple.com/thread/12118
    
    self.document = [self.view.window.windowController document];

}

-(void)viewDidAppear
{
    
    //REf:https://forums.developer.apple.com/thread/12118
    [super viewDidAppear];
    NSView* view = self.view;
    NSWindow* window = view.window;
    NSWindowController* wc = window.windowController;
    NSDocument* doc = wc.document;
    self.representedObject = doc;
}


- (NSURL *)returnSafariURL
{
	NSLog(@"%@", NSStringFromSelector(_cmd));

	NSURL *url;

	[self displayURL:self];

	return url;
}

- (IBAction)displayURL:(id)sender
{
	NSLog(@"%@", NSStringFromSelector(_cmd));
	NSString				*path			= [[NSBundle mainBundle] pathForResource:@"returnSafariURL" ofType:@"scpt"];
	NSURL					*url			= [NSURL fileURLWithPath:path]; NSDictionary *errors = [NSDictionary dictionary];
	NSAppleScript			*appleScript	= [[NSAppleScript alloc] initWithContentsOfURL:url error:&errors];
	NSAppleEventDescriptor	*result			= [appleScript executeAndReturnError:&errors];

	NSDictionary *errorDict = nil;

	if (errorDict) {
		NSLog(@"Error: %@", errorDict);
		return;
	}

	// NSLog(@"result == %@", result);

	// DescType descriptorType = [result descriptorType];

	// NSLog(@"descriptorType == %@", NSFileTypeForHFSTypeCode(descriptorType));

	NSLog(@"%@", [result stringValue]);
	// returns a double

	[self.urlTextField setStringValue:[result stringValue]];
}

- (void)setRepresentedObject:(id)representedObject
{
	NSLog(@"%@", NSStringFromSelector(_cmd));
	[super setRepresentedObject:representedObject];
	// Update the view, if already loaded.
}

#pragma mark ViewController openURL

// Opens a URL in the default browser in background or foreground
- (void)wgetURL:(NSString *)url inBackground:(BOOL)background
{
	NSLog(@"%@", NSStringFromSelector(_cmd));
	[self openAppleScript:(NSString *)@"wgetSafariURL"];

	if (background) {} else {}
}

- (IBAction)pressWGetButton:(id)sender
{
	NSLog(@"%@", NSStringFromSelector(_cmd));
	[self wgetURL:[self.urlTextField stringValue] inBackground:FALSE];
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
