//
//  JWLabelChainModel.m
//  JWUIFactory
//
//  Created by jarvis on 2019/11/6.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "JWLabelChainModel.h"
#define  JW_CHAIN_LABEL_IMPLEMENTATION(method,paramType) JW_CHAIN_IMPLEMENTATION(method,paramType,JWLabelChainModel *,UILabel)
@implementation JWLabelChainModel

JW_CHAIN_LABEL_IMPLEMENTATION(text, NSString *);
JW_CHAIN_LABEL_IMPLEMENTATION(font, UIFont *);
JW_CHAIN_LABEL_IMPLEMENTATION(textColor, UIColor *);
JW_CHAIN_LABEL_IMPLEMENTATION(attributedText, NSAttributedString *);
JW_CHAIN_LABEL_IMPLEMENTATION(textAlignment, NSTextAlignment);
JW_CHAIN_LABEL_IMPLEMENTATION(numberOfLines, NSInteger);
JW_CHAIN_LABEL_IMPLEMENTATION(lineBreakMode, NSLineBreakMode);
JW_CHAIN_LABEL_IMPLEMENTATION(adjustsFontSizeToFitWidth, BOOL);

@end
JW_CATEGORY_EX_IMPLEMENTATION(UILabel, JWLabelChainModel)
