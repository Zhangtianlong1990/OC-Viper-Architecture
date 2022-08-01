//
//  PostListPresenter.m
//  AutolayoutCell
//
//  Created by 张天龙 on 2022/7/31.
//  Copyright © 2022 张天龙. All rights reserved.
//

#import "PostListPresenter.h"

@implementation PostListPresenter

- (void)showPostDetail:(nonnull JLStatus *)status {
    [self.router presentPostDetailScreen:self.view status:status];
}

- (void)viewDidLoad {
    [self.view showLoading];
    [self.interator retrievePostList];
}

#pragma mark - PostListInteractorOutputProtocol

- (void)didRetrievePosts:(nonnull NSArray<JLStatus *> *)statusArray {
    [self.view hideLoading];
    [self.view showPosts:statusArray];
}

- (void)onError {
    [self.view hideLoading];
    [self.view showError];
}


@end
