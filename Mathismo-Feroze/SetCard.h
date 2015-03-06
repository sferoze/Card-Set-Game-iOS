//
//  SetCard.h
//  Matchismo-Feroze
//
//  Created by Feroze Shahpurwala on 2/12/13.
//  Copyright (c) 2013 Feroze Shahpurwala. All rights reserved.
//

#import "Card.h"

@interface SetCard : Card

@property (strong, nonatomic) NSString *symbol;
@property (nonatomic) int number;
@property (strong, nonatomic) NSString *shade;
@property (strong, nonatomic) NSString *color;


+ (NSArray *)validSymbols;
+ (NSArray *)validColors;
+ (NSArray *)validShades;
+ (NSUInteger)maxNumber;


@end
