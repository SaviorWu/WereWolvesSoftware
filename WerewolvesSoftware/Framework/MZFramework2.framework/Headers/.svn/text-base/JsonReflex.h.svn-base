//
//  JsonReflex.h
//  MiaoZhuan4.3
//
//  Created by Friend.Wu on 16/04/05.
//  Copyright © 2016年 MiaoZhuan. All rights reserved.
//

#import <Foundation/Foundation.h>
/*!
 *  @author Friend.Wu, 16-04-05 16:04:15
 *
 *  @brief Framework2.0以后的请求类统一调用接口
 *  @类说明：此类为Framework2.0以后所有modal数据模型类父类
 */

@interface JsonReflex : NSObject
@property(nonatomic, strong) NSDictionary*   dicParam;
/*!
 *  @author Friend.Wu, 16-04-05 16:04:15
 *
 *  @brief Framework2.0以后的请求类统一调用接口
 *  @参数解析：
 *          ①obj：要处理的数据源
 *  @返回值BOOL
 *          ①解析成功或者失败
 */
- (BOOL)GetJsonData:(id)obj;
/*!
 *  @author Friend.Wu, 16-04-05 16:04:15
 *
 *  @brief Framework2.0以后的请求类统一调用接口
 
 *  @特别说明：如果不写映射关系，将默认在子类中查找后台对应的字段
 
 *  @参数解析：
 *          ①dic：设置对应子类中的变量名与后台变量的对应关系(建议使用时重写init方法事例代码如下)
 *
 ********************************************
    @implementation tempModal  tempModal继承自JsonReflex
    //"id"      userID         此处userID为子类中定义的变量名 "id"为后台接口中的变量名
    //"name"    userName       此处userName为子类中定义的变量名 "name"为后台接口中的变量名
    - (instancetype)init
    {
        if ( self = [super init] )
        {
            [self setDicParam:@{
                                @"userID":@"id",
                                @"userName":@"name",
                                }
        }
    return self;
    }
    @end
 ********************************************
 *  @返回值void
 */
- (void)setdicParam:(NSDictionary*)dic;
@end
