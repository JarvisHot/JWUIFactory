//
//  JWBaseViewChainModel.m
//  JWUIFactory
//
//  Created by jarvis on 2019/11/1.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "JWBaseViewChainModel.h"
#if __has_include(<Masonry.h>)
#import <Masonry.h>
#elif __has_include("Masonry.h")
#import "Masonry.h"
#endif
#import "UIView+JWFrame.h"

#define JW_CHAIN_VIEW_IMPLEMENTATION(method,paraType) JW_CHAIN_IMPLEMENTATION(method,paraType,id,UIView)
#define     JW_CHAIN_MASONRY_IMPLEMENTATION(methodName, masonryMethod) \
- (id (^)( void (^constraints)(MASConstraintMaker *)) )methodName    \
{   \
return ^id ( void (^constraints)(MASConstraintMaker *) ) {  \
if (self.view.superview) { \
[self.view masonryMethod:constraints];    \
}   \
return self;    \
};  \
}

#define     JW_CHAIN_MASONRY_IMPLEMENTATION_NULL(methodName, masonryMethod) \
- (id (^)( void (^constraints)(MASConstraintMaker *)) )methodName    \
{   \
return ^id ( void (^constraints)(MASConstraintMaker *) ) {  \
return self;    \
};  \
}

#define     JW_CHAIN_LAYER_IMPLEMENTATION(methodName, ParamType) \
- (id (^)(ParamType param))methodName    \
{   \
return ^id (ParamType param) {    \
self.view.layer.methodName = param;   \
return self;    \
};\
}

@implementation JWBaseViewChainModel
- (id)initWithTag:(NSInteger)tag andView:(__kindof UIView *)view
{
    if (self = [super init]) {
        _tag = tag;
        _view = view;
        _viewClass = [view class];
        [view setTag:tag];
    }
    return self;
}

//MARK: ---------- Frame
JW_CHAIN_VIEW_IMPLEMENTATION(bounds, CGRect)

JW_CHAIN_VIEW_IMPLEMENTATION(frame, CGRect)

JW_CHAIN_VIEW_IMPLEMENTATION(origin, CGPoint)
JW_CHAIN_VIEW_IMPLEMENTATION(x, CGFloat)
JW_CHAIN_VIEW_IMPLEMENTATION(y, CGFloat)

JW_CHAIN_VIEW_IMPLEMENTATION(size, CGSize)
JW_CHAIN_VIEW_IMPLEMENTATION(width, CGFloat)
JW_CHAIN_VIEW_IMPLEMENTATION(height, CGFloat)

JW_CHAIN_VIEW_IMPLEMENTATION(center, CGPoint)
JW_CHAIN_VIEW_IMPLEMENTATION(centerX, CGFloat)
JW_CHAIN_VIEW_IMPLEMENTATION(centerY, CGFloat)

JW_CHAIN_VIEW_IMPLEMENTATION(top, CGFloat)
JW_CHAIN_VIEW_IMPLEMENTATION(bottom, CGFloat)
JW_CHAIN_VIEW_IMPLEMENTATION(left, CGFloat)
JW_CHAIN_VIEW_IMPLEMENTATION(right, CGFloat)

//MARK: ---------- Color
JW_CHAIN_VIEW_IMPLEMENTATION(backgroundColor, UIColor *)
JW_CHAIN_VIEW_IMPLEMENTATION(tintColor, UIColor *)
JW_CHAIN_VIEW_IMPLEMENTATION(alpha, CGFloat)


//MARK: ---------- Control
JW_CHAIN_VIEW_IMPLEMENTATION(contentMode, UIViewContentMode)

JW_CHAIN_VIEW_IMPLEMENTATION(opaque, BOOL)
JW_CHAIN_VIEW_IMPLEMENTATION(hidden, BOOL)
JW_CHAIN_VIEW_IMPLEMENTATION(clipsToBounds, BOOL)

JW_CHAIN_VIEW_IMPLEMENTATION(userInteractionEnabled, BOOL)
JW_CHAIN_VIEW_IMPLEMENTATION(multipleTouchEnabled, BOOL)


//MARK: ---------- Layer
JW_CHAIN_LAYER_IMPLEMENTATION(masksToBounds, BOOL)

