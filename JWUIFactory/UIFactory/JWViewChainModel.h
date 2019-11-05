//
//  JWViewChainModel.h
//  JWUIFactory
//
//  Created by jarvis on 2019/11/4.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "JWBaseViewChainModel.h"


@class JWViewChainModel;

@interface JWViewChainModel : JWBaseViewChainModel <JWViewChainModel *>

@end
JW_CATEGORY_EX_INTERFACE(UIView, JWViewChainModel)


