//
//  SetCardDeck.m
//  Matchismo-Feroze
//
//  Created by Feroze Shahpurwala on 2/12/13.
//  Copyright (c) 2013 Feroze Shahpurwala. All rights reserved.
//

#import "SetCardDeck.h"
#import "SetCard.h"

@implementation SetCardDeck

- (id)init
{
    self = [super init];
    
    if (self) {
        for (NSString *symbol in [SetCard validSymbols]) {
            for (NSString *color in [SetCard validColors]) {
                for (NSString *shade in [SetCard validShades]) {
                    for (NSUInteger number = 1; number <= [SetCard maxNumber]; number++ ) {
                        SetCard *card = [[SetCard alloc] init];
                        card.symbol = symbol;
                        card.number = number;
                        card.shade = shade;
                        card.color = color;
                        [self addCard:card atTop:YES];
                    }
                }
            }
        }
    }
    
    return self;
}
@end
