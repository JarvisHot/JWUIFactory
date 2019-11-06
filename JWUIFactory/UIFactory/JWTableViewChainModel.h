//
//  JWTableViewChainModel.h
//  JWUIFactory
//
//  Created by jarvis on 2019/11/6.
//  Copyright © 2019 jarvis. All rights reserved.
//

#import "JWBaseViewChainModel.h"

NS_ASSUME_NONNULL_BEGIN
@class JWTableViewChainModel;
@interface JWTableViewChainModel : JWBaseViewChainModel<JWTableViewChainModel *>

@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ delegate)(id<UITableViewDelegate> delegate);
@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ dataSource)(id<UITableViewDataSource> dataSource);

@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ rowHeight)(CGFloat rowHeight);
@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ sectionHeaderHeight)(CGFloat sectionHeaderHeight);
@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ sectionFooterHeight)(CGFloat sectionFooterHeight);
@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ estimatedRowHeight)(CGFloat estimatedRowHeight);
@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ estimatedSectionHeaderHeight)(CGFloat estimatedSectionHeaderHeight);
@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ estimatedSectionFooterHeight)(CGFloat estimatedSectionFooterHeight);
@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ separatorInset)(UIEdgeInsets separatorInset);

@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ editing)(BOOL editing);
@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ allowsSelection)(BOOL allowsSelection);
@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ allowsMultipleSelection)(BOOL allowsMultipleSelection);
@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ allowsSelectionDuringEditing)(BOOL allowsSelectionDuringEditing);
@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ allowsMultipleSelectionDuringEditing)(BOOL allowsMultipleSelectionDuringEditing);

@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ separatorStyle)(UITableViewCellSeparatorStyle separatorStyle);
@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ separatorColor)(UIColor *separatorColor);

@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ tableHeaderView)(UIView * tableHeaderView);
@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ tableFooterView)(UIView * separatorStyle);

@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ sectionIndexBackgroundColor)(UIColor *sectionIndexBackgroundColor);
@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ sectionIndexColor)(UIColor *sectionIndexColor);


@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ contentSize)(CGSize contentSize);
@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ contentOffset)(CGPoint contentOffset);
@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ contentInset)(UIEdgeInsets contentInset);

@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ bounces)(BOOL bounces);
@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ alwaysBounceVertical)(BOOL alwaysBounceVertical);
@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ alwaysBounceHorizontal)(BOOL alwaysBounceHorizontal);

@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ pagingEnabled)(BOOL pagingEnabled);
@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ scrollEnabled)(BOOL scrollEnabled);

@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ showsHorizontalScrollIndicator)(BOOL showsHorizontalScrollIndicator);
@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ showsVerticalScrollIndicator)(BOOL showsVerticalScrollIndicator);

@property (nonatomic, copy, readonly) JWTableViewChainModel *(^ scrollsToTop)(BOOL scrollsToTop);

@end

JW_CATEGORY_EX_INTERFACE(UITableView, JWTableViewChainModel)
NS_ASSUME_NONNULL_END
