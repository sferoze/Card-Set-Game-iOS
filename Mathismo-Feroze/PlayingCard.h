//
//  PlayingCard.h
//  Matchismo-Feroze
//
//  Created by Feroze Shahpurwala on 1/28/13.
//  Copyright (c) 2013 Feroze Shahpurwala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;



@end
