//
//  QBImagePreviewViewController.m
//  QBImagePicker
//
//  Created by lingye on 15/11/27.
//  Copyright © 2015年 Katsuma Tanaka. All rights reserved.
//

#import "QBImagePreviewViewController.h"

@implementation QBImagePreviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    self.imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    self.imageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    self.imageView.image = self.image;
    [self.view addSubview:self.imageView];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissSelf)];
    [self.view addGestureRecognizer:tap];
}

- (void)setImage:(UIImage *)image {
    if (_image != image) {
        _image = image;
        if (self.imageView != nil) {
            self.imageView.image = _image;
        }
    }
}

- (void)dismissSelf {
    [self dismissViewControllerAnimated:NO completion:nil];
}

@end
