//
//  main.m
//  PizzaRestraunt
//
//  Created by Yamashtia Keisuke on 2019-08-07.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "Kitchen.h"
​
int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *sizeInput = commandWords[0];
            Pizza *pizza;
            if ([[sizeInput lowercaseString] isEqualToString:@"pepperoni"]) {
                pizza = [Pizza largePepperoni];
            } else {
                NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, commandWords.count-1)];
                PizzaSize pizSize = [Pizza sizeFromString:sizeInput];
                pizza = [[Pizza alloc] initWithSize:pizSize andToppings:toppings];
            }
            
            NSLog(@"Here's your order: %@", pizza);
            // And then send some message to the kitchen...
        }
        
    }
    return 0;
}
