//
//  DetailsViewModel.h
//  MVVM-objC_lesson_1
//
//  Created by Uber on 17/07/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import <Foundation/Foundation.h>

// Model
#import "FRPWeather.h"

@interface FRPDetailsViewModel : NSObject

@property (nonatomic, strong) NSString* cityTitle;
@property (nonatomic, strong) NSString*  windString;
@property (nonatomic, strong) NSString*  precipitationString;
@property (nonatomic, strong) NSString*  temperatureString;

- (instancetype)initWithWeather:(FRPWeather*) weather;

@end
