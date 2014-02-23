//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by chris on 14-2-16.
//  Copyright (c) 2014年 Chris's Cool App House. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "Deck.h"

@interface CardMatchingGame : NSObject


//designed initializer
-(instancetype)initWithCardCount:(NSUInteger)count usingDeck:(Deck *)deck;
-(void)chooseAtIndex:(NSUInteger )index;
-(Card *)cardAtIndex:(NSUInteger)index;

@property (nonatomic,readonly) NSUInteger score;


@end
