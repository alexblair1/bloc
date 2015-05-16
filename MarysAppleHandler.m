//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSInteger maxForPurchase = 1000000000;
    NSString *itemToReturn;
    if (dollars >= maxForPurchase) {
        itemToReturn = @"have The Big Apple";
    } else if (dollars >= 1000){
        itemToReturn = @"have an Apple computer";
    } else if (dollars >= 6){
        itemToReturn = @"have an apple";
    } else if (dollars >= 5){
        itemToReturn = @"have some gum";
    } else {
        itemToReturn = @"get out of my store";
    }
  
    NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    return itemToReturn;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka{
    NSUInteger originalCost = 24;
    NSUInteger cost = (self.getsDiscount) ? originalCost * .75 : originalCost;

    return cost;
}

@end
