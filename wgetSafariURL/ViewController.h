//
//  ViewController.h
//  wgetSafariURL
//
//  Created by Randy McMillan on 12/30/15.
//  Copyright © 2015 Randy McMillan. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController {


    IBOutlet NSTextField *urlTextField;

}

- (void)wgetURL:(NSString *)url inBackground:(BOOL)background;
- (NSURL *)returnSafariURL;
- (IBAction)pressWGetButton:(id)sender;
- (IBAction)displayURL:(id)sender;


@property (nonatomic, readwrite) NSTextField        *urlTextField;


@end

