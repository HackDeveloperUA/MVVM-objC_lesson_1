//
//  CityCell.m
//  MVVM-objC_lesson_1
//
//  Created by Uber on 16/07/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "FRPCityCell.h"

@implementation FRPCityCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

-(void) setViewModel:(FRPCityCellViewModel *)viewModel
{
    _viewModel = viewModel;
    self.timeLabel.text = viewModel.timeString;
    self.cityLabel.text = viewModel.cityTitle;
    self.temperatureLabel.text = viewModel.temperatureString;
}

@end
