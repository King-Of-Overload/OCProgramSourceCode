//
//  AppDelegate.h
//  iTahDoodle
//
//  Created by Alan Lu on 16/2/17.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import <UIKit/UIKit.h>
//声明辅助函数，该函数会返回特定文件路径，用于保存用户的任务列表信息
NSString *docPath(void);

@interface AppDelegate : UIResponder <UIApplicationDelegate,UITableViewDataSource>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic) UITableView *taskTable;//表格视图
@property (nonatomic) UITextField *taskField;//输入框
@property (nonatomic) UIButton *insertButton;//按钮

@property (nonatomic) NSMutableArray *tasks;//用于保存所有的任务字符串

@end

