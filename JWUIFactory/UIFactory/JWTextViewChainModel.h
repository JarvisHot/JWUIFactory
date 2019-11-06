//
//  JWTextViewChainModel.h
//  JWUIFactory
//
//  Created by jarvis on 2019/11/6.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "JWBaseViewChainModel.h"

NS_ASSUME_NONNULL_BEGIN
@class JWTextViewChainModel;

@interface JWTextViewChainModel : JWBaseViewChainModel<JWTextViewChainModel *>

@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ delegate)(id<UITextViewDelegate> delegate);

@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ text)(NSString *text);
@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ font)(UIFont *font);
@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ textColor)(UIColor *textColor);

@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ textAlignment)(NSTextAlignment textAlignment);
@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ selectedRange)(NSRange numberOfLines);
@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ editable)(BOOL editable);
@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ selectable)(BOOL selectable);
@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ dataDetectorTypes)(UIDataDetectorTypes dataDetectorTypes);

@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ keyboardType)(UIKeyboardType keyboardType);

@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ allowsEditingTextAttributes)(BOOL allowsEditingTextAttributes);
@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ attributedText)(NSAttributedString *attributedText);
@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ typingAttributes)(NSDictionary *typingAttributes);

@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ clearsOnInsertion)(BOOL clearsOnInsertion);

@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ textContainerInset)(UIEdgeInsets textContainerInset);
@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ linkTextAttributes)(NSDictionary *linkTextAttributes);

#pragma mark - UIScrollView
@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ contentSize)(CGSize contentSize);
@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ contentOffset)(CGPoint contentOffset);
@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ contentInset)(UIEdgeInsets contentInset);

@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ bounces)(BOOL bounces);
@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ alwaysBounceVertical)(BOOL alwaysBounceVertical);
@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ alwaysBounceHorizontal)(BOOL alwaysBounceHorizontal);

@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ pagingEnabled)(BOOL pagingEnabled);
@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ scrollEnabled)(BOOL scrollEnabled);

@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ showsHorizontalScrollIndicator)(BOOL showsHorizontalScrollIndicator);
@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ showsVerticalScrollIndicator)(BOOL showsVerticalScrollIndicator);

@property (nonatomic, copy, readonly) JWTextViewChainModel *(^ scrollsToTop)(BOOL scrollsToTop);

@end

JW_CATEGORY_EX_INTERFACE(UITextView, JWTextViewChainModel)
NS_ASSUME_NONNULL_END
