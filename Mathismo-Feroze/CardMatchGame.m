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
//@property (nonatomic) int score;
@property (nonatomic, readwrite) NSString *result;
@property (nonatomic, readwrite) NSArray *resultCards;
@property (nonatomic, readwrite) int lastScore;
@property (nonatomic, readwrite) int totalScore;

@end

@implementation CardMatchGame

- (NSMutableArray *)cards
{
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

-(NSArray *)resultCards {
    if (!_resultCards) _resultCards = [[NSArray alloc] init];
    return _resultCards;
}

- (id)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck
{
    self = [super init];
    self.result = @"";
    
    if (self) {
        for (int i = 0; i < count; i++) {
            Card *card = [deck drawRandomCard];
            if (!card) {
                self = nil;
            } else {
                self.cards[i] = card;
                card.faceUp = NO;
                self.totalScore = 0;
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


- (void)flipCardAtIndex:(NSUInteger)index inMode:(NSUInteger)mode
{
    // Get the card from the cards array
    Card *card = [self cardAtIndex:index];
    self.resultCards = nil;
    NSMutableArray *resultCards = [self.resultCards mutableCopy];
    NSMutableArray *otherCards = [[NSMutableArray alloc] init];
    
    
    // Set up initial matchresult strings
    self.result = (card.isFaceUp ? @"Flipped_back" : @"Flipped_up");
    resultCards[0]=card;
    // Determine if there is match by cycling through the cards and checking if there are enough
    // cards face up to perform a match (dependent on match mode!).
    if (!card.isUnplayable) {
        if (!card.isFaceUp) {
            // Fill the array with cards that are available to be matched against
            for (Card *otherCard in self.cards) {
                if (otherCard.isFaceUp && !otherCard.isUnplayable) {
                    [otherCards addObject:otherCard];
                }
            }
            // Are the enough cards face up to match?
            if (otherCards.count == mode + 1) {
                // Perform the matching
                int matchScore = [card match:otherCards];
                if (matchScore) {
                    // We have a match
                    for (Card *otherCard in otherCards) {
                        otherCard.unplayable = YES;
                        [resultCards insertObject:otherCard atIndex:0];
                    }
                    card.unplayable = YES;
                    self.lastScore = matchScore * MATCH_BONUS;
                    self.totalScore += self.lastScore;
                    self.result = @"Match";
                } else {
                    // We don't have a match
                    for (Card *otherCard in otherCards) {
                        otherCard.faceUp = NO;
                        [resultCards insertObject:otherCard atIndex:0];
                    }
                    self.lastScore = MISMATCH_PENALTY;
                    self.totalScore -= self.lastScore;
                    self.result = @"No_match";
                }
            }
            self.totalScore -= FLIP_COST;
        }
        // Flip the card
        card.faceUp = !card.faceUp;
    }
    self.resultCards = [resultCards copy];
}




@end
