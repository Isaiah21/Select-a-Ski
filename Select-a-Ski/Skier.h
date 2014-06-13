//
//  Skier.h
//  Select-a-Ski
//
//  Created by Isaiah Brandt-Sims on 5/14/14.
//  Copyright (c) 2014 Isaiah Brandt-Sims. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Skier : NSObject



@property (nonatomic) NSString* gender;
@property (nonatomic) NSInteger height;
@property (nonatomic) NSInteger weight;
@property (nonatomic) NSString* experience;
@property (nonatomic) NSString* terrain;
@property (nonatomic) NSString* turns;

-(id)initWithData:(NSDictionary*)data;




@end
