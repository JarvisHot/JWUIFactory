//
//  JWUIFactory.h
//  JWUIFactory
//
//  Created by jarvis on 2019/11/4.
//  Copyright © 2019 jarvis. All rights reserved.
//

#ifndef JWUIFactory_h
#define JWUIFactory_h

#import "JWBaseViewChainModel.h"
#import "JWViewChainModel.h"
#import "JWBaseViewChainModel.h"
#import "JWButtonChainModel.h"

JWButtonChainModel *UIButtonMakeChain(NSInteger tag,UIButtonType type) {
    UIButton *btn = [UIButton buttonWithType:type];
    btn.tag = tag;
    return btn.makeChain;
}

#endif /* JWUIFactory_h */
