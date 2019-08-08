//
//  Pizza.m
//  PizzaRestraunt
//
//  Created by Yamashtia Keisuke on 2019-08-07.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import "Pizza.h"
​
​
@implementation Pizza
​
- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray<NSString *> *) toppings
{
    self = [super init];
    if (self) {
        _size = size;
        _toppings = toppings;
    }
    return self;
}
​
- (NSString *)description
{
    NSString *toppings;
    if (_toppings.count > 0) {
        toppings = [_toppings componentsJoinedByString:@" "];
    } else {
        toppings = @"no toppings";
    }
    return [NSString stringWithFormat:@"Pizza - %d size and toppings: %@", _size, toppings];
}
​
+ (PizzaSize) sizeFromString: (NSString *) str
{
    NSString *lowered = str.lowercaseString;
    if ([lowered isEqualToString:@"small"]) {
        return SMALL;
    } else if ([lowered isEqualToString:@"medium"]) {
        return MEDIUM;
    } else {
        return LARGE;
    }
}
​
+ (Pizza *)largePepperoni{
    return [[Pizza alloc] initWithSize:LARGE andToppings:@[@"Pepperoni", @"Ham", @"Cheese"]];
}
​
+ (Pizza *)meatLoverWithSize: (PizzaSize) size{
    return [[Pizza alloc] initWithSize:size andToppings:@[@"Chicken", @"Beef", @"Pork"]];
}
​
@end
