//
//  CardGameViewController.m
//  Matchismo
//
//  Created by chris on 14-2-9.
//  Copyright (c) 2014年 Chris's Cool App House. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;

@property (strong,nonatomic) Deck* deck;
@end

@implementation CardGameViewController


-(Deck *)deck{
    if (!_deck) {
        _deck = [self createDeck];
    }

    return _deck;

}

-(Deck *)createDeck {

    return [[PlayingCardDeck alloc]init];
}

-(void)setFlipCount:(int)flipCount
{

    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"flips:%d",flipCount];
    NSLog(@"flips changed %d",self.flipCount);
    

}

- (IBAction)touchCardButton:(UIButton *)sender {

    if ([sender.currentTitle length]) {

        UIImage *cardImage = [UIImage imageNamed:@"cardBack"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];

    } else {

        Card *randomCard = [self.deck drawRandomCard];
        if (randomCard) {
            UIImage *cardImage = [UIImage imageNamed:@"cardFront"];
            [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
            [sender setTitle:randomCard.contents forState:UIControlStateNormal];
            
        }
        
    }
    
    self.flipCount++;

}

@end
