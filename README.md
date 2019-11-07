# JWUIFactory

链式创建UI

# Use

>pod 'JWUIFactory'

```Objective-C

     UIView.create(10).frame(CGRectMake(20, 100, 100, 30)).backgroundColor([UIColor yellowColor]).addToSuperView(self.view).makeMasonry(^(MASConstraintMaker * _Nonnull make) {
       make.left.equalTo(self.view).with.offset(20);
       make.top.equalTo(self.view).with.offset(40);
       make.right.equalTo(self.view).with.offset(-20);
       make.height.mas_equalTo(60);
    });
    UIButtonMakeChain(2, UIButtonTypeCustom).frame(CGRectMake(30, 200, 100, 30)).text(@"点我啊", UIControlStateNormal).textColor([UIColor redColor], UIControlStateNormal).addToSuperView(self.view).click(UIControlEventTouchUpInside, ^(id  _Nonnull sender) {
        NSLog(@"sender-----%@",sender);
    });
    UIImageView.create(11).animationImages(@[[UIImage imageNamed:@"timg0"],[UIImage imageNamed:@"timg1"],[UIImage imageNamed:@"timg2"],[UIImage imageNamed:@"timg3"],[UIImage imageNamed:@"timg4"],[UIImage imageNamed:@"timg5"],[UIImage imageNamed:@"timg6"]]).animationDuration(1).animationRepeatCount(0).frame(CGRectMake(20, 250, 100, 50)).addToSuperView(self.view).backgroundColor([UIColor redColor]).startAnimating();
    UILabel.create(12).frame(CGRectMake(0, 0, 10, 10)).text(@"我是label").textColor(UIColor.yellowColor).font([UIFont systemFontOfSize:30]).addToSuperView(self.view);
    UITextField.create(13).frame(CGRectMake(20, 310, 100, 20)).placeholder(@"我是占位符").textColor(UIColor.redColor).eventBlock(UIControlEventEditingChanged, ^(UITextField*  _Nonnull sender) {
        NSLog(@"textfield.text----%@",sender.text);
    }).addToSuperView(self.view);
    UIScrollView.create(14).frame(CGRectMake(0, 340, 300, 200)).contentSize(CGSizeMake(0, 300)).addToSuperView(self.view).delegate(self).backgroundColor(UIColor.yellowColor);
```


###如果需要使用Masonry布局请自行导入 `pod 'Masonry'`并在你的头文件中引入`#import <Masonry/Masonry.h>`
