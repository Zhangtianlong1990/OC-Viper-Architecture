//
//  PostDetailFactory.m
//  AutolayoutCell
//
//  Created by 张天龙 on 2022/7/31.
//  Copyright © 2022 张天龙. All rights reserved.
//

#import "PostDetailFactory.h"
#import "PostDetailView.h"
#import "PostDetailPresenter.h"

@implementation PostDetailFactory
+ (UIViewController *)createPostDetailModule:(JLStatus *)status delegate:(nonnull id<PostDetailCallBackProtocol>)delegate{
    PostDetailView *view = [[PostDetailView alloc] init];
    view.delegate = delegate;
    PostDetailPresenter *presenter = [[PostDetailPresenter alloc] init];
    presenter.status = status;
    view.presenter = presenter;
    presenter.view = view;
    return view;
}
@end
