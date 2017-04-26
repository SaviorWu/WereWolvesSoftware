//
//  LYLAnimationBasePopVC.m
//  TaoBao
//
//  Created by Rainy on 16/10/12.
//  Copyright © 2016年 Rainy. All rights reserved.
//

#import "LYLAnimationBasePopVC.h"

CGFloat LYL_ANIMATION_BASE_POP_DURATION_TIME = 0.3;
CGFloat LYL_ANIMATION_BASE_POP_DELAY_TIME = 0;

@interface LYLAnimationBasePopVC ()
{
    BOOL _isShow;
}
@end

@implementation LYLAnimationBasePopVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)createPopVCWithRootVC:(UIViewController *)rootVC andPopView:(UIView *)popView
{
    _rootVC = rootVC;
    _popView = popView;
    [self createUI];
}

- (void)createUI
{
    self.view.backgroundColor = [UIColor blackColor];
    
    _rootVC.view.frame = self.view.bounds;
    _rootVC.view.backgroundColor = [UIColor whiteColor];
    _rootview = _rootVC.view;
    [self addChildViewController:_rootVC];
    [self.view addSubview:_rootview];
    
    //rootVC上的maskView
    _maskView = ({
        UIView * maskView = [[UIView alloc]initWithFrame:self.view.bounds];
        maskView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.5];
        maskView.alpha = 0;
        UITapGestureRecognizer *tap_close = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(close)];
        maskView.userInteractionEnabled = YES;
        [maskView addGestureRecognizer:tap_close];
        maskView;
    });
    [_rootview addSubview:_maskView];
}

- (void)close:(void (^)(void))closeFinished
{
    if (!_isShow) {
        closeFinished();
        return;
    }
    CGRect frame = _popView.frame;
    frame.origin.y += _popView.frame.size.height;
    [UIView animateWithDuration:LYL_ANIMATION_BASE_POP_DURATION_TIME delay:LYL_ANIMATION_BASE_POP_DELAY_TIME options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        //maskView隐藏
        [_maskView setAlpha:0.f];
        //popView下降
        _popView.frame = frame;
        
        //同时进行 感觉更丝滑
        [_rootview.layer setTransform:[self firstTransform]];
        
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:LYL_ANIMATION_BASE_POP_DURATION_TIME delay:LYL_ANIMATION_BASE_POP_DELAY_TIME options:UIViewAnimationOptionCurveEaseInOut animations:^{
            //变为初始值
            [_rootview.layer setTransform:CATransform3DIdentity];
            
        } completion:^(BOOL finished) {
            
            [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleDefault;
            //移除
            [_popView removeFromSuperview];
            
            closeFinished();
        }];
        
    }];
}
- (void)close{
    CGRect frame = _popView.frame;
    frame.origin.y += _popView.frame.size.height;
    [UIView animateWithDuration:LYL_ANIMATION_BASE_POP_DURATION_TIME delay:LYL_ANIMATION_BASE_POP_DELAY_TIME options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        //maskView隐藏
        [_maskView setAlpha:0.f];
        //popView下降
        _popView.frame = frame;
        
        //同时进行 感觉更丝滑
        [_rootview.layer setTransform:[self firstTransform]];
        
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:LYL_ANIMATION_BASE_POP_DURATION_TIME delay:LYL_ANIMATION_BASE_POP_DELAY_TIME options:UIViewAnimationOptionCurveEaseInOut animations:^{
            //变为初始值
            [_rootview.layer setTransform:CATransform3DIdentity];
            
        } completion:^(BOOL finished) {
            
            [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleDefault;
            //移除
            [_popView removeFromSuperview];
            
            _isShow = NO;
        }];
        
    }];
}
- (void)show
{
    [[UIApplication sharedApplication].windows[0] addSubview:_popView];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    CGRect frame = _popView.frame;
    frame.origin.y = self.view.bounds.size.height - _popView.frame.size.height;
    
    [UIView animateWithDuration:LYL_ANIMATION_BASE_POP_DURATION_TIME delay:LYL_ANIMATION_BASE_POP_DELAY_TIME options:UIViewAnimationOptionCurveEaseInOut animations:^{
        
        [_rootview.layer setTransform:[self firstTransform]];
        
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:LYL_ANIMATION_BASE_POP_DURATION_TIME delay:LYL_ANIMATION_BASE_POP_DELAY_TIME options:UIViewAnimationOptionCurveEaseInOut animations:^{
            
            [_rootview.layer setTransform:[self secondTransform]];
            //显示maskView
            [_maskView setAlpha:0.5f];
            //popView上升
            _popView.frame = frame;
            
        } completion:^(BOOL finished) {
            _isShow = YES;
        }];
        
    }];
    
}

- (CATransform3D)firstTransform{
    CATransform3D t1 = CATransform3DIdentity;
    t1.m34 = 1.0/-900;
    //带点缩小的效果
    t1 = CATransform3DScale(t1, 0.95, 0.95, 1);
    //绕x轴旋转
    t1 = CATransform3DRotate(t1, 15.0 * M_PI/180.0, 1, 0, 0);
    return t1;
    
}

- (CATransform3D)secondTransform{
    
    CATransform3D t2 = CATransform3DIdentity;
    t2.m34 = [self firstTransform].m34;
    //向上移
    t2 = CATransform3DTranslate(t2, 0, self.view.frame.size.height * (-0.08), 0);
    //第二次缩小
    t2 = CATransform3DScale(t2, 0.95, 0.75, 1);
    return t2;
}

@end
