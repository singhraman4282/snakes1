//
//  Player.h
//  Snakes1
//
//  Created by Raman Singh on 2018-04-15.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject
@property (strong) NSNumber *currentSquare;
@property (nonatomic) NSDictionary *gameLogic;
@property (nonatomic) BOOL gameOver;

-(NSNumber *) roll;

@end
