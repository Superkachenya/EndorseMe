//
//  Doctor.m
//  Doctors
//
//  Created by Voitenko Daniil on 01.12.15.
//  Copyright © 2015 Voitenko Daniil. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

-(instancetype)initWithName:(NSString *)name andFace:(NSString *)face andRating: (NSNumber *)rating andDetails:(NSString *)details
{
    self = [super init];
    if (self) {
        _nameOfDoctor = name;
        _faceOfDoctor = face;
        _rating = rating;
        _details = details;
    }
    return self;
}

@end
