//
//  MZButton+Extension.m
//  MiaoZhuan
//
//  Created by 吴友鹏 on 16/5/4.
//  Copyright © 2016年 Nick. All rights reserved.
//

#import "MZButton+Extension.h"

@implementation UIButton(Extension)

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)setCorner:(UIRectCorner)corner withRadio:(CGFloat)radio
{
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corner cornerRadii:CGSizeMake(radio, radio)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}
@end
