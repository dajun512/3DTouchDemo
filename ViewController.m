//
//  ViewController.m
//  3DTouchDemo
//
//  Created by pro on 2018/5/23.
//  Copyright © 2018年 ChenXiaoJun. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
@interface ViewController ()<UIViewControllerPreviewingDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIView *btnView = [[UIView alloc] initWithFrame:CGRectMake(100, 200, 80, 80)];
    btnView.layer.cornerRadius = 40;
    btnView.backgroundColor = [UIColor greenColor];
    //判断是否支持3DTouch
    if (self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable) {
        //注册Cell支持3DTouch,并设置代理
        [self registerForPreviewingWithDelegate:self sourceView:btnView];
    }
    
    [self.view addSubview:btnView];
}


#pragma makr - 3DTouch代理
//轻按,中按时调用
- (nullable UIViewController *)previewingContext:(id <UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location{
    //获取sourceView
    UIView *btnView = (UIView *)[previewingContext sourceView];
    //设置弹出预览的位置
    [previewingContext setSourceRect:btnView.bounds];
    
    //设置弹框的View.
    DetailViewController *detailVC = [[DetailViewController alloc] init];
    detailVC.preferredContentSize = CGSizeMake(0, 300);
    return detailVC;
}

//弹框出现后, 继续重按时调用

//viewControllerToCommit:就是上面传入的XqDetailViewController的控制器.
- (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit{
    
    
    //[self.navigationController pushViewController:viewControllerToCommit animated:YES];
    [self showViewController:viewControllerToCommit sender:self];
}

@end
