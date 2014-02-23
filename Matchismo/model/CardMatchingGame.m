//
//  CardMatchingGame.m
//  Matchismo
//
//  Created by chris on 14-2-16.
//  Copyright (c) 2014年 Chris's Cool App House. All rights reserved.
//

#import "CardMatchingGame.h"

@interface CardMatchingGame ()

@property (nonatomic,readwrite)NSUInteger score;
@property (nonatomic,strong)NSMutableArray *cards;//of Card


@end

@implementation CardMatchingGame

-(NSMutableArray *)cards{
    if (!_cards) {
        _cards = [[NSMutableArray alloc]init];
    }
    
    return _cards;

}

-(instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck
{
    self = [super init]; //super's initializer
    if(self) {
        for(int i; i < count;i++){
            Card *card = [deck drawRandomCard];
            if (card) {
                [self.cards addObject:card];
            }
            else {
                self = nil;
            }
            
            }
    
    }
    return self;
}


-(Card *)cardAtIndex:(NSUInteger)index{

    return index < self.cards.count ? self.cards[index]:nil;

}

-(void)chooseAtIndex:(NSUInteger )index{























}







@end
