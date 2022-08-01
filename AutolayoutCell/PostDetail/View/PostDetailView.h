//
//  PostDetailView.h
//  AutolayoutCell
//
//  Created by 张天龙 on 2022/7/31.
//  Copyright © 2022 张天龙. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostDetailCallBackProtocol.h"
#import "PostDetailProtocols.h"

NS_ASSUME_NONNULL_BEGIN

@interface PostDetailView : UIViewController<PostDetailViewProtocol>
@property (nonatomic,weak) id <PostDetailCallBackProtocol> delegate;
@property (nonatomic,strong) id <PostDetailPresenterProtocol> presenter;
@end

NS_ASSUME_NONNULL_END
