//
//  XSFWebViewController.m
//  XSF
//
//  Created by duck on 16/11/9.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import "XSFWebViewController.h"


#define JS_INTERFACE_KEY @"XSFWebViewAction"
#define KVO_LOADING @"loading"
#define KVO_ESTIMAT @"estimatedProgress"
@interface XSFWebViewController ()
@property (nonatomic, strong) NSString* javascriptCode;
@property (nonatomic, strong) UIProgressView *progressView;
@end

@implementation XSFWebViewController
//- (NSString*)JSDecode:(NSString*)contentText
//{
//    contentText     = [contentText stringByReplacingOccurrencesOfString:@"{{%userName%}}" withString:[UserInfo getInstance].userRealName.length == 0?@"":[UserInfo getInstance].userRealName];
//    contentText     = [contentText stringByReplacingOccurrencesOfString:@"{{%phone%}}" withString:[UserInfo getInstance].userAccount.length == 0?@"":[XsfEncryption decode:[UserInfo getInstance].userAccount]];
//    contentText     = [contentText stringByReplacingOccurrencesOfString:@"{{%cardNo%}}" withString:self.payModel.bankCardID.length == 0?@"":[XsfEncryption decode:self.payModel.bankCardID]];//银行卡号
//    contentText     = [contentText stringByReplacingOccurrencesOfString:@"{{%idCard%}}" withString:[UserInfo getInstance].userIDAccount.length == 0?@"":[XsfEncryption decode:[UserInfo getInstance].userIDAccount]];//身份证号
//    contentText     = [contentText stringByReplacingOccurrencesOfString:@"{{%payErrorUrl%}}" withString:self.payModel.channelModel.errPageUrl.length == 0?@"":self.payModel.channelModel.errPageUrl];
//    return contentText;
//}
-(void)viewWillAppear:(BOOL)animated{
    
    self.navigationController.navigationBar.translucent = NO;
    if (!self.progressView) {
        //self.progressView = [[UIProgressView alloc]initWithFrame:CGRectMake(0, self.navigationController.navigationBar.height-2, SCREEN_WIDTH, 2)];
        self.progressView = [[UIProgressView alloc]initWithFrame:CGRectMake(0, 66, SCREEN_WIDTH, 2)];
        self.progressView.progress = 0;
        self.progressView.progressTintColor =kXSF_COLOR_Body;
        self.progressView.trackTintColor = [UIColor clearColor];
        [self.navigationController.navigationBar addSubview:self.progressView];
    }
}

-(void)viewWillDisappear:(BOOL)animated{
    
    self.navigationController.navigationBar.translucent = YES;
    [self.progressView removeFromSuperview];
}


- (void)deleteWebCache{
    
    if ([[UIDevice currentDevice].systemVersion floatValue] >= 9.0) {
        
        NSSet *websiteDataTypes
        
        = [NSSet setWithArray:@[
                                
                                WKWebsiteDataTypeDiskCache,
                                
//                                WKWebsiteDataTypeOfflineWebApplicationCache,
                                
                                WKWebsiteDataTypeMemoryCache,
                                
//                                WKWebsiteDataTypeLocalStorage,
//                                
//                                WKWebsiteDataTypeCookies,
//                                
//                                WKWebsiteDataTypeSessionStorage,
//                                
//                                WKWebsiteDataTypeIndexedDBDatabases,
//                                
//                                WKWebsiteDataTypeWebSQLDatabases
                                
                                ]];
        
        //// All kinds of data
        
        //NSSet *websiteDataTypes = [WKWebsiteDataStore allWebsiteDataTypes];
        
        //// Date from
        
        NSDate *dateFrom = [NSDate dateWithTimeIntervalSince1970:0];   //// Execute
        [[WKWebsiteDataStore defaultDataStore] removeDataOfTypes:websiteDataTypes modifiedSince:dateFrom completionHandler:^{
            
        }];
        
     } else {
         
//        NSString *libraryPath = [NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES) objectAtIndex:0];
//         NSString *cookiesFolderPath = [libraryPath stringByAppendingString:@"/Cookies"];
//        NSError *errors;
//        [[NSFileManager defaultManager] removeItemAtPath:cookiesFolderPath error:&errors];
         
         NSString *libraryDir = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory,
                                                                    NSUserDomainMask, YES)[0];
         NSString *bundleId  =  [[[NSBundle mainBundle] infoDictionary]
                                 objectForKey:@"CFBundleIdentifier"];
         NSString *webkitFolderInLib = [NSString stringWithFormat:@"%@/WebKit",libraryDir];
         NSString *webKitFolderInCaches = [NSString
                                           stringWithFormat:@"%@/Caches/%@/WebKit",libraryDir,bundleId];
//         NSString *webKitFolderInCachesfs = [NSString
//                                             stringWithFormat:@"%@/Caches/%@/fsCachedData",libraryDir,bundleId];
         
         NSError *error;
         /* iOS8.0 WebView Cache的存放路径 */
         [[NSFileManager defaultManager] removeItemAtPath:webKitFolderInCaches error:&error];
         [[NSFileManager defaultManager] removeItemAtPath:webkitFolderInLib error:nil];
    }
    
}


