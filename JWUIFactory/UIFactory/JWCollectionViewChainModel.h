//
//  JWCollectionViewChainModel.h
//  JWUIFactory
//
//  Created by jarvis on 2019/11/6.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "JWBaseViewChainModel.h"

NS_ASSUME_NONNULL_BEGIN
@class JWCollectionViewChainModel;
@interface JWCollectionViewChainModel : JWBaseViewChainModel<JWCollectionViewChainModel *>

@property (nonatomic, copy, readonly) JWCollectionViewChainModel *(^ collectionViewLayout)(UICollectionViewLayout *collectionViewLayout);
@property (nonatomic, copy, readonly) JWCollectionViewChainModel *(^ delegate)(id<UICollectionViewDelegate> delegate);
@property (nonatomic, copy, readonly) JWCollectionViewChainModel *(^ dataSource)(id<UICollectionViewDataSource> dataSource);

@property (nonatomic, copy, readonly) JWCollectionViewChainModel *(^ allowsSelection)(BOOL allowsSelection);
@property (nonatomic, copy, readonly) JWCollectionViewChainModel *(^ allowsMultipleSelection)(BOOL allowsMultipleSelection);

#pragma mark - UIScrollView
@property (nonatomic, copy, readonly) JWCollectionViewChainModel *(^ contentSize)(CGSize contentSize);
@property (nonatomic, copy, readonly) JWCollectionViewChainModel *(^ contentOffset)(CGPoint contentOffset);
@property (nonatomic, copy, readonly) JWCollectionViewChainModel *(^ contentInset)(UIEdgeInsets contentInset);

@property (nonatomic, copy, readonly) JWCollectionViewChainModel *(^ bounces)(BOOL bounces);
@property (nonatomic, copy, readonly) JWCollectionViewChainModel *(^ alwaysBounceVertical)(BOOL alwaysBounceVertical);
@property (nonatomic, copy, readonly) JWCollectionViewChainModel *(^ alwaysBounceHorizontal)(BOOL alwaysBounceHorizontal);

@property (nonatomic, copy, readonly) JWCollectionViewChainModel *(^ pagingEnabled)(BOOL pagingEnabled);
@property (nonatomic, copy, readonly) JWCollectionViewChainModel *(^ scrollEnabled)(BOOL scrollEnabled);

@property (nonatomic, copy, readonly) JWCollectionViewChainModel *(^ showsHorizontalScrollIndicator)(BOOL showsHorizontalScrollIndicator);
@property (nonatomic, copy, readonly) JWCollectionViewChainModel *(^ showsVerticalScrollIndicator)(BOOL showsVerticalScrollIndicator);

@property (nonatomic, copy, readonly) JWCollectionViewChainModel *(^ scrollsToTop)(BOOL scrollsToTop);

@end

JW_CATEGORY_EX_INTERFACE(UICollectionView, JWCollectionViewChainModel)

NS_ASSUME_NONNULL_END


