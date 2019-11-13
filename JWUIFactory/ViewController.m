//
//  ViewController.m
//  JWUIFactory
//
//  Created by jarvis on 2019/11/1.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "ViewController.h"
#import "JWUIFactory.h"
#import <Masonry/Masonry.h>
@interface ViewController ()<UIScrollViewDelegate,UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   UIView.create(10).frame(CGRectMake(20, 100, 100, 30)).backgroundColor([UIColor yellowColor]).addToSuperView(self.view).makeMasonry(^(MASConstraintMaker * _Nonnull make) {
       make.left.equalTo(self.view).with.offset(20);
       make.top.equalTo(self.view).with.offset(40);
       make.right.equalTo(self.view).with.offset(-20);
       make.height.mas_equalTo(60);
    });
    UIButtonMakeChain(2, UIButtonTypeCustom).frame(CGRectMake(30, 200, 100, 30)).text(@"点我啊", UIControlStateNormal).textColor([UIColor redColor], UIControlStateNormal).addToSuperView(self.view).click(UIControlEventTouchUpInside, ^(id  _Nonnull sender) {
        NSLog(@"sender-----%@",sender);
    });
    UIImageView.create(11).animationImages(@[[UIImage imageNamed:@"timg0"],[UIImage imageNamed:@"timg1"],[UIImage imageNamed:@"timg2"],[UIImage imageNamed:@"timg3"],[UIImage imageNamed:@"timg4"],[UIImage imageNamed:@"timg5"],[UIImage imageNamed:@"timg6"]]).animationDuration(1).animationRepeatCount(0).frame(CGRectMake(20, 250, 100, 50)).addToSuperView(self.view).backgroundColor([UIColor redColor]).startAnimating();
    UILabel.create(12).frame(CGRectMake(0, 0, 10, 10)).text(@"我是label").textColor(UIColor.yellowColor).font([UIFont systemFontOfSize:30]).addToSuperView(self.view);
    UITextField.create(13).frame(CGRectMake(20, 310, 100, 20)).placeholder(@"我是占位符").textColor(UIColor.redColor).eventBlock(UIControlEventEditingChanged, ^(UITextField*  _Nonnull sender) {
        NSLog(@"textfield.text----%@",sender.text);
    }).addToSuperView(self.view);
    UIScrollView.create(14).frame(CGRectMake(0, 340, 300, 200)).contentSize(CGSizeMake(0, 300)).addToSuperView(self.view).delegate(self).backgroundColor(UIColor.yellowColor);
    UITableView.create(1, UITableViewStyleGrouped).addToSuperView(self.view).makeMasonry(^(MASConstraintMaker * _Nonnull make) {
        make.edges.equalTo(self.view);
    }).delegate(self).dataSource(self).rowHeight(45).sectionHeaderHeight(130).sectionFooterHeight(200).addToSuperView(self.view);
    UICollectionViewFlowLayout *flowLayout = [UICollectionViewFlowLayout new];
    flowLayout.minimumLineSpacing = 10;
    flowLayout.minimumInteritemSpacing =10;
    UICollectionView *collection = UICollectionView.create(11,flowLayout).delegate(self).dataSource(self).addToSuperView(self.view).makeMasonry(^(MASConstraintMaker * _Nonnull make) {
        make.edges.equalTo(self.view);
        
    }).bounces(YES).scrollEnabled(YES).registerCellClass([UICollectionViewCell class],@"cell").view;
//    [collection registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cell"];
    // Do any additional setup after loading the view.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell1"];
    cell.backgroundColor = [UIColor purpleColor];
    return cell;
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"scroll------%f",scrollView.contentOffset.y);
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 2;
}
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(5, 10, 5, 10);
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if (section==0) {
        return 6;
    }
    return 1;
}
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor yellowColor];
    return cell;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(UIScreen.mainScreen.bounds.size.width/2-15, UIScreen.mainScreen.bounds.size.width/2-15);
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeMake(UIScreen.mainScreen.bounds.size.width, 20);
}

@end
