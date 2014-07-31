//
//  UIImage+DRImageHelpers.m
//  F1RST
//
//  Created by Dariusz Rybicki on 31/07/14.
//  Copyright (c) 2014 Vladimir Goranov. All rights reserved.
//

#import "UIImage+DRImageHelpers.h"

@implementation UIImage (DRImageHelpers)

- (UIImage *)dr_croppedImageWithRect:(CGRect)cropRect
{
    CGAffineTransform rectTransform = [self transformForRectWithImageOrientationAndScale];
    cropRect = CGRectApplyAffineTransform(cropRect, rectTransform);
    
    CGImageRef imageRef = CGImageCreateWithImageInRect([self CGImage], cropRect);
    UIImage *image = [UIImage imageWithCGImage:imageRef
                                         scale:self.scale
                                   orientation:self.imageOrientation];
    CGImageRelease(imageRef);
    
    return image;
}

#pragma mark - Helper methods

- (CGAffineTransform)transformForRectWithImageOrientationAndScale
{
    CGAffineTransform rectTransform;
    
    switch (self.imageOrientation) {
        case UIImageOrientationLeft:
            rectTransform = CGAffineTransformTranslate(CGAffineTransformMakeRotation(90.f / 180.f * M_PI), 0, -self.size.height);
            break;
            
        case UIImageOrientationRight:
            rectTransform = CGAffineTransformTranslate(CGAffineTransformMakeRotation(-90.f / 180.f * M_PI), -self.size.width, 0);
            break;
            
        case UIImageOrientationDown:
            rectTransform = CGAffineTransformTranslate(CGAffineTransformMakeRotation(-180.f / 180.f * M_PI), -self.size.width, -self.size.height);
            break;
            
        default:
            rectTransform = CGAffineTransformIdentity;
            break;
    };
    
    return CGAffineTransformScale(rectTransform, self.scale, self.scale);
}

@end
