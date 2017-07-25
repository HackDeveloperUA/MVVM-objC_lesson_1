//
//  DetailsViewController.m
//  MVVM-objC_lesson_1
//
//  Created by Uber on 16/07/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "FRPDetailsViewController.h"

@interface FRPDetailsViewController ()

@end

@implementation FRPDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.weatherLabel.text  = self.viewModel.temperatureString;
    self.windLabel.text     = self.viewModel.windString;
    self.cityLabel.text     = self.viewModel.cityTitle;
    self.precipitationLabel.text = self.viewModel.precipitationString;
    
    [self setNeedsStatusBarAppearanceUpdate];

}

#pragma mark - Others
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}


#pragma mark - Action

- (IBAction)clickedBack:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
