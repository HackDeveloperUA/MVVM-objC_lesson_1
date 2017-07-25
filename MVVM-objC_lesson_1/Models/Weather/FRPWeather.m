//
//  Weather.m
//  MVVM-objC_lesson_1
//
//  Created by Uber on 16/07/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "FRPWeather.h"

@implementation FRPWeather

// mockWeatherObject(10.2, city: "Moscow", precipitation: .sunny, windSpeed: 2.1, windDirection: .north

- (instancetype)initTemp:(float)         temp
                 andCity:(NSString*)     city
               andPrecip:(Precipitation) precipitation
                    wind:(float)         windSpeed
                 windDir:(WindDirection) windDirection {
    
    self = [super init];
    if (self) {
        self.temperature = temp;
        self.city = city;
        self.precipitation = &(precipitation);
        //self.windSpeed     = &(windSpeed);
        self.windSpeed     = windSpeed;
        self.windDirection = &(windDirection);
    }
    return self;
}
@end
