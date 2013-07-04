//
//  ABSLoginViewController.m
//  Content2Go
//
//  Created by Absolute on 7/2/13.
//  Copyright (c) 2013 Absolute. All rights reserved.
//

#import "ABSLoginViewController.h"
#import "ABSMainViewController.h"

@interface ABSLoginViewController ()

@end

@implementation ABSLoginViewController

-(IBAction)loginPressed:(id)sender
{
    if(!userField.text.length)
    {
        [[[UIAlertView alloc]initWithTitle:@"Login" message:@"Please enter your username" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil]show];
    }
    else if(!passwordField.text.length)
    {
        [[[UIAlertView alloc]initWithTitle:@"Login" message:@"Please enter your password" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil]show];
    }
    else
    {
        ABSMainViewController *mainViewController = [[UIStoryboard storyboardWithName:@"MainStoryboard" bundle:[NSBundle mainBundle]] instantiateViewControllerWithIdentifier:@"ABSMainViewController"];
        [self.navigationController pushViewController:mainViewController animated:YES];
    }
}

#pragma mark - life cycle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
