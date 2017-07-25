//
//  WeathManager.m
//  MVVM-objC_lesson_1
//
//  Created by Uber on 16/07/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "FRPWeathManager.h"

@implementation FRPWeathManager

+ (FRPWeathManager*) sharedManager
{
    
    static FRPWeathManager* manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[FRPWeathManager alloc] init];
    });
    return manager;
}


- (void) getWeather:(void(^)(NSArray* arrayWeathers)) success
          onFailure:(void(^)(NSError* errorBlock)) failure
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        success([self mockResponse]);
    });
}


#pragma mark - private methods

- (NSArray*) mockResponse
{
    NSMutableArray* array = [NSMutableArray array];
    
    [array addObject: [[FRPWeather alloc] initTemp: 10.2  andCity: @"Moscow" andPrecip: sunny   wind:2.1 windDir: north]];
    [array addObject: [[FRPWeather alloc] initTemp: 8.2   andCity: @"London" andPrecip: cloudly wind:0.1 windDir: south]];
    [array addObject: [[FRPWeather alloc] initTemp: 18.9  andCity: @"Madrid" andPrecip: sunny   wind:0   windDir: north]];
    [array addObject: [[FRPWeather alloc] initTemp: 7.1   andCity: @"Dublin" andPrecip: rainy   wind:4.7 windDir: east]];
    [array addObject: [[FRPWeather alloc] initTemp: 22.5  andCity: @"Tivat"  andPrecip: sunny   wind:1.5 windDir: south]];    
    return array;
}

@end
