//
//  ABSMainCollectionCell.h
//  Content2Go
//
//  Created by Absolute on 7/3/13.
//  Copyright (c) 2013 Absolute. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ABSMainCollectionCell : UICollectionViewCell
{
    IBOutlet UIImageView *favouriteImage;
    IBOutlet UILabel *fileNumberLabel;
    UIWebView *tempPreview;
}

@property(strong, nonatomic) IBOutlet UIImageView *previewImage;
@property(strong, nonatomic) IBOutlet UILabel *fileTitle;
@property(strong, nonatomic) IBOutlet UILabel *fileType;
@property(strong, nonatomic) IBOutlet UILabel *fileVersion;
@property(nonatomic) BOOL favourite;
@property(nonatomic) int fileNumber;


@end
