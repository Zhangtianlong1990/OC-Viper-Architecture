//
//  PostDetailCallBackProtocol.h
//  AutolayoutCell
//
//  Created by 张天龙 on 2022/7/31.
//  Copyright © 2022 张天龙. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PostDetailCallBackProtocol <NSObject>
- (void)didSelectDatas:(NSArray *)datas;
@end

NS_ASSUME_NONNULL_END
