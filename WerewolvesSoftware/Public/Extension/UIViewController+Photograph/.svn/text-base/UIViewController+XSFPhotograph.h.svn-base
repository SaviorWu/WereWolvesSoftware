//
//  UIViewController+XSFPhotograph.h
//  XSF
//
//  Created by apple on 2016/12/6.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^pickerImg)(UIImage *img);
@interface UIViewController (XSFPhotograph)<UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property (nonatomic ,strong)pickerImg pickerBlock;
- (void)pictureActionSheet;
- (void)initImagePicker:(int) carmer;//1 相机
@end
