//
//  Scrollcontainer.m
//  StoryboardTest
//
//  Created by chang on 12-7-15.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Scrollcontainer.h"

@implementation Scrollcontainer
    
- (void)drawRect:(CGRect)dirtyRect {
    CGContextRef ctx = UIGraphicsGetCurrentContext(); 
    CGRect bounds = [self bounds];
    
    // Figure out the center of the bounds rectangle 
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0; center.y = bounds.origin.y + bounds.size.height / 2.0;
    // The radius of the circle should be nearly as big as the view
    float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
    // The thickness of the line should be 10 points wide 
    CGContextSetLineWidth(ctx, 10);
    // The color of the line should be gray (red/green/blue = 0.6, alpha = 1.0); 0.6, 0.6, 0.6, 1.0);
    [[UIColor lightGrayColor] setStroke];
    // Draw concentric circles from the outside in
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        // Add a path to the context 
        CGContextAddArc(ctx, center.x, center.y, currentRadius, 0.0, M_PI * 2.0, YES);
        // Perform drawing instruction; removes path
        CGContextStrokePath(ctx); }
    
    // Create a string
    NSString *text = @"You are getting sleepy.";
    // Get a font to draw it in
    UIFont *font = [UIFont boldSystemFontOfSize:28];
    CGRect textRect;
    // How big is this string when drawn in this font? 
    textRect.size = [text sizeWithFont:font];
    // Let's put that string in the center of the view 
    textRect.origin.x = center.x - textRect.size.width / 2.0; 
    textRect.origin.y = center.y - textRect.size.height / 2.0;
    // Set the fill color of the current context to black 
    [[UIColor blackColor] setFill];
    // Draw the string
    [text drawInRect:textRect withFont:font];
    }

    - (id)initWithFrame:(CGRect)frame {
        self = [super initWithFrame:frame]; if (self) {
            // All HypnosisViews start with a clear background color
            [self setBackgroundColor:[UIColor colorWithRed:1 green:1 blue:1 alpha:0.5]]; }
        return self; }

@end
