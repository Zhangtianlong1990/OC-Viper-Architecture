//
//  PostListFactory.m
//  AutolayoutCell
//
//  Created by 张天龙 on 2022/7/31.
//  Copyright © 2022 张天龙. All rights reserved.
//

#import "PostListWireFrame.h"
#import "PostListFactory.h"
#import "PostListView.h"
#import "PostListPresenter.h"
#import "PostListInteractor.h"

@implementation PostListFactory
+ (UIViewController *)createPostListModule{
    
    PostListInteractor *interator = [[PostListInteractor alloc] init];
    PostListWireFrame *router = [[PostListWireFrame alloc] init];
    PostListPresenter *presenter = [[PostListPresenter alloc] init];
    PostListView *view = [[PostListView alloc] init];
    view.presenter = presenter;
    presenter.view = view;
    presenter.router = router;
    presenter.interator = interator;
    interator.presenter = presenter;
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:view];
    
    return nav;
}
@end
