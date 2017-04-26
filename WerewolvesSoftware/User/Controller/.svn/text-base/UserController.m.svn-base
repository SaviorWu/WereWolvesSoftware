//
//  UserController.m
//  WerewolvesSoftware
//
//  Created by sky on 2017/2/27.
//  Copyright © 2017年 Werewolves. All rights reserved.
//

#import "UserController.h"

@interface UserController ()

@end

@implementation UserController
- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden  = YES;
}
//- (void)xiayu
//{
//    int fx = self.view.frame.size.width - 100;
//    int fy = self.view.frame.size.height - 100;
//    int x = arc4random() % fx;
//    int y = arc4random() % fy;
//    CGPoint location;
//    location.x  = x;
//    location.y  = y;
//    UIView*    RippleView = [[UIView alloc] initWithFrame:(CGRect){0,0,120,40}];
//    RippleView.backgroundColor = [UIColor whiteColor];
//    RippleView.layer.cornerRadius = (RippleView.frame.size.height + RippleView.frame.size.width - 40)/2;
//    RippleView.layer.masksToBounds=true;
//    RippleView.alpha=0;
//    
//    [self.view addSubview:RippleView];
//    RippleView.center = location;
//    RippleView.transform = CGAffineTransformMakeScale(0.6, 0.6);
//    [UIView animateWithDuration:0.1
//                     animations:^{
//                         RippleView.alpha=0.2;
//        //self.view.alpha=0.3;
//    }];
//    [UIView animateWithDuration:0.7
//                          delay:0
//                        options:UIViewAnimationOptionCurveEaseInOut
//                     animations:^{
//                         RippleView.transform = CGAffineTransformMakeScale(1,1);
//                         RippleView.alpha=0;
//    } completion:^(BOOL finished) {
//        [RippleView removeFromSuperview];
//    }];
//    
//    UIView* waveView = [[UIView alloc] initWithFrame:RippleView.frame];
//    waveView.backgroundColor = [UIColor whiteColor];
//    waveView.layer.cornerRadius = RippleView.layer.cornerRadius;
//    waveView.layer.masksToBounds=true;
//    waveView.center = location;
//    [self.view addSubview:waveView];
//    waveView.transform = CGAffineTransformMakeScale(0.3, 0.3);
//    waveView.alpha  = 0;
//    [UIView animateWithDuration:1
//                     animations:^{
//                         waveView.alpha= 0.2;
//        //self.view.alpha=0.3;
//    }];
//    [UIView animateWithDuration:1.5
//                          delay:0
//                        options:UIViewAnimationOptionCurveEaseInOut
//                     animations:^{
//                         waveView.transform = CGAffineTransformMakeScale(1,1);
//                         waveView.alpha=0;
//    } completion:^(BOOL finished) {
//        [waveView removeFromSuperview];
//    }];
//    
//    [self performSelector:@selector(xiayu) withObject:self afterDelay:0.3];
//}
//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
//    [super touchesBegan:touches withEvent:event];
//    UITouch *touch = [touches anyObject];
//    CGPoint location = [touch locationInView:self.view];
//    
//    UIView*    RippleView = [[UIView alloc] initWithFrame:(CGRect){0,0,120,60}];
//    RippleView.backgroundColor = [UIColor whiteColor];
//    RippleView.layer.cornerRadius = 40;
//    RippleView.layer.masksToBounds=true;
//    RippleView.alpha=0;
//    
//    [self.view addSubview:RippleView];
//    RippleView.center = location;
//    RippleView.transform = CGAffineTransformMakeScale(0.6, 0.6);
//    [UIView animateWithDuration:0.1
//                     animations:^{
//                         RippleView.alpha=0.6;
//        //self.view.alpha=0.3;
//    }];
//    [UIView animateWithDuration:0.7
//                          delay:0
//                        options:UIViewAnimationOptionCurveEaseInOut
//                     animations:^{
//                         RippleView.transform = CGAffineTransformMakeScale(1,1);
//                         RippleView.alpha=0;
//    } completion:^(BOOL finished) {
//        [RippleView removeFromSuperview];
//    }];
//    
//    UIView* waveView = [[UIView alloc] initWithFrame:RippleView.frame];
//    waveView.backgroundColor = [UIColor whiteColor];
//    waveView.layer.cornerRadius = RippleView.layer.cornerRadius;
//    waveView.layer.masksToBounds=true;
//    waveView.center = location;
//    [self.view addSubview:waveView];
//    waveView.transform = CGAffineTransformMakeScale(0.3, 0.3);
//    waveView.alpha  = 0;
//    [UIView animateWithDuration:1
//                     animations:^{
//                         waveView.alpha= 0.3;
//        //self.view.alpha=0.3;
//    }];
//    [UIView animateWithDuration:1.5
//                          delay:0
//                        options:UIViewAnimationOptionCurveEaseInOut
//                     animations:^{
//                         waveView.transform = CGAffineTransformMakeScale(1,1);
//                         waveView.alpha=0;
//    } completion:^(BOOL finished) {
//        [waveView removeFromSuperview];
//    }];
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
//    CAEmitterLayer *smokeEmitter;
//    smokeEmitter = [CAEmitterLayer layer];
//    //烟粒子的位置
//    smokeEmitter.emitterPosition = CGPointMake(self.view.frame.size.width/4 + 50, self.view.frame.size.height/2);
//    //粒子尺寸
//    smokeEmitter.emitterSize = CGSizeMake(2, 2);
//    smokeEmitter.emitterShape = kCAEmitterLayerRectangle;
//    //发射模式
//    smokeEmitter.emitterMode = kCAEmitterLayerSurface;
//    //渲染模式
//    //smokeEmitter.renderMode = kCAEmitterLayerAdditive;
//    //创建烟粒子细胞
//    CAEmitterCell *smoke = [CAEmitterCell emitterCell];
//    [smoke setName:@"smoke"];
//    //粒子参数的速度乘数因子
//    smoke.birthRate = 500;
//    //向Z轴发射的高度
//    smoke.emissionLatitude = 0;//M_PI;
//    //向周围发射的角度“
//    smoke.emissionRange = 360;
//    //向X，Y轴发射的方向
//    smoke.emissionLongitude = -M_PI / 4;
//    //粒子生命周期
//    smoke.lifetime = 2;
//    //粒子速度
//    smoke.velocity = 20;
//    //速度范围
//    smoke.velocityRange = 6;
//    //粒子旋转角度
//    smoke.spin = 0;
//    //角度范围
//    smoke.spinRange = 6;
//    //粒子Y方向的加速度分量
//    smoke.yAcceleration = -5;
//    //粒子展现的图片
//    smoke.contents = (id)[[UIImage imageNamed:@"sunlight"] CGImage];
//    //粒子缩放比例
//    smoke.scale = 0;
//    //粒子缩放比例速度
//    smoke.scaleSpeed = 0.1;
//    //粒子透明度在生命周期内的改变速度
//    smoke.alphaSpeed = -0.12;
//    smoke.color = [[UIColor yellowColor] CGColor];
//    smokeEmitter.emitterCells = [NSArray arrayWithObject:smoke];
//    [self.view.layer addSublayer:smokeEmitter];
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
