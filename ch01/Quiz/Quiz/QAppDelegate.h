//
//  QAppDelegate.h
//  Quiz
//
//  Created by Karen Cate Arabit on 4/26/13.
//  Copyright (c) 2013 Karen Cate Arabit. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QViewController;

@interface QAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) QViewController *viewController;

@end
