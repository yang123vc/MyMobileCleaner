//
//  MCColorBackgroundView.m
//  MyMobileCleaner
//
//  Created by GoKu on 8/21/15.
//  Copyright (c) 2015 GoKuStudio. All rights reserved.
//

#import "MCColorBackgroundView.h"

#define kDefaultBackgroundColor     [NSColor whiteColor]
#define kDefaultBorderColor         [NSColor whiteColor]

@implementation MCColorBackgroundView

- (void)drawRect:(NSRect)dirtyRect {
    [NSGraphicsContext saveGraphicsState];

    NSBezierPath *path = [NSBezierPath bezierPathWithRoundedRect:dirtyRect
                                                         xRadius:self.sdCornerRadius
                                                         yRadius:self.sdCornerRadius];
    path.lineWidth = self.sdBorderWidth;

    NSColor *backgroundColor = self.sdBackgroundColor ? : kDefaultBackgroundColor;
    NSColor *borderColor = self.sdBorderColor ? : kDefaultBorderColor;

    [backgroundColor setFill];
    [borderColor setStroke];

    [path fill];
    [path stroke];

    [NSGraphicsContext restoreGraphicsState];
}

@end