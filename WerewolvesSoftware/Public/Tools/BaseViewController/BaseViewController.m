//
//  BaseViewController.m
//  XSF
//
//  Created by duck on 16/10/21.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import "BaseViewController.h"
#import "UIButton+LargeArea.h"
#import "UIImage+ImageOrientataion.h"
#define STRONG_OBJECT(class, initor)\
[[class alloc] initor]

@interface BaseViewController ()
{
    MJRefreshHeaderView  *_header;//下拉刷新
    MJRefreshFooterView  *_footer;//上啦加载更多
}
@end

@implementation BaseViewController

/**
 *  返回按钮点击事件
 *
 *  @param sender 返回按钮(可以根据tag值区分按钮)
 */
-(void)onBackClick:(id)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

/**
 *  导航栏按钮点击事件
 *
 *  @param sender 返回按钮(可以根据tag值区分按钮)
 */

-(void)onItemClick:(id)sender{
//    UIButton *btn = (UIButton *)sender;
//    [self onItemClick:btn];
}
- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"*************LogController**************");
    NSLog(@"* 当前类 = %@",NSStringFromClass([self class]));
    NSLog(@"*****************************************");
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.refreshTableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [self setBackBarButtonItem];
    [self loadData];
    [self setSpace];
}
-(void)setSpace{
    self.navigationController.navigationBar.shadowImage = [UIImage createImageWithColor:[UIColor clearColor]];
    self.tabBarController.tabBar.shadowImage = [UIImage createImageWithColor:kXSF_COLOR_242];
    
    if ([self.navigationController.navigationBar respondsToSelector:@selector( setBackgroundImage:forBarMetrics:)]){
        NSArray *list=self.navigationController.navigationBar.subviews;
        for (id obj in list) {
            if ([obj isKindOfClass:[UIImageView class]]) {
                UIImageView *imageView=(UIImageView *)obj;
                NSArray *list2=imageView.subviews;
                for (id obj2 in list2) {
                    if ([obj2 isKindOfClass:[UIImageView class]]) {
                        
                        //将分割线 移除
                        UIImageView *imageView2=(UIImageView *)obj2;
                        imageView2.hidden=YES;
                    }
                }
            }
        }
    }
    UIView *linsView = [self.navigationController.navigationBar viewWithTag:10010];
    if (linsView) {
        [linsView removeFromSuperview];
    }
    
    UIView *navigationLine = [[UIView alloc] initWithFrame:CGRectMake(0, self.navigationController.navigationBar.frame.size.height - 0.5, self.navigationController.navigationBar.frame.size.width, 0.5)];
    navigationLine.tag      = 10010;
    navigationLine.backgroundColor = kXSF_COLOR_242;
    
    [self.navigationController.navigationBar addSubview:navigationLine];
    [self.navigationController.navigationBar bringSubviewToFront:navigationLine];
//    [self transparentNavigationBarColor:[UIColor whiteColor] shadowColor:kXSF_COLOR_242 translucent:YES];
}
// 加载数据
-(void)loadData{
    
}
/**
 隐藏返回按钮
 */
- (void)hiddenBackButton
{
    self.navigationItem.leftBarButtonItem = nil;
}

//创建TableViewCell声明
-(void)registerNibWithName:(NSString*)name{
    [self.refreshTableView registerNib:[UINib nibWithNibName:name bundle:nil] forCellReuseIdentifier:name];
}
/**
 *  设置返回按钮
 */
