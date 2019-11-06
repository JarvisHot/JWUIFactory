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
#import "JWLabelChainModel.h"
#import "JWImageViewChainModel.h"
#import "JWTextFieldChainModel.h"
#import "JWTextViewChainModel.h"
#import "JWScrollViewChainModel.h"
#import "JWTableViewChainModel.h"
#import "JWCollectionViewChainModel.h"

JWButtonChainModel *UIButtonMakeChain(NSInteger tag,UIButtonType type) {
    UIButton *btn = [UIButton buttonWithType:type];
    btn.tag = tag;
    return btn.makeChain;
}

JWTableViewChainModel *UITableViewMakeChain(NSInteger tag,UITableViewStyle style) {
    UITableView *table = [[UITableView alloc]initWithFrame:CGRectZero style:style];
    table.tag = tag;
    return table.makeChain;
}

#endif /* JWUIFactory_h */
