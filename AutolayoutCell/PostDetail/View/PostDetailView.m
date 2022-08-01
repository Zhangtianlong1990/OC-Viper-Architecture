//
//  PostDetailView.m
//  AutolayoutCell
//
//  Created by 张天龙 on 2022/7/31.
//  Copyright © 2022 张天龙. All rights reserved.
//

#import "PostDetailView.h"

@interface PostDetailView ()

@end

@implementation PostDetailView

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.presenter viewDidLoad];
}

#pragma mark - PostDetailViewProtocol

- (void)showPostDetail:(JLStatus *)status{
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(100, 100, 200, 100);
    label.text = status.name;
    label.textColor = [UIColor redColor];
    [self.view addSubview:label];
}

@end
