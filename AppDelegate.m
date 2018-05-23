//
//  AppDelegate.m
//  3DTouchDemo
//
//  Created by pro on 2018/5/23.
//  Copyright © 2018年 ChenXiaoJun. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    UIWindow *window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    window.backgroundColor = [UIColor whiteColor];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[[ViewController alloc] init]];
    window.rootViewController = nav;
    [window makeKeyAndVisible];
    self.window = window;
    
    
    //创建3DTouch点击图标后出现的列表
    UIApplicationShortcutIcon *icon0 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeSearch];
    UIApplicationShortcutItem *item0 = [[UIApplicationShortcutItem alloc] initWithType:@"tpye0"
                                                                        localizedTitle:@"标题"
                                                                     localizedSubtitle:@"我是子标题"
                                                                                  icon:icon0
                                                                              userInfo:@{@"info": @"我是要传入的信息"}];
    
    UIApplicationShortcutItem *item1 = [[UIApplicationShortcutItem alloc] initWithType:@"tpye0"
                                                                        localizedTitle:@"标题2"
                                                                     localizedSubtitle:@"我是子标题"
                                                                                  icon:icon0
                                                                              userInfo:@{@"info": @"我是要传入的信息"}];
    application.shortcutItems = @[item0,item1];
    
    return YES;
}




/**
 从图标的3DTouch点击进入 调用

 @param application application
 @param shortcutItem 包含item的属性
 @param completionHandler completionHandler
 */
- (void)application:(UIApplication *)application performActionForShortcutItem:(nonnull UIApplicationShortcutItem *)shortcutItem completionHandler:(nonnull void (^)(BOOL))completionHandler
{
    
    if ([shortcutItem.type isEqualToString:@"tpye0"]) {
        NSLog(@"%@",shortcutItem.userInfo[@"info"]);
    } else {
        NSLog(@"asdf");
    }
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
