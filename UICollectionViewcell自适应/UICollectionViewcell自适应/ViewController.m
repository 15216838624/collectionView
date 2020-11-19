//
//  ViewController.m
//  UICollectionViewcell自适应
//
//  Created by 韩李涛 on 2020/11/19.
//

#import "ViewController.h"
#import "TestCollectionViewCell.h"
#import "TestFlowLayout.h"
@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    UICollectionViewFlowLayout *flowout = [[TestFlowLayout alloc]init];
    flowout.estimatedItemSize = CGSizeMake(40, 40);
    flowout.itemSize  = UICollectionViewFlowLayoutAutomaticSize;
    flowout.minimumLineSpacing = 10;
    flowout.minimumInteritemSpacing =10;
    UICollectionView *collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(10, 50, self.view.bounds.size.width-20, self.view.bounds.size.height) collectionViewLayout:flowout];
    [self.view addSubview:collectionView];
    collectionView.contentInsetAdjustmentBehavior =  UIScrollViewContentInsetAdjustmentNever;
    collectionView.backgroundColor = [UIColor redColor];
    collectionView.dataSource = self;
    collectionView.delegate = self;
    [collectionView registerClass:[TestCollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    
}
- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
   TestCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    NSArray *arr = @[@"测试hhhhh",@"测试hhh测jjjjjj试",@"测试测试测hhh试",@"测hhh试测试测试测试",@"测试一hh下测试一下测试一下",@"测试啊"];
    
    
    cell.lable.text = arr[indexPath.item];
    cell.backgroundColor = [UIColor yellowColor];
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 6;
}
@end
