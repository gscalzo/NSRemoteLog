//
//  PPViewController.m
//  NSRemoteLogExample
//
//  Created by Giordano Scalzo on 7/2/12.
//  Copyright (c) 2012 +plugg. All rights reserved.
//

#import "PPViewController.h"
#import "NSRemoteLog.h"

@interface PPViewController ()
@property(nonatomic, strong)IBOutlet UITextField *messageLog;
@end

@implementation PPViewController
@synthesize messageLog;

- (IBAction)logPressed:(id)sender{
    if ([messageLog.text length] == 0) {
        return;
    }
    NSLog(@"Message [%@]", messageLog.text);
    messageLog.text = @"";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@", @"viewDidLoad");
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [messageLog becomeFirstResponder];
    NSLog(@"%@", @"viewDidAppear");
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
