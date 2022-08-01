//
//  PostListWireFrame.m
//  AutolayoutCell
//
//  Created by 张天龙 on 2022/7/31.
//  Copyright © 2022 张天龙. All rights reserved.
//

#import "PostListWireFrame.h"
#import "PostDetailFactory.h"

@implementation PostListWireFrame

- (void)presentPostDetailScreen:(UIViewController<PostDetailCallBackProtocol> *)view status:(JLStatus *)status{
    UIViewController *postDetailVc = [PostDetailFactory createPostDetailModule:status delegate:view];
    [view.navigationController pushViewController:postDetailVc animated:YES];
}

@end
