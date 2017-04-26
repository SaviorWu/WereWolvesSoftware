//
//  UserInfo.h
//  XSF
//
//  Created by duck on 16/11/2.
//  Copyright © 2016年 Xsf Technology Co.,Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

//userId	String	是	用户Id
//userSign	String	否	用户签名
//userHeadPic	String	否	头像地址
//userStatus	Integer	否	用户状态：
//10-用户注册成功 11-四要素认证
//视频身份认证：31-审核中 32-失败
//管理员认证：40-成功 41-认证中 42-失败
//43-设置支付密码，表示既设置了交易密码也完成了上面的认证
//50-锁定 60-注销 70-流程过期
//userNickName	String	否	用户昵称
//userAccount	String	是	用户手机号码
//tradePwdStatus	Integer	否	已设置交易密码：0-否 1-是
//realNameStatus	Integer	否	实名认证状态：1-未认证 2-成功 3-失败 4-认证中
//userRoleId	String	是	角色id
//userRoleName	String	否	角色名称
//pushLabel	String	否	推送标签

/*
 *  用户信息单例
 */
@interface UserInfo : NSObject
@property (nonatomic, assign)   BOOL        bLogin;         // 是否登录
/**
 服务端获取
 */
@property (nonatomic, assign)   BOOL        bIsBusiness;    // 是否为商户
@property (nonatomic, strong)   NSString*   userHeadImage;  // 用户头像
@property (nonatomic, strong)   NSString*   userNickName;   // 用户昵称
@property (nonatomic, strong)   NSString*   userID;         // 用户ID
@property (nonatomic, strong)   NSString*   userRealName;   // 用户真实名称
@property (nonatomic, strong)   NSString*   userIDAccount;   // 用户身份证
@property (nonatomic, strong)   NSString*   userSign;         // 用户签名
@property (nonatomic, strong)   NSString*   userStatus;         // 用户状态
@property (nonatomic, strong)   NSString*   userAccount;         // 用户手机号码
@property (nonatomic, strong)   NSString*   tradePwdStatus;         // 已设置交易密码：0-否 1-是
@property (nonatomic, strong)   NSString*   realNameStatus;         // 实名认证状态：1-未认证 2-成功 3-失败 4-认证中
@property (nonatomic, strong)   NSString*   userRoleId;         // 角色id
@property (nonatomic, strong)   NSString*   userRoleName;         // 角色名称
@property (nonatomic, strong)   NSString*   serverName;         // serverName	String	否	服务商名称
@property (nonatomic, strong)   NSString*   serverPhone;         // serverPhone	String	是	服务商手机号
@property (nonatomic, strong)   NSString*   consumerHotline;         // 客服电话
@property (nonatomic, strong)   NSString*   persionCode;         // 个人二维码
@property (nonatomic, strong)   NSString*   firmKeyAppid;        //企业编码
@property (nonatomic, strong)   NSString*   userIsEnterprise;    //企业用户：0-否 1-是
@property (nonatomic, strong)   NSArray*    pushLabel;         // 推送标签
@property (nonatomic, strong)   NSMutableArray*   userLabel;    //用户标签
@property (nonatomic, strong)   NSString*   isSubAccount;       //子账号
@property (nonatomic, strong)   NSString*   upAudit;         // 当前版本审核状态，0-正在审核，IOS应显示审核时的样子
/**
 兴店获取的自己的商户信息
 */
@property (nonatomic, strong)   NSString*   psId;       // 商户ID
@property (nonatomic, strong)   NSString*   psName;     // 商户昵称
@property (nonatomic, strong)   NSString*   psHeadUrl;  // 用户头像url
/**
 我的现金相关
 */
@property (nonatomic, strong)   NSString*   userWallet;         // 我的余额
@property (nonatomic, strong)   NSString*   waitForPay;         // 待结算金额
@property (nonatomic, strong)   NSString*   canCheckOutMoney;         // 可提现金额
/**
 客户端获取
 */
@property (nonatomic, strong)   NSString*   userNetWork;         // 用户网络环境
@property (nonatomic, strong)   NSString*   appVersion;         // app版本号
@property (nonatomic, strong)   NSString*   deviceID;           // 设备唯一标识
@property (nonatomic, strong)   NSString*   deviceInfo;         // 设备信息
@property (nonatomic, strong)   NSString*   userLng;            // 用户所在经度
@property (nonatomic, strong)   NSString*   userLat;            // 用户所在维度
@property (nonatomic, strong)   NSString*   userUp;            // 用户所在省
@property (nonatomic, strong)   NSString*   userUc;            // 用户所在市
@property (nonatomic, strong)   NSString*   userUd;            // 用户所在区
@property (nonatomic, strong)   NSString*   userJPUSHID;            // 极光推送的返回标识

/**
 权限等级
 */
@property (nonatomic, strong)   NSString*   videoStatus;        // 视频认证
@property (nonatomic, assign)   BOOL        bRealNameCheck;     // 实名认证

+ (void)reset;
+ (instancetype)getInstance;
@end
