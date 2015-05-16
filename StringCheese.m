//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *favoriteCheeseIntro = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return favoriteCheeseIntro;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    //NSString *cheeseStatement = [NSString stringWithFormat:@"%@", cheeseName];
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    if (cheeseRange.location !=NSNotFound) {
        NSString *cheeseCorrectStatement = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
        
        return cheeseCorrectStatement;
    }
    
    return cheeseName;
}

#pragma mark -

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        NSString *cheeseNumberSingle = [NSString stringWithFormat:@"%lu cheese", cheeseCount];
        return cheeseNumberSingle;
    } else {
        NSString *cheeseNumberPlural = [NSString stringWithFormat:@"%ld cheeses", cheeseCount];
        return cheeseNumberPlural;
        
    }
    

    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
    return nil;
}



@end
