//
//  PlayingCard.h
//  Matchismo
//
//  Created by chris on 14-2-16.
//  Copyright (c) 2014年 Chris's Cool App House. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"



@interface PlayingCard : NSObject

@property (strong,nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;


+(NSArray *)validSuits;
+(NSUInteger)maxRank;
@end
