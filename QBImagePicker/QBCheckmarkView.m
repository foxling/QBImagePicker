//
//  QBCheckmarkView.m
//  QBImagePicker
//
//  Created by Katsuma Tanaka on 2015/04/06.
//  Copyright (c) 2015 Katsuma Tanaka. All rights reserved.
//

#import "QBCheckmarkView.h"

@implementation QBCheckmarkView

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    // Set default values
    self.borderWidth = 1.0;
    self.checkmarkLineWidth = 1.2;
    
    self.borderColor = [UIColor whiteColor];
    self.bodyColor = [UIColor colorWithRed:(83.0 / 255.0) green:(196.0 / 255.0) blue:(201.0 / 255.0) alpha:1.0];
    self.checkmarkColor = [UIColor whiteColor];
    
    // Set shadow
    self.layer.shadowColor = [[UIColor grayColor] CGColor];
    self.layer.shadowOffset = CGSizeMake(0, 0);
    self.layer.shadowOpacity = 0.6;
    self.layer.shadowRadius = 2.0;
    
    self.selected = NO;
}

- (void)drawRect:(CGRect)rect
{
    // Body
    [self.bodyColor setFill];
    [[UIBezierPath bezierPathWithOvalInRect:self.bounds] fill];
    
    // Border
    [self.borderColor setStroke];
    [[UIBezierPath bezierPathWithOvalInRect:CGRectInset(self.bounds, self.borderWidth, self.borderWidth)] stroke];
    
    // Checkmark
    UIBezierPath *checkmarkPath = [UIBezierPath bezierPath];
    checkmarkPath.lineWidth = self.checkmarkLineWidth;
    
    [checkmarkPath moveToPoint:CGPointMake(CGRectGetWidth(self.bounds) * (6.0 / 24.0), CGRectGetHeight(self.bounds) * (12.0 / 24.0))];
    [checkmarkPath addLineToPoint:CGPointMake(CGRectGetWidth(self.bounds) * (10.0 / 24.0), CGRectGetHeight(self.bounds) * (16.0 / 24.0))];
    [checkmarkPath addLineToPoint:CGPointMake(CGRectGetWidth(self.bounds) * (18.0 / 24.0), CGRectGetHeight(self.bounds) * (8.0 / 24.0))];
    
    [self.checkmarkColor setStroke];
    [checkmarkPath stroke];
}

- (void)setSelected:(BOOL)selected {
    _selected = selected;
    if (selected) {
        self.bodyColor = [UIColor colorWithRed:(83.0 / 255.0) green:(196.0 / 255.0) blue:(201.0 / 255.0) alpha:1.0];
    } else {
        self.bodyColor = [UIColor colorWithWhite:0 alpha:0.1];
    }
    [self setNeedsDisplay];
}

@end
