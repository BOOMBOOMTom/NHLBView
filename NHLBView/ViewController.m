//
//  ViewController.m
//  NHLBView
//
//  Created by niuhu on 17/2/8.
//  Copyright © 2017年 NiuHu. All rights reserved.
//

#import "ViewController.h"
#import "NHLBViewPicture.h"
#import "NHLBViewPicture-Y.h"
@interface ViewController ()<NHLBViewDelegate>
@property (nonatomic,strong)NHLBViewPicture   * lbViewPicture;
@property (nonatomic,strong)NHLBViewPicture_Y * lbViewPicture_Y;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //横向滚定
    _lbViewPicture = [[NHLBViewPicture alloc]initWithDelegate:self];
    _lbViewPicture.frame = CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width, 200);
    _lbViewPicture.scrollType = UICollectionViewScrollDirectionHorizontal;
    [self.view addSubview:_lbViewPicture];
    //纵向滚动
    _lbViewPicture_Y = [[NHLBViewPicture_Y alloc]initWithDelegate:self];
    _lbViewPicture_Y.frame = CGRectMake(0, 290, [UIScreen mainScreen].bounds.size.width, 200);
    _lbViewPicture_Y.scrollType = UICollectionViewScrollDirectionVertical;
    [self.view addSubview:_lbViewPicture_Y];
}
#pragma mark NHLBViewDelegate
//cell内容
- (void)lbView:(NHLBView *)lbView setCell:(UICollectionViewCell *)cell withIndexPath:(NSInteger)indexPath{
    
    if (lbView == _lbViewPicture) {
        NHLBViewPictureCell *lbViewPictureCell = (NHLBViewPictureCell *)cell;
        lbViewPictureCell.textLabel.text = [NSString stringWithFormat:@"第%ld页",indexPath];
        if (indexPath % 2 ==0) {
            lbViewPictureCell.imageView.image = [UIImage imageNamed:@"1"];
        }else{
            lbViewPictureCell.imageView.image = [UIImage imageNamed:@"2"];
        }
        
    }else{
        NHLBViewPictureCell_Y *lbViewPictureCell_Y = (NHLBViewPictureCell_Y *)cell;
        lbViewPictureCell_Y.textLabel.text = [NSString stringWithFormat:@"第%ld页",indexPath];
        if (indexPath % 2 ==0) {
            lbViewPictureCell_Y.imageView.image = [UIImage imageNamed:@"1"];
        }else{
            lbViewPictureCell_Y.imageView.image = [UIImage imageNamed:@"2"];
        }
    }
}
//页数
- (NSInteger)numberOfCellInEveryCollectionView{
    return 5;
}
//间隔时间
- (NSInteger)returnPageControlScrollTime{
    return 1;
}
//点击响应
- (void)didSelectItemAtIndexPath:(NSInteger)indexPath{
    NSLog(@"点击了第%ld个",indexPath-1);
    /*
        此处可以跳转页面 或者 广告网页 之类的
     */
}
@end
