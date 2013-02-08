//
//  cardViewController.m
//  Mathismo-Feroze
//
//  Created by Feroze Shahpurwala on 1/28/13.
//  Copyright (c) 2013 Feroze Shahpurwala. All rights reserved.
//

#import "cardViewController.h"
#import "Card.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"
#import "CardMatchGame.h"

@interface cardViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (strong, nonatomic) CardMatchGame *game;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UIButton *dealButton;
@property (weak, nonatomic) IBOutlet UISegmentedControl *mode;
@property (nonatomic) NSUInteger modeNum;

@end

@implementation cardViewController


- (CardMatchGame *)game
{
    if (!_game) _game = [[CardMatchGame alloc] initWithCardCount:self.cardButtons.count usingDeck:[[PlayingCardDeck alloc] init]];
    return _game;
}

- (IBAction)dealButton:(id)sender {
    self.game = [[CardMatchGame alloc] initWithCardCount:self.cardButtons.count usingDeck:[[PlayingCardDeck alloc] init]];
    self.flipCount = 0;
    [self updateUI];
}

- (IBAction)mode:(UISegmentedControl *)sender {
    self.modeNum = sender.selectedSegmentIndex;
}




-(void)setCardButtons: (NSArray *)cardButtons
{
    _cardButtons = cardButtons;
    [self updateUI];
    
}

- (void)updateUI
{
    for (UIButton *cardButton in self.cardButtons) {
        Card *card = [self.game cardAtIndex:[self.cardButtons indexOfObject:cardButton]];
        [cardButton setTitle:card.contents forState:UIControlStateSelected];
        [cardButton setTitle:card.contents forState:UIControlStateSelected | UIControlStateDisabled];
        cardButton.selected = card.isFaceUp;
        cardButton.enabled = !card.isUnplayable;
        cardButton.alpha = card.isUnplayable ? 0.3 : 1.0;
    }
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", self.game.score];
    self.resultLabel.text = self.game.resultsContent;
    
}
                             
- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}

- (IBAction)flipCard:(UIButton *)sender {
   
    [self.game flipCardAtIndex:[self.cardButtons indexOfObject:sender] inMode:self.modeNum];
     self.flipCount++;
    [self updateUI];
   }





@end
