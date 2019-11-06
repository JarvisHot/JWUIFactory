//
//  JWButtonChainModel.m
//  JWUIFactory
//
//  Created by jarvis on 2019/11/5.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "JWButtonChainModel.h"
#import "UIControl+JWEvent.h"

#define JW_CHAIN_BUTTON_IMPLEMENTATION(methodName,paramType) JW_CHAIN_IMPLEMENTATION(methodName,paramType,JWButtonChainModel *,UIButton)
#define JW_CHAIN_BUTTON_LABEL_IMPLEMENTATION(methodName,paramType) \
- (JWButtonChainModel * (^)(paramType methodName))methodName\
{\
return ^(paramType methodName) {\
((UIButton *)self.view).titleLabel.methodName = methodName;   \
return self;    \
};\
}
@implementation JWButtonChainModel

JW_CHAIN_BUTTON_IMPLEMENTATION(contentEdgeInsets, UIEdgeInsets)
JW_CHAIN_BUTTON_IMPLEMENTATION(titleEdgeInsets, UIEdgeInsets)
JW_CHAIN_BUTTON_IMPLEMENTATION(imageEdgeInsets, UIEdgeInsets)
JW_CHAIN_BUTTON_IMPLEMENTATION(reversesTitleShadowWhenHighlighted, BOOL)
JW_CHAIN_BUTTON_IMPLEMENTATION(adjustsImageWhenHighlighted, BOOL)
JW_CHAIN_BUTTON_IMPLEMENTATION(adjustsImageWhenDisabled, BOOL)
JW_CHAIN_BUTTON_IMPLEMENTATION(showsTouchWhenHighlighted, BOOL)

- (JWButtonChainModel * _Nonnull (^)(UIImage * _Nonnull, UIControlState))image{
    return ^ (UIImage *image, UIControlState state){
        [(UIButton *)self.view setImage:image forState:state];
        return self;
    };
}

- (JWButtonChainModel * _Nonnull (^)(NSString * _Nonnull, UIControlState))text{
    return ^ (NSString *text, UIControlState state){
        [(UIButton *)self.view setTitle:text forState:state];
        return self;
    };
}

- (JWButtonChainModel * _Nonnull (^)(UIImage * _Nonnull, UIControlState))backgroundImage{
    return ^ (UIImage *image, UIControlState state){
        [(UIButton *)self.view setBackgroundImage:image forState:state];
        return self;
    };
}

- (JWButtonChainModel * _Nonnull (^)(NSAttributedString * _Nonnull, UIControlState))attributedTitle{
    return ^ (NSAttributedString *title, UIControlState state){
        [(UIButton *)self.view setAttributedTitle:title forState:state];
        return self;
    };
}

- (JWButtonChainModel * _Nonnull (^)(UIFont * _Nonnull))font{
    return ^ (UIFont *font){
        [(UIButton *)self.view titleLabel].font = font;
        return self;
    };
}

- (JWButtonChainModel * _Nonnull (^)(UIColor * _Nonnull, UIControlState))textColor{
    return ^ (UIColor *color, UIControlState state){
        [(UIButton *)self.view setTitleColor:color forState:state];
        return self;
    };
}

JW_CHAIN_BUTTON_LABEL_IMPLEMENTATION(textAlignment, NSTextAlignment)
JW_CHAIN_BUTTON_LABEL_IMPLEMENTATION(numberOfLines, NSInteger)
JW_CHAIN_BUTTON_LABEL_IMPLEMENTATION(lineBreakMode, NSLineBreakMode)
JW_CHAIN_BUTTON_LABEL_IMPLEMENTATION(adjustsFontSizeToFitWidth, BOOL)
JW_CHAIN_BUTTON_LABEL_IMPLEMENTATION(baselineAdjustment, UIBaselineAdjustment)

- (JWButtonChainModel * _Nonnull (^)(JWButtonImageDirection,CGFloat))imageDirection {
    return ^ (JWButtonImageDirection direction, CGFloat space){
        [(UIButton*)self.view imageDirection:direction space:space];
        return self;
    };
}
- (JWButtonChainModel * _Nonnull (^)(UIControlEvents events,void(^click)(id sender)))click {
    return ^JWButtonChainModel *(UIControlEvents events,void(^click)(id sender)) {
        [(UIControl *)self.view addControlEvents:events handler:click];
        return self;
    };
}
@end
JW_CATEGORY_EX_IMPLEMENTATION(UIButton, JWButtonChainModel)


