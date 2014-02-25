//
//  superhero.h
//  SuperHeros
//
//  Created by student on 2/3/14.
//  Copyright (c) 2014 FVTC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Superhero : NSObject
{
    //private
    NSString *_name;
    NSString *_power;
    NSString *_secret;
}

-(id) initWithName:(NSString *) name withPower:(NSString *) power withSecret:(NSString *) secret;

    


//public
-(NSString*) Name;
-(void) SetName:(NSString*) name;

-(NSString*) Power;
-(void) SetPower:(NSString*) power;

-(NSString*) Secret;
-(void) SetSecret:(NSString*) secret;

-(NSString*) Image;

+(Superhero *) RandomSuperhero;

@end
