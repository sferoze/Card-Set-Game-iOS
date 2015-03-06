//
//  GameResult.h
//  Matchismo-Feroze
//
//  Created by Feroze Shahpurwala on 2/10/13.
//  Copyright (c) 2013 Feroze Shahpurwala. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameResult : NSObject

+ (NSArray *)allGameResults; //of GameResult

@property (readonly, nonatomic) NSDate *start;
@property (readonly, nonatomic) NSDate *end;
@property (readonly, nonatomic) NSTimeInterval duration;
@property (nonatomic) int score;

@end
