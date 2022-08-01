//
//  PostListPresenterProtocol.h
//  AutolayoutCell
//
//  Created by 张天龙 on 2022/7/31.
//  Copyright © 2022 张天龙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JLStatus.h"
#import "PostDetailCallBackProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol PostListViewProtocol <NSObject>
- (void)showPosts:(NSArray<JLStatus *> *)status;
- (void)showError;
- (void)showLoading;
- (void)hideLoading;
@end

@protocol PostListPresenterProtocol <NSObject>
- (void)viewDidLoad;
- (void)showPostDetail:(JLStatus *)status;
@end

@protocol PostListWireFrameProtocol <NSObject>
- (void)presentPostDetailScreen:(UIViewController <PostDetailCallBackProtocol> *)view status:(JLStatus *)status;
@end

@protocol PostListJourneyFactoryProtocol <NSObject>
+ (UIViewController *)createPostListModule;
@end

@protocol PostListInteractorInputProtocol <NSObject>
- (void)retrievePostList;
@end

@protocol PostListInteractorOutputProtocol <NSObject>
- (void)didRetrievePosts:(NSArray <JLStatus *>*)statusArray;
- (void)onError;
@end

NS_ASSUME_NONNULL_END
