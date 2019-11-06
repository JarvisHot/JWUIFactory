//
//  JWScrollViewChainModel.h
//  JWUIFactory
//
//  Created by jarvis on 2019/11/6.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "JWBaseViewChainModel.h"

NS_ASSUME_NONNULL_BEGIN

@class JWScrollViewChainModel;
@interface JWScrollViewChainModel : JWBaseViewChainModel<JWScrollViewChainModel *>

@property (nonatomic, copy, readonly) JWScrollViewChainModel *(^ delegate)(id<UIScrollViewDelegate> delegate);

@property (nonatomic, copy, readonly) JWScrollViewChainModel *(^ contentSize)(CGSize contentSize);
@property (nonatomic, copy, readonly) JWScrollViewChainModel *(^ contentOffset)(CGPoint contentOffset);
@property (nonatomic, copy, readonly) JWScrollViewChainModel *(^ contentInset)(UIEdgeInsets contentInset);

@property (nonatomic, copy, readonly) JWScrollViewChainModel *(^ bounces)(BOOL bounces);
@property (nonatomic, copy, readonly) JWScrollViewChainModel *(^ alwaysBounceVertical)(BOOL alwaysBounceVertical);
@property (nonatomic, copy, readonly) JWScrollViewChainModel *(^ alwaysBounceHorizontal)(BOOL alwaysBounceHorizontal);

@property (nonatomic, copy, readonly) JWScrollViewChainModel *(^ pagingEnabled)(BOOL pagingEnabled);
@property (nonatomic, copy, readonly) JWScrollViewChainModel *(^ scrollEnabled)(BOOL scrollEnabled);

@property (nonatomic, copy, readonly) JWScrollViewChainModel *(^ showsHorizontalScrollIndicator)(BOOL showsHorizontalScrollIndicator);
@property (nonatomic, copy, readonly) JWScrollViewChainModel *(^ showsVerticalScrollIndicator)(BOOL showsVerticalScrollIndicator);

@property (nonatomic, copy, readonly) JWScrollViewChainModel *(^ scrollsToTop)(BOOL scrollsToTop);

@end
JW_CATEGORY_EX_INTERFACE(UIScrollView, JWScrollViewChainModel)

NS_ASSUME_NONNULL_END
