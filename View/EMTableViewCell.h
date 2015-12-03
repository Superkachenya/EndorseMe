//
//  EMTableViewCell.h
//  EndorseMe
//
//  Created by Voitenko Daniil on 03.12.15.
//  Copyright © 2015 Voitenko Daniil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EMTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *doctorsFace;
@property (weak, nonatomic) IBOutlet UILabel *doctorsName;
@property (weak, nonatomic) IBOutlet UILabel *doctorsRating;

@end
