//
//  AppDelegate.h
//  WerewolvesSoftware
//
//  Created by duck on 17/2/27.
//  Copyright © 2017年 Werewolves. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

