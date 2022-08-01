//
//  ViewController.h
//  AutolayoutCell
//
//  Created by 张天龙 on 17/3/1.
//  Copyright © 2017年 张天龙. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PostListProtocols.h"

@interface PostListView : UIViewController <PostListViewProtocol,PostDetailCallBackProtocol>
@property (nonatomic,strong) id <PostListPresenterProtocol> presenter;
@end

