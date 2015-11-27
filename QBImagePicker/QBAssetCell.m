//
//  QBAssetCell.m
//  QBImagePicker
//
//  Created by Katsuma Tanaka on 2015/04/06.
//  Copyright (c) 2015 Katsuma Tanaka. All rights reserved.
//

#import "QBAssetCell.h"
#import "QBCheckmarkView.h"

@interface QBAssetCell ()

@property (weak, nonatomic) IBOutlet UIView *overlayView;
@property (weak, nonatomic) IBOutlet QBCheckmarkView *markView;

@end

@implementation QBAssetCell

- (void)setSelected:(BOOL)selected
{
    [super setSelected:selected];
    
    // Show/hide overlay view
    if (self.showsOverlayViewWhenSelected) {
        self.overlayView.backgroundColor = selected ? [UIColor colorWithWhite:0 alpha:0.4] : [UIColor clearColor];
        self.markView.selected = selected;
    }
}

@end
