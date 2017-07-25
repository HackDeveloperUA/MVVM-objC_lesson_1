//
//  StartViewController.h
//  MVVM-objC_lesson_1
//
//  Created by Uber on 16/07/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import <UIKit/UIKit.h>

// Models
#import "FRPWeather.h"

// ViewModels
#import "FRPStartViewModel.h"
#import "FRPCityCellViewModel.h"

// Cells
#import "FRPCityCell.h"

// ViewControllers
#import "FRPDetailsViewController.h"
#import "FRPDetailsViewModel.h"

@interface FRPStartViewController : UITableViewController

@property (nonatomic, weak) FRPStartViewModel* viewModel;


@end
