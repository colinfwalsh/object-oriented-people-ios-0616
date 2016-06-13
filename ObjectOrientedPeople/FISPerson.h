//
//  FISPerson.h
//  ObjectOrientedPeople
//
//  Created by Colin Walsh on 6/13/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISPerson : NSObject

@property (strong, readonly) NSString* name;
@property (readonly) NSUInteger ageInYears;
@property (readonly) NSUInteger heightInInches;
@property (strong, readonly) NSMutableArray* skills;

- (instancetype)init;
- (instancetype)initWithName:(NSString*)name ageInYears:(NSUInteger)ageInYears;
- (instancetype)initWithName:(NSString*)name ageInYears:(NSUInteger)ageInYears heightInInches:(NSUInteger)heightInInches;

- (NSString*)celebrateBirthday;
- (NSString *)ordinalForInteger:(NSUInteger)integer;
- (void)learnSkillBash;
- (void)learnSkillXcode;
- (void)learnSkillObjectiveC;
- (void)learnSkillObjectOrientedProgramming;
- (void)learnSkillInterfaceBuilder;
- (BOOL)isQualifiedTutor;

@end