- (void)onBackClick:(id)sender{
    
    UIButton *btn = (UIButton *)sender;
    if (btn.tag == 110) {
        UIButton *btn2 = [self.navigationController.view viewWithTag:111];
        
        if ([self.webView canGoBack]) {
            [self.webView goBack];
            btn2.alpha = 1;
            btn2.hidden = NO;
        }else{
            [self deleteWebCache];
            [self.navigationController popViewControllerAnimated:YES];
            
        }
    }else if(btn.tag == 111){
        [self deleteWebCache];
        [self.navigationController popViewControllerAnimated:YES];
    }else{
        [self deleteWebCache];
        [self.navigationController popViewControllerAnimated:YES];
    }
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (![self.settledStr isEqualToString:@"1"]) {
        [self hiddenBackButton];
        [self setWebBackBarButtonItem];
    }
    
    // Do any additional setup after loading the view from its nib.
    WKWebViewConfiguration *config = [[WKWebViewConfiguration alloc] init];
    // 设置偏好设置
    config.preferences = [[WKPreferences alloc] init];
    // 默认为0
    config.preferences.minimumFontSize = 10;
    // 默认认为YES
    config.preferences.javaScriptEnabled = YES;
    // 在iOS上默认为NO，表示不能自动通过窗口打开
    config.preferences.javaScriptCanOpenWindowsAutomatically = NO;
    // 通过JS与webview内容交互
    config.userContentController = [[WKUserContentController alloc] init];

    // 注入JS对象名称AppModel，当JS通过AppModel来调用时，
    // 我们可以在WKScriptMessageHandler代理中接收到
    [config.userContentController addScriptMessageHandler:self name:JS_INTERFACE_KEY];
    
    
    if (self.userAndtokenUrl) {
        self.reqURL = [self urlEncodingUTF8Str:self.userAndtokenUrl];
    }
    
    
    self.webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT-64)
                                      configuration:config];
//    self.webView.allowsBackForwardNavigationGestures = YES;//web是否支持手势
    // 导航代理
    self.webView.navigationDelegate = self;
    // 与webview UI交互代理
    self.webView.UIDelegate = self;
    // 添加KVO监听
    [self.webView addObserver:self
                   forKeyPath:KVO_LOADING
                      options:NSKeyValueObservingOptionNew
                      context:nil];
    [self.webView addObserver:self
                   forKeyPath:KVO_ESTIMAT
                      options:NSKeyValueObservingOptionNew
                      context:nil];
    [self.webView addObserver:self forKeyPath:@"title" options:NSKeyValueObservingOptionNew context:nil];
  

//    if (self.payModel.channelModel.webPayInjectCode.length != 0)
//    {
//        // 需要JS注入
//        [XSFNetworkTools networkGetContentByContentCodeWithParam:@{@"contentCode":self.payModel.channelModel.webPayInjectCode} success:^(id object) {
//            if ([[object objectForKey:INTERFACE_STATUS] integerValue] == 0)
//            {
//                XSFContentCodeDicModel* model   = [[XSFContentCodeDicModel alloc] init];
//                GET_JSON_DATA(model, [object objectForKey:INTERFACE_DATA]);
//                self.javascriptCode = [self JSDecode:model.contentText];
//                [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.reqURL]]];
//                [self.view addSubview:self.webView];
//            }
//            else
//            {
//                [PRTools showProgressHUD:[object objectForKey:INTERFACE_MSG]];
//            }
//        }];
//    }
//    else
//    {
        if (self.reqURL.length != 0)
            [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.reqURL]]];
        else if (self.loadData.length != 0)
            [self.webView loadHTMLString:self.loadData baseURL:nil];
        [self.view addSubview:self.webView];
