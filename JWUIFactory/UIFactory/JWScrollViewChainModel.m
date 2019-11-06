//
//  JWScrollViewChainModel.m
//  JWUIFactory
//
//  Created by jarvis on 2019/11/6.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "JWScrollViewChainModel.h"
#define  JW_CHAIN_SCROLLVIEW_IMPLEMENTATION(method,paramType) JW_CHAIN_IMPLEMENTATION(method,paramType,JWScrollViewChainModel *,UIScrollView)

@implementation JWScrollViewChainModel

JW_CHAIN_SCROLLVIEW_IMPLEMENTATION(delegate, id<UIScrollViewDelegate>)

JW_CHAIN_SCROLLVIEW_IMPLEMENTATION(contentSize, CGSize)
JW_CHAIN_SCROLLVIEW_IMPLEMENTATION(contentOffset, CGPoint)
JW_CHAIN_SCROLLVIEW_IMPLEMENTATION(contentInset, UIEdgeInsets)

JW_CHAIN_SCROLLVIEW_IMPLEMENTATION(bounces, BOOL)
JW_CHAIN_SCROLLVIEW_IMPLEMENTATION(alwaysBounceVertical, BOOL)
JW_CHAIN_SCROLLVIEW_IMPLEMENTATION(alwaysBounceHorizontal, BOOL)

JW_CHAIN_SCROLLVIEW_IMPLEMENTATION(pagingEnabled, BOOL)
JW_CHAIN_SCROLLVIEW_IMPLEMENTATION(scrollEnabled, BOOL)

JW_CHAIN_SCROLLVIEW_IMPLEMENTATION(showsHorizontalScrollIndicator, BOOL)
JW_CHAIN_SCROLLVIEW_IMPLEMENTATION(showsVerticalScrollIndicator, BOOL)

JW_CHAIN_SCROLLVIEW_IMPLEMENTATION(scrollsToTop, BOOL)

@end

JW_CATEGORY_EX_IMPLEMENTATION(UIScrollView, JWScrollViewChainModel)
