//
//  JWButtonChainModel.h
//  JWUIFactory
//
//  Created by jarvis on 2019/11/5.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "JWBaseViewChainModel.h"

NS_ASSUME_NONNULL_BEGIN
@class JWButtonChainModel;

@interface JWButtonChainModel : JWBaseViewChainModel <JWButtonChainModel *>

/// edgeInsets
@property (nonatomic, copy, readonly) JWButtonChainModel * (^ contentEdgeInsets)(UIEdgeInsets contentEdgeInsets);
@property (nonatomic, copy, readonly) JWButtonChainModel * (^titleEdgeInsets)(UIEdgeInsets titleEdgeInsets);
@property (nonatomic, copy, readonly) JWButtonChainModel * (^imageEdgeInsets)(UIEdgeInsets imageEdgeInsets);
@property (nonatomic, copy, readonly) JWButtonChainModel * (^reversesTitleShadowWhenHighlighted)(BOOL reversesTitleShadowWhenHighlighted);
@property (nonatomic, copy, readonly) JWButtonChainModel * (^adjustsImageWhenHighlighted)(BOOL adjustsImageWhenHighlighted);
@property (nonatomic, copy, readonly) JWBaseViewChainModel * (^adjustsImageWhenDisabled)(BOOL adjustsImageWhenDisabled);
@end

JW_CATEGORY_EX_INTERFACE(UIButton, JWButtonChainModel);



NS_ASSUME_NONNULL_END
