//
//  main.m
//  PizzaRestraunt
//
//  Created by Yamashtia Keisuke on 2019-08-07.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "Kei.h"
#import "Sam.h"
#import "DeliveryService.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Kitchen *restaurantKitchen = [Kitchen new];
        Kei *kei = [Kei new];
        DeliveryService *deliverService = [DeliveryService new];
        kei.deliveryService = deliverService;
        restaurantKitchen.delegate = kei;
        
        while (TRUE) {
            
            NSLog(@"Please pick the your pizza size and toppings:");
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *sizeInput = commandWords[0];
            NSArray *toppings= [commandWords subarrayWithRange:NSMakeRange(1, commandWords.count -1)];
            
            Pizza *pizza;
            
            PizzaSize pizSize =[Pizza sizeFromString: sizeInput];
            
            pizza = [restaurantKitchen makePizzaWithSize:pizSize toppings:toppings];
            
            NSLog(@"%@", [deliverService getDeliveredPizzas]);
        }
        
    }
    return 0;
}
