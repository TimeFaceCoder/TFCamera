//
//  ViewController.m
//  TFCamera
//
//  Created by Melvin on 7/16/15.
//  Copyright © 2015 Melvin. All rights reserved.
//

#import "ViewController.h"
#import "TFCameraViewController.h"

@interface ViewController ()<TFCameraDelegate>

@property (strong, nonatomic) UIButton *startCameraButton;

- (void)takePhotoTapped;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _startCameraButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_startCameraButton setTitle:@"StartCamera" forState:UIControlStateNormal];
    [_startCameraButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [_startCameraButton addTarget:self action:@selector(takePhotoTapped) forControlEvents:UIControlEventTouchUpInside];
    [_startCameraButton sizeToFit];
    _startCameraButton.frame = CGRectMake(100, 100, _startCameraButton.frame.size.width, _startCameraButton.frame.size.height);
    [self.view addSubview:_startCameraButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - TGCameraDelegate required

- (void)cameraDidCancel
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)cameraDidTakePhoto:(UIImage *)image
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)cameraDidSelectAlbumPhoto:(UIImage *)image
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark -
#pragma mark - TGCameraDelegate optional

- (void)cameraWillTakePhoto
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)cameraDidSavePhotoAtPath:(NSURL *)assetURL
{
    NSLog(@"%s album path: %@", __PRETTY_FUNCTION__, assetURL);
}

- (void)cameraDidSavePhotoWithError:(NSError *)error
{
    NSLog(@"%s error: %@", __PRETTY_FUNCTION__, error);
}

- (void)cameraDidTakeMedia:(TFMediaFileModel *)mediaFile {
    
}

#pragma mark -
#pragma mark - Actions

- (void)takePhotoTapped {
    TFCameraNavigationController *navigationController = [TFCameraNavigationController newWithCameraDelegate:self];
    [self presentViewController:navigationController animated:YES completion:nil];
}

@end
