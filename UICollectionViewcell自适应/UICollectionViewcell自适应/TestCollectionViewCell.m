//
//  TestCollectionViewCell.m
//  UICollectionViewcell自适应
//
//  Created by 韩李涛 on 2020/11/19.
//

#import "TestCollectionViewCell.h"
#import "Masonry.h"
@implementation TestCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    self.lable = [[UILabel alloc]init];
    [self.contentView addSubview:self.lable];
    [self.lable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.offset(10);
        make.height.offset(30);
        make.right.offset(-10);
    }];
    return self;
}
@end
