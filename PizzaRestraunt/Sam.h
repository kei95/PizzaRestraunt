//
//  Sam.h
//  PizzaRestraunt
//
//  Created by Yamashtia Keisuke on 2019-08-09.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "DeliveryService.h"

NS_ASSUME_NONNULL_BEGIN

@interface Sam : NSObject<KitchenDelegate>

@property(nonatomic) DeliveryService *deliveryService;

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings;

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

- (void)kitchenDidMakePizza:(Pizza *)pizza;

@end

NS_ASSUME_NONNULL_END
