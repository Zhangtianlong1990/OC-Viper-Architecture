//
//  PostListPresenter.h
//  AutolayoutCell
//
//  Created by 张天龙 on 2022/7/31.
//  Copyright © 2022 张天龙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PostListProtocols.h"
#import "PostDetailCallBackProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface PostListPresenter : NSObject <PostListPresenterProtocol,PostListInteractorOutputProtocol>
@property (nonatomic,weak) UIViewController <PostListViewProtocol,PostDetailCallBackProtocol> *view;
@property (nonatomic,strong) id <PostListWireFrameProtocol> router;
@property (nonatomic,strong) id <PostListInteractorInputProtocol> interator;
@end

NS_ASSUME_NONNULL_END
