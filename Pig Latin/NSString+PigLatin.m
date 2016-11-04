//
//  NSString+PigLatin.m
//  Pig Latin
//
//  Created by Victor Hong on 04/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

-(NSString *)stringByPigLatinization {
    
    NSString *stringArray = [self componentsSeparatedByString:@" "];
    NSString *pigLatinWord = [NSString new];
    
    for (NSString *string in stringArray) {
        
        NSString * lowercaseString = [string lowercaseString];
        
        NSCharacterSet *consonantSet = [NSCharacterSet characterSetWithCharactersInString:@"bcdfghjklmnpqrstvwxyz"];
        
        NSString *removeFirstLetter = [[lowercaseString stringByAppendingString:@"!"] stringByTrimmingCharactersInSet:consonantSet];
        
        removeFirstLetter = [removeFirstLetter stringByReplacingOccurrencesOfString:@"!" withString:@""];
        
        NSString *str = [lowercaseString stringByReplacingOccurrencesOfString:removeFirstLetter withString:@""];
        
        pigLatinWord = [[pigLatinWord stringByAppendingFormat:@"%@%@ay ", removeFirstLetter, str] capitalizedString];

    }
    
    return pigLatinWord;
    
}
@end
