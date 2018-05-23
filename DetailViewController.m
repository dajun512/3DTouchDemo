//
//  DetailViewController.m
//  3DTouchDemo
//
//  Created by pro on 2018/5/23.
//  Copyright © 2018年 ChenXiaoJun. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 150, 200, 30)];
    label.text = @"我是谁我是谁";
    label.textColor = [UIColor greenColor];
    label.font = [UIFont systemFontOfSize:16.0];
    [self.view addSubview:label];
    
    UILabel *yellowLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, CGRectGetMaxY(label.frame), 300, 30)];
    yellowLabel.textColor = [UIColor yellowColor];
    yellowLabel.text = @"你来吧我不过去了,这是什么";
    [self.view addSubview:yellowLabel];
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, CGRectGetMaxY(yellowLabel.frame), 170, 500)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
}



// 设置控制器在弹窗时候,下面输出的数组
-(NSArray<id<UIPreviewActionItem>> *)previewActionItems{

    UIPreviewAction *action = [UIPreviewAction actionWithTitle:@"标题1" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"点击了我");
    }];
    
    UIPreviewActionGroup *group = [UIPreviewActionGroup actionGroupWithTitle:@"组标题" style:UIPreviewActionStyleDefault actions:@[action]];
    
    return  @[action,group];
}

@end
