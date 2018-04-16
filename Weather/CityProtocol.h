//
//  CityProtocol.h
//  Weather
//
//  Created by Maxim on 14/04/2018.
//  Copyright © 2018 Maxim. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CityProtocol <NSObject>

@property (nonatomic, copy) NSString *cityName;
@property (nonatomic, assign) NSInteger cityId;

@end
