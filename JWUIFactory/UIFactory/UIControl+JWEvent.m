//
//  UIControl+JWEvent.m
//  JWUIFactory
//
//  Created by jarvis on 2019/11/6.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "UIControl+JWEvent.h"
#import <objc/runtime.h>
@interface JWControlTarget : NSObject

@property (nonatomic, copy) void (^senderBlock)(id sender);
@property (nonatomic, assign) UIControlEvents controlEvents;

- (instancetype)initWithSenderBlock:(void (^)(id sender))senderBlock
                      controlEvents:(UIControlEvents)controlEvents;
- (void)senderMethod:(id)sender;

@end
@implementation JWControlTarget

- (instancetype)initWithSenderBlock:(void (^)(id sender))senderBlock
                      controlEvents:(UIControlEvents)controlEvents {
    if (self = [super init]) {
        _senderBlock = senderBlock;
        _controlEvents = controlEvents;
    }
    return self;
}
- (void)senderMethod:(id)sender {
    if (_senderBlock) {
        _senderBlock(sender);
    }
}

@end

static int control_target_key;
@implementation UIControl (JWEvent)

- (void)addControlEvents:(UIControlEvents)controlEvents
                 handler:(void (^)(id sender))handlerBlock {
    if (!controlEvents) {
        return;
    }
    JWControlTarget *controlTarget = [[JWControlTarget alloc]initWithSenderBlock:handlerBlock controlEvents:controlEvents];
    [self addTarget:controlTarget action:@selector(senderMethod:) forControlEvents:controlEvents];
    objc_setAssociatedObject(self, &control_target_key, controlTarget, OBJC_ASSOCIATION_RETAIN);
}



@end
