//
//  PlayingCard.m
//  Matchismo-Feroze
//
//  Created by Feroze Shahpurwala on 1/28/13.
//  Copyright (c) 2013 Feroze Shahpurwala. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

- (int)match:(NSArray *)otherCards
{
    int score = 0; 
    for (PlayingCard *otherCard in otherCards)
    {
        if ([otherCard.suit isEqualToString:self.suit]) {
            score += 1;
        } else if (otherCard.rank == self.rank) {
            score += 4;
        }
    } 
    return score; 
}

@synthesize suit = _suit;

- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

+(NSArray *)validSuits
{
    return @[@"♥", @"♦",@"♠",@"♣"];
}

+(NSArray *)rankStrings
{
    return @[@"?",@"A", @"2",@"3",@"4",@"5",@"6",@"7", @"8", @"9", @"10", @"J",@"Q",@"K"];
}

+ (NSUInteger)maxRank { return [self rankStrings].count-1; }


- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}


-(void)setSuit:(NSString *)suit {
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}


- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

@end
