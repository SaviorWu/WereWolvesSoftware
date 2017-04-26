//
//  CaptureViewController.h
//  projectCiQiKou
//
//  Created by Pengrun on 14/10/29.
//  Copyright (c) 2014年 Pengrun. All rights reserved.
//


#import "AGSimpleImageEditorView.h"
@protocol CaptureViewControllerDelegate <NSObject>

- (void)passImage:(UIImage *)image;

@end
@interface CaptureViewController : UIViewController
@property (nonatomic, weak)id <CaptureViewControllerDelegate>delegate;
@property (nonatomic, strong)UIImage *image;
@property (nonatomic, assign)BOOL   bIsHeadImage;
@property (nonatomic, assign)BOOL   bFirstCoverImage;
@end
