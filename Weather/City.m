//
//  City.m
//  Weather
//
//  Created by Maxim on 14/04/2018.
//  Copyright © 2018 Maxim. All rights reserved.
//

#import "City.h"

@implementation City
@synthesize cityName = _cityName, cityId = _cityId;

- (instancetype)initWithName:(NSString *)name id:(NSInteger)cityId {
    self = [super init];
    if (self) {
        self.cityName = name;
        self.cityId = cityId;
    }
    return self;
}

@end
