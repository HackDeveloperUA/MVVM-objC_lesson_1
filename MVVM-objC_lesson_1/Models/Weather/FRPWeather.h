//
//  Weather.h
//  MVVM-objC_lesson_1
//
//  Created by Uber on 16/07/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, WindDirection) {
    north = 0, south, west, east
};

typedef NS_ENUM(NSInteger, Precipitation) {
  cloudly = 0, rainy, stormly, thunderly, sunny
};


@interface FRPWeather : NSObject

@property (assign, nonatomic) float temperature;
@property (strong, nonatomic) NSString* city;
@property (assign, nonatomic) double timestamp;
@property (assign, nonatomic) float windSpeed;

@property (assign, nonatomic) WindDirection* windDirection;
@property (assign, nonatomic) Precipitation* precipitation;



- (instancetype)initTemp:(float)         temp
                 andCity:(NSString*)     city
               andPrecip:(Precipitation) precipitation
                    wind:(float)         windSpeed
                 windDir:(WindDirection) windDirection;

                   
@end
