//
//  SuperHeroStore.h
//  SuperHeroStore
//
//  Created by student on 2/24/14.
//  Copyright (c) 2014 student. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "superhero.h"

@interface SuperHeroStore : NSObject
{
    NSMutableArray *_superHeroes;
}

+ (SuperHeroStore *) SharedStore;

-(void) AddSuperHero:(Superhero *) superhero;
-(Superhero *) SuperHeroAtIndex:(NSInteger) index;
-(NSInteger) Count;
@end
