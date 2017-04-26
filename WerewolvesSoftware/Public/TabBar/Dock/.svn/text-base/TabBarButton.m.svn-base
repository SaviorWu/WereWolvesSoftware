//
//  TabBarButton.m
//  XSF
//
//  Created by sky on 2016/10/26.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import "TabBarButton.h"
#import "BadgeView.h"
#import "UIView+Frame.h"

CGFloat DOCK_IMAGE_RIDIO = 0.7;

@interface TabBarButton ()

@property (nonatomic, weak) BadgeView *badgeView;

@end

@implementation TabBarButton

//重写setHiglighted，取消高亮做的事情
- (void)setHighlighted:(BOOL)highlighted{}

- (BadgeView *)badgeView
{
    if (_badgeView == nil) {
        BadgeView *btn = [BadgeView buttonWithType:UIButtonTypeCustom];
        
        [self addSubview:btn];
        
        _badgeView = btn;
    }
    return _badgeView;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        //设置字体颜色
        [self setTitleColor:kCOLOR(0, 0, 0) forState:UIControlStateNormal];
        [self setTitleColor:kXSF_COLOR_Body forState:UIControlStateSelected];
        
        //图片居中
        self.imageView.contentMode = UIViewContentModeCenter;
        //文字居中
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        //设置文字字体
        self.titleLabel.font = [UIFont systemFontOfSize:12];
    }
    return self;
}
//船体UITabBarItem，给tabBarButton内容赋值
-(void)setItem:(UITabBarItem *)item
{
    _item = item;
    
    [self observeValueForKeyPath:nil ofObject:nil change:nil context:nil];
    
    //KVO:时刻监听一个对象的属性有没有改变
    //给谁添加观察者
    //Observer:按钮
    //    [item addObserver:self forKeyPath:@"title" options:NSKeyValueObservingOptionNew context:nil];
    //    [item addObserver:self forKeyPath:@"image" options:NSKeyValueObservingOptionNew context:nil];
    //    [item addObserver:self forKeyPath:@"selectedImage" options:NSKeyValueObservingOptionNew context:nil];
    [item addObserver:self forKeyPath:@"badgeValue" options:NSKeyValueObservingOptionNew context:nil];
}

//只要监听的属性一有新值，就会调用
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    [self setTitle:_item.title forState:UIControlStateNormal];
    
    [self setImage:_item.image forState:UIControlStateNormal];
    
    [self setImage:_item.selectedImage forState:UIControlStateSelected];
    
    //设置badgeValue
    self.badgeView.badgeValue = _item.badgeValue;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    //1.imageView
    CGFloat imageX = 0;
    CGFloat imageY = 0;
    CGFloat imageW = self.bounds.size.width;
    CGFloat imageH = self.bounds.size.height * DOCK_IMAGE_RIDIO;
    self.imageView.frame = CGRectMake(imageX, imageY, imageW, imageH);
    
    //2.title
    CGFloat titleX = 0;
    CGFloat titleY = imageH - 3;
    CGFloat titleW = self.bounds.size.width;
    CGFloat titleH = self.bounds.size.height - titleY;
    self.titleLabel.frame = CGRectMake(titleX, titleY, titleW, titleH);
    
    //3.badgeView
    self.badgeView.x = self.width - self.badgeView.width - 16;
    self.badgeView.y = 0;
}

@end
