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
#import "EMDetailsViewController.h"

@interface EMViewController : UIViewController <EMDetailsDelegate>

@property (nonatomic, strong) NSMutableArray *doctors;
@property (nonatomic,strong) Doctor *doctor;

@property (weak, nonatomic) IBOutlet UIImageView *doctorsImg;
@property (weak, nonatomic) IBOutlet UILabel *doctorsName;
@property (weak, nonatomic) IBOutlet UILabel *doctorsRating;
@property (nonatomic) NSUInteger index;

- (IBAction)plusButton:(id)sender;
- (IBAction)skipButton:(id)sender;

-(void)fillTheView;

@end

