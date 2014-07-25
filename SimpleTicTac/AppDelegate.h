//
//  AppDelegate.h
//  TicTac
//
//  Created by jhanu medarametla on 10/20/12.
//  Copyright (c) 2012 eminosoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;
@property (nonatomic, retain) UINavigationController *navigationController;


@end
