//
//  StartViewModel.h
//  MVVM-objC_lesson_1
//
//  Created by Uber on 17/07/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import <Foundation/Foundation.h>

// Manager
#import "FRPWeathManager.h"
// Model
#import "FRPWeather.h"

// ViewModel
#import "FRPDetailsViewModel.h"
#import "FRPCityCellViewModel.h"

@interface FRPStartViewModel : NSObject

@property (nonatomic, weak)   FRPWeathManager* weatherManager;
@property (nonatomic, strong) NSMutableArray* cellsArray;
@property (nonatomic, strong) NSMutableArray* weatherArray;

@property (nonatomic, strong) FRPDetailsViewModel* detailsViewModel;


- (void) updateWeather:(void(^)()) success;
- (NSInteger) numberOfCities;

- (FRPCityCellViewModel*) cellViewModel:(NSInteger) index;
- (FRPDetailsViewModel*) detailsViewModel:(NSInteger) index;

- (instancetype)initWithWeatherManager:(FRPWeathManager*) manager;

@end