- (id (^)(CGFloat cornerRadius))cornerRadius {
    return ^__kindof JWBaseViewChainModel *(CGFloat cornerRadius) {
        [self.view.layer setMasksToBounds:YES];
        [self.view.layer setCornerRadius:cornerRadius];
        return self;
    };
}

- (id (^)(CGFloat borderWidth, UIColor *borderColor))border
{
    return ^__kindof JWBaseViewChainModel *(CGFloat borderWidth, UIColor *borderColor) {
        [self.view.layer setBorderWidth:borderWidth];
        [self.view.layer setBorderColor:borderColor.CGColor];
        return self;
    };
}

JW_CHAIN_LAYER_IMPLEMENTATION(borderWidth, CGFloat)
JW_CHAIN_LAYER_IMPLEMENTATION(borderColor, CGColorRef)
JW_CHAIN_LAYER_IMPLEMENTATION(zPosition, CGFloat)
JW_CHAIN_LAYER_IMPLEMENTATION(anchorPoint, CGPoint)

- (id (^)(CGSize shadowOffset, CGFloat shadowRadius, UIColor *shadowColor, CGFloat shadowOpacity))shadow {
    return ^__kindof JWBaseViewChainModel *(CGSize shadowOffset, CGFloat shadowRadius, UIColor *shadowColor, CGFloat shadowOpacity) {
        [self.view.layer setShadowOffset:shadowOffset];
        [self.view.layer setShadowRadius:shadowRadius];
        [self.view.layer setShadowColor:shadowColor.CGColor];
        [self.view.layer setShadowOpacity:shadowOpacity];
        return self;
    };
}
JW_CHAIN_LAYER_IMPLEMENTATION(shadowColor, CGColorRef)
JW_CHAIN_LAYER_IMPLEMENTATION(shadowOpacity, CGFloat)
JW_CHAIN_LAYER_IMPLEMENTATION(shadowOffset, CGSize)
JW_CHAIN_LAYER_IMPLEMENTATION(shadowRadius, CGFloat)
JW_CHAIN_LAYER_IMPLEMENTATION(shadowPath, CGPathRef)

JW_CHAIN_LAYER_IMPLEMENTATION(transform, CATransform3D)
//MARK: 布局相关
- (id _Nonnull (^)(void))sizeToFit {
    return ^ (){
        [self.view sizeToFit];
        return self;
    };
}
- (CGSize (^)(CGSize))sizeThatFits {
    return ^ (CGSize size) {
        return [self.view sizeThatFits:size];
    };
}
- (id  _Nonnull (^)(void))setNeedsLayout{
    return ^ (){
        [self.view setNeedsLayout];
        return self;
    };
}
- (id  _Nonnull (^)(void))setNeedsDisplay{
    return ^ (){
        [self.view setNeedsDisplay];
        return self;
    };
}
- (id  _Nonnull (^)(void))layoutIfNeeded{
    return ^ (){
        [self.view layoutIfNeeded];
        return self;
    };
}
- (id (^)(CGRect))setNeedsDisplayRect{
    return ^ (CGRect rect){
        [self.view setNeedsDisplayInRect:rect];
        return self;
    };
}

- (id _Nonnull (^)(UIView * _Nonnull))addToSuperView {
    return ^ (UIView *superView){
        [superView addSubview:self.view];
        return self;
    };
    
}
- (id _Nonnull (^)(UIView * _Nonnull))addSubView {
    return ^ (UIView *subView) {
        [self.view addSubview:subView];
        return self;
    };
}
- (id _Nonnull (^)(void))removeFormSuperView {
    return ^(){
        [self.view removeFromSuperview];
        return self;
    };
}
//MARK: ---------Masonry---
#if __has_include(<Masonry.h>) || __has_include("Masonry.h")
JW_CHAIN_MASONRY_IMPLEMENTATION(makeMasonry, mas_makeConstraints)
JW_CHAIN_MASONRY_IMPLEMENTATION(updateMasonry, mas_updateConstraints)
JW_CHAIN_MASONRY_IMPLEMENTATION(remakeMasonry, mas_remakeConstraints)
#else
JW_CHAIN_MASONRY_IMPLEMENTATION_NULL(makeMasonry, mas_makeConstraints)
JW_CHAIN_MASONRY_IMPLEMENTATION_NULL(updateMasonry, mas_updateConstraints)
JW_CHAIN_MASONRY_IMPLEMENTATION_NULL(remakeMasonry, mas_remakeConstraints)
#endif

@end
