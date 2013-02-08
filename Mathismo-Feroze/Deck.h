//
//  Deck.h
//  Matchismo-Feroze
//
//  Created by Feroze Shahpurwala on 1/28/13.
//  Copyright (c) 2013 Feroze Shahpurwala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"


@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;

- (Card *)drawRandomCard;


@end