//    }
}

#pragma mark - WKScriptMessageHandler
- (void)userContentController:(WKUserContentController *)userContentController
      didReceiveScriptMessage:(WKScriptMessage *)message {
    if ([message.name isEqualToString:JS_INTERFACE_KEY]) {
        // 打印所传过来的参数，只支持NSNumber, NSString, NSDate, NSArray,
        // NSDictionary, and NSNull类型
        NSLog(@"%@", message.body);
        [self.webView loadRequest:[NSURLRequest requestWithURL:message.body]];
    }
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
#pragma mark - KVO
- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary<NSString *,id> *)change
                       context:(void *)context {
    if ([keyPath isEqualToString:KVO_LOADING])
    {
//        [XSFHub showLoadingHub];
        self.progressView.progress = 0;
    }
    else if ([keyPath isEqualToString:KVO_ESTIMAT])
    {
//        [XSFHub showSuccessTitle:[NSString stringWithFormat:@"加载进度%f",self.webView.estimatedProgress] autoCloseTime:90];
//        self.progressView.progress = self.webView.estimatedProgress;
        [self.progressView setProgress:self.webView.estimatedProgress animated:YES];
    }else if ([keyPath isEqualToString:@"title"]){
        if (object == self.webView) {
            self.title = self.webView.title;
            
        } else {
            [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
            
        }
        
    }
    
    // 加载完成
    if (!self.webView.loading) {
        [XSFHub showSuccessHub];
//        MyLog(@"javascriptCode: %@",self.javascriptCode);
        // 手动调用JS代码
        [self.webView evaluateJavaScript:self.javascriptCode completionHandler:^(id _Nullable response, NSError * _Nullable error) {
            NSLog(@"response: %@ error: %@", response, error);
            NSLog(@"call js alert by native");
        }];
    }
}
#pragma mark - WKUIDelegate
- (void)webViewDidClose:(WKWebView *)webView {
    NSLog(@"%s", __FUNCTION__);
}

// 在JS端调用alert函数时，会触发此代理方法。
// JS端调用alert时所传的数据可以通过message拿到
// 在原生得到结果后，需要回调JS，是通过completionHandler回调
- (void)webView:(WKWebView *)webView runJavaScriptAlertPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(void))completionHandler {
    NSLog(@"%s", __FUNCTION__);
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"alert" message:message preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        completionHandler();
    }]];
    
    [self presentViewController:alert animated:YES completion:NULL];
    NSLog(@"%@", message);
}

// JS端调用confirm函数时，会触发此方法
// 通过message可以拿到JS端所传的数据
// 在iOS端显示原生alert得到YES/NO后
// 通过completionHandler回调给JS端
- (void)webView:(WKWebView *)webView runJavaScriptConfirmPanelWithMessage:(NSString *)message initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(BOOL result))completionHandler {
    NSLog(@"%s", __FUNCTION__);
    
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"confirm" message:@"JS调用confirm" preferredStyle:UIAlertControllerStyleAlert];
//    [alert addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        completionHandler(YES);
//    }]];
//    [alert addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
//        completionHandler(NO);
//    }]];
//    [self presentViewController:alert animated:YES completion:NULL];
    
    NSLog(@"%@", message);
}

// JS端调用prompt函数时，会触发此方法
// 要求输入一段文本
// 在原生输入得到文本内容后，通过completionHandler回调给JS
- (void)webView:(WKWebView *)webView runJavaScriptTextInputPanelWithPrompt:(NSString *)prompt defaultText:(nullable NSString *)defaultText initiatedByFrame:(WKFrameInfo *)frame completionHandler:(void (^)(NSString * __nullable result))completionHandler {
    NSLog(@"%s", __FUNCTION__);
    
    NSLog(@"%@", prompt);
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"textinput" message:@"JS调用输入框" preferredStyle:UIAlertControllerStyleAlert];
//    [alert addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
//        textField.textColor = [UIColor redColor];
//    }];
//    
//    [alert addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//        completionHandler([[alert.textFields lastObject] text]);
//    }]];
//    
//    [self presentViewController:alert animated:YES completion:NULL];
}

