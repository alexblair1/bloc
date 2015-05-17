//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSArray *names = [characterString componentsSeparatedByString:@";"];
    return names;

}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString *names = [characterArray componentsJoinedByString:@";"];
    return names;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSArray *alphaArray = [characterArray sortedArrayUsingSelector:@selector(compare:)];
    return alphaArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    NSString *worfArray = [characterArray componentsJoinedByString:@";"];
    if ([worfArray containsString:@"Worf"]) {
        return YES;
    }else {
        return NO;
    }
}
@end


////notes
//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
//    NSArray *myToList = [NSArray arrayWithObjects:@"Clean the house",
//                         @"Feed the dog",
//                         @"Take out the trash",
//                         @"Fight crime",
//                         nil];
//    NSLog(@"I have %ld things to do today!", myToList.count);
//    NSLog(@"First thing I need to do: %@", myToList[0]);
//    return YES;
//}
//
////alternative way to instantiate and access arrays
//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
//    NSArray *myToList = @[@"Clean the house",
//                         @"Feed the dog",
//                         @"Take out the trash",
//                         @"Fight crime"];
//    NSString *firstThing = [myToList objectAtIndex:0];
//    NSLog(@"First thing I need to do: %@", firstThing);
//    return YES;
//}
////NSMutableArray
//
//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
//    NSMutableArray *myMutableToList = @[@"Clean the house",
//                          @"Feed the dog",
//                          @"Take out the trash",
//                          @"Fight crime"] mutableCopy;
//    [myMutableToList addobject:@"Solve world hunger"]; //adds item
//    [myMutableToList removeObjectAtIndex:0]; //removes item
//    
//    NSLog(@"First thing I need to do: %@", [myMutableToList objectAtIndex:0]);
//    return YES;
//}
////sorting alphabetically
//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
//{
//    NSMutableArray *myMutableTodoList = [@[@"Clean the house",
//                                           @"Feed the dog",
//                                           @"Take out the trash",
//                                           @"Fight crime"] mutableCopy];
//    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];//instantiated NSSortDescripter
//    [myMutableTodoList sortUsingDescriptors:@[sortDescriptor]];//calls NSSortDescriptor (name)
//    NSLog(@"Sorted Array Object 0: %@", myMutableTodoList[0]);
//    NSLog(@"Sorted Array Object 1: %@", myMutableTodoList[1]);
//    NSLog(@"Sorted Array Object 2: %@", myMutableTodoList[2]);
//    NSLog(@"Sorted Array Object 3: %@", myMutableTodoList[3]);
//    return YES;
//}
////blocks and using sortUsingComparator
//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
//{
//    NSMutableArray *luckyLotto = [@[@(38), @(21), @(42), @(13), @(6), @(29), @(11)] mutableCopy];
//    [luckyLotto sortUsingComparator:^NSComparisonResult(id obj1, id obj2) { //sortUsingComparator requests a block that returns an NSComparisonResult and
//        NSNumber *numberA = (NSNumber *)obj1;//                               passes in two objects: id obj1 and id obj2
//        NSNumber *numberB = (NSNumber *)obj2;//
//        
//        int intValueA = [numberA intValue];//        converted the nsnumber object to an int before comparing. "known as unboxing"
//        int intValueB = [numberB intValue];//
//        
//        if (intValueA > intValueB) {
//            return NSOrderedAscending;
//        } else if (intValueA < intValueB) {
//            return NSOrderedDescending;
//        }
//        return NSOrderedSame;
//    }];
//    NSLog(@"Lucky lotto number 1: %ld", [luckyLotto[0] longValue]);
//    NSLog(@"Lucky lotto number 2: %ld", [luckyLotto[1] longValue]);
//    NSLog(@"Lucky lotto number 3: %ld", [luckyLotto[2] longValue]);
//    NSLog(@"Lucky lotto number 4: %ld", [luckyLotto[3] longValue]);
//    NSLog(@"Lucky lotto number 5: %ld", [luckyLotto[4] longValue]);
//    NSLog(@"Lucky lotto number 6: %ld", [luckyLotto[5] longValue]);
//    NSLog(@"Lucky lotto number 7: %ld", [luckyLotto[6] longValue]);
//    return YES;
//}
//
////iteration with for loop
//
//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
//{
//    NSMutableArray *myMutableTodoList = [@[@"Clean the house",
//                                           @"Feed the dog",
//                                           @"Take out the trash",
//                                           @"Fight crime"] mutableCopy];
//    for (NSInteger idx = 0; idx < myMutableTodoList.count; idx++) {
//        NSLog(@"Task %ld: %@", idx, myMutableTodoList[idx]);
//    }
//    return YES;
//}
//
////fast enumeration
//
//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
//{
//    NSMutableArray *myMutableTodoList = [@[@"Clean the house",
//                                           @"Feed the dog",
//                                           @"Take out the trash",
//                                           @"Fight crime"] mutableCopy];
//    for (NSString* task in myMutableTodoList) {
//        NSLog(@"Do this: %@", task);
//    }
//    return YES;
//}
//
////fast enumeration while stopping the loop where we specify
//
//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
//{
//    NSMutableArray *myMutableTodoList = [@[@"Clean the house",
//                                           @"Feed the dog",
//                                           @"Take out the trash",
//                                           @"Fight crime"] mutableCopy];
//    for (NSInteger idx = 0; idx < myMutableTodoList.count; idx++) {
//        NSLog(@"Just doing a mild-mannered chore: %@", myMutableTodoList[idx]);
//        if (idx == 2) {// this stops the loop at index 2 (the last item in our array and will not print at that index)
//            // Uh-oh, I don't want anyone to know I fight crime!
//            break;
//        }
//    }
//    return YES;
//}
////NSPredicate with strings
//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
//{
//    NSMutableArray *myMutableTodoList = [@[@"Clean the house",
//                                           @"Feed the dog",
//                                           @"Take out the trash",
//                                           @"Fight crime"] mutableCopy];
//    NSPredicate *containsThe = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'the'"];//other forms of "SELF CONTAINS[C]" can be used, such as MATCHES, LIKE, BEGINSWITH, ENDSWITH
//    [myMutableTodoList filterUsingPredicate:containsThe];
//    for (NSString *task in myMutableTodoList) {
//        NSLog(@"Remaining task: %@", task);
//    }
//    return YES;
//}
