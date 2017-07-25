//
//  AppDelegate.m
//  MVVM-objC_lesson_1
//
//  Created by Uber on 16/07/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "AppDelegate.h"

// ViewControllers
#import "FRPStartViewController.h"

// ViewModels
#import "FRPStartViewModel.h"

// Managers
#import "FRPWeathManager.h"

@interface AppDelegate ()

@property (nonatomic, strong) FRPWeathManager*   weatherManager;
@property (nonatomic, strong) FRPStartViewModel* startViewModel;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.weatherManager = [FRPWeathManager sharedManager];
    self.startViewModel = [[FRPStartViewModel alloc] initWithWeatherManager: _weatherManager];

    
    if ([self.window.rootViewController isKindOfClass:[FRPStartViewController class]])
    {
        FRPStartViewController* startController = (FRPStartViewController*)self.window.rootViewController;
        startController.viewModel = self.startViewModel;
    }
    
    return YES;
}


@end
