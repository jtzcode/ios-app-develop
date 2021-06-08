//
//  SceneDelegate.m
//  learniOS
//
//  Created by citrix on 5/28/21.
//

#import "SceneDelegate.h"

@interface SceneDelegate ()

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    
    //create view controllers of tab bar
    UIViewController *controller1 = [[UIViewController alloc] init];
    controller1.view.backgroundColor = [UIColor redColor];
    controller1.tabBarItem.title = @"News";
    controller1.tabBarItem.image = [UIImage imageNamed:@"icons/page@2x.png"];
    controller1.tabBarItem.selectedImage = [UIImage imageNamed:@"icons/page_selected@2x.png"];
    
    UIViewController *controller2 = [[UIViewController alloc] init];
    controller2.view.backgroundColor = [UIColor yellowColor];
    controller2.tabBarItem.title = @"Videos";
    controller2.tabBarItem.image = [UIImage imageNamed:@"icons/video@2x.png"];
    controller2.tabBarItem.selectedImage = [UIImage imageNamed:@"icons/video_selected@2x.png"];
    
    UIViewController *controller3 = [[UIViewController alloc] init];
    controller3.view.backgroundColor = [UIColor greenColor];
    controller3.tabBarItem.title = @"Favorites";
    controller3.tabBarItem.image = [UIImage imageNamed:@"icons/like@2x.png"];
    controller3.tabBarItem.selectedImage = [UIImage imageNamed:@"icons/like_selected@2x.png"];
    
    UIViewController *controller4 = [[UIViewController alloc] init];
    controller4.view.backgroundColor = [UIColor lightGrayColor];
    controller4.tabBarItem.title = @"Mine";
    controller4.tabBarItem.image = [UIImage imageNamed:@"icons/home@2x.png"];
    controller4.tabBarItem.selectedImage = [UIImage imageNamed:@"icons/home_selected@2x.png"];
    
    [tabBarController setViewControllers:@[controller1, controller2, controller3, controller4]];
    
    self.window.rootViewController = tabBarController;
    //[self.window makeKeyAndVisible];
}


- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
