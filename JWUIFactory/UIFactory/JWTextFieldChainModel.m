//
//  JWTextFieldChainModel.m
//  JWUIFactory
//
//  Created by jarvis on 2019/11/6.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "JWTextFieldChainModel.h"
#import "UIControl+JWEvent.h"
#define  JW_CHAIN_TEXTFIELD_IMPLEMENTATION(method,paramType) JW_CHAIN_IMPLEMENTATION(method,paramType,JWTextFieldChainModel *,UITextField)

@implementation JWTextFieldChainModel

JW_CHAIN_TEXTFIELD_IMPLEMENTATION(text, NSString *);
JW_CHAIN_TEXTFIELD_IMPLEMENTATION(attributedText, NSAttributedString *);

JW_CHAIN_TEXTFIELD_IMPLEMENTATION(font, UIFont *);
JW_CHAIN_TEXTFIELD_IMPLEMENTATION(textColor, UIColor *);

JW_CHAIN_TEXTFIELD_IMPLEMENTATION(textAlignment, NSTextAlignment);
JW_CHAIN_TEXTFIELD_IMPLEMENTATION(borderStyle, UITextBorderStyle);

JW_CHAIN_TEXTFIELD_IMPLEMENTATION(defaultTextAttributes, NSDictionary *);

JW_CHAIN_TEXTFIELD_IMPLEMENTATION(placeholder, NSString *);
JW_CHAIN_TEXTFIELD_IMPLEMENTATION(attributedPlaceholder, NSAttributedString *);

JW_CHAIN_TEXTFIELD_IMPLEMENTATION(keyboardType, UIKeyboardType);

JW_CHAIN_TEXTFIELD_IMPLEMENTATION(clearsOnBeginEditing, BOOL);
JW_CHAIN_TEXTFIELD_IMPLEMENTATION(adjustsFontSizeToFitWidth, BOOL);
JW_CHAIN_TEXTFIELD_IMPLEMENTATION(minimumFontSize, CGFloat);

JW_CHAIN_TEXTFIELD_IMPLEMENTATION(delegate, id<UITextFieldDelegate>);

JW_CHAIN_TEXTFIELD_IMPLEMENTATION(background, UIImage *);
JW_CHAIN_TEXTFIELD_IMPLEMENTATION(disabledBackground, UIImage *);

JW_CHAIN_TEXTFIELD_IMPLEMENTATION(allowsEditingTextAttributes, BOOL);
JW_CHAIN_TEXTFIELD_IMPLEMENTATION(typingAttributes, NSDictionary *);

JW_CHAIN_TEXTFIELD_IMPLEMENTATION(clearButtonMode, UITextFieldViewMode);
JW_CHAIN_TEXTFIELD_IMPLEMENTATION(leftView, UIView *);
JW_CHAIN_TEXTFIELD_IMPLEMENTATION(leftViewMode, UITextFieldViewMode);
JW_CHAIN_TEXTFIELD_IMPLEMENTATION(rightView, UIView *);
JW_CHAIN_TEXTFIELD_IMPLEMENTATION(rightViewMode, UITextFieldViewMode);

JW_CHAIN_TEXTFIELD_IMPLEMENTATION(inputView, UIView *);
JW_CHAIN_TEXTFIELD_IMPLEMENTATION(inputAccessoryView, UIView *);

JW_CHAIN_TEXTFIELD_IMPLEMENTATION(enabled, BOOL);

- (JWTextFieldChainModel *(^)(UIControlEvents controlEvents, void (^eventBlock)(id sender)))eventBlock
{
    return ^JWTextFieldChainModel *(UIControlEvents controlEvents, void (^eventBlock)(id sender)) {
        [(UIControl *)self.view addControlEvents:controlEvents handler:eventBlock];
        return self;
    };
}

@end

JW_CATEGORY_EX_IMPLEMENTATION(UITextField, JWTextFieldChainModel)
