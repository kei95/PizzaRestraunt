//
//  DeliveryService.m
//  PizzaRestraunt
//
//  Created by Yamashtia Keisuke on 2019-08-09.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import "DeliveryService.h"

@implementation DeliveryService


- (instancetype)init
{
    self = [super init];
    if (self) {
        _deliveredPizzas = [[NSMutableArray alloc] init];
        _car = [[DeliveryCar alloc] init];
    }
    return self;
}

- (void)deliverPizza:(Pizza *)pizza{
    
    [_deliveredPizzas addObject:pizza.description];
    [_car deliverPizza:pizza];
}

- (NSMutableArray *)getDeliveredPizzas{
    return _deliveredPizzas;
}


@end
