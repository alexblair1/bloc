//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
//    NSNumber *doubleTheNumber = [NSNumber numberWithInt:([number intValue] *2)];
//    return doubleTheNumber;
    NSInteger integerValue = [number intValue];
    integerValue *= 2;
    return @(integerValue);
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    if (number == otherNumber) {
        return @[@(number)]; ;
    }
    NSInteger lowNumber, highNumber;
    
    if (number < otherNumber) {
        lowNumber = number;
        highNumber = otherNumber;
    } else {
        lowNumber = otherNumber;
        highNumber = number;
    }
    
    NSMutableArray *returnArray = [NSMutableArray array];
    for (NSInteger i = lowNumber; i <= highNumber; i++) {
        [returnArray addObject:@(i)];
    }
    
    return returnArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    NSInteger lowestNumber = NSIntegerMax;
    for (NSNumber *number in arrayOfNumbers){
        NSInteger integerValue = [number intValue];
        
        if (integerValue < lowestNumber) {
            lowestNumber = integerValue;
        }
    }
    return lowestNumber;
}

@end
