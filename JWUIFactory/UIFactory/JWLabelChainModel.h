//
//  JWLabelChainModel.h
//  JWUIFactory
//
//  Created by jarvis on 2019/11/6.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "JWBaseViewChainModel.h"

NS_ASSUME_NONNULL_BEGIN
@class JWLabelChainModel;
@interface JWLabelChainModel : JWBaseViewChainModel<JWLabelChainModel *>

@property (nonatomic, copy, readonly) JWLabelChainModel * (^ text)(NSString *text);
@property (nonatomic, copy, readonly) JWLabelChainModel * (^ font)(UIFont *font);
@property (nonatomic, copy, readonly) JWLabelChainModel * (^ textColor)(UIColor *textColor);
@property (nonatomic, copy, readonly) JWLabelChainModel * (^ attributedText)(NSAttributedString *attributedText);
@property (nonatomic, copy, readonly) JWLabelChainModel * (^ textAlignment)(NSTextAlignment textAlignment);
@property (nonatomic, copy, readonly) JWLabelChainModel * (^ numberOfLines)(NSInteger numberOfLines);
@property (nonatomic, copy, readonly) JWLabelChainModel * (^ lineBreakMode)(NSLineBreakMode lineBreakMode);
@property (nonatomic, copy, readonly) JWLabelChainModel * (^ adjustsFontSizeToFitWidth)(BOOL adjustsFontSizeToFitWidth);

@end
JW_CATEGORY_EX_INTERFACE(UILabel, JWLabelChainModel)
NS_ASSUME_NONNULL_END
