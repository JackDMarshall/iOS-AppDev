//
//  superhero.m
//  SuperHeros
//
//  Created by student on 2/3/14.
//  Copyright (c) 2014 FVTC. All rights reserved.
//

#import "superhero.h"
#import "SuperHeroStore.h"

@implementation Superhero

-(id) init
{
    self = [super init];
    //do initialize here
 
    return self;
}

-(id) initWithName:(NSString *) name withPower:(NSString *)power withSecret:(NSString *) secret
{
    self = [super init];
    
    _name = name;
    _power = power;
    _secret = secret;
    return self;
    
}

//name getter setter
-(NSString*) Name
{
    return _name;
}

-(void) SetName: (NSString*) name
{
    _name = name;
}

//power getter setter
-(NSString*) Power
{
    return _power;
}

-(void) SetPower: (NSString*) power
{
    _power = power;
}

//secret getter setter

-(NSString*) Secret
{
    return _secret;
}

-(void) SetSecret: (NSString*) secret
{
    _secret = secret;
}

-(NSString*) description
{
    NSString *temp = [NSString stringWithFormat:@"Name:%@ Power:%@ Secret:%@", _name, _power, _secret];
    
    return temp;
}

+(Superhero *) RandomSuperhero
{
    NSArray *firstNames = [[NSArray alloc] initWithObjects:@"Joe", @"Jack", @"BIll", @"Fred", nil];
    NSArray *lastNames = [[NSArray alloc ] initWithObjects:@"Parker", @"Blake", @"Cage", @"Banner", nil];
    NSArray *firstPowers = [[NSArray alloc ] initWithObjects: @"Super", @"Fire", @"Cold", @"Wind", nil];
    NSArray *lastPowers = [[NSArray alloc ] initWithObjects: @"Smash", @"Beam", @"Spit", @"Blast", nil];
    
    Superhero *tempHero = [[Superhero alloc] init];
    
    int first = rand() %4;
    int second = rand() %4;
    
    NSString *name = [[NSString alloc] initWithFormat:@"%@ %@", [firstNames objectAtIndex:first], [lastNames objectAtIndex:second]];
    
    NSString *power = [[NSString alloc] initWithFormat:@"%@ %@", [firstPowers objectAtIndex:first], [lastPowers objectAtIndex:second]];
    [tempHero SetName:name];
    [tempHero SetPower:power];
    return tempHero;
}

@end
