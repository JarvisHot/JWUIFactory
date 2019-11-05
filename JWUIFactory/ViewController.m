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
    
    
    // Do any additional setup after loading the view.
}


@end
