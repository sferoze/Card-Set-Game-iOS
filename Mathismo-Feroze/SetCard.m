//
//  SetCard.m
//  Matchismo-Feroze
//
//  Created by Feroze Shahpurwala on 2/12/13.
//  Copyright (c) 2013 Feroze Shahpurwala. All rights reserved.
//

#import "SetCard.h"

@interface SetCard () 

@end

@implementation SetCard

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    if (otherCards.count == 2) // in this game, only 3-cards match at a time
    {
        SetCard *c1 = self;
        SetCard *c2 = otherCards[0];
        SetCard *c3 = otherCards[1];
        
        // we have a set exactly if:
        if (
            (  // either there are three cards all of the same number:
             ((c1.number == c2.number) &&
              (c2.number == c3.number) &&
              (c1.number == c3.number))
             ||
             // or all three different numbers...
             ((c1.number != c2.number) &&
              (c2.number != c3.number) &&
              (c1.number != c3.number)
              )
             )
            &&   // AND as if that wasn't hard enough we must also have
            ( // either all three of the same symbol
             ([c1.symbol isEqualToString:c2.symbol] &&
              [c2.symbol isEqualToString:c2.symbol] &&
              [c3.symbol isEqualToString:c3.symbol])
             ||
             // or all three different symbols
             ((![c1.symbol isEqualToString:c2.symbol]) &&
              (![c2.symbol isEqualToString:c3.symbol]) &&
              (![c1.symbol isEqualToString:c3.symbol])
              )
             )
            &&  // AND ...
            ( // all same or all different shading
             ([c1.shade isEqualToString:c2.shade] &&
              [c2.shade isEqualToString:c3.shade] &&
              [c1.shade isEqualToString:c3.shade])
             ||
             ((![c1.shade isEqualToString:c2.shade]) &&
              (![c2.shade isEqualToString:c3.shade]) &&
              (![c1.shade isEqualToString:c3.shade])
              )
             )
            &&
            ( // AND all same or all different color!
             ([c1.color isEqualToString:c2.color] &&
              [c2.color isEqualToString:c3.color] &&
              [c1.color isEqualToString:c3.color])
             ||
             ((![c1.color isEqualToString:c2.color]) &&
              (![c2.color isEqualToString:c3.color]) &&
              (![c1.color isEqualToString:c3.color])
              )
             )
            ) score = 1;
    }
    return score;
}

- (NSString *)contents
{

    NSString *symbols = [NSString stringWithFormat:@""];
    for (int i = 0; i < 3; i++) {
        symbols = [symbols stringByAppendingString:self.symbol];
    }
    return [NSString stringWithFormat:@"|%@|%@|%@|",  symbols, self.shade, self.color];
}


    
+ (NSArray *)validSymbols
{
    return @[@"▲",@"●",@"■"];
}

+ (NSArray *)validShades
{
    return @[@"Solid",@"Shaded",@"Open"];
}

+ (NSArray *)validColors
{
    return @[@"Red", @"Green", @"Blue"];
}

+ (NSUInteger)maxNumber
{
    return 3;
}

@end
