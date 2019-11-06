//
//  JWImageViewChainModel.h
//  JWUIFactory
//
//  Created by jarvis on 2019/11/6.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "JWBaseViewChainModel.h"

NS_ASSUME_NONNULL_BEGIN
@class JWImageViewChainModel;

@interface JWImageViewChainModel : JWBaseViewChainModel<JWImageViewChainModel *>

@property (nonatomic, copy, readonly) JWImageViewChainModel * (^image)(UIImage *image);
@property (nonatomic, copy, readonly) JWImageViewChainModel * (^highlightedImage)(UIImage *highlightedImage);
@property (nonatomic, copy, readonly) JWImageViewChainModel * (^highlighted)(BOOL highlighted);
@property (nonatomic, copy, readonly) JWImageViewChainModel * (^animationImages)(NSArray<UIImage *> *animationImages);
@property (nonatomic, copy, readonly) JWImageViewChainModel * (^highlightedAnimationImages)(NSArray<UIImage *> *highlightedAnimationImages);
@property (nonatomic, copy, readonly) JWImageViewChainModel * (^animationDuration)(NSTimeInterval animationDuration);
@property (nonatomic, copy, readonly) JWImageViewChainModel * (^animationRepeatCount)(NSInteger animationRepeatCount);
@property (nonatomic, copy, readonly) JWImageViewChainModel * (^startAnimating)(void);
@property (nonatomic, copy, readonly) JWImageViewChainModel * (^stopAnimating)(void);
@end

JW_CATEGORY_EX_INTERFACE(UIImageView, JWImageViewChainModel)
NS_ASSUME_NONNULL_END