-(void)setBackBarButtonItem{
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake( 0, 0, 18, 18)];
    [btn setEnlargeEdgeWithTop:10 right:10 bottom:10 left:10];
    btn.imageEdgeInsets = UIEdgeInsetsMake(-5, - 15, 0, 0);
    [btn setImage:[UIImage imageNamed:@"public_naviga_back"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(onBackClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.tag = 1;
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
}
-(void)setWhiteBackBarButtonItem{
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake( 0, 0, 18, 18)];
    [btn setEnlargeEdgeWithTop:10 right:10 bottom:10 left:10];
    btn.imageEdgeInsets = UIEdgeInsetsMake(-5, - 15, 0, 0);
    [btn setImage:[UIImage imageNamed:@"public_naviga_back_white"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(onBackClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.tag = 1;
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
}

-(void)setWebBackBarButtonItem{
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake( 0, 0, 20, 20)];
    [btn setEnlargeEdgeWithTop:10 right:10 bottom:10 left:10];
    btn.tag = 110;
    btn.imageEdgeInsets = UIEdgeInsetsMake(0, - 15, 0, 0);
    [btn setImage:[UIImage imageNamed:@"public_naviga_back"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(onBackClick:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *barItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
    UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake( 0, 0, 20, 20)];
    [btn1 setEnlargeEdgeWithTop:10 right:10 bottom:10 left:10];
    btn1.tag = 111;
    [btn1 setTitle:@"╳" forState:UIControlStateNormal];
    [btn1.titleLabel setFont:[UIFont boldSystemFontOfSize:14]];
    [btn1 setTitleColor:kXSF_COLOR_200 forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(onBackClick:) forControlEvents:UIControlEventTouchUpInside];
    btn1.hidden = YES;
    [btn1 setAlpha:0];
    UIBarButtonItem *barItem1 = [[UIBarButtonItem alloc] initWithCustomView:btn1];
    self.navigationItem.leftBarButtonItems =@[barItem,barItem1];
}

-(void)setRightBarButtonItemWithImageName:(NSString *)imageName{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectMake(0, 5, 24, 24)];
    [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(onItemClick:) forControlEvents:UIControlEventTouchUpInside];
    btn.tag = 1;
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
}
-(void)setupRightBarButtonItemWithImages:(NSArray *)imageNames
{
    if(!imageNames || imageNames.count == 0)
    {
        NSLog(@"传入的imageNames数组为空!");
        return;
    }
    
    NSMutableArray *buttonArray = [[NSMutableArray alloc] init];
    
    int j = 1;
    for(int i = 0; i < imageNames.count; i++)
    {
        
        UIButton* btn = STRONG_OBJECT(UIButton, initWithFrame:CGRectMake(0, 0, 0, 0));
        [btn setImage:[UIImage imageNamed:[imageNames objectAtIndex:i]] forState:UIControlStateNormal];
        //        [btn setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@_1", [imageNames objectAtIndex:i]]] forState:UIControlStateHighlighted];
        [btn addTarget:self action:@selector(onItemClick:) forControlEvents:UIControlEventTouchUpInside];
        btn.tag = j;
        
        UIImage *image = [UIImage imageNamed:[imageNames objectAtIndex:i]];
        
        CGRect rect = btn.frame;
        rect.size = image.size;
        if ([[imageNames objectAtIndex:i] isEqualToString:@"CancelBarButtonItem"]) {
            NSLog(@"CancelBarButtonItem");
            btn.frame = CGRectMake(150, rect.origin.y, rect.size.width + 10, rect.size.height);
        }
        else{
            btn.frame = rect;
        }
        [buttonArray addObject:STRONG_OBJECT(UIBarButtonItem, initWithCustomView:btn)];
        
        j += 2;
    }
    
    self.navigationItem.rightBarButtonItems = buttonArray;
}

- (NSString *)urlEncodingUTF8Str:(NSString *)urlStr{
    return @"";
//    NSString *userID = (NSString*)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(nil,
//                                                                                            (CFStringRef)[UserInfo getInstance].userID, nil,
//                                                                                            (CFStringRef)@"!*'();:@&=+$,/?%#[]", kCFStringEncodingUTF8));
//    NSString *userSign = (NSString*)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(nil,
//                                                                                              (CFStringRef)[UserInfo getInstance].userSign, nil,
//                                                                                              (CFStringRef)@"!*'();:@&=+$,/?%#[]", kCFStringEncodingUTF8));
//    
//    if ([urlStr containsString:@"?"]) {
//      return  urlStr = [NSString stringWithFormat:@"%@&__userid=%@&__token=%@",urlStr,userID,userSign];
//    } else {
//    
//        return  urlStr = [NSString stringWithFormat:@"%@?__userid=%@&__token=%@",urlStr,userID,userSign];
//    }
    
}
/**
 设置navigation的title颜色

 @param titleColor 自定义制定颜色
 */
- (void)setTitleColor:(UIColor*)titleColor
{
    //选择自己喜欢的颜色
    UIColor * color = titleColor;
    
    //这里我们设置的是颜色，还可以设置shadow等，具体可以参见api
    NSDictionary * dict = [NSDictionary dictionaryWithObject:color forKey:NSForegroundColorAttributeName];
    
    //大功告成
    self.navigationController.navigationBar.titleTextAttributes = dict;
}

/**
 *  自定义右边按钮
 *
 *  @param title 按钮文字
 */
-(void)setRightBarButtonItemWithTitle:(NSString *)title withColor:(UIColor*)textColor{
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:textColor forState:UIControlStateNormal];
    btn.titleLabel.textAlignment =  NSTextAlignmentRight;
    btn.titleLabel.font = [UIFont systemFontOfSize:14];
    btn.tag = 2;
    [btn addTarget:self action:@selector(onItemClick:) forControlEvents:UIControlEventTouchUpInside];
    
    CGSize size = [self getTextSize:title fontSize:btn.titleLabel.font];
    
    CGRect rect = btn.frame;
    rect.size = size;
    btn.frame = rect;
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
}

#pragma mark - tableview相关

//是否创建下拉刷新
- (void)setTableHasHeader:(BOOL)tableHasHeader
{
    MJRefreshHeaderView *header = [MJRefreshHeaderView header];
    header.scrollView = self.refreshTableView;
    header.beginRefreshingBlock = ^(MJRefreshBaseView *refreshView) {
        //        [self doneWithView:refreshView];
        [self performSelector:@selector(tableRefresh) withObject:refreshView afterDelay:0.1];
    };
    _header = header;
}

//是否创建加载更多
- (void)setTableHasFooter:(BOOL)tableHasFooter
{
    MJRefreshFooterView *footer = [MJRefreshFooterView footer];
    footer.scrollView = self.refreshTableView;
    footer.beginRefreshingBlock = ^(MJRefreshBaseView *refreshView) {
        [self performSelector:@selector(tableRefreshLoad) withObject:refreshView afterDelay:0.1];
    };
    _footer = footer;
}
//隐藏上拉加载
-(void)hiddenFooter{
//    self.refreshTableView.mj_footer.hidden = YES;
//    _footer = nil;
    _footer.hidden = YES;
}
//下拉刷新
- (void)tableRefresh{
    _footer.hidden = NO;
}
//上拉加载
- (void)tableRefreshLoad{
    // 2.模拟2秒后刷新表格UI（真实开发中，可以移除这段gcd代码）
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.8 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        // 刷新表格
        [self.refreshTableView reloadData];
        
    });
}
//停止刷新或加载
-(void)endRefreshing{
    [_footer endRefreshing];
    [_header endRefreshing];
}

#pragma mark - 方法
//计算text的高度By Char
-(CGSize)getTextSize:(NSString*)contentText fontSize:(UIFont *)font
{
    CGSize size = [contentText sizeWithAttributes:@{NSFontAttributeName:font}];
    return size;
}


/**
 透明导航栏

 @param isTransparent YES透明导航栏  NO恢复默认导航栏颜色
 */
- (void)transparentNavigationBar:(BOOL)isTransparent{

    if (isTransparent) {
        
        [self transparentNavigationBarColor:[UIColor clearColor] shadowColor:[UIColor clearColor] translucent:YES];

    }else{
    
        [self.navigationController.navigationBar setBackgroundImage:nil
                                                      forBarMetrics:UIBarMetricsDefault];
        self.navigationController.navigationBar.shadowImage = nil;
        self.navigationController.navigationBar.translucent = NO;
    }
}

/**
 设置导航栏颜色

 @param navBarColor 导航栏颜色
 @param shadowColor 导航栏底部分割线颜色
 @param translucent 是否透明
 */
- (void)transparentNavigationBarColor:(UIColor *)navBarColor shadowColor:(UIColor *)shadowColor translucent:(BOOL) translucent{
    
        [self.navigationController.navigationBar setBackgroundImage:[UIImage createImageWithColor:navBarColor]
                                                      forBarMetrics:UIBarMetricsDefault];
        self.navigationController.navigationBar.shadowImage = [UIImage createImageWithColor:shadowColor];
        self.navigationController.navigationBar.translucent = translucent;
   
}

@end
