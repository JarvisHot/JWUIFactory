//
//  JWBaseViewChainModel.h
//  JWUIFactory
//
//  Created by jarvis on 2019/11/1.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


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
@property (nonatomic, copy, readonly) modelType *makeChain;\
+ (modelType *(^)(NSInteger tag))create;\
@end
/// UIkit 扩展实现
#define JW_CATEGORY_EX_IMPLEMENTATION(viewClass,modelType)\
@implementation viewClass (EX)\
+ (modelType *(^)(NSInteger tag))create {\
   return ^modelType *(NSInteger tag){\
         viewClass *view = [[viewClass alloc]init];\
        return [[modelType alloc]initWithTag:tag andView:view];\
     };\
}\
- (modelType *)makeChain {\
return [[modelType alloc]initWithTag:self.tag andView:self];\
}\
@end

NS_ASSUME_NONNULL_BEGIN

@class MASConstraintMaker;
///  T 传入类型例如：JWLabelChainModel
@interface JWBaseViewChainModel <T> : NSObject

/// 视图的唯一标示
@property (nonatomic, assign, readonly) NSInteger tag;

@property (nonatomic, strong, readonly) __kindof UIView *view;

@property (nonatomic, assign, readonly) Class viewClass;

- (instancetype)initWithTag:(NSInteger)tag andView:(__kindof UIView *)view;

//MARK: ---------- Frame
@property (nonatomic, copy, readonly) T (^bounds)(CGRect frame);
@property (nonatomic, copy, readonly) T (^frame)(CGRect frame);

@property (nonatomic, copy, readonly) T (^origin)(CGPoint origin);
@property (nonatomic, copy, readonly) T (^x)(CGFloat x);
@property (nonatomic, copy, readonly) T (^y)(CGFloat y);

@property (nonatomic, copy, readonly) T (^ center)(CGPoint center);
@property (nonatomic, copy, readonly) T (^ centerX)(CGFloat centerX);
@property (nonatomic, copy, readonly) T (^ centerY)(CGFloat centerY);

@property (nonatomic, copy, readonly) T (^ top)(CGFloat top);
@property (nonatomic, copy, readonly) T (^ bottom)(CGFloat bottom);
@property (nonatomic, copy, readonly) T (^ left)(CGFloat left);
@property (nonatomic, copy, readonly) T (^ right)(CGFloat right);

//MARK: ---------- Color
@property (nonatomic, copy, readonly) T (^ backgroundColor)(UIColor *backgroundColor);
@property (nonatomic, copy, readonly) T (^ tintColor)(UIColor *tintColor);
@property (nonatomic, copy, readonly) T (^ alpha)(CGFloat alpha);

//MARK: ---------- Control
@property (nonatomic, copy, readonly) T (^ contentMode)(UIViewContentMode contentMode);

@property (nonatomic, copy, readonly) T (^ opaque)(BOOL opaque);
@property (nonatomic, copy, readonly) T (^ hidden)(BOOL hidden);
@property (nonatomic, copy, readonly) T (^ clipsToBounds)(BOOL clipsToBounds);

@property (nonatomic, copy, readonly) T (^ userInteractionEnabled)(BOOL userInteractionEnabled);
@property (nonatomic, copy, readonly) T (^ multipleTouchEnabled)(BOOL multipleTouchEnabled);

//MARK: ---------- Layer
@property (nonatomic, copy, readonly) T (^ masksToBounds)(BOOL masksToBounds);
@property (nonatomic, copy, readonly) T (^ cornerRadius)(CGFloat cornerRadius);

@property (nonatomic, copy, readonly) T (^ border)(CGFloat borderWidth, UIColor *borderColor);
@property (nonatomic, copy, readonly) T (^ borderWidth)(CGFloat borderWidth);
@property (nonatomic, copy, readonly) T (^ borderColor)(CGColorRef borderColor);

@property (nonatomic, copy, readonly) T (^ zPosition)(CGFloat zPosition);
@property (nonatomic, copy, readonly) T (^ anchorPoint)(CGPoint anchorPoint);

@property (nonatomic, copy, readonly) T (^ shadow)(CGSize shadowOffset, CGFloat shadowRadius, UIColor *shadowColor, CGFloat shadowOpacity);
@property (nonatomic, copy, readonly) T (^ shadowColor)(CGColorRef shadowColor);
@property (nonatomic, copy, readonly) T (^ shadowOpacity)(CGFloat shadowOpacity);
@property (nonatomic, copy, readonly) T (^ shadowOffset)(CGSize shadowOffset);
@property (nonatomic, copy, readonly) T (^ shadowRadius)(CGFloat shadowRadius);
@property (nonatomic, copy, readonly) T (^ shadowPath)(CGPathRef shadowPath);

@property (nonatomic, copy, readonly) T (^ transform)(CATransform3D transform);

//MARK: 布局相关
@property (nonatomic, copy, readonly) T (^ sizeToFit)(void);
@property (nonatomic, copy, readonly) CGSize (^ sizeThatFits)(CGSize size);
@property (nonatomic, copy, readonly) T (^ layoutIfNeeded) (void);
@property (nonatomic, copy, readonly) T (^ setNeedsLayout) (void);
@property (nonatomic, copy, readonly) T (^ setNeedsDisplay) (void);
@property (nonatomic, copy, readonly) T (^ setNeedsDisplayRect) (CGRect rect);

@property (nonatomic, copy, readonly) T (^ addToSuperView)(UIView *superView);
@property (nonatomic, copy, readonly) T (^ addSubView)(UIView *subView);
@property (nonatomic, copy, readonly) T (^ removeFormSuperView)(void);

//MARK: --------- masonry 如果导入masonry库的话就可用
@property (nonatomic, copy, readonly) T (^ makeMasonry)( void (^constraints)(MASConstraintMaker *make) );
@property (nonatomic, copy, readonly) T (^ updateMasonry)( void (^constraints)(MASConstraintMaker *make) );
@property (nonatomic, copy, readonly) T (^ remakeMasonry)( void (^constraints)(MASConstraintMaker *make) );

@end


NS_ASSUME_NONNULL_END
