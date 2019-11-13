//
//  JWCollectionViewChainModel.m
//  JWUIFactory
//
//  Created by jarvis on 2019/11/6.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "JWCollectionViewChainModel.h"
#import "UIScrollView+JWCategort.h"

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

- (JWCollectionViewChainModel * _Nonnull (^)(UINib * _Nonnull, NSString * _Nonnull))registerCellNib{
    return ^ (UINib *nib, NSString *identifier){
        [(UICollectionView *)self.view registerNib:nib forCellWithReuseIdentifier:identifier];
        return self;
    };
}

- (JWCollectionViewChainModel * _Nonnull (^)(Class  _Nonnull __unsafe_unretained, NSString * _Nonnull))registerCellClass{
    return ^ (Class class, NSString *identifier){
        [(UICollectionView *)self.view registerClass:class forCellWithReuseIdentifier:identifier];
        return self;
    };
}

- (JWCollectionViewChainModel * _Nonnull (^)(Class  _Nonnull __unsafe_unretained, NSString * _Nonnull, NSString * _Nonnull))registerViewClass{
    return ^ (Class class, NSString *identifier, NSString *kind){
        [(UICollectionView *)self.view registerClass:class forSupplementaryViewOfKind:kind withReuseIdentifier:identifier];
        return self;
    };
}
- (JWCollectionViewChainModel * _Nonnull (^)(UINib * _Nonnull, NSString * _Nonnull, NSString * _Nonnull))registerViewNib{
    return ^ (UINib * nib, NSString *identifier, NSString *kind){
        [(UICollectionView *)self.view registerNib:nib forSupplementaryViewOfKind:kind withReuseIdentifier:identifier];
        return self;
    };
}

- (JWCollectionViewChainModel * _Nonnull (^)(void))adJustedContentIOS11{
    return ^ (){
        if (@available(iOS 11.0, *)) {
            [(UIScrollView *)self.view adJustedContentIOS11];
        }
        return self;
    };
}
@end

