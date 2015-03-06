//
//  GameResultsViewController.m
//  Matchismo-Feroze
//
//  Created by Feroze Shahpurwala on 2/10/13.
//  Copyright (c) 2013 Feroze Shahpurwala. All rights reserved.
//

#import "GameResultsViewController.h"
#import "GameResult.h"

@interface GameResultsViewController ()

@property (weak, nonatomic) IBOutlet UITextView *display;

@property (strong, nonatomic) NSSortDescriptor *sort;


@end

@implementation GameResultsViewController

- (void)updateUI
{
    NSString *displayText = @"";
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"M/d/yy h:mm"];
    for (GameResult *result in [[GameResult allGameResults] sortedArrayUsingDescriptors:@[self.sort]]) {
        displayText = [displayText stringByAppendingFormat:@"Score: %d (%@, %0gs) \n", result.score, [dateFormatter stringFromDate:result.end], round(result.duration)];
        self.display.text = displayText;
        
    }
}

- (NSSortDescriptor *)sort {
    if (!_sort) _sort = [[NSSortDescriptor alloc] initWithKey:@"score" ascending:NO];
    return _sort;
    
}

- (IBAction)sortButton:(UIButton *)sender {
    if ([sender.titleLabel.text isEqualToString:@"By Date"]) {
        self.sort = [[NSSortDescriptor alloc] initWithKey:@"end" ascending:NO];
    } else if ([sender.titleLabel.text isEqualToString:@"By Score"]) {
        self.sort = [[NSSortDescriptor alloc] initWithKey:@"score" ascending:NO];
    } else if ([sender.titleLabel.text isEqualToString:@"By Duration"]) {
        self.sort = [[NSSortDescriptor alloc] initWithKey:@"duration" ascending:NO];
    } else {
        self.sort = [[NSSortDescriptor alloc] initWithKey:@"score" ascending:NO];
    }
    [self updateUI];
}


- (void) viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self updateUI];
}

- (void)setup
{
    //initialization that can't wait until viewDidLoad
}

- (void)awakeFromNib
{
    [self setup];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    [self setup];
    return self;
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view
}

-(void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
