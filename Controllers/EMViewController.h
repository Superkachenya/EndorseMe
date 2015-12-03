//
//  ViewController.h
//  EndorseMe
//
//  Created by Voitenko Daniil on 02.12.15.
//  Copyright © 2015 Voitenko Daniil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Doctor.h"
#import "EMTableViewController.h"

@interface EMViewController : UIViewController 

@property (nonatomic, strong) NSMutableArray *doctors;
@property (nonatomic,strong) Doctor *doctor;



@end

