//
//  DetailsViewController.h
//  MVVM-objC_lesson_1
//
//  Created by Uber on 16/07/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import <UIKit/UIKit.h>

// ViewModels
#import "FRPDetailsViewModel.h"

@interface FRPDetailsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *cityLabel;
@property (weak, nonatomic) IBOutlet UILabel *precipitationLabel;
@property (weak, nonatomic) IBOutlet UILabel *windLabel;
@property (weak, nonatomic) IBOutlet UILabel *weatherLabel;

@property (weak, nonatomic) FRPDetailsViewModel* viewModel;

@end
