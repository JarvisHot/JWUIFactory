//
//  JWButtonChainModel.h
//  JWUIFactory
//
//  Created by jarvis on 2019/11/5.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "JWBaseViewChainModel.h"
#import "UIButton+JWCategory.h"

NS_ASSUME_NONNULL_BEGIN
@class JWButtonChainModel;

@interface JWButtonChainModel : JWBaseViewChainModel <JWButtonChainModel *>

/// edgeInsets
@property (nonatomic, copy, readonly) JWButtonChainModel * (^ contentEdgeInsets)(UIEdgeInsets contentEdgeInsets);
@property (nonatomic, copy, readonly) JWButtonChainModel * (^titleEdgeInsets)(UIEdgeInsets titleEdgeInsets);
@property (nonatomic, copy, readonly) JWButtonChainModel * (^imageEdgeInsets)(UIEdgeInsets imageEdgeInsets);
@property (nonatomic, copy, readonly) JWButtonChainModel * (^reversesTitleShadowWhenHighlighted)(BOOL reversesTitleShadowWhenHighlighted);
@property (nonatomic, copy, readonly) JWButtonChainModel * (^adjustsImageWhenHighlighted)(BOOL adjustsImageWhenHighlighted);
@property (nonatomic, copy, readonly) JWButtonChainModel * (^adjustsImageWhenDisabled)(BOOL adjustsImageWhenDisabled);
@property (nonatomic, copy, readonly) JWButtonChainModel * (^showsTouchWhenHighlighted)(BOOL showsTouchWhenHighlighted);
@property (nonatomic, copy, readonly) JWButtonChainModel * (^ image) (UIImage *image, UIControlState state);
@property (nonatomic, copy, readonly) JWButtonChainModel * (^ text) (NSString *title, UIControlState state);
@property (nonatomic, copy, readonly) JWButtonChainModel * (^ textColor) (UIColor *color, UIControlState state);
@property (nonatomic, copy, readonly) JWButtonChainModel * (^ backgroundImage) (UIImage *image, UIControlState state);
@property (nonatomic, copy, readonly) JWButtonChainModel * (^ attributedTitle) (NSAttributedString *title, UIControlState state);
@property (nonatomic, copy, readonly) JWButtonChainModel * (^ font) (UIFont *font);

@property (nonatomic, copy, readonly) JWButtonChainModel * (^ textAlignment)(NSTextAlignment textAlignment);
@property (nonatomic, copy, readonly) JWButtonChainModel * (^ numberOfLines)(NSInteger numberOfLines);
@property (nonatomic, copy, readonly) JWButtonChainModel * (^ lineBreakMode)(NSLineBreakMode lineBreakMode);
@property (nonatomic, copy, readonly) JWButtonChainModel * (^ adjustsFontSizeToFitWidth)(BOOL adjustsFontSizeToFitWidth);

@property (nonatomic, copy, readonly) JWButtonChainModel * (^ baselineAdjustment)(UIBaselineAdjustment baselineAdjustment);
@property (nonatomic, copy, readonly) JWButtonChainModel * (^ imageDirection) (JWButtonImageDirection imageDirection, CGFloat space);
@property (nonatomic, copy, readonly) JWButtonChainModel * (^click)(UIControlEvents events ,void (^click)(id sender));
@end

JW_CATEGORY_EX_INTERFACE(UIButton, JWButtonChainModel);



NS_ASSUME_NONNULL_END
