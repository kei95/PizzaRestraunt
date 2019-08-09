//
//  DeliveryService.h
//  PizzaRestraunt
//
//  Created by Yamashtia Keisuke on 2019-08-09.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "DeliveryCar.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryService : NSObject

@property (nonatomic) NSMutableArray *deliveredPizzas;
@property (nonatomic) DeliveryCar *car;

-(void)deliverPizza :(Pizza *) pizza ;

-(NSMutableArray *)getDeliveredPizzas;

@end

NS_ASSUME_NONNULL_END
