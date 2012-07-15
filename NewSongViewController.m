//
//  NewSongViewController.m
//  StoryboardTest
//
//  Created by chang on 12-7-15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NewSongViewController.h"
#import "Scrollcontainer.h"

@interface NewSongViewController ()

@end

@implementation NewSongViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // bounds...?
    CGRect screenRect = CGRectMake(20, 30, 500, 500);
    // Create the UIScrollView to have the size of the window, matching its size 
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect]; [[self view] addSubview:scrollView];
    //CGRect anotherFrame = CGRectMake(20, 30, 500, 500);
    //Scrollcontainer *scroll = [[Scrollcontainer alloc] initWithFrame:anotherFrame]; 
    
    CGRect bigRect = screenRect;
    bigRect.size.width *= 2.0;
    bigRect.size.height *= 2.0;
    Scrollcontainer *scroll = [[Scrollcontainer alloc] initWithFrame:bigRect];
    // Add the HypnosisView as a subview of the scrollView instead of the window 
    [scrollView addSubview:scroll];
    // Tell the scrollView how big its virtual world is [scrollView setContentSize:bigRect.size];

    //[scroll setBackgroundColor:[UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:0.5]];
    [[self view] addSubview:scrollView];
    //[view addSubview:anotherView];
    
    [scrollView setContentSize:bigRect.size];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return YES;
}

@end
