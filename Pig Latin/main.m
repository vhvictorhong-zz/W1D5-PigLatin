//
//  main.m
//  Pig Latin
//
//  Created by Victor Hong on 04/11/2016.
//  Copyright © 2016 Victor Hong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *word = @"Kale Chips";
        
        [word stringByPigLatinization];
        
    }
    return 0;
}
