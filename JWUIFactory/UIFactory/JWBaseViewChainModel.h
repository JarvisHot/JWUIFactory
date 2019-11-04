//
//  JWBaseViewChainModel.h
//  JWUIFactory
//
//  Created by jarvis on 2019/11/1.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define JW_CHAIN_PROPERTY    @property (nonatomic, copy, readonly)

///链式实现
#define JW_CHAIN_IMPLEMENTATION(methodName, JWParamType, JWViewChainModelType, JWViewClass) \
- (JWViewChainModelType (^)(JWParamType param))methodName {   \
    return ^JWViewChainModelType (JWParamType param) {    \
        ((JWViewClass *)self.view).methodName = param;   \
        return self;    \
    };\
}
/// UIkit扩展声明
#define JW_CATEGORY_EX_INTERFACE(viewClass,modelType)\
@interface viewClass(EX)\
JW_CHAIN_PROPERTY modelType *makeChain;\
@end
/// UIkit 扩展实现
#define JW_CATEGORY_EX_IMPLEMENTATION(viewClass,modelType)\
@implementation viewClass (EX)\
- (modelType *)makeChain {\
return [viewClass alloc]initWithTag:self.tag andView:self];\
}\
@end

NS_ASSUME_NONNULL_BEGIN

@class MASConstraintMaker;
///  T 传入类型例如：JWLabelChainModel
@interface JWBaseViewChainModel <T> : NSObject

/// 视图的唯一标示
@property (nonatomic, assign, readonly) NSInteger tag;

/// 视图的唯一标示
@property (nonatomic, strong, readonly) __kindof UIView *view;

@property (nonatomic, assign, readonly) Class viewClass;

- (instancetype)initWithTag:(NSInteger)tag andView:(__kindof UIView *)view;

//MARK: ---------- Frame
JW_CHAIN_PROPERTY T (^bounds)(CGRect frame);
JW_CHAIN_PROPERTY T (^frame)(CGRect frame);

JW_CHAIN_PROPERTY T (^origin)(CGPoint origin);
JW_CHAIN_PROPERTY T (^x)(CGFloat x);
JW_CHAIN_PROPERTY T (^y)(CGFloat y);

JW_CHAIN_PROPERTY T (^ center)(CGPoint center);
JW_CHAIN_PROPERTY T (^ centerX)(CGFloat centerX);
JW_CHAIN_PROPERTY T (^ centerY)(CGFloat centerY);

JW_CHAIN_PROPERTY T (^ top)(CGFloat top);
JW_CHAIN_PROPERTY T (^ bottom)(CGFloat bottom);
JW_CHAIN_PROPERTY T (^ left)(CGFloat left);
JW_CHAIN_PROPERTY T (^ right)(CGFloat right);

//MARK: ---------- Color
JW_CHAIN_PROPERTY T (^ backgroundColor)(UIColor *backgroundColor);
JW_CHAIN_PROPERTY T (^ tintColor)(UIColor *tintColor);
JW_CHAIN_PROPERTY T (^ alpha)(CGFloat alpha);

//MARK: ---------- Control
JW_CHAIN_PROPERTY T (^ contentMode)(UIViewContentMode contentMode);

JW_CHAIN_PROPERTY T (^ opaque)(BOOL opaque);
JW_CHAIN_PROPERTY T (^ hidden)(BOOL hidden);
JW_CHAIN_PROPERTY T (^ clipsToBounds)(BOOL clipsToBounds);

JW_CHAIN_PROPERTY T (^ userInteractionEnabled)(BOOL userInteractionEnabled);
JW_CHAIN_PROPERTY T (^ multipleTouchEnabled)(BOOL multipleTouchEnabled);

//MARK: ---------- Layer
JW_CHAIN_PROPERTY T (^ masksToBounds)(BOOL masksToBounds);
JW_CHAIN_PROPERTY T (^ cornerRadius)(CGFloat cornerRadius);

JW_CHAIN_PROPERTY T (^ border)(CGFloat borderWidth, UIColor *borderColor);
JW_CHAIN_PROPERTY T (^ borderWidth)(CGFloat borderWidth);
JW_CHAIN_PROPERTY T (^ borderColor)(CGColorRef borderColor);

JW_CHAIN_PROPERTY T (^ zPosition)(CGFloat zPosition);
JW_CHAIN_PROPERTY T (^ anchorPoint)(CGPoint anchorPoint);

JW_CHAIN_PROPERTY T (^ shadow)(CGSize shadowOffset, CGFloat shadowRadius, UIColor *shadowColor, CGFloat shadowOpacity);
JW_CHAIN_PROPERTY T (^ shadowColor)(CGColorRef shadowColor);
JW_CHAIN_PROPERTY T (^ shadowOpacity)(CGFloat shadowOpacity);
JW_CHAIN_PROPERTY T (^ shadowOffset)(CGSize shadowOffset);
JW_CHAIN_PROPERTY T (^ shadowRadius)(CGFloat shadowRadius);

JW_CHAIN_PROPERTY T (^ transform)(CATransform3D transform);


//MARK: --------- masonry 如果导入masonry库的话就可用
JW_CHAIN_PROPERTY T (^ masonry)( void (^constraints)(MASConstraintMaker *make) );
JW_CHAIN_PROPERTY T (^ updateMasonry)( void (^constraints)(MASConstraintMaker *make) );
JW_CHAIN_PROPERTY T (^ remakeMasonry)( void (^constraints)(MASConstraintMaker *make) );

@end

NS_ASSUME_NONNULL_END
