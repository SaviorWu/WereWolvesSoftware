//
//  GetUserListModelCtrl.m
//  WerewolvesSoftware
//
//  Created by sky on 2017/3/1.
//  Copyright © 2017年 Werewolves. All rights reserved.
//

#import "GetUserListModelCtrl.h"
#import "UserModel.h"

@implementation GetUserListModelCtrl
+ (id)PraseCallBack:(id)result{
    NSMutableArray *dataArray = [NSMutableArray arrayWithArray:result];
    [dataArray setModel:[UserModel class]];
    for (UserModel *user in dataArray) {
        RoleModel   *prophetRole = [RoleModel new];
        GET_JSON_DATA(prophetRole, user.prophet);
        user.prophet = prophetRole;
        
        RoleModel   *witchRole = [RoleModel new];
        GET_JSON_DATA(witchRole, user.witch);
        user.witch = witchRole;
        
        RoleModel   *huntsmanRole = [RoleModel new];
        GET_JSON_DATA(huntsmanRole, user.huntsman);
        user.huntsman = huntsmanRole;
        
        RoleModel   *idiotRole = [RoleModel new];
        GET_JSON_DATA(idiotRole, user.idiot);
        user.idiot = idiotRole;
        
        RoleModel   *guardRole = [RoleModel new];
        GET_JSON_DATA(guardRole, user.guard);
        user.guard = guardRole;
        
        RoleModel   *wolfRole = [RoleModel new];
        GET_JSON_DATA(wolfRole, user.wolf);
        user.wolf = wolfRole;
        
        RoleModel   *civilianRole = [RoleModel new];
        GET_JSON_DATA(civilianRole, user.civilian);
        user.civilian = civilianRole;
    }
    
    return dataArray;
}
@end
