
//
//  Define.h
//  Define
//
//  Created by SKY on 16/7/19.
//  Copyright © 2016年 SKY. All rights reserved.
//


/*!
 *  @author Friend.Wu, 16-10-20 14:50:01
 *
 *  @brief 加密公钥 @"APP_KEY8_PUBLIC"
 @"APP_KEY20_PUBLIC"
 */
#define ENCRYPTION_DECODE_KEY       @"bx#x@iwH"
#define CREATETOKEN_DECODE_KEY      @"bx#x@iwH"

/**
 *  接口取值关键字
 */
#define INTERFACE_DATA      @"data"
#define INTERFACE_STATUS    @"status"
#define INTERFACE_MSG      @"msg"

/**
 *  Dock的高度
 */
#define kDockHeight 44

/**
 *  状态栏高度
 */
#define kSTATUS_BAR 20

/**
 *  状态栏高度 + Dock的高度
 */
#define kDockStatusHeight 64

/**
 *  左右间距
 */
#define kSpace 12
/**
 *  左右间距
 */
#define kRiders 5

/*!
 *  @author Friend.Wu, 16-10-20 14:50:01
 *
 *  @brief 颜色宏定义区域
 */
#pragma mark 颜色宏定义区域
#define kXSF_COLOR_Body       [UIColor colorWithRed:251.0f/255.0f green:191.0f/255.0f blue:54.0f/255.0f alpha:1]//主题黄色
#define kXSF_COLOR_Red       [UIColor colorWithRed:255.0f/255.0f green:38.0f/255.0f blue:38.0f/255.0f alpha:1]//字体红色
#define kXSF_COLOR_BUTTON_Red       [UIColor colorWithRed:220.0f/255.0f green:51.0f/255.0f blue:68.0f/255.0f alpha:1]//字体按钮
#define kXSF_COLOR_14       [UIColor colorWithRed:14.0f/255.0f green:14.0f/255.0f blue:14.0f/255.0f alpha:1] //字体深黑色
#define kXSF_COLOR_51       [UIColor colorWithRed:51.0f/255.0f green:51.0f/255.0f blue:51.0f/255.0f alpha:1]//黑色字体
#define kXSF_COLOR_64       [UIColor colorWithRed:64.0f/255.0f green:64.0f/255.0f blue:64.0f/255.0f alpha:1] //字体浅黑色
#define kXSF_COLOR_80       [UIColor colorWithRed:80.0f/255.0f green:80.0f/255.0f blue:80.0f/255.0f alpha:1] //标签字体颜色
#define kXSF_COLOR_102      [UIColor colorWithRed:102.0f/255.0f green:102.0f/255.0f blue:102.0f/255.0f alpha:1] //深灰色字体
#define kXSF_COLOR_153      [UIColor colorWithRed:153.0f/255.0f green:153.0f/255.0f blue:153.0f/255.0f alpha:1] //字体浅灰色
#define kXSF_COLOR_158      [UIColor colorWithRed:158.0f/255.0f green:158.0f/255.0f blue:158.0f/255.0f alpha:1] //字体浅灰色
#define kXSF_COLOR_200       [UIColor colorWithRed:200.0f/255.0f green:200.0f/255.0f blue:200.0f/255.0f alpha:1] // 
#define kXSF_COLOR_224       [UIColor colorWithRed:224.0f/255.0f green:224.0f/255.0f blue:224.0f/255.0f alpha:1] //间隔线
#define kXSF_COLOR_240       [UIColor colorWithRed:240.0f/255.0f green:240.0f/255.0f blue:240.0f/255.0f alpha:1] //分割线浅灰色
#define kXSF_COLOR_242       [UIColor colorWithRed:242.0f/255.0f green:242.0f/255.0f blue:242.0f/255.0f alpha:1]//图片边框,背景
#define kXSF_COLOR_204      [UIColor colorWithRed:204.0f/255.0f green:204.0f/255.0f blue:204.0f/255.0f alpha:1] //按钮背景黑

#define kCOLOR(a,b,c) [UIColor colorWithRed:(a)/255.0 green:(b)/255.0 blue:(c)/255.0 alpha:1]
#define kCOLOR_ALPHA(a,b,c,p) [UIColor colorWithRed:(a)/255.0 green:(b)/255.0 blue:(c)/255.0 alpha:p]

