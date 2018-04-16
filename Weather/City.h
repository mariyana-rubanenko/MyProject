//
//  City.h
//  Weather
//
//  Created by Maxim on 14/04/2018.
//  Copyright © 2018 Maxim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CityProtocol.h"

@interface City : NSObject<CityProtocol>

- (instancetype)initWithName:(NSString*)name id:(NSInteger)cityId;

@end
