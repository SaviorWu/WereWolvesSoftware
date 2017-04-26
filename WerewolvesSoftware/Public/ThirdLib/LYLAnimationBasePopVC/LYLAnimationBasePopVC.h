//
//  LYLAnimationBasePopVC.h
//  TaoBao
//
//  Created by Rainy on 16/10/12.
//  Copyright © 2016年 Rainy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
@interface LYLAnimationBasePopVC : BaseViewController

@property(nonatomic,strong) UIView * popView;

@property(nonatomic,strong) UIView * rootview;

@property(nonatomic,strong) UIViewController * rootVC;

@property(nonatomic,strong) UIView * maskView;

- (void)createPopVCWithRootVC:(UIViewController *)rootVC andPopView:(UIView *)popView;

- (void)close:(void (^)(void))closeFinished;

- (void)show;

@end
