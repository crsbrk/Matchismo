//
//  Card.m
//  Matchismo
//
//  Created by chris on 14-2-15.
//  Copyright (c) 2014年 Chris's Cool App House. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card


-(int) match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card  in otherCards) {
    
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        } else {
            
        }
        
    }
    return score;
}


@end
