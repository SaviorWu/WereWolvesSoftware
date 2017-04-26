//
//  CaptureViewController.m
//  projectCiQiKou
//
//  Created by Pengrun on 14/10/29.
//  Copyright (c) 2014年 Pengrun. All rights reserved.
//

#import "CaptureViewController.h"

@interface CaptureViewController ()
{
    AGSimpleImageEditorView *editorView;
}
@end

@implementation CaptureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加导航栏和完成按钮
    UINavigationBar *naviBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
    [self.view addSubview:naviBar];
    
    UINavigationItem *naviItem = [[UINavigationItem alloc] initWithTitle:@"图片裁剪"];
    [naviBar pushNavigationItem:naviItem animated:YES];
    
    //保存按钮
    UIBarButtonItem *doneItem = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"确定", nil) style:UIBarButtonItemStylePlain target:self action:@selector(saveButton)];
    naviItem.rightBarButtonItem = doneItem;
    
    //取消按钮
    UIBarButtonItem *cancelItem = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"取消", nil) style:UIBarButtonItemStylePlain target:self action:@selector(cancelButton)];
    naviItem.leftBarButtonItem = cancelItem;
    
    //image为上一个界面传过来的图片资源
    editorView = [[AGSimpleImageEditorView alloc] initWithImage:self.image];
    editorView.frame = CGRectMake(0, 0, self.view.frame.size.width ,  self.view.frame.size.width);
    editorView.center = self.view.center;
    
    //外边框的宽度及颜色
    editorView.borderWidth = 1.f;
    editorView.borderColor = [UIColor blackColor];
    
    //截取框的宽度及颜色
    editorView.ratioViewBorderWidth = 5.f;
    editorView.ratioViewBorderColor = kXSF_COLOR_Body;
    
    //截取比例，我这里按正方形1:1截取（可以写成 3./2. 16./9. 4./3.）
    if (self.bFirstCoverImage == YES)
    {
        editorView.ratio = 4./3.;
    }
    else
    {
        if (self.bIsHeadImage == YES) {
            editorView.ratio = 1./1.;
        }
        else
        {
            editorView.ratio = 4./3.;
            UIButton*   left43  = [[UIButton alloc] initWithFrame:CGRectMake(SCREEN_WIDTH/2 - 100, SCREEN_HEIGHT - 50, 95, 40)];
            left43.backgroundColor  = [UIColor clearColor];
            left43.layer.borderWidth    = 1;
            left43.layer.borderColor    = [kXSF_COLOR_Body CGColor];
            left43.layer.masksToBounds  = YES;
            left43.layer.cornerRadius   = 5;
            [left43 setTitle:@"横向" forState:UIControlStateNormal];
            [left43 setTitleColor:kXSF_COLOR_Body forState:UIControlStateNormal];
            [left43 addTarget:self action:@selector(click43) forControlEvents:UIControlEventTouchUpInside];
            UIButton*   right34  = [[UIButton alloc] initWithFrame:CGRectMake(SCREEN_WIDTH/2 +5, SCREEN_HEIGHT - 50, 95, 40)];
            right34.backgroundColor  = [UIColor clearColor];
            right34.layer.borderWidth    = 1;
            right34.layer.borderColor    = [kXSF_COLOR_Body CGColor];
            right34.layer.masksToBounds  = YES;
            right34.layer.cornerRadius   = 5;
            [right34 setTitle:@"竖向" forState:UIControlStateNormal];
            [right34 setTitleColor:kXSF_COLOR_Body forState:UIControlStateNormal];
            [right34 addTarget:self action:@selector(click34) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:right34];
            [self.view addSubview:left43];
        }
    }
    [self.view addSubview:editorView];
    // Do any additional setup after loading the view.
}
- (void)click43
{
    editorView.ratio = 4./3.;
}
- (void)click34
{
    editorView.ratio = 3./4.;
}
//完成截取
-(void)saveButton
{
    //output为截取后的图片，UIImage类型
    UIImage *resultImage = editorView.output;
    //通过代理回传给上一个界面显示
    [self.delegate passImage:resultImage];

    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)cancelButton
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
