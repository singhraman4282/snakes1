//
//  main.m
//  Snakes1
//
//  Created by Raman Singh on 2018-04-15.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
    
        NSLog(@"Type roll to roll dice");
        Player *newPlayer = [Player new];
        
        while(YES) {
            
            InputHandler *newInput = [InputHandler new];
            if ([newInput typedRightCommand]) {
                NSNumber *diceRolled = [newPlayer roll];
                if (newPlayer.gameOver) {
                    NSLog(@"Thanks for playing!");
                    break;
                    
                }
                
            }//roll or r
            
            
            
            
            
        }//whileLoop
    
    
    
    
    
    }//auto
    return 0;
}
