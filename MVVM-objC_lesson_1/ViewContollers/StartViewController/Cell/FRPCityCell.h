//
//  CityCell.h
//  MVVM-objC_lesson_1
//
//  Created by Uber on 16/07/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import <UIKit/UIKit.h>

//viewModels
#import "FRPCityCellViewModel.h"

@interface FRPCityCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *cityLabel;
@property (weak, nonatomic) IBOutlet UILabel *temperatureLabel;

@property (weak, nonatomic) FRPCityCellViewModel* viewModel;


@end
