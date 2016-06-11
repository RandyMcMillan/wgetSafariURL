/*
 * main.m
 * wgetSafariURL
 *
 * Created by Randy McMillan on 12/30/15.
 * Copyright © 2015 Randy McMillan. All rights reserved.
 */

#import <Cocoa/Cocoa.h>

int main(
  int         argc,
  const char  *argv[]
  )
{

/*
 *  int pid = [[NSProcessInfo processInfo] processIdentifier];
 *  NSPipe *pipe = [NSPipe pipe];
 *  NSFileHandle *file = pipe.fileHandleForReading;
 *
 *  NSTask *task = [[NSTask alloc] init];
 *  task.launchPath = @"/usr/bin/grep";
 *  task.arguments = @[@"foo", @"bar.txt"];
 *  task.standardOutput = pipe;
 *
 *  [task launch];
 *
 *  NSData *data = [file readDataToEndOfFile];
 *  [file closeFile];
 *
 *  NSString *grepOutput = [[NSString alloc] initWithData: data encoding: NSUTF8StringEncoding];
 *  NSLog (@"grep returned:\n%@", grepOutput);
 */

  return NSApplicationMain(argc, argv);
} //main
