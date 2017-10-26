//
//  ViewController.m
//  CollectionViewBug
//
//  Created by Mauricio de Meirelles on 10/4/17.
//  Copyright © 2017 Mauricio de Meirelles. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                 cellForItemAtIndexPath:(NSIndexPath *)indexPath {

    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier: @"cell"
                                                                            forIndexPath: indexPath];
    cell.backgroundColor = [UIColor whiteColor];
    return cell;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 5;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView
    numberOfItemsInSection:(NSInteger)section {
    return 2;
}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView
          viewForSupplementaryElementOfKind:(NSString *)kind
                                atIndexPath:(NSIndexPath *)indexPath {
    UICollectionReusableView * view = [collectionView dequeueReusableSupplementaryViewOfKind: UICollectionElementKindSectionHeader
                                                                         withReuseIdentifier: @"cell2"
                                                                                forIndexPath: indexPath];
    view.backgroundColor = [UIColor redColor];
    return view;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    // Here is a workaround that positions the visible headers below the scroll indicator.
    
    for (UICollectionReusableView *header in [self.collectionView visibleSupplementaryViewsOfKind:UICollectionElementKindSectionHeader]) {
        header.layer.zPosition = 0;
    }
}

@end
