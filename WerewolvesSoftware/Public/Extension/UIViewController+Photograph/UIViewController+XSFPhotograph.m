//
//  UIViewController+XSFPhotograph.m
//  XSF
//
//  Created by apple on 2016/12/6.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import "UIViewController+XSFPhotograph.h"
#import <objc/runtime.h>
#import <AVFoundation/AVCaptureDevice.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import <AVFoundation/AVMediaFormat.h>

static char const * const blockKey = "pickerBlock";

@implementation UIViewController (XSFPhotograph)

-(pickerImg)pickerBlock{

    return objc_getAssociatedObject(self, &blockKey);
    
}

-(void)setPickerBlock:(pickerImg)pickerBlock{

    [self willChangeValueForKey:@"pickerBlock"];
    objc_setAssociatedObject(self, &blockKey, pickerBlock, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [self didChangeValueForKey:@"pickerBlock"];
}

- (void)pictureActionSheet{
    
    UIAlertController *aler=[UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *action1=[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [aler addAction:action1];
    
    UIAlertAction *action=[UIAlertAction actionWithTitle:@"相机" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self initImagePicker:1];
    }];
    [aler addAction:action];
    UIAlertAction *action0=[UIAlertAction actionWithTitle:@"从手机相册选择" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self initImagePicker:2];
    }];
    [aler addAction:action0];
    
    [self presentViewController:aler animated:YES completion:nil];
}


- (void)initImagePicker:(int) carmer
{
    
    UIImagePickerController    *imagePickerController = [[UIImagePickerController alloc] init];
    
    
    UIImagePickerControllerSourceType sourceType;
    NSString *promptInfo = @"";
    if (carmer == 1) {
        promptInfo = @"相机";
        sourceType = UIImagePickerControllerSourceTypeCamera;
    }else{
        promptInfo = @"相册";
        sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    }
    
    if (![UIImagePickerController isSourceTypeAvailable:sourceType]) {
        
//        [XSFAlertView showAlertView:[NSString stringWithFormat:@"该设备不支持%@",promptInfo] clickConfirm:^{
//            
//        }];
        return;
    }
    
    BOOL canOpenSystemImagePick = NO;
    
    if([promptInfo isEqualToString:@"相册"]){
        ALAuthorizationStatus author = [ALAssetsLibrary authorizationStatus];
        if (author == ALAuthorizationStatusRestricted || author ==ALAuthorizationStatusDenied){
            //无权限
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"请在“设置->隐私->照片”中打开对兴手付的访问权限" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
            [alert show];
            
        }else{
            canOpenSystemImagePick = YES;
        }
    }else if([promptInfo isEqualToString:@"相机"]){
        AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
        
        if (authStatus == AVAuthorizationStatusRestricted || authStatus ==AVAuthorizationStatusDenied)
        {
            //无权限
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"请在“设置->隐私->相机”中打开对兴手付的访问权限" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
            [alert show];
        }else{
            canOpenSystemImagePick = YES;
        }
    }
    
    
    if (canOpenSystemImagePick) {
        imagePickerController.delegate = self;
        imagePickerController.allowsEditing = NO;//设置可编辑
        imagePickerController.sourceType = sourceType;
        
        [self.navigationController presentViewController:imagePickerController animated:YES completion:^{
            
        }];
    }
    
    
}
#pragma mark UIImagePickerControllerDelegate
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    [picker dismissViewControllerAnimated:YES completion:^{
        //        NSLog(@"info:%@",info);
        UIImage *image = info[@"UIImagePickerControllerOriginalImage"];
        
        if (self.pickerBlock) {
            self.pickerBlock(image);
        }
        //        [self uploadImage:image];
//        [self.businessLicenseImgView setImage:image];
    }];
}


@end
