//
//  ABSMainCollectionCell.m
//  Content2Go
//
//  Created by Absolute on 7/3/13.
//  Copyright (c) 2013 Absolute. All rights reserved.
//

#import "ABSMainCollectionCell.h"

@implementation ABSMainCollectionCell

@synthesize previewImage,favourite,fileTitle,fileType,fileVersion,fileNumber;

-(void)setFavourite:(BOOL)fav
{
    favouriteImage.hidden = fav;
    favourite = fav;
}

-(void)setFileNumber:(int)fileNr
{
    if(fileNr)
    {
        fileNumberLabel.text = [NSString stringWithFormat:@"%i", fileNr];
        fileNumberLabel.hidden = FALSE;
    }
    else
    {
        fileNumberLabel.hidden = TRUE;
    }
    
    fileNumber = fileNr;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
