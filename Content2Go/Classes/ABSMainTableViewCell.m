//
//  ABSMainTableViewCell.m
//  Content2Go
//
//  Created by Absolute on 7/3/13.
//  Copyright (c) 2013 Absolute. All rights reserved.
//

#import "ABSMainTableViewCell.h"

@implementation ABSMainTableViewCell

@synthesize categoryCollectionView,categoryImage,categoryPage,categorySortSegment,categoryTitle,contentView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(IBAction)seeAllPressed:(id)sender
{
    
}

-(IBAction)orderChanged:(id)sender
{
    
}

@end
