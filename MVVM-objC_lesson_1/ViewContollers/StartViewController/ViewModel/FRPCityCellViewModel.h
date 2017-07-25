//
//  CityCellViewModel.h
//  MVVM-objC_lesson_1
//
//  Created by Uber on 16/07/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import <Foundation/Foundation.h>

// Model
#import "FRPWeather.h"

@interface FRPCityCellViewModel : NSObject

@property (nonatomic, strong) NSString* cityTitle;
@property (nonatomic, strong) NSString* temperatureString;
@property (nonatomic, strong) NSString* timeString;

- (instancetype)initWithWeather:(FRPWeather*) weather;

@end
