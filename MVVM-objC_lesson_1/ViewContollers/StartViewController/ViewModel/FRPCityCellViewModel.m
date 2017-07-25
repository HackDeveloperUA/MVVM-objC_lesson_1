//
//  CityCellViewModel.m
//  MVVM-objC_lesson_1
//
//  Created by Uber on 16/07/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "FRPCityCellViewModel.h"

@implementation FRPCityCellViewModel

- (instancetype)initWithWeather:(FRPWeather*) weather
{
    self = [super init];
    if (self) {
        
        self.cityTitle = weather.city;
        self.temperatureString = [NSString stringWithFormat:@"%0.f",weather.temperature];
        
        NSDateFormatter* df = [[NSDateFormatter alloc] init];
        NSDate* date   = [NSDate dateWithTimeIntervalSince1970:weather.timestamp];
        df.dateFormat = @"HH:mm";
        self.timeString = [df stringFromDate:date];
    }
    return self;
}

 
@end