#pragma mark - WKNavigationDelegate
// 请求开始前，会先调用此代理方法
// 与UIWebView的
// - (BOOL)webView:(UIWebView *)webView
// shouldStartLoadWithRequest:(NSURLRequest *)request
// navigationType:(UIWebViewNavigationType)navigationType;
// 类型，在请求先判断能不能跳转（请求）
- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler {
    
    NSString *hostname = navigationAction.request.URL.host.lowercaseString ;
    
    NSString *url = navigationAction.request.URL.absoluteString;
    //MyLog(@"hostname：%@ url:%@",hostname,url);

    if ([url containsString:@"alipays://"]) {
     
        //MyLog(@"------------------新开界面---------------------");
        if (!navigationAction.targetFrame.isMainFrame) {//拦截url，截取参数，
            NSString* dataStr=[url substringFromIndex:10];
            NSLog(@"dataStr=%@",dataStr);
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[ NSString stringWithFormat:@"alipay://%@",dataStr]]];// 对参数进行urlencode，拼接上scheme。
            decisionHandler(WKNavigationActionPolicyCancel);
        }else{
            decisionHandler(WKNavigationActionPolicyAllow);
        }
        
    }else{
        NSURL *URL = navigationAction.request.URL;
        NSString *scheme = [URL scheme];
        if ([scheme isEqualToString:@"tel"]) {
            NSString *resourceSpecifier = [URL resourceSpecifier];
            NSString *callPhone = [NSString stringWithFormat:@"telprompt://%@", resourceSpecifier];
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:callPhone]];
        }
        //        if (navigationAction.navigationType == WKNavigationTypeLinkActivated
        //            && ![hostname containsString:@".baidu.com"]) {
        //            // 对于跨域，需要手动跳转
        //            [[UIApplication sharedApplication] openURL:navigationAction.request.URL];
        //
        //            // 不允许web内跳转
        //            decisionHandler(WKNavigationActionPolicyCancel);
        //        }else {
        decisionHandler(WKNavigationActionPolicyAllow);
        //        }
    }
    NSLog(@"%s", __FUNCTION__);
}

// 在响应完成时，会回调此方法
// 如果设置为不允许响应，web内容就不会传过来
- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler {
    decisionHandler(WKNavigationResponsePolicyAllow);
    NSLog(@"%s", __FUNCTION__);
}

// 开始导航跳转时会回调
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(null_unspecified WKNavigation *)navigation {
    NSLog(@"%s", __FUNCTION__);
}

// 接收到重定向时会回调
- (void)webView:(WKWebView *)webView didReceiveServerRedirectForProvisionalNavigation:(null_unspecified WKNavigation *)navigation {
    NSLog(@"%s", __FUNCTION__);
}

// 导航失败时会回调
- (void)webView:(WKWebView *)webView didFailProvisionalNavigation:(null_unspecified WKNavigation *)navigation withError:(NSError *)error {
    NSLog(@"%s", __FUNCTION__);
}

// 页面内容到达main frame时回调
- (void)webView:(WKWebView *)webView didCommitNavigation:(null_unspecified WKNavigation *)navigation {
    NSLog(@"%s", __FUNCTION__);
}

// 导航完成时，会回调（也就是页面载入完成了）
- (void)webView:(WKWebView *)webView didFinishNavigation:(null_unspecified WKNavigation *)navigation {
    NSLog(@"%s", __FUNCTION__);
}

// 导航失败时会回调
- (void)webView:(WKWebView *)webView didFailNavigation:(null_unspecified WKNavigation *)navigation withError:(NSError *)error {
    
}

// 对于HTTPS的都会触发此代理，如果不要求验证，传默认就行
// 如果需要证书验证，与使用AFN进行HTTPS证书验证是一样的
- (void)webView:(WKWebView *)webView didReceiveAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(void (^)(NSURLSessionAuthChallengeDisposition disposition, NSURLCredential *__nullable credential))completionHandler {
    NSLog(@"%s", __FUNCTION__);
    completionHandler(NSURLSessionAuthChallengePerformDefaultHandling, nil);
}
@end
