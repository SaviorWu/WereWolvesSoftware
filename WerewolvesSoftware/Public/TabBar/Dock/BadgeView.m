//
//  BadgeView.m
//  XSF
//
//  Created by sky on 2016/10/26.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import "BadgeView.h"
#import "UIView+Frame.h"

@implementation BadgeView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        self.userInteractionEnabled = NO;
        
        [self setBackgroundImage:[UIImage imageNamed:@"main_badge"] forState:UIControlStateNormal];
        
        // 设置字体大小
        self.titleLabel.font = kFontOfSize(11);
        
        [self sizeToFit];
        
    }
    return self;
}

- (void)setBadgeValue:(NSString *)badgeValue
{
    _badgeValue = badgeValue;
    
    // 判断badgeValue是否有内容
    if (badgeValue.length == 0 || [badgeValue isEqualToString:@"0"]) { // 没有内容或者空字符串,等于0
        self.hidden = YES;
    }else{
        self.hidden = NO;
    }
    
//    CGSize size = [badgeValue sizeWithAttributes:@{NSFontAttributeName:kFontOfSize(11)}];
//    MyLog(@"%f--%f",size.width,self.width);
//    if (size.width > self.width) { // 文字的尺寸大于控件的宽度
//        [self setImage:[UIImage imageNamed:@"new_dot"] forState:UIControlStateNormal];
//        [self setTitle:nil forState:UIControlStateNormal];
//        [self setBackgroundImage:nil forState:UIControlStateNormal];
//    }else{
//        [self setBackgroundImage:[UIImage imageNamed:@"main_badge"] forState:UIControlStateNormal];
//        [self setTitle:badgeValue forState:UIControlStateNormal];
//        [self setImage:nil forState:UIControlStateNormal];
//    }
    
}

@end