#define NAVIGATIONBAR_DEFAULT_COLOR [UIColor colorWithRed:255.0f/255.0f green:255.0f/255.0f blue:255.0f/255.0f alpha:1]//导航栏默认颜色
#define NAVIGATIONBAR_SHADOWIMAGE_COLOR [UIColor colorWithRed:150/255.0f green:150/255.0f blue:150/255.0f alpha:0.5]//导航栏黑线
#define DEFINE_HIDDEN_NAVIGATION    self.navigationController.navigationBar.translucent = YES;
#define DEFINE_UNHIDDEN_NAVIGATION    self.navigationController.navigationBar.translucent = NO;
// 检测字符串是否为空，不为空返回字符串本身
#define CHECK_STRING(str) str.length == 0?@"":str
//首页搜索历史存储路径
#define HISTORY_HOME_PATH  [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"Home.plist"]
// 搜索历史存储路径
#define HISTORYBLUETOOTH  [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"Bluetooth.plist"]
//订单历史搜存储路径
#define HISTORY_ORDRE_PATH  [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"OrderList.plist"]
//Z账单搜索
#define HISTORY_BILL_PATH [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"Bill.plist"]

//最新蓝牙设备
#define   BLUETOOTHDEVICE  @"bluetoothDevice"
//登录成功以后的通知消息
#define LOGIN_SUCCESS   @"LoginSucceed"
#define RECEIVE_LOGIN_SUCCESS   @"RceciveLoginSucceed"
//权限不够返回
#define NO_JURISDICTION_BACK_HOME   @"noJurisdictionBackHome"
#define NO_JURISDICTION_BACK_USER   @"noJurisdictionBackUser"

//微信支付回调
#define WCHATAPINOTIF   @"wChatApiNotif"
//支付宝支付回调
#define ALIPAYSDKNOTIF   @"AlipaySDKNotif"
//首页消息小黄点
#define MESSAGENOTIF    @"messageNotif"
//苹果支付
#define APP_APPLEPAY_MODE @"00"//apple pay环境 01 测试 00 正式
#define APP_APPLEPAY_MERCHANT @"merchant.com.xsf.project"//商户id
/*-融宝绑定银行卡-*/
#define APP_NOTIFICATION_RBBANDBANK @"RBBANDBANK"

//点钞音效 （1 or 0）
#define COUNTINGSOUND @"countingSound"
//收款音效 （1 or 0）
#define  RECEIVABLESSOUND  @"receivablesSound"
//推送
#define  PUSH   @"push"

//收吧打印
#define RECEIVEPRINT @"receivePrint"
//兴店打印
#define SHOPPRINT @"shopPrint"

// 闪屏页图片保存key
#define FLASH_SCREEN @"FLASH_SCREEN"
#define FLASH_JUMP_URL  @"Url"
/**
 图片上传业务区分标记字符串
 */
#define UPLOAD_TYPE_IDCARD                  @"idCard"//身份证照片
#define UPLOAD_TYPE_SHOP                    @"shop"//店铺
#define UPLOAD_TYPE_HEAD                    @"head"//个人显示头像
#define UPLOAD_TYPE_REALNM                  @"realNm"//实名认证老版本
#define UPLOAD_TYPE_BANKNOPIC               @"bankNoPic"//银行卡照片
#define UPLOAD_TYPE_PERSIONSHOPHEAD         @"persionShopHead"//个人头像
#define UPLOAD_TYPE_realNameAuthentication  @"realNameAuthentication"//实名认证图片上传类型
#define UPLOAD_IMAGE_KEY                    @"image"
#define UPLOAD_MP4_KEY                      @"mp4"
// model ctrl便利命名
#define MODEL_CTRL_NAME(modelCtrlName) [NSString stringWithFormat:@"XSF%@ModelCtrl",modelCtrlName ]
#define MODEL_NAME(modelName) [NSString stringWithFormat:@"XSF%@Model",[modelName capitalizedString]]
/**
 三方平台关键字相关
 Friend.Wu
 */

//#define  WECHAT_PAY_APPID    @"wx82f7ffec1d3cfaf5"  //微信支付
#define  WECHAT_PAY_APPID    @"wxf906900ee9accf7b"  //微信支付

#define WECHAT_APPID        @"wxf906900ee9accf7b"       // 微信APP ID
#define WECHAT_APPSECRET    @"fbe8ff6efee30c1b6884bdfc1dc7df98" // 微信app秘钥
#define QQ_APPID            @"1105246532"               // QQ APP ID
#define QQ_APPKEY           @"xZ0x98HV66Xd0vSS"         // QQ APP key
#define JPUSH_APPKEY        @"0419aeceb4188f100f77b68a" // 极光推送appkey
#define JPUSH_CHANNEL       @"aca324f17853a72df3495105" // 极光推送channel
/**
 *  字体字号(大中小)
 */
#define kFontOfSize(a)     [UIFont fontWithName:@"Helvetica Neue" size:(a)]


