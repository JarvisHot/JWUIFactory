//
//  UIButton+JWDirection.h
//  JWUIFactory
//
//  Created by jarvis on 2019/11/5.
//  Copyright © 2019 jarvis. All rights reserved.
//




#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger,JWButtonImageDirection) {
    JWButtonImageDirectionLeft = 0,
    JWButtonImageDirectionRight,
    JWButtonImageDirectionTop,
    JWButtonImageDirectionBottom,
    
};
@interface UIButton (JWCategory)

/// 设置button的image方向
/// @param direction 方向，上下左右
/// @param space 距离
- (void)imageDirection:(JWButtonImageDirection)direction space:(CGFloat)space;


@end

NS_ASSUME_NONNULL_END
