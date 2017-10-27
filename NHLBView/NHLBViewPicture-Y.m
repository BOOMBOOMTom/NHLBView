//
//  NHLBViewPicture-Y.m
//  NHLBView
//
//  Created by London on 2017/2/9.
//  Copyright © 2017年 NiuHu. All rights reserved.
//

#import "NHLBViewPicture-Y.h"

static NSString * const cellIDY = @"cellIDY";

@implementation NHLBViewPicture_Y

- (instancetype)initWithDelegate:(id<NHLBViewDelegate>)delegate{
    if (self = [super initWithDelegate:delegate]) {
        
    }
    return self;
}
//注册cell
-(void)registerCellForUICollectionVew:(UICollectionView *)collectionView{
    [super registerCellForUICollectionVew:collectionView];
    [collectionView registerClass:[NHLBViewPictureCell_Y class] forCellWithReuseIdentifier:cellIDY];
}
- (UICollectionViewCell *)dequeueReusableCellForCollectionView:(UICollectionView *)collectionView withIndexPath:(NSIndexPath *)indexPath{
    [super dequeueReusableCellForCollectionView:collectionView withIndexPath:indexPath];
    NHLBViewPictureCell_Y *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIDY forIndexPath:indexPath];
    return cell;
}
@end
