//
//  InputHandler.m
//  Snakes1
//
//  Created by Raman Singh on 2018-04-15.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(BOOL) typedRightCommand {
    char userInput[100];
    fgets(userInput, 100, stdin);
    NSString *diceString = [NSString stringWithUTF8String:userInput];
    diceString = [diceString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    if ([diceString isEqualToString:@"roll"] || [diceString isEqualToString:@"r"]) {
        return YES;
    } else {
        return NO;
    }
}


@end
