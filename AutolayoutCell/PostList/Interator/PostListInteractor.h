//
//  PostListInteractor.h
//  AutolayoutCell
//
//  Created by 张天龙 on 2022/7/31.
//  Copyright © 2022 张天龙. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PostListProtocols.h"
NS_ASSUME_NONNULL_BEGIN

@interface PostListInteractor : NSObject <PostListInteractorInputProtocol>
@property (nonatomic,weak) id <PostListInteractorOutputProtocol> presenter;
@end

NS_ASSUME_NONNULL_END
