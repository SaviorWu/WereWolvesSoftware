//
//  EnumHeader.h
//  SchoolContacts
//
//  Created by 周子涵 on 16/8/5.
//  Copyright © 2016年 SKY. All rights reserved.
//

#ifndef EnumHeader_h
#define EnumHeader_h


typedef NS_ENUM(NSInteger, UserRoid) {
    UserRoidTOURIST = -1,/*未注册用户*/
    UserRoidSHANGHU = 1,/*商户*/
    UserRoidJIAMENG = 2,/*加盟商*/
    UserRoidJINGXIAO = 3,/*经销商*/
    UserRoidFENGXIAO = 4,/*分销商*/
    UserRoidFACTORY = 5,/*厂商*/
    UserRoidDAXUESHENG = 6,/*大学生分销商*/
    UserRoidYONGHU = 7,/*用户*/
};

typedef NS_ENUM(NSInteger, realNameConfirm) {
    RealNameNoConfirm = 1,/*1-未认证*/
    RealNameConfirmSuccess = 2,/*2-成功*/
    RealNameConfirmFailed = 3,/*3-失败*/
    RealNameConfirming = 4,/*4-认证中*/
};

/**
 *支付通道
 */
//typedef NS_ENUM(NSInteger, AisleId) {
//    AisleIdWallet = 1,/*1 账户余额*/
//    AisleIdQuickPay = 2,/*2 快捷支付*/
//    AisleIdJDPay = 3,/*3京东支付*/
//    AisleIdBFPay = 4,/*4 宝付*/
//    AisleIdLFPay = 5,/*5 乐福*/
//    AisleIdYJFPay = 6,/*6易极付*/
//    AisleIdYBPay = 7,/*7易宝*/
//    AisleIdWechtPay = 8,/*8微信*/
//    AisleIdAliPay = 9,/*9支付宝*/
//    AisleIdYSBPay = 10,/*10银生宝*/
//    AisleIdApplePay = 12,/*12Apple Pay*/
//    AisleIdDZDFPay = 13,/*13店主代付*/
//    AisleIdJHZLPay = 14,/*14建行直连*/
//    AisleIdQRPay = 15,/*15二维码支付*/
//};

/**
 订单模块类型
 */
typedef enum UploadCellType: NSInteger {
    UploadCellLabelType = 0,
    UploadCellPullType,
    UploadCellTextFieldType,
    UploadCellDescribeType,
    UploadCellImageType,
    UploadCellTextType,
} UploadCellType;

/**
 * 通道模式枚举
 * 1、余额
 * 2、威富通反扫
 * 3、威富通正扫
 * 4、苹果
 * 5、建行
 * 6、融宝快捷
 * 7、融宝H5支付
 * 8、易宝
 * 9、宝付
 * 10、线下
 * 11、银生宝提现
 * 12、融宝提现
 * 13、易宝提现
 * 14、威富通支付宝正扫
 15、微信API支付
  16、支付宝API支付
 */

typedef NS_ENUM(NSInteger ,AisleModeEnums){
    /*余额支付 */
    AisleWallet = 1,
    /*威富通反扫 */
    AisleWFTFansaoPay = 2,
    AisleWFTZhengsaoPay = 3,
    AisleWFT_ZFB_ZhengsaoPay = 14,
    AisleApplePay = 4,
    AisleJHZLPay = 5,
    AisleRBPay = 6,
    AisleRB_H5Pay = 7,
    AisleYBPay = 8,
    AisleBFPay = 9,
    AisleOFFLINEPay = 10,
    AisleYSB_TXPay = 11,
    AisleRB_TXPay = 12,
    AisleYB_TXPay = 13,
    AisleWChatApiPay = 15,
    AisleAliPayApiPay = 16,
};

typedef NS_ENUM(NSInteger ,API_URLEnums){
    /*开发服 */
    API_URL_DEVELOP = 0,
    /*测试服 */
    API_URL_TEST,
    /*预发布 */
    API_URL_READY,
    /*正式服 */
    API_URL_FORMAL,
};
#endif /* EnumHeader_h */
