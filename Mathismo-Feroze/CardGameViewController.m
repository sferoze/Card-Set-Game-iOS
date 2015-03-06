//
//  cardViewController.m
//  Mathismo-Feroze
//
//  Created by Feroze Shahpurwala on 1/28/13.
//  Copyright (c) 2013 Feroze Shahpurwala. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchGame.h"
#import "GameResult.h"
#import "PlayingCard.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (strong, nonatomic) CardMatchGame *game;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UIButton *dealButton;
@property (weak, nonatomic) IBOutlet UISegmentedControl *mode;
@property (nonatomic) NSUInteger modeNum;
@property (strong, nonatomic) GameResult *gameResult;

@end

@implementation CardGameViewController

- (GameResult *)gameResult
{
    if (!_gameResult) _gameResult = [[GameResult alloc] init];
    return _gameResult;
}

- (CardMatchGame *)game
{
    if (!_game) _game = [[CardMatchGame alloc] initWithCardCount:self.cardButtons.count usingDeck:[[PlayingCardDeck alloc] init]];
    return _game;
}

- (IBAction)dealButton:(id)sender {
    self.game = nil;
    self.gameResult = nil;
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
        if (!cardButton.isSelected) {
            UIImage *cardBackImage = [UIImage imageNamed:@"cardback.png"];
            [cardButton setImage:cardBackImage forState:UIControlStateNormal];
            [cardButton setImageEdgeInsets: UIEdgeInsetsMake(4, 4, 4, 4)];
        } else [cardButton setImage:nil forState:UIControlStateNormal];
    }
    
    self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", self.game.totalScore];
    
    // Update the label with the current matchresult
    self.resultLabel.text = @"";
    if (self.game.result) {
        if ([self.game.result isEqualToString:@"Flipped_up"]) {
            PlayingCard *card = (PlayingCard *)[self.game.resultCards lastObject];
            self.resultLabel.text = [NSString stringWithFormat:@"Flipped up %@", card.contents];
        } else if ([self.game.result isEqualToString:@"Flipped_back"]) {
            PlayingCard *card = (PlayingCard*)[self.game.resultCards lastObject];
            self.resultLabel.text = [NSString stringWithFormat:@"Flipped back %@", card.contents];
        } else {
            NSString *matchResult = [[NSString alloc] initWithString:[self.game.resultCards componentsJoinedByString:@", "]];
            if ([self.game.result isEqualToString:@"Match"]) {
                matchResult = [matchResult stringByAppendingString:[NSString stringWithFormat:@": match, %d points bonus!",self.game.lastScore]];
            } else if ([self.game.result isEqualToString:@"No_match"]) {
                matchResult = [matchResult stringByAppendingString:[NSString stringWithFormat:@":  no match, %d points penalty!",self.game.lastScore]];
            } else {
                self.resultLabel.text = @"";
            }
            
            self.resultLabel.text = matchResult;
        }
    }

    
}
                             
- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    if (flipCount) {
        self.mode.enabled = NO;
    } else {
        self.mode.enabled = YES;
    }
    
}

- (IBAction)flipCard:(UIButton *)sender {
   
    [self.game flipCardAtIndex:[self.cardButtons indexOfObject:sender] inMode:self.modeNum];
     self.flipCount++;
    [self updateUI];
    self.gameResult.score = self.game.totalScore;
   }





@end
