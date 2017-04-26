//
//  HomeController.h
//  WerewolvesSoftware
//
//  Created by sky on 2017/2/27.
//  Copyright © 2017年 Werewolves. All rights reserved.
//

#import "BaseViewController.h"
#import "XSFWebViewController.h"

@interface HomeController : BaseViewController<WKNavigationDelegate,WKUIDelegate,WKScriptMessageHandler>
@property (strong, nonatomic) WKWebView *webView;
@property (nonatomic, strong) NSString* reqURL;
@property (nonatomic ,strong) NSString *userAndtokenUrl;
@property (nonatomic, strong) NSString* loadData;
@end
