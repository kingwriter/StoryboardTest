//
//  NewSongViewController.m
//  StoryboardTest
//
//  Created by chang on 12-7-15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NewSongViewController.h"
#import "Melodview.h"
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
    CGRect bounds = [self.view bounds];
    CGRect lowerhalfscreen = CGRectMake( bounds.size.height / 2.0, 0, bounds.size.height, bounds.size.width);
    CGRect screenRect = CGRectMake(20, 30, 500, 500);
    CGRect bigRect = CGRectMake(20, 30, 500, 500);
    bigRect.size.width *= 2.0;
    
    Melodview *melodview = [[Melodview alloc] initWithFrame:lowerhalfscreen];
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:screenRect]; [[self view] addSubview:scrollView];
    Scrollcontainer *scroll = [[Scrollcontainer alloc] initWithFrame:bigRect];

    //[scroll setBackgroundColor:[UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:0.5]];
    [[self view] addSubview:melodview];
    [melodview addSubview:scrollView];
    [scrollView addSubview:scroll];

    
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
