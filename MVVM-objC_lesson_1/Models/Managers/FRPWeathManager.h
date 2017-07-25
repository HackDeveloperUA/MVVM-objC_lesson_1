//
//  WeathManager.h
//  MVVM-objC_lesson_1
//
//  Created by Uber on 16/07/2017.
//  Copyright © 2017 Uber. All rights reserved.
//

#import <Foundation/Foundation.h>

// Models
#import "FRPWeather.h"

@interface FRPWeathManager : NSObject

+ (FRPWeathManager*) sharedManager;

- (void) getWeather:(void(^)(NSArray* arrayWeathers)) success
                     onFailure:(void(^)(NSError* errorBlock)) failure;


/*
- (void) getListReduceVariants:(void(^)(NSArray* arrayReduceVariants)) success
                     onFailure:(void(^)(NSError* errorBlock, NSInteger statusCode, NSArray* localReduceVariants)) failure;
*/

@end
