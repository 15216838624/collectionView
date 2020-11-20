//
//  TestFlowLayout.m
//  UICollectionViewcell自适应
//
//  Created by 韩李涛 on 2020/11/19.
//

#import "TestFlowLayout.h"
#import <UIKit/UIKit.h>
@implementation TestFlowLayout
-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
   NSMutableArray *attributes = [[super layoutAttributesForElementsInRect:rect] mutableCopy];
    CGFloat y = 0;
    for (int i=0; i<attributes.count; i++) {
        if (i>0) {
            UICollectionViewLayoutAttributes *attr = attributes[i];
            CGRect frame = attr.frame;
            UICollectionViewLayoutAttributes *preattr = attributes[i-1];
            CGFloat x = CGRectGetMaxX(preattr.frame)+self.minimumInteritemSpacing;
            if (x+attr.frame.size.width>self.collectionView.frame.size.width) {
                x = 0;
                y = CGRectGetMaxY(preattr.frame) + self.minimumLineSpacing;
            }
            frame.origin.x = x;
            frame.origin.y = y;
            attr.frame = frame;
        }
    }
    return  attributes;
}
@end
