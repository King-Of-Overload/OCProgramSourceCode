//
//  AppDelegate.m
//  iTahDoodle
//
//  Created by Alan Lu on 16/2/17.
//  Copyright (c) 2016年 Zjut. All rights reserved.
//

#import "AppDelegate.h"

//辅助函数，返回保存用户任务数据的文件路径
NSString *docPath(){
    NSArray *pathList=NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    return [pathList[0] stringByAppendingPathComponent:@"data.td"];
}


@interface AppDelegate ()

@end

@implementation AppDelegate
//应用委托对象对调
#pragma mark
//insertButton的目标动作
-(void)addTask:(id)sender{
    //获取新任务的文字描述
    NSString *text=[self.taskField text];//获取文字
    //如果taskField没有内容，就直接返回
    if([text length]==0){
        return;
    }
    //将文本输入到控制台
    NSLog(@"新建任务：%@",text);
    
    //将任务添加到tasks数组
    [self.tasks addObject:text];
    //刷新表格视图，显示新加入的任务
    [self.taskTable reloadData];//重新加载数据
    
    //清空编辑框
    [self.taskField setText:@""];
    //关闭键盘
    [self.taskField resignFirstResponder];
}

//实现UITableViewDataSource规定要实现的两个方法
//根据指定的表格段索引给出相应表格段所包含的行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //因为该应用中的表格视图只有一个表格段，所以可以忽略传入的表格段索引，直接返回任务数组所含对象的个数
    return [self.tasks count];
}

//为了提升性能，检查是否有可以重用的UITableViewCell对象
//没有的话创建新的
-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *c=[self.taskTable dequeueReusableCellWithIdentifier:@"Cell"];
    //根据模型对象，（重新）设置UITableViewCell对象
    //本例中的对象是task数组
    NSString *item=[self.tasks objectAtIndex:indexPath.row];
    c.textLabel.text=item;
    //返回设置后的UITableViewCell对象
    return c;
}



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //读取已有的任务数据或创建新的
    NSArray *plist=[NSArray arrayWithContentsOfFile:docPath()];
    if(plist){
        //存在
        self.tasks=[plist mutableCopy];
    }else{
        self.tasks=[NSMutableArray array];
    }
    //创建并设置UIWindow对象
    //CGRect是C结构，其下的两个成员也是C结构，origin(x,y) 和size(width,height)
    CGRect winFrame=[[UIScreen mainScreen] bounds];
    UIWindow *theWindow=[[UIWindow alloc] initWithFrame:winFrame];
    self.window=theWindow;
    
    //设置三个UI对象的frame属性
    //CGRectMake()函数可以创建CGRect结构，参数（x,y,width,height）
    CGRect tableFrame=CGRectMake(0, 80, winFrame.size.width, winFrame.size.height-100);
    CGRect fieldFrame=CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame=CGRectMake(228, 40, 72, 31);
    
    //创建并设置UITableView对象
    self.taskTable=[[UITableView alloc] initWithFrame:tableFrame style:UITableViewStylePlain];
    self.taskTable.separatorStyle=UITableViewCellSeparatorStyleNone;
    
    //将当前对象设置为UITableView对象的dataSource
    self.taskTable.dataSource=self;
    
    //需要创建新的单元格时，告诉UITableView对象要实例化哪个类
    [self.taskTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    //创建并设置UITextField对象，按钮类型是圆角按钮，按下时将新任务插入UITableView对象
    self.taskField=[[UITextField alloc] initWithFrame:fieldFrame];
    self.taskField.borderStyle=UITextBorderStyleRoundedRect;
    self.taskField.placeholder=@"在这里输入，么么哒";
    
    //创建并设置UIButton对象
    self.insertButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];//圆角按钮
    self.insertButton.frame=buttonFrame;
    //为按钮设置标题
    [self.insertButton setTitle:@"插入" forState:UIControlStateNormal];
    
    //设置Insert按钮的目标-动作对
    [self.insertButton addTarget:self action:@selector(addTask:) forControlEvents:UIControlEventTouchUpInside];
    
    //将以下三个UI对象加入UIWindow实例
    [self.window addSubview:self.taskTable];
    [self.window addSubview:self.taskField];
    [self.window addSubview:self.insertButton];
    
    //设置UIWindow实例的背景颜色，并放上屏幕
    self.window.backgroundColor=[UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

//离开应用时调用
- (void)applicationDidEnterBackground:(UIApplication *)application {
    //将任务数组保存到文件中
    [self.tasks writeToFile:docPath() atomically:YES];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
