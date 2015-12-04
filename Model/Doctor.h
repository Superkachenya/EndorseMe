//
//  Doctor.h
//  Doctors
//
//  Created by Voitenko Daniil on 01.12.15.
//  Copyright © 2015 Voitenko Daniil. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *nameOfDoctor;
@property (nonatomic, strong) NSString *faceOfDoctor;
@property (nonatomic) NSNumber *rating;

-(instancetype)initWithName:(NSString *)name andFace:(NSString *)face andRating:(NSNumber *)rating;

@end
