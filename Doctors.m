//
//  DataSource.m
//  EndorseMe
//
//  Created by Voitenko Daniil on 07.12.15.
//  Copyright © 2015 Voitenko Daniil. All rights reserved.
//

#import "Doctors.h"

@implementation Doctors

+(NSMutableArray *)setUpDoctors
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Doctors" ofType:@"plist"];
    
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    NSMutableArray *doctorsArray  = [[NSMutableArray alloc] init];
    NSArray *tempArrayN = [dict objectForKey:@"nameOfDoctor"];
    NSArray *tempArrayF = [dict objectForKey:@"faceOfDoctor"];
    NSArray *tempArrayR = [dict objectForKey:@"rating"];
    NSArray *tempArrayD = [dict objectForKey:@"details"];
    
    for (int i = 0; i < [tempArrayN count]; i++) {
        Doctor *doctor = [[Doctor alloc] initWithName:tempArrayN [i]
                                              andFace:tempArrayF [i]
                                            andRating:tempArrayR [i]
                                           andDetails:tempArrayD [i]];
        [doctorsArray addObject:doctor];
    }
    return doctorsArray;
}

@end
