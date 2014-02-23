//
//  Card.h
//  Matchismo
//
//  Created by chris on 14-2-15.
//  Copyright (c) 2014年 Chris's Cool App House. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property(strong,nonatomic) NSString *contents;
@property (nonatomic) BOOL chosen;
@property (nonatomic) BOOL matched;

-(int) match:(NSArray *)otherCards;

@end
