//
//  ViewController.m
//  JWUIFactory
//
//  Created by jarvis on 2019/11/1.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "ViewController.h"
#import "JWUIFactory.h"
#import <Masonry/Masonry.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   UIView.create(10).frame(CGRectMake(20, 100, 100, 30)).backgroundColor([UIColor yellowColor]).addToSuperView(self.view).makeMasonry(^(MASConstraintMaker * _Nonnull make) {
       make.left.equalTo(self.view).with.offset(20);
       make.top.equalTo(self.view).with.offset(40);
       make.right.equalTo(self.view).with.offset(-20);
       make.height.mas_equalTo(60);
    });
    UIButtonMakeChain(20, UIButtonTypeClose).frame(CGRectMake(30, 200, 100, 30)).imageDirection(JWButtonImageDirectionTop, 30).text(@"点我啊", UIControlStateNormal).addToSuperView(self.view).click(UIControlEventTouchUpInside, ^(id  _Nonnull sender) {
        NSLog(@"sender-----%@",sender);
    });
    UIImageView.create(11).animationImages(@[[UIImage imageNamed:@"timg0"],[UIImage imageNamed:@"timg1"],[UIImage imageNamed:@"timg2"],[UIImage imageNamed:@"timg3"],[UIImage imageNamed:@"timg4"],[UIImage imageNamed:@"timg5"],[UIImage imageNamed:@"timg6"]]).animationDuration(1).animationRepeatCount(0).frame(CGRectMake(20, 250, 100, 50)).addToSuperView(self.view).backgroundColor([UIColor redColor]).startAnimating();
    
    
    // Do any additional setup after loading the view.
}


@end
