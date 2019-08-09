//
//  DeliveryCar.h
//  PizzaRestraunt
//
//  Created by Yamashtia Keisuke on 2019-08-09.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryCar : NSObject

-(void)deliverPizza :(Pizza *) pizza;

@end

NS_ASSUME_NONNULL_END
