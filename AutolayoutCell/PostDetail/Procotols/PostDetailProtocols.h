//
//  PostDetailProtocols.h
//  AutolayoutCell
//
//  Created by 张天龙 on 2022/7/31.
//  Copyright © 2022 张天龙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "JLStatus.h"
#import "PostDetailCallBackProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol PostDetailJourneyFactoryProtocol <NSObject>
+ (UIViewController *)createPostDetailModule:(JLStatus *)status delegate:(id<PostDetailCallBackProtocol>)delegate;
@end

@protocol PostDetailPresenterProtocol <NSObject>
- (void)viewDidLoad;
@end

@protocol PostDetailViewProtocol <NSObject>
- (void)showPostDetail:(JLStatus *)status;
@end

NS_ASSUME_NONNULL_END
