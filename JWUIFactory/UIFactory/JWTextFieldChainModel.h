//
//  JWTextFieldChainModel.h
//  JWUIFactory
//
//  Created by jarvis on 2019/11/6.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "JWBaseViewChainModel.h"

NS_ASSUME_NONNULL_BEGIN
@class JWTextFieldChainModel;

@interface JWTextFieldChainModel : JWBaseViewChainModel<JWTextFieldChainModel *>

@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ text)(NSString *text);
@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ attributedText)(NSAttributedString *attributedText);

@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ font)(UIFont *font);
@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ textColor)(UIColor *textColor);

@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ textAlignment)(NSTextAlignment textAlignment);
@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ borderStyle)(UITextBorderStyle borderStyle);

@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ defaultTextAttributes)(NSDictionary *defaultTextAttributes);

@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ placeholder)(NSString *placeholder);
@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ attributedPlaceholder)(NSAttributedString *attributedPlaceholder);

@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ keyboardType)(UIKeyboardType keyboardType);

@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ clearsOnBeginEditing)(BOOL clearsOnBeginEditing);
@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ adjustsFontSizeToFitWidth)(BOOL adjustsFontSizeToFitWidth);
@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ minimumFontSize)(CGFloat minimumFontSize);

@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ delegate)(id<UITextFieldDelegate> delegate);

@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ background)(UIImage *background);
@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ disabledBackground)(UIImage *disabledBackground);

@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ allowsEditingTextAttributes)(BOOL allowsEditingTextAttributes);
@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ typingAttributes)(NSDictionary *typingAttributes);

@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ clearButtonMode)(UITextFieldViewMode clearButtonMode);
@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ leftView)(UIView *leftView);
@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ leftViewMode)(UITextFieldViewMode leftViewMode);
@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ rightView)(UIView *rightView);
@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ rightViewMode)(UITextFieldViewMode rightViewMode);

@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ inputView)(UIView *inputView);
@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ inputAccessoryView)(UIView *inputAccessoryView);

@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ eventBlock)(UIControlEvents controlEvents, void (^eventBlock)(id sender));

@property (nonatomic, copy, readonly) JWTextFieldChainModel *(^ enable)(BOOL enable);

@end

JW_CATEGORY_EX_INTERFACE(UITextField, JWTextFieldChainModel)
NS_ASSUME_NONNULL_END
