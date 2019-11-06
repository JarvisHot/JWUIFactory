//
//  JWCollectionViewChainModel.m
//  JWUIFactory
//
//  Created by jarvis on 2019/11/6.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "JWCollectionViewChainModel.h"

#define  JW_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(method,paramType) JW_CHAIN_IMPLEMENTATION(method,paramType,JWCollectionViewChainModel *,UICollectionView)

@implementation JWCollectionViewChainModel

JW_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(collectionViewLayout, UICollectionViewLayout *)
JW_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(delegate, id<UICollectionViewDelegate>)
JW_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(dataSource, id<UICollectionViewDataSource>)

JW_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(allowsSelection, BOOL)
JW_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(allowsMultipleSelection, BOOL)

#pragma mark - UIScrollView
JW_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(contentSize, CGSize)
JW_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(contentOffset, CGPoint)
JW_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(contentInset, UIEdgeInsets)

JW_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(bounces, BOOL)
JW_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(alwaysBounceVertical, BOOL)
JW_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(alwaysBounceHorizontal, BOOL)

JW_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(pagingEnabled, BOOL)
JW_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(scrollEnabled, BOOL)

JW_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(showsHorizontalScrollIndicator, BOOL)
JW_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(showsVerticalScrollIndicator, BOOL)

JW_CHAIN_COLLECTIONVIEW_IMPLEMENTATION(scrollsToTop, BOOL)

@end

JW_CATEGORY_EX_IMPLEMENTATION(UICollectionView, JWCollectionViewChainModel)
