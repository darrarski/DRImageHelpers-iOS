//
//  UIImage+DRImageHelpers.h
//  DRImageHelpers
//
//  Created by Dariusz Rybicki on 31/07/14.
//  Copyright (c) 2014 Darrarski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (DRImageHelpers)

/**
 *  Returns cropped image maintaining orientation and scale
 *
 *  @param cropRect cropping rect
 *
 *  @return cropped image
 */
- (UIImage *)dr_croppedImageWithRect:(CGRect)cropRect;

@end
