//
//  EqualityDeterminer.m
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import "EqualityDeterminer.h"

@implementation EqualityDeterminer

- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2 {
    
    return (string1 == string2);
}

- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2 {
 //    **different solution** (this made more sense to me)

 //   if ((number1 = number2)) {
 //       return (number1 = number2);
 //   }else
 //   return (number1 == Number2);
    return ([number1 isEqualToNumber:number2]);
}

- (BOOL) integer:(NSInteger)integer1 isGreaterThan:(NSInteger)integer2 {
 //    **different solution** (this made more sense to me)

//    if ((integer1 > integer2)){
//        return YES;
//    }else
//    return NO;
    BOOL isLessThan = (integer1 > integer2);
    return isLessThan;
}

@end
