//
//  Player.m
//  Snakes1
//
//  Created by Raman Singh on 2018-04-15.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "Player.h"

@implementation Player
- (instancetype)init
{
    self = [super init];
    if (self) {
        _gameOver = NO;
        _currentSquare = @0;
        
        
        _gameLogic = @{@4:@14, @9:@31, @17:@7, @20:@38, @28:@84, @40:@59, @51:@67, @62:@81, @89:@26,@96:@75,@99:@78};
        
        

    }
    return self;
}
-(NSNumber *) roll {
   
    int d1v = arc4random_uniform(6) + 1;
    NSNumber *dv = [NSNumber numberWithInt:d1v];

    _currentSquare = [NSNumber numberWithFloat:([_currentSquare intValue] + [dv intValue])];
    NSLog(@"Current dice is: %@", dv);
    NSLog(@"Current square is %@", _currentSquare);
    
    int intCurrent = [_currentSquare intValue];
    if (intCurrent >= 100) {
        _gameOver = YES;
        NSLog(@"Game Over!");
    } else if ([_gameLogic.allKeys containsObject:_currentSquare]) {
                    NSLog(@"You hit %@", _currentSquare);
        _currentSquare = [_gameLogic objectForKey:_currentSquare];
                NSLog(@"You will be moved to  %@", _currentSquare);
    NSLog(@"New Current square is %@", _currentSquare);
    }
    
    

    
    return dv;
    
}

@end
