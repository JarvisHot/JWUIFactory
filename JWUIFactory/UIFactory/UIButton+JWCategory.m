//
//  UIButton+JWDirection.m
//  JWUIFactory
//
//  Created by jarvis on 2019/11/5.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "UIButton+JWCategory.h"


@implementation UIButton (JWCategory)
- (void)imageDirection:(JWButtonImageDirection)direction space:(CGFloat)space {
    CGFloat imageWidth, imageHeight, textWidth, textHeight, x, y;
    imageWidth = self.currentImage.size.width;
    imageHeight = self.currentImage.size.height;
    [self.titleLabel sizeToFit];
    textWidth = self.titleLabel.frame.size.width;
    textHeight = self.titleLabel.frame.size.height;
    space = space / 2;
    switch (direction) {
            
            case JWButtonImageDirectionLeft:{
                self.imageEdgeInsets = UIEdgeInsetsMake(0, -space,0, space);
                self.titleEdgeInsets = UIEdgeInsetsMake(0, space , 0, - space);
            }
                break;
            case JWButtonImageDirectionRight:{
                self.imageEdgeInsets = UIEdgeInsetsMake(0, space + textWidth, 0, - (space + textWidth));
                self.titleEdgeInsets = UIEdgeInsetsMake(0, -(space + imageWidth), 0, (space + imageWidth));
            }
                break;
            case JWButtonImageDirectionTop:{
                x = textHeight / 2 + space;
                y = textWidth / 2;
                self.imageEdgeInsets = UIEdgeInsetsMake(-x, y, x, - y);
                x = imageHeight / 2 + space;
                y = imageWidth / 2;
                self.titleEdgeInsets = UIEdgeInsetsMake(x, - y, - x, y);
            }
                break;
            case JWButtonImageDirectionBottom:{
                x = textHeight / 2 + space;
                y = textWidth / 2;
                self.imageEdgeInsets = UIEdgeInsetsMake(x, y, -x, - y);
                x = imageHeight / 2 + space;
                y = imageWidth / 2;
                self.titleEdgeInsets = UIEdgeInsetsMake(-x, - y, x, y);
            }
                break;
        
        
        default:
            break;
    }
}
@end
