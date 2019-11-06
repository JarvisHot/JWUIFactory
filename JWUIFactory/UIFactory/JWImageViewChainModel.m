//
//  JWImageViewChainModel.m
//  JWUIFactory
//
//  Created by jarvis on 2019/11/6.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "JWImageViewChainModel.h"
#define  JW_CHAIN_IMAGEVIEW_IMPLEMENTATION(method,paramType) JW_CHAIN_IMPLEMENTATION(method,paramType,JWImageViewChainModel *,UIImageView)

@implementation JWImageViewChainModel

JW_CHAIN_IMAGEVIEW_IMPLEMENTATION(image, UIImage *)
JW_CHAIN_IMAGEVIEW_IMPLEMENTATION(highlightedImage, UIImage *)
JW_CHAIN_IMAGEVIEW_IMPLEMENTATION(highlighted, BOOL)
JW_CHAIN_IMAGEVIEW_IMPLEMENTATION(animationImages, NSArray<UIImage *>*)
JW_CHAIN_IMAGEVIEW_IMPLEMENTATION(highlightedAnimationImages, NSArray<UIImage *>*)
JW_CHAIN_IMAGEVIEW_IMPLEMENTATION(animationDuration, NSTimeInterval)
JW_CHAIN_IMAGEVIEW_IMPLEMENTATION(animationRepeatCount, NSInteger)

- (JWImageViewChainModel *(^)(void))startAnimating {
    return ^JWImageViewChainModel* (void) {
        [(UIImageView *)self.view startAnimating];
        return self;
    };
}

- (JWImageViewChainModel *(^)(void))stopAnimating {
    return ^JWImageViewChainModel * (void) {
        [(UIImageView *)self.view stopAnimating];
        return self;
    };
}


@end
JW_CATEGORY_EX_IMPLEMENTATION(UIImageView, JWImageViewChainModel)
