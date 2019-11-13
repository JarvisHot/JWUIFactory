//
//  JWTableViewChainModel.m
//  JWUIFactory
//
//  Created by jarvis on 2019/11/6.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "JWTableViewChainModel.h"
#import "UIScrollView+JWCategort.h"

#define  JW_CHAIN_TABLEVIEW_IMPLEMENTATION(method,paramType) JW_CHAIN_IMPLEMENTATION(method,paramType,JWTableViewChainModel *,UITableView)

@implementation JWTableViewChainModel

JW_CHAIN_TABLEVIEW_IMPLEMENTATION(delegate, id<UITableViewDelegate>)
JW_CHAIN_TABLEVIEW_IMPLEMENTATION(dataSource, id<UITableViewDataSource>)

JW_CHAIN_TABLEVIEW_IMPLEMENTATION(rowHeight, CGFloat)
JW_CHAIN_TABLEVIEW_IMPLEMENTATION(sectionHeaderHeight, CGFloat)
JW_CHAIN_TABLEVIEW_IMPLEMENTATION(sectionFooterHeight, CGFloat)
JW_CHAIN_TABLEVIEW_IMPLEMENTATION(estimatedRowHeight, CGFloat)
JW_CHAIN_TABLEVIEW_IMPLEMENTATION(estimatedSectionHeaderHeight, CGFloat)
JW_CHAIN_TABLEVIEW_IMPLEMENTATION(estimatedSectionFooterHeight, CGFloat)
JW_CHAIN_TABLEVIEW_IMPLEMENTATION(separatorInset, UIEdgeInsets)


JW_CHAIN_TABLEVIEW_IMPLEMENTATION(editing, BOOL)
JW_CHAIN_TABLEVIEW_IMPLEMENTATION(allowsSelection, BOOL)
JW_CHAIN_TABLEVIEW_IMPLEMENTATION(allowsMultipleSelection, BOOL)
JW_CHAIN_TABLEVIEW_IMPLEMENTATION(allowsSelectionDuringEditing, BOOL)
JW_CHAIN_TABLEVIEW_IMPLEMENTATION(allowsMultipleSelectionDuringEditing, BOOL)

JW_CHAIN_TABLEVIEW_IMPLEMENTATION(separatorStyle, UITableViewCellSeparatorStyle)
JW_CHAIN_TABLEVIEW_IMPLEMENTATION(separatorColor, UIColor *)

JW_CHAIN_TABLEVIEW_IMPLEMENTATION(tableHeaderView, UIView *)
JW_CHAIN_TABLEVIEW_IMPLEMENTATION(tableFooterView, UIView *)

JW_CHAIN_TABLEVIEW_IMPLEMENTATION(sectionIndexBackgroundColor, UIColor *)
JW_CHAIN_TABLEVIEW_IMPLEMENTATION(sectionIndexColor, UIColor *)


JW_CHAIN_TABLEVIEW_IMPLEMENTATION(contentSize, CGSize)
JW_CHAIN_TABLEVIEW_IMPLEMENTATION(contentOffset, CGPoint)
JW_CHAIN_TABLEVIEW_IMPLEMENTATION(contentInset, UIEdgeInsets)

JW_CHAIN_TABLEVIEW_IMPLEMENTATION(bounces, BOOL)
JW_CHAIN_TABLEVIEW_IMPLEMENTATION(alwaysBounceVertical, BOOL)
JW_CHAIN_TABLEVIEW_IMPLEMENTATION(alwaysBounceHorizontal, BOOL)

JW_CHAIN_TABLEVIEW_IMPLEMENTATION(pagingEnabled, BOOL)
JW_CHAIN_TABLEVIEW_IMPLEMENTATION(scrollEnabled, BOOL)

JW_CHAIN_TABLEVIEW_IMPLEMENTATION(showsHorizontalScrollIndicator, BOOL)
JW_CHAIN_TABLEVIEW_IMPLEMENTATION(showsVerticalScrollIndicator, BOOL)

JW_CHAIN_TABLEVIEW_IMPLEMENTATION(scrollsToTop, BOOL)

- (JWTableViewChainModel * _Nonnull (^)(UINib * _Nonnull, NSString * _Nonnull))registerCellNib{
    return ^ (UINib *nib, NSString *identifier){
        [(UITableView *)self.view registerNib:nib forCellReuseIdentifier:identifier];
        return self;
    };
}

- (JWTableViewChainModel * _Nonnull (^)(UINib * _Nonnull, NSString * _Nonnull))registerViewNib{
    return ^ (UINib *nib, NSString *identifier){
        [(UITableView *)self.view registerNib:nib forHeaderFooterViewReuseIdentifier:identifier];
        return self;
    };
}

- (JWTableViewChainModel * _Nonnull (^)(Class  _Nonnull __unsafe_unretained, NSString * _Nonnull))registerCellClass{
    return ^ (Class class, NSString *identifier){
        [(UITableView *)self.view registerClass:class forCellReuseIdentifier:identifier];
        return self;
    };
}

- (JWTableViewChainModel * _Nonnull (^)(Class  _Nonnull __unsafe_unretained, NSString * _Nonnull))registerViewClass{
    return ^ (Class class, NSString *identifier){
        [(UITableView *)self.view registerClass:class forHeaderFooterViewReuseIdentifier:identifier];
        
        return self;
    };
}
- (JWTableViewChainModel * _Nonnull (^)(void))adJustedContentIOS11{
    return ^ (){
        if (@available(iOS 11.0, *)) {
            [(UIScrollView *)self.view adJustedContentIOS11];
        }
        return self;
    };
}
@end


