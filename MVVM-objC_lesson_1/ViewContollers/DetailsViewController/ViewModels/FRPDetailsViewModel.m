//
//  DetailsViewModel.m
//  MVVM-objC_lesson_1
//
//  Created by Uber on 17/07/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "FRPDetailsViewModel.h"

@implementation FRPDetailsViewModel


- (instancetype)initWithWeather:(FRPWeather*) weather
{
    self = [super init];
    if (self) {
        
        self.cityTitle = weather.city;
        self.temperatureString = [NSString stringWithFormat:@"%0.f",weather.temperature];
        
       NSString* windStr;
       //enum WindDirection windDirection = *(weather.windDirection);
        switch (*(weather.windDirection)) {
            case north:  windStr = @"Noth";           break;
            case south:  windStr = @"South";          break;
            case west:   windStr = @"West";           break;
            case east:   windStr = @"East";           break;
            default:     windStr = @"not found wind"; break;
        }
    self.windString = [NSString stringWithFormat:@"%@ wind, %0.f m/s",
                       windStr,weather.windSpeed];
        
        
        NSString* preciptionStr;
        switch (*(weather.precipitation)) {
            case sunny:     preciptionStr = @"Sunny";                     break;
            case cloudly:   preciptionStr = @"Cloudly";                   break;
            case rainy:     preciptionStr = @"Rainly";                    break;
            case stormly:   preciptionStr = @"Stormly";                   break;
            case thunderly: preciptionStr = @"Thunderly";                 break;
            default:        preciptionStr = @"not found precipitation";   break;
        }
        self.precipitationString = preciptionStr;
        
    }
    return self;
}

@end
