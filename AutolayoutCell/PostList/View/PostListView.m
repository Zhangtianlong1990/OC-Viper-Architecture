//
//  ViewController.m
//  AutolayoutCell
//
//  Created by 张天龙 on 17/3/1.
//  Copyright © 2017年 张天龙. All rights reserved.
//

#import "PostListView.h"
#import "JLStatus.h"
#import "JLStausCell.h"

@interface PostListView ()<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic)  UITableView *tableView;

@property (strong, nonatomic) NSArray *statuses;

@end

@implementation PostListView
#pragma mark - lazy
-(UITableView *)tableView{
    if(!_tableView){
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        
    }
    return _tableView;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
    [self.presenter viewDidLoad];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.statuses.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    JLStausCell *cell = [JLStausCell cellWithTableView:tableView];
    cell.status = self.statuses[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.presenter showPostDetail:self.statuses[indexPath.row]];
}

#pragma mark - PostListViewProtocol

- (void)showPosts:(NSArray<JLStatus *> *)status{
    self.statuses = status;
    [self.tableView reloadData];
}
- (void)showError{
    
}
- (void)showLoading{
    
}
- (void)hideLoading{
    
}

- (void)didSelectDatas:(NSArray *)datas{
    
}


@end