/**
 *  获取体统版本
 */
#define DEVICESYSTEMVERSION [[UIDevice currentDevice].systemVersion doubleValue]


/*!
 *  @author Friend.Wu, 16-10-20 14:50:01
 *
 *  @brief 屏幕尺寸相关定义区域
 */
#define SCREEN_WIDTH        ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT       ([[UIScreen mainScreen] bounds].size.height)


#define HOLDER_IMAGE    @"public_image_normal"
#define SHARE_LOGO      @"public_image_normal"


/**
 *  定义输出宏
 */
#ifdef DEBUG
#define MyLog(...) NSLog(__VA_ARGS__)
#else
#define MyLog(...)
#endif



/*!
 *  @author Friend.Wu, 16-04-28 11:04:01
 *
 *  @brief 当本类中存在结构体的时候，结构体后台返回为空的时候，吧本结构体直接置为nil
 *
 */
#define GET_JSON_DATA(obj,value) \
if (value == nil || [[NSString stringWithFormat:@"%@",value] isEqualToString:@"<null>"])\
{\
obj = nil;\
}\
else\
{\
[obj GetJsonData:value];\
}



/**
 *兴店-app
 */
#define     BE_XINGDIAN_KEY  @"9209121d-9b8f-4bca-8cfd-d73735fc1703"
/**
 * 收吧-正扫
 */
#define     BE_SCANFRONT_KEY @"d481fadf-1dde-43cb-9685-d8a0218c398f"
/**
 * 收吧-反扫
 */
#define     BE_SCANBACK_KEY  @"3c132e8c-de3c-44d0-adcf-9868520b353d"

/**
 *收款-app
 */
#define     BE_GETMONEY_KEY  @"e32a19d8-bc95-4dc0-8641-412d839c5723"
/**
 *付款-app
 */
#define     BE_PAYMONEY_KEY  @"e6a39b63-9a40-4517-b872-bf90b745ed08"
/**
 *充值
 */
#define     BE_CHONGZHI_KEY  @"6722675e-3a5e-4075-9f18-714aebddc7ca"
/**
 *收款宝充值
 */
#define     BE_RECV_CHONGZHI_KEY  @"a6be64c7-d4bf-46cf-b8fe-8c61fc6d8364"
/**
 *购买终端
 */
#define     BE_BUY_ZHONGDUAN_KEY  @"3739ea58-f212-4e06-9e3a-69c69af5a783"
/**
 *商户升级
 */
#define     BE_BUSINESS_UPDATE_KEY  @"3943b297-3715-4960-978f-2ef47d5561f9"
/**
 * 兴手付经营管理 激活（商家入驻）
 */
#define     BE_BUSINESS_TOBE_KEY @"f7fdcacf-ce4d-423b-b786-931decab116e"
/**
 *收款宝提现
 */
#define     BE_RECV_TIXIAN_KEY  @"a7a03c45-224e-449e-be4c-bd0bf7f4907f"
#define     BE_RECV_TIXIAN_JIAJI_KEY  @"a3b01f53-f25b-b774-08a6-9787877874d4"
/**
 *信用卡还款
 */
#define     BE_CARD_TIXIAN_KEY  @"b32c10ea-0eb2-d250-0dc8-045d9e0fd6c9"//普通
#define     BE_CARD_TIXIAN_JIAJI_KEY  @"ab2bf6cb-f89f-4ceb-ac38-489ba5c60a0d"//加急

/**
 *天添兴转账
 */
#define     BE_TTX_KEY      @"812da587-83f8-e82c-a8ef-42cc22751c14"
#define     BE_TTX_JIAJI_KEY      @"57bf8513-1bbe-48f6-a5b7-128fd119d839"
/**
 *店主代付
 */
#define     BE_MANAGE_PAY      @"07571db6-a5aa-4872-bca8-e5aa4d6ccfe8"

