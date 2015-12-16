//
//  TFPhotoViewController.h
//  TFCamera
//
//  Created by Melvin on 7/17/15.
//  Copyright © 2015 Melvin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TFCamera.h"

@interface TFPhotoViewController : UIViewController

+ (instancetype)newWithDelegate:(id<TFCameraDelegate>)delegate photo:(UIImage *)photo;

- (void)setAlbumPhoto:(BOOL)isAlbumPhoto;

@end
