//
//  CellDecoratorProtocol.h
//  Weather
//
//  Created by Maxim on 14/04/2018.
//  Copyright © 2018 Maxim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CityCell.h"
#import "CityProtocol.h"

@protocol CellDecoratorProtocol <NSObject>

-(void)decorate:(CityCell *)cell city:(id<CityProtocol>)model;

@end
