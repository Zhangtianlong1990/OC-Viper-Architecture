//
//  PostListInteractor.m
//  AutolayoutCell
//
//  Created by 张天龙 on 2022/7/31.
//  Copyright © 2022 张天龙. All rights reserved.
//

#import "PostListInteractor.h"

@implementation PostListInteractor

- (void)retrievePostList {
    // 加载plist中的字典数组
    NSString *path = [[NSBundle mainBundle] pathForResource:@"statuses.plist" ofType:nil];
    NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
    
    // 字典数组 -> 模型数组
    NSMutableArray *statusArray = [NSMutableArray array];
    for (NSDictionary *dict in dictArray) {
        JLStatus *status = [JLStatus statusWithDict:dict];
        [statusArray addObject:status];
    }
    [self.presenter didRetrievePosts:statusArray];
}

@end
