//
//  Deck.h
//  Matchismo
//
//  Created by chris on 14-2-16.
//  Copyright (c) 2014年 Chris's Cool App House. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card ;
- (Card *)drawRandomCard;


@end


