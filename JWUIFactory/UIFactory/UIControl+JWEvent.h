//
//  UIControl+JWEvent.h
//  JWUIFactory
//
//  Created by jarvis on 2019/11/6.
//  Copyright © 2019 jarvis. All rights reserved.
//




#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIControl (JWEvent)

/// 添加触控事件
/// @param controlEvents 触控类型
/// @param handlerBlock 触控回调
- (void)addControlEvents:(UIControlEvents)controlEvents
handler:(void (^)(id sender))handlerBlock;

@end

NS_ASSUME_NONNULL_END
