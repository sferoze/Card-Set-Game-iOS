//
//  PlayingCard.m
//  Matchismo-Feroze
//
//  Created by Feroze Shahpurwala on 1/28/13.
//  Copyright (c) 2013 Feroze Shahpurwala. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

-(NSString *)description
{
    return self.contents;
}

- (int)match:(NSArray *)otherCards
{
    int score = 0;      // final score
    
    int rankScore = 0;  // shows how many rank matches are there
    
    int suitScore = 0;  // shows how many suit matches are there
    
    
    
    NSMutableArray *otherPlayingCards = [[NSMutableArray alloc] init]; // array in which playing cards to be matched will be stored
    
    
    
    // introspection to see whether otherCard is a PlayingCard
    
    for (id otherCard in otherCards)
        
    {
        
        if ([otherCard isKindOfClass:[PlayingCard class]])
            
        {
            
            PlayingCard *otherPlayingCard = (PlayingCard *)otherCard;
            
            [otherPlayingCards addObject:otherPlayingCard];
            
        }
        
    }
    
    
    
    // if there are cards to be matched, we match them
    
    if ([otherPlayingCards count])
        
    {
        
        // matching every card in array to the last flipped card
        
        for (PlayingCard *otherPlayingCard in otherPlayingCards)
            
        {
            
            if ([otherPlayingCard.suit isEqualToString:self.suit])
                
            {
                
                suitScore++; // incrementing suitScore if there is a suit match
                
            }
            
            else if (otherPlayingCard.rank == self.rank)
                
            {
                
                rankScore++; // incrementing rankScore if there is a rank match
                
            }
            
            
            
            // if there was a rank match, rankScore should be equal to number of otherPlayingCards
            
            if (rankScore == [otherPlayingCards count])
                
            {
                
                score = 4 * ([otherPlayingCards count]);
                
            }
            
            // if there was a suit match, suitScore should be equal to number of otherPlayingCards
            
            else if (suitScore == [otherPlayingCards count])
                
            {
                
                score = 1 * ([otherPlayingCards count]);
                
                // original scoring was kept, but in case of multiple cards matching
                
                // it is multiplied by the number of otherPlayingCards
                
            }
            
        }
        
    }
    
    return score;
    
}

@synthesize suit = _suit;


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
