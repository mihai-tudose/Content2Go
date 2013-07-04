//
//  ABSMainTableViewCell.h
//  Content2Go
//
//  Created by Absolute on 7/3/13.
//  Copyright (c) 2013 Absolute. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ABSMainTableViewCell : UITableViewCell

@property(strong, nonatomic) IBOutlet UIImageView *categoryImage;
@property(strong, nonatomic) IBOutlet UILabel *categoryTitle;
@property(strong, nonatomic) IBOutlet UISegmentedControl *categorySortSegment;
@property(strong, nonatomic) IBOutlet UIPageControl *categoryPage;
@property(strong, nonatomic) IBOutlet UICollectionView *categoryCollectionView;

-(IBAction)seeAllPressed:(id)sender;
-(IBAction)orderChanged:(id)sender;

@end
