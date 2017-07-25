//
//  StartViewModel.m
//  MVVM-objC_lesson_1
//
//  Created by Uber on 17/07/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import "FRPStartViewModel.h"

@implementation FRPStartViewModel

- (void) updateWeather:(void(^)()) success
{
    [self.cellsArray removeAllObjects];
    
    [self.weatherManager getWeather:^(NSArray *arrayWeathers) {
        
        self.weatherArray = [NSMutableArray arrayWithArray:arrayWeathers];
        
        for (FRPWeather* weatherObject in arrayWeathers) {
            [self.cellsArray addObject:[[FRPCityCellViewModel alloc] initWithWeather:weatherObject]];
        }
        success();
    } onFailure:^(NSError *errorBlock) {
        NSLog(@"errorBlock = %@",errorBlock);
    }];
}


- (NSInteger) numberOfCities
{
    return self.cellsArray.count;
}


- (FRPCityCellViewModel*) cellViewModel:(NSInteger) index
{
    if (index > self.cellsArray.count){
        return nil;
    }
    return self.cellsArray[index];
}


- (FRPDetailsViewModel*) detailsViewModel:(NSInteger) index
{
    self.detailsViewModel = [[FRPDetailsViewModel alloc] initWithWeather:self.weatherArray[index]];
    return self.detailsViewModel;
}


- (instancetype)initWithWeatherManager:(FRPWeathManager*) manager
{
    self = [super init];
    if (self) {
        self.weatherManager = manager;
        self.cellsArray = [NSMutableArray array];
    }
    return self;
}


@end