#define TEXT0101 @"TEXT0101"        // 登录，信用卡还款
#define TEXT0102 @"TEXT0102"        // 信用卡还款 收款宝
#define TEXT0103 @"TEXT0103"        // 实名认证，我的银行卡，扫一扫
#define TEXT0201 @"TEXT0201"        // 实名认证
#define TEXT0202 @"TEXT0202"        // 收钱
#define TEXT0203 @"TEXT0203"        // 二维码
#define TEXT0204 @"TEXT0204"        // 新增商品
#define TEXT0205 @"TEXT0205"        // 分类
#define TEXT0206 @"TEXT0206"        // 账单
#define TEXT0301 @"TEXT0301"        // 确认支付
#define TEXT0302 @"TEXT0302"        // 实体店地址
#define TEXT0303 @"TEXT0303"        // 选择终身服务商
#define TEXT0401 @"TEXT0401"        // 互转
#define TEXT0402 @"TEXT0402"        // 提现
#define TEXT0403 @"TEXT0403"        // 加急提现
#define TEXT0404 @"TEXT0404"        // 信用卡还款
#define TEXT0405 @"TEXT0405"        // 加急信用卡还款
#define TEXT0406 @"TEXT0406"        // 收款宝
#define TEXT0407 @"TEXT0407"        // 加急提现显示
#define TEXT0408 @"TEXT0408"        // 提现下方提示
#define PROTOCOL_USER_REGIST            @"110f6707-7dd8-3d28-2551-5bddcabb9104" // 用户注册协议
#define PROTOCOL_TOBE_BUSINESS          @"47f563e4-9733-22d8-4824-df7ac4eb6c4b" // 商家入驻协议
#define PROTOCOL_CHEQUESCARD_RET        @"f42eec81-54d7-a4ba-a4c3-59e3f90fcaa1" // 信用卡还款协议
#define PROTOCOL_FEEDBACK               @"29d46429-8fc3-913f-6265-c035e933d9b0" // 设置-意见反馈
#define PROTOCOL_ABOUTUS                @"496b9d2d-3e9a-2f68-34be-7c27f24d9385" // 关于我们
#define PROTOCOL_VERSION_DISCRIBT       @"b732cc00-1a68-5d57-2d35-48a8119c1bdb" // 版本介绍
#define PROTOCOL_USING_RECV             @"256f6698-0edd-68aa-4141-f83245d786d0" // 收款宝说明
#define PROTOCOL_START_PAGE             @"f14dfb2d-17f2-5c68-2464-a4aa0c26ed3e" // 闪屏页面
#define PROTOCOL_JS_INJECTION           @"fe42591f-cc32-e597-e69d-b7d7e814e545" // WEB页面是否需要js注入
#define PROTOCOL_CREATE_CREDITCARD      @"92d9212b-7ca8-7c9f-c588-32e76eed02d0" // 办信用卡
#define PROTOCOL_BOROW_MONEY            @"a8479f24-dd85-4f39-7dd6-86888926d5df" // 快速贷款
#define PROTOCOL_MAP                    @"943fae45-3c88-6492-2cbf-183e2536911f" //  高德导航
#define CHEQUESINFO_USERPAGE            @"46983515-7cae-9a1d-4c06-f044845b5e41"
#define PROTOCOL_USING_PAGE             @"e9da1916-f2fa-3210-fec2-0ca33285abbe"
#define SB_HELP                         @"377f3f21-c0ef-f37b-2c6e-ff5adb782064"//收吧帮助中心
#define XD_SHOPPICTURE                  @"f9d00721-e479-82dd-6e24-3c5126c4893c"//兴店 - 店铺头图
#define XD_JINGYINGGUANLI               @"6b9c8c0e-71ad-4ae2-9ea5-d842070b6719"//兴店- 经营管理
#define HOME_HELP                       @"e0665e16-d1ef-0da7-878e-6fa196dbd2e9"//首页消息中心帮助页面
#define SHOUBA_KEY                      @"8bd72431-cb69-f620-078b-7c188da0e718"
#define XSSL_KEY                        @"09dd0880-1748-09f8-04f7-993d4fef40d5"
#define SHARE_SHOP_KEY                  @"5f0f900e-c982-da4f-f3b6-6838c5a34fa5"
#define SHARE_GOODS_KEY                 @"1fd6a676-38eb-efe1-29b5-a9b25cf98dd0"
#define DEFINE_CODE_GETMONEY            @"68f5de4d-71dd-d279-8d03-3d69824d8ae3" // 普通提现
#define DEFINE_CODE_FASTGETMONEY        @"7ffa166c-eaaa-4bab-a822-1e8a190bafa4" // 加急提现
#define DEFINE_CODE_CREDITCARDREPAY     @"b32c10ea-0eb2-d250-0dc8-045d9e0fd6c9" // 信用卡普通还款
#define DEFINE_CODE_FASTCREDITCARDREPAY     @"ab2bf6cb-f89f-4ceb-ac38-489ba5c60a0d" // 信用卡加急还款
#define DEFINE_MYBANLANCE_EACHPASS      @"da1def95-9365-40d1-b2db-0fdbebd4b29e" //余额互转


//天添兴普通转账	812da587-83f8-e82c-a8ef-42cc22751c14
//信用卡普通还款	b32c10ea-0eb2-d250-0dc8-045d9e0fd6c9
//兴手付普通提现	68f5de4d-71dd-d279-8d03-3d69824d8ae3
