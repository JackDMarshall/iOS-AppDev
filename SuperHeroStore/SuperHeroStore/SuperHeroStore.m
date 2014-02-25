//
//  SuperHeroStore.m
//  SuperHeroStore
//
//  Created by student on 2/24/14.
//  Copyright (c) 2014 student. All rights reserved.
//

#import "SuperHeroStore.h"


@implementation SuperHeroStore

-(id) init
{
    self = [super init];
    if (self) {
        _superHeroes = [[NSMutableArray alloc] init];
        
        [_superHeroes addObject:[Superhero RandomSuperhero]];
        [_superHeroes addObject:[Superhero RandomSuperhero]];
        [_superHeroes addObject:[Superhero RandomSuperhero]];
        [_superHeroes addObject:[Superhero RandomSuperhero]];
        [_superHeroes addObject:[Superhero RandomSuperhero]];
        [_superHeroes addObject:[Superhero RandomSuperhero]];
     
        NSLog(@"Instantiating test heroes: %@", _superHeroes);
    }
    
    
    return self;
}


+ (SuperHeroStore *) SharedStore
{
    static SuperHeroStore *sharedStore = nil;
    if (!sharedStore) {
        sharedStore = [[super allocWithZone:nil] init];
    }
    return sharedStore;
}

-(void) AddSuperHero:(Superhero *) superhero;
{
    [_superHeroes addObject:superhero];
}

-(Superhero *) SuperHeroAtIndex:(NSInteger) index;
{
    return [_superHeroes objectAtIndex:index];
}

-(NSInteger) Count;
{
    return [_superHeroes count];
}

@end
