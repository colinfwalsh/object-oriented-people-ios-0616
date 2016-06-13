//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Colin Walsh on 6/13/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"

@interface FISPerson ()

//@property (strong, readonly) NSString* name;
//@property (readwrite) NSUInteger ageInYears;
//@property (readwrite) NSUInteger heightInInches;
//@property (strong, readwrite) NSMutableArray* skills;

@end

@implementation FISPerson

- (instancetype)init{
    self = [self initWithName:@"Colin" ageInYears:26 heightInInches:72];
    return self;}

- (instancetype)initWithName:(NSString*)name ageInYears:(NSUInteger)ageInYears{
    self = [self initWithName:name ageInYears:ageInYears heightInInches:72];
    return self;}

- (instancetype)initWithName:(NSString*)name ageInYears:(NSUInteger)ageInYears heightInInches:(NSUInteger)heightInInches{
    self = [super init];
    
    if (self) {
        _skills = [[NSMutableArray alloc]init];
        _name = name;
        _ageInYears = ageInYears;
        _heightInInches = heightInInches;
    }
    return self;}

- (NSString*)celebrateBirthday{
    
    _ageInYears = _ageInYears + 1;
    
    NSString* ordinal = [self ordinalForInteger:self.ageInYears];
    
    NSString* formatedString = [NSString stringWithFormat:@"HAPPY %li%@ BIRTHDAY, %@!!!", self.ageInYears, [ordinal uppercaseString], [self.name uppercaseString]];
    
    
    
    
    NSLog(@"%@", formatedString);
    
    return formatedString;}

- (NSString *)ordinalForInteger:(NSUInteger)integer {
    NSString *ordinal = @"th";
    if (integer % 10 == 1 && integer % 100 != 11) {
        ordinal = @"st";
    } else if (integer % 10 == 2 && integer % 100 != 12) {
        ordinal = @"nd";
    } else if (integer % 10 == 3 && integer % 100 != 13) {
        ordinal = @"rd";
    }
    return ordinal;
}

- (void)learnSkillBash{
    BOOL containsString = false;
    
    for (NSString* skill in self.skills) {
        if ([@"bash" containsString:skill]) {
            containsString = true;
        }
        else {
            containsString = false;}
    }
    
    if (containsString == true) {
        return;
    }
    else {
    [self.skills addObject:@"bash"];
    }
}

//}
- (void)learnSkillXcode{
    BOOL containsString = false;
    
    for (NSString* skill in self.skills) {
        if ([@"Xcode" containsString:skill]) {
            containsString = true;
        }
        else {
            containsString = false;}
    }
    
    if (containsString == true) {
        return;
    }
    else {
        [self.skills addObject:@"Xcode"];
    }
}
- (void)learnSkillObjectiveC{
    BOOL containsString = false;
    
    for (NSString* skill in self.skills) {
        if ([@"Objective-C" containsString:skill]) {
            containsString = true;
        }
        else {
            containsString = false;}
    }
    
    if (containsString == true) {
        return;
    }
    else {
        [self.skills addObject:@"Objective-C"];
    }
}
- (void)learnSkillObjectOrientedProgramming{
    BOOL containsString = false;
    
    for (NSString* skill in self.skills) {
        if ([@"Object-Oriented Programming" containsString:skill]) {
            containsString = true;
        }
        else {
            containsString = false;}
    }
    
    if (containsString == true) {
        return;
    }
    else {
        [self.skills addObject:@"Object-Oriented Programming"];
    }
}
- (void)learnSkillInterfaceBuilder{
    BOOL containsString = false;
    
    for (NSString* skill in self.skills) {
        if ([@"Interface Builder" containsString:skill]) {
            containsString = true;
        }
        else {
            containsString = false;}
    }
    
    if (containsString == true) {
        return;
    }
    else {
        [self.skills addObject:@"Interface Builder"];
    }
}

- (BOOL)isQualifiedTutor{
    if ([self.skills count] >= 4) {
        return YES;
    }
    else {
    return NO;}
}


@end




