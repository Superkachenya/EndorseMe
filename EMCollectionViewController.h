//
//  EMCollectionViewController.h
//  EndorseMe
//
//  Created by Voitenko Daniil on 14.12.15.
//  Copyright © 2015 Voitenko Daniil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Doctor.h"
#import "EMCollectionViewCell.h"

@interface EMCollectionViewController : UICollectionViewController

@property (nonatomic, strong) NSMutableArray *doctors;
@property (nonatomic,strong) Doctor *doctor;

@end
