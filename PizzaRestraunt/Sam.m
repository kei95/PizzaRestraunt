//
//  Sam.m
//  PizzaRestraunt
//
//  Created by Yamashtia Keisuke on 2019-08-09.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import "Sam.h"
#import "Kitchen.h"
#import "Pizza.h"
#import "DeliveryService.h"

@implementation Sam

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings{
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen{
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"Thank You Guys!");
    [_deliveryService deliverPizza:pizza];
}

@end
