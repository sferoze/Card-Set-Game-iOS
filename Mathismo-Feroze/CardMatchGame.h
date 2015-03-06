//
//  CardMatchGame.h
//  Matchismo-Feroze
//
//  Created by Feroze Shahpurwala on 2/5/13.
//  Copyright (c) 2013 Feroze Shahpurwala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchGame : NSObject

-(id)initWithCardCount:(NSUInteger)cardCount usingDeck:(Deck *)deck;

- (void)flipCardAtIndex:(NSUInteger)index inMode:(NSUInteger)mode;

- (Card *)cardAtIndex:(NSUInteger)index;

@property (nonatomic, readonly) NSString *result;
@property (nonatomic, readonly) NSArray *resultCards;

@property (nonatomic, readonly) int lastScore;
@property (nonatomic, readonly) int totalScore;

@end
