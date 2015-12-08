//
//  EMDetailsViewController.h
//  EndorseMe
//
//  Created by Voitenko Daniil on 06.12.15.
//  Copyright © 2015 Voitenko Daniil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Doctor.h"

@protocol EMDetailsDelegate <NSObject>

-(void)detailsViewcontrollerDismissedWithIndex:(NSUInteger)index;

@end

@interface EMDetailsViewController : UIViewController

@property (nonatomic, strong) NSMutableArray *doctors;
@property (nonatomic,strong) Doctor *doctor;

@property (weak, nonatomic) IBOutlet UIImageView *doctorsImg;
@property (weak, nonatomic) IBOutlet UILabel *doctorsName;
@property (weak, nonatomic) IBOutlet UILabel *doctorsRating;
@property (weak, nonatomic) IBOutlet UITextView *doctorsDetails;
@property (nonatomic) NSUInteger index;
@property (nonatomic, weak) id<EMDetailsDelegate>delegate;


@end
