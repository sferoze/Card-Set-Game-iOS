//
//  SetGameViewController.m
//  Matchismo-Feroze
//
//  Created by Feroze Shahpurwala on 2/12/13.
//  Copyright (c) 2013 Feroze Shahpurwala. All rights reserved.
//

#import "SetGameViewController.h"
#import "GameResult.h"
#import "SetCardDeck.h"
#import "SetCard.h"
#import "CardMatchGame.h"



@interface SetGameViewController ()

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (strong, nonatomic) CardMatchGame *game;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UIButton *dealButton;
@property (strong, nonatomic) GameResult *gameResult;

@end

@implementation SetGameViewController

- (GameResult *)gameResult
{
    if (!_gameResult) _gameResult = [[GameResult alloc] init];
    return _gameResult;
}

- (CardMatchGame *)game
{
    if (!_game) _game = [[CardMatchGame alloc] initWithCardCount:self.cardButtons.count usingDeck:[[SetCardDeck alloc] init]];
    return _game;
}

- (NSMutableAttributedString *)attributedContents: (SetCard *)card
{
    NSString *symbols = @"";
    for (int i = 1; i <= card.number; i++){
        symbols = [symbols stringByAppendingString:card.symbol];
    }
    NSDictionary *attributes = @{NSStrokeColorAttributeName : [self displayColor: card], NSForegroundColorAttributeName : [self shadeColor: card], NSStrokeWidthAttributeName : @-4, NSFontAttributeName : [UIFont fontWithName:@"Helvetica" size: 13.5] };
    
    return [[NSMutableAttributedString alloc] initWithString:symbols attributes:attributes];
}

- (UIColor *)shadeColor: (SetCard *)card
{
    UIColor *shadeColor = nil;
    NSDictionary *shadedColorMappings = @{ @"Red"   : [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.1], @"Green" : [UIColor colorWithRed:0.0 green:1.0 blue:0.0 alpha:0.2], @"Blue"  : [UIColor colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.1] };
    
    if ([card.shade isEqualToString:@"Solid"]) {
        shadeColor = [self displayColor: card];
    } else if ([card.shade isEqualToString:@"Shaded"]) {
        shadeColor = [shadedColorMappings objectForKey:card.color];
    } else if ([card.shade isEqualToString:@"Open"]) {
        shadeColor = [UIColor colorWithWhite:0.0 alpha:0.0];
    }
    return shadeColor;
    
}


- (UIColor *)displayColor: (SetCard *)card
{
    NSDictionary *colorMappings = @{@"Red" : [UIColor redColor], @"Green" : [UIColor greenColor], @"Blue" : [UIColor blueColor]};
    return [colorMappings objectForKey:card.color] ? [colorMappings objectForKey:card.color] : [UIColor blackColor];
}


- (IBAction)dealButton:(UIButton *)sender {
    self.game = nil;
    self.gameResult = nil;
    
    [self updateUI];
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
        [cardButton setAttributedTitle:[self attributedContents:(SetCard *)card] forState: UIControlStateNormal];
        [cardButton setAttributedTitle:[self attributedContents:(SetCard *) card] forState:UIControlStateSelected];
        cardButton.selected = card.isFaceUp;
        cardButton.enabled = !card.isUnplayable;
        cardButton.alpha = card.isUnplayable ? 0.35 : 1.0;
        if (cardButton.selected) {
        [cardButton setBackgroundColor:[[UIColor lightGrayColor] colorWithAlphaComponent:0.2]];
        } else {[cardButton setBackgroundColor:[[UIColor whiteColor] colorWithAlphaComponent:0.0]]; }
        
    }
    
   // self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", self.game.score];
     /*   NSMutableAttributedString *lastCards = [[NSMutableAttributedString alloc] initWithString:self.game.result];
    for (SetCard *setCard in self.game.resultCards) {
        lastCards = [lastCards appendAttributedString:[self attributedContents:setCard]];
    }*/
    
    NSMutableAttributedString *result = [[NSMutableAttributedString alloc] initWithString:@""];
    if ([self.game.result isEqualToString:@"Flipped_up"]) {
        SetCard *card = (SetCard*)[self.game.resultCards lastObject];
        [result appendAttributedString:[[NSAttributedString alloc] initWithString:@"Flipped up "]];
        [result appendAttributedString:[self attributedContents:card]];
    }
    
    if ([self.game.result isEqualToString:@"No_match"]) {
        [result appendAttributedString:[[NSAttributedString alloc] initWithString:@"No Match "]];
        SetCard *setCard = self.game.resultCards[0];
            [result appendAttributedString:[self attributedContents:setCard]];
            for (int i = 1; i < [self.game.resultCards count]; i++) {
                SetCard *card = self.game.resultCards[i];
                [result appendAttributedString:[SetGameViewController attributedResultSeparator]];
                [result appendAttributedString:[self attributedContents:card]];
            
            }
    }
    
    if ([self.game.result isEqualToString:@"Match"]) {
        [result appendAttributedString:[[NSAttributedString alloc] initWithString:@"Matched: "]];
        SetCard *setCard = self.game.resultCards[0];
        [result appendAttributedString:[self attributedContents:setCard]];
        for (int i = 1; i < [self.game.resultCards count]; i++) {
            SetCard *card = self.game.resultCards[i];
            [result appendAttributedString:[SetGameViewController attributedResultSeparator]];
            [result appendAttributedString:[self attributedContents:card]];
            
        }
    }
    
    self.resultLabel.attributedText = result;
    //self.resultLabel.textAlignment = NSTextAlignmentCenter;
    
}

+(NSAttributedString *)attributedResultSeparator
{
    return [[NSAttributedString alloc] initWithString:@" &"];
}

- (IBAction)flipCard:(UIButton *)sender {
    
    [self.game flipCardAtIndex:[self.cardButtons indexOfObject:sender] inMode:1];
    [self updateUI];
}







- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
