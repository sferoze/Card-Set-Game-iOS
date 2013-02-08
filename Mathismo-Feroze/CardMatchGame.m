//
//  CardMatchGame.m
//  Matchismo-Feroze
//
//  Created by Feroze Shahpurwala on 2/5/13.
//  Copyright (c) 2013 Feroze Shahpurwala. All rights reserved.
//

#import "CardMatchGame.h"

@interface CardMatchGame()
@property (strong, nonatomic) NSMutableArray *cards;
@property (nonatomic) int score;

@end

@implementation CardMatchGame

- (NSMutableArray *)cards
{
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (id)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck
{
    self = [super init];
    
    
    if (self) {
        for (int i = 0; i < count; i++) {
            Card *card = [deck drawRandomCard];
            if (!card) {
                self = nil;
            } else {
                self.cards[i] = card;
                card.faceUp = NO;
                self.score = 0;
            }
        }
    }
    return self;
}

- (Card *)cardAtIndex:(NSUInteger)index
{
    return (index < [self.cards count]) ? self.cards[index] : nil;
}

#define FLIP_COST 1
#define MISMATCH_PENALTY 2
#define MATCH_BONUS 4

-(NSString *)resultToPrint: (NSMutableArray *)cards
{
    //Gets cards into string to print
    NSMutableArray *stringResult = [[NSMutableArray alloc] init];
    for (Card *otherCard in cards) {
        [stringResult addObject:otherCard.contents]; 
    }
    NSString *p = [stringResult componentsJoinedByString:@" & "];
    return p;

}

- (void)flipCardAtIndex:(NSUInteger)index inMode:(NSUInteger)mode
{
    Card *card = [self cardAtIndex:index];
    NSMutableArray *faceUpAndPlayableCards = [[NSMutableArray alloc] init];
    
    if(!card.isUnplayable) {
        if (!card.isFaceUp){
             self.resultsContent = [NSString stringWithFormat:@"Flipped up %@", card.contents];
            for (Card *otherCard in self.cards){
                if (otherCard.isFaceUp && !otherCard.isUnplayable) {
                    [faceUpAndPlayableCards addObject:otherCard];
                }
                if (faceUpAndPlayableCards.count == mode + 1)
                {
                    int matchScore = [card match:faceUpAndPlayableCards];
                                        
                    if (matchScore) {
                        for (Card *flippedCard in faceUpAndPlayableCards) {
                        flippedCard.unplayable = YES;
                        }
                        card.unplayable = YES;
                        
                        self.resultsContent = [NSString stringWithFormat:@"Matched %@ & %@ for %d points", card.contents, [self resultToPrint:faceUpAndPlayableCards], (matchScore * MATCH_BONUS)];
                        self.score += (matchScore * MATCH_BONUS);
                        } else {
                        for (Card *flippedCard in faceUpAndPlayableCards){
                        flippedCard.faceUp = NO;
                        }
                        self.resultsContent = [NSString stringWithFormat:@"%@ and %@ don't match! %d point penalty!", card.contents, [self resultToPrint:faceUpAndPlayableCards], MISMATCH_PENALTY];
                        self.score -= MISMATCH_PENALTY;
                    }
                    break;
                }
              
            }
            
            self.score -= FLIP_COST;
        }
        card.faceUp = !card.isFaceUp;
        
    }
    
}




@end
