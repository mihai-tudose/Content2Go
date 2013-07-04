//
//  ABSMainViewController.m
//  Content2Go
//
//  Created by Absolute on 7/3/13.
//  Copyright (c) 2013 Absolute. All rights reserved.
//

#define cellHeightLandscape 436
#define cellHeightPortrait 306

#define collectionCellHeight 120
#define collectionCellWidhtLandscape 336
#define collectionCellWidhtPortrait 379

#import "ABSMainViewController.h"
#import "ABSMainCollectionCell.h"
#import "ABSMainTableViewCell.h"

@interface ABSMainViewController ()<UITableViewDelegate,
                                    UITableViewDataSource,
                                    UICollectionViewDelegate,
                                    UICollectionViewDataSource,
                                    UICollectionViewDelegateFlowLayout>
{
    UIInterfaceOrientation currentOrientation;
    IBOutlet UITableView *mainTableView;
}

@end

@implementation ABSMainViewController

#pragma mark - tableVew

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ABSMainTableViewCell *cell = (ABSMainTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"ABSMainTableViewCell"];
    
    UICollectionView *collection = cell.categoryCollectionView;
    
    [collection setContentOffset:CGPointZero];
    collection.tag = indexPath.row;

    if([collection indexPathsForVisibleItems].count)
        [collection  reloadItemsAtIndexPaths:[collection indexPathsForVisibleItems]];
    else
        [self performSelector:@selector(reloadVisibleForCollection:) withObject:collection afterDelay:0.01];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if((currentOrientation == UIInterfaceOrientationLandscapeLeft || currentOrientation == UIInterfaceOrientationLandscapeRight))
    {
        return cellHeightLandscape;
    }
    
    return cellHeightPortrait;
}

#pragma mark - collectionView

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 80;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ABSMainCollectionCell *cell = (ABSMainCollectionCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"ABSMainCollectionCell" forIndexPath:indexPath];
    cell.fileVersion.text = [NSString stringWithFormat:@"%i", indexPath.row];
    cell.fileType.text = [NSString stringWithFormat:@"%i", indexPath.section];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{   
    if(currentOrientation == UIInterfaceOrientationLandscapeLeft || currentOrientation == UIInterfaceOrientationLandscapeRight)
        return CGSizeMake(collectionCellWidhtLandscape, collectionCellHeight);
    
    return CGSizeMake(collectionCellWidhtPortrait, collectionCellHeight);
}

-(void)reloadVisibleForCollection:(UICollectionView *)collection
{
//    [collection reloadData];
    [collection  reloadItemsAtIndexPaths:[collection indexPathsForVisibleItems]];
}

#pragma mark - rotation

-(void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
//    UIInterfaceOrientation interfaceOrientation = [[UIApplication sharedApplication] statusBarOrientation];
//    
//    if(((interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight)&&
//        (fromInterfaceOrientation == UIInterfaceOrientationLandscapeLeft || fromInterfaceOrientation == UIInterfaceOrientationLandscapeRight)) ||
//       ((interfaceOrientation == UIInterfaceOrientationPortrait || interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown)&&
//        (fromInterfaceOrientation == UIInterfaceOrientationPortrait || fromInterfaceOrientation == UIInterfaceOrientationPortraitUpsideDown)))
//            return;
//
//    [mainTableView reloadRowsAtIndexPaths:[mainTableView indexPathsForVisibleRows] withRowAnimation:UITableViewRowAnimationNone];
    CGSize content = mainTableView.contentSize;
    content.width = mainTableView.frame.size.width;
    [mainTableView setContentSize:content];
}

-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    UIInterfaceOrientation interfaceOrientation = currentOrientation;
    currentOrientation = toInterfaceOrientation;
    
    if(((interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight)&&
        (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft || toInterfaceOrientation == UIInterfaceOrientationLandscapeRight)) ||
       ((interfaceOrientation == UIInterfaceOrientationPortrait || interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown)&&
        (toInterfaceOrientation == UIInterfaceOrientationPortrait || toInterfaceOrientation == UIInterfaceOrientationPortraitUpsideDown)))
        return;
    
//    [mainTableView reloadData];
    [mainTableView reloadRowsAtIndexPaths:[mainTableView indexPathsForVisibleRows] withRowAnimation:UITableViewRowAnimationNone];
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
    currentOrientation = [[UIApplication sharedApplication] statusBarOrientation];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
