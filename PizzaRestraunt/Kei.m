//
//  Kei.m
//  PizzaRestraunt
//
//  Created by Yamashtia Keisuke on 2019-08-09.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import "Kei.h"
#import "Kitchen.h"
#import "Pizza.h"
#import "DeliveryService.h"

@implementation Kei

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    if ([toppings containsObject:@"anchovies"]) {
        return NO;
    }
    
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return NO;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza{
    [_deliveryService deliverPizza:pizza];
}

@end
