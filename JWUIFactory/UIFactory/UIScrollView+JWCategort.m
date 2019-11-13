//
//  UIScrollView+JWCategort.m
//  JWUIFactory
//
//  Created by jiang on 2019/11/13.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "UIScrollView+JWCategort.h"




@implementation UIScrollView (JWCategort)

- (void)adJustedContentIOS11{
    if (@available(iOS 11.0, *)) {
        [self setContentInsetAdjustmentBehavior:UIScrollViewContentInsetAdjustmentNever];
    } else {
        
    }
}
@end
