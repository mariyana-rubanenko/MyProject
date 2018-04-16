//
//  CellDecorator.m
//  Weather
//
//  Created by Maxim on 14/04/2018.
//  Copyright © 2018 Maxim. All rights reserved.
//

#import "CellDecorator.h"
#import "City.h"

@implementation CellDecorator

- (void)decorate:(CityCell *)cell city:(id<CityProtocol>)model {
    cell.nameLabel.text = model.cityName;
}

@end
