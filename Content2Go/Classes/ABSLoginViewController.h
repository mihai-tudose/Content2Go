//
//  ABSLoginViewController.h
//  Content2Go
//
//  Created by Absolute on 7/2/13.
//  Copyright (c) 2013 Absolute. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ABSLoginViewController : UIViewController
{
    IBOutlet UITextField *userField;
    IBOutlet UITextField *passwordField;
}

-(IBAction)loginPressed:(id)sender;

@end
